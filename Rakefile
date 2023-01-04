IGNORE_FILES = [/^bin/, /^Rakefile$/, /^README.md$/, /\.DS_Store$/]

files = `git ls-files -co`.split("\n")

files.reject! { |f| IGNORE_FILES.any? { |re| f.match(re) } }

target_dir = File.expand_path('~')

desc "sync vimfiles in #{target_dir}"
task :sync do
  files.each do |file|
    if File.exist?(file)
      target_file = File.join(target_dir, ".#{file}")
      FileUtils.mkdir_p File.dirname(target_file)
      FileUtils.cp file, target_file

      puts "Installed #{file} to #{target_file}"
    else
      puts "#{file} removed?"
    end
  end
end

task default: :sync
