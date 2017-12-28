" Basically, I took the code from https://github.com/skalnik/vim-vroom
" and removed all the things I won't use and re-adapted it a bit

if exists("g:loaded_test_runner")
  finish
endif

let g:loaded_test_runner = 1

func test_runner#RunFile()
  call s:RunTest()
endfunc

func test_runner#RunNearest()
  call s:RunTest({'nearest': 1})
endfunc

func s:RunTest(...)
  let args = {}
  if a:0 > 0
    let args = a:1
  end

  if s:IsInTestFile()
    let t:test_file = @%
  elseif exists('g:autoloaded_rails') && !empty(rails#buffer()) && !empty(rails#app())
    let t:test_file = rails#buffer().test_file()
  elseif exists('g:loaded_rake') && !empty(rake#buffer())
    let t:test_file = rake#buffer().related()
  elseif !exists("t:test_file")
    return
  end

  silent update

  call utils#RunCommand('clear')

  call s:SetTestRunnerPrefix(t:test_file)

  let runner = s:DetermineRunner(t:test_file)

  let line_number = ''

  if get(args, 'nearest') && s:IsRspecFile(t:test_file)
    let line_number = ':'.line('.')
  end

  let command = runner.' '.t:test_file.line_number

  call utils#RunCommand(command)
endfunc

func s:DetermineRunner(filename)
  if s:IsRspecFile(a:filename)
    if filereadable("bin/rspec")
      return s:test_runner_prefix.'bin/rspec'
    end
      return s:test_runner_prefix.'rspec'
  elseif s:IsTestUnitFile(a:filename)
    return s:test_runner_prefix.'ruby -Itest'
  end
endfunc

func s:SetTestRunnerPrefix(filename)
  let s:test_runner_prefix = ''
  call s:IsUsingBundleExec()
endfunc

func s:IsUsingBundleExec()
  if filereadable("Gemfile")
    let s:test_runner_prefix = "bundle exec "
  endif
endfunc

func s:IsInTestFile()
  let filename = expand('%')
  return s:IsRspecFile(filename) || s:IsTestUnitFile(filename)
endfunc

func s:IsRspecFile(filename)
  return match(a:filename, '_spec.rb') != -1
endfunc

func s:IsTestUnitFile(filename)
  return match(a:filename, '_test.rb') != -1
endfunc

" vim:set et sw=2:
