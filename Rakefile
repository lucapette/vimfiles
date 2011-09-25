require 'rake'
require 'find'
require 'pathname'

IGNORE_FILES = [/^\.gitignore$/, /^Rakefile$/,/^README.textile$/,/^\.gitmodules$/]

files = `git ls-files`.split("\n").reject! {|f| f.match(/^vim\/bundle/)}

target_dir=File.expand_path("~")

Dir["vim/bundle/**/*"].each { |file|
  files << file unless File.directory?(file)
}

files.reject! { |f| IGNORE_FILES.any? { |re| f.match(re) } }

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
  command_t_path=File.join(File.expand_path("~"),".vim","bundle","command-t")
  system("cd #{command_t_path}; rake make")
end

desc "init project"
task :init do
  system("git submodule init")
  system("git submodule update")
end

desc 'update the installed bundles'
task :update_bundles do
  bundles = `git submodule | cut -d' ' -f3`.split("\n")
  bundles.each do |bundle|
    system("cd #{bundle} && git pull origin master")
  end
end

task :default => ['sync']
