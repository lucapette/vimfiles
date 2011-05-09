require 'rake'
require 'find'
require 'pathname'

IGNORE_FILES = [/^\.gitignore$/, /^Rakefile$/,/^README.textile$/,/^\.gitmodules$/]

files = `git ls-files`.split("\n").reject! {|f| f.match(/^vim\/bundle/)}

Dir["vim/bundle/**/*"].each { |file|
    files << file unless File.directory?(file)
}

files.reject! { |f| IGNORE_FILES.any? { |re| f.match(re) } }

desc 'install vimfiles in home dir'
task :install => ["init_bundles"] do
    targetdir=File.expand_path("~")
    files.each do |file|
        if File.exists?(file)
            target_file = File.join(targetdir, ".#{file}")
            FileUtils.mkdir_p File.dirname(target_file)
            FileUtils.cp file, target_file

            puts "Installed #{file} to #{target_file}"
        else
            puts "#{file} removed?"
        end
    end

end

desc 'init bundles'
task :init_bundles do
    system("git submodule init")
    system("git submodule update")
end


desc 'pull from git repository'
task :pull do
    puts "Updating from git repository"
    system("cd " << Dir.new(File.dirname(__FILE__)).path << " && git pull")
end

desc 'update from git repository and then updates files in dir'
task :update => ['pull', 'install'] do
    puts "Update of vim files completed."
end

task :default => ['install']
