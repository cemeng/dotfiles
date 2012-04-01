#!/usr/bin/env ruby

# This should be used to initialize a new environment
# with default vim setup

require 'fileutils'
require 'open-uri'

git_bundles = %w{
  git://github.com/tpope/vim-fugitive.git
  git://github.com/tpope/vim-git.git
  git://github.com/tpope/vim-markdown.git
  git://github.com/tpope/vim-rails.git
  git://github.com/tpope/vim-surround.git
  git://github.com/vim-ruby/vim-ruby.git
  git://github.com/altercation/vim-colors-solarized.git
  git://git.wincent.com/command-t.git
}

bundles_dir = "/Users/cemeng/.vim/bundle"

FileUtils.rm_rf(bundles_dir)
FileUtils.mkdir(bundles_dir)
FileUtils.cd(bundles_dir)

git_bundles.each do |url|
  puts url
  `git clone -q #{url}`
end

# Not too sure about this..
Dir["*/.git"].each {|f| FileUtils.rm_rf(f) }

# Compile command-t
FileUtils.cd('command-t/ruby/command-t')
%x[ rbenv local system && ruby extconf.rb && make ]
