#!/usr/bin/env ruby

unless (ARGV[0] && ARGV[1])
  puts "Please specify base revision and end revision, eg: rubocop-diff.rb HEAD 8234531"
  exit
end

files = `git diff --name-only #{ARGV[0]} #{ARGV[1]}`.split("\n")
if files.size == 0
  puts "Please check the revision range - no files detected"
else
  files = files - ['db/schema.rb', 'config/locales/en.yml']
  files = files.reject { |f| f.include?('app/views') }
  puts "#{files.size} files are changed, running cop for:\n#{files.join("\n")}"
  puts `rubocop #{files.join(' ')}`
end
