#!/usr/bin/env ruby

# This should be used to initialize a new environment
# with default vim setup

require 'fileutils'
require 'open-uri'

root_dir = "/Users/cemeng/.vim"
bundles_dir = "#{root_dir}/bundle"
colors_dir = "#{root_dir}/colors"
sessions_dir = "#{root_dir}/sessions"

dirs = [ bundles_dir, colors_dir, sessions_dir ]
for dir in dirs
  FileUtils.rm_rf(dir)
  FileUtils.mkdir(dir)
end

all_the_things = %w{
  git://github.com/tpope/vim-fugitive.git
  git://github.com/tpope/vim-git.git
  git://github.com/tpope/vim-markdown.git
  git://github.com/tpope/vim-rails.git
  git://github.com/tpope/vim-surround.git
  git://github.com/vim-ruby/vim-ruby.git
  git://github.com/kchmck/vim-coffee-script.git
  git://github.com/kien/ctrlp.vim.git
  git://github.com/ton/vim-bufsurf.git
}

# Trying these new shiny things
experimentals = %w{
  git://github.com/scrooloose/syntastic.git
  git://github.com/Lokaltog/vim-powerline.git
  git://github.com/othree/javascript-libraries-syntax.vim.git
}

all_the_things = all_the_things | experimentals

FileUtils.cd(bundles_dir)
puts "Install all the things"
all_the_things.each do |url|
  puts url
  `git clone -q #{url}`
end

# Not too sure about this..
Dir["*/.git"].each {|f| FileUtils.rm_rf(f) }

# Colors
git_colorscheme = %w{
  https://raw.github.com/chriskempson/vim-tomorrow-theme/master/colors/Tomorrow-Night-Blue.vim
  https://raw.github.com/chriskempson/vim-tomorrow-theme/master/colors/Tomorrow-Night-Bright.vim
  https://raw.github.com/chriskempson/vim-tomorrow-theme/master/colors/Tomorrow-Night.vim
}

FileUtils.cd(colors_dir)
puts "Installing colorschemes"
git_colorscheme.each do |url|
  puts url
  `wget #{url}`
end
