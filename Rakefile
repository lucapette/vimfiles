IGNORE_FILES = [/^\.gitignore$/, /^Rakefile$/,/^README.markdown$/,/^\.gitmodules$/, /^vim\/bundle/]

files = `git ls-files`.split("\n").reject! { |f| IGNORE_FILES.any? { |re| f.match(re) } }

target_dir=File.expand_path('~')

Dir["vim/bundle/**/*"].each do |file|
  files << file unless File.directory?(file)
end

desc "sync vimfiles in #{target_dir}"
task :sync do
  files.each do |file|
    if File.exists?(file)
      target_file = File.join(target_dir, ".#{file}")
      FileUtils.mkdir_p File.dirname(target_file)
      FileUtils.cp file, target_file

      puts "Installed #{file} to #{target_file}"
    else
      puts "#{file} removed?"
    end
  end
  system("$GOPATH/src/github.com/nsf/gocode/vim/pathogen_update.sh")
end

desc 'init project'
task :init do
  system('git submodule init')
  system('git submodule update')
end

desc 'update the installed bundles'
task :update_bundles do
  system('git submodule foreach git pull origin master')
end

task default: :sync
