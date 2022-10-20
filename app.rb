require 'bundler'
Bundler.require  # lancer dans le terminal $ bundle install

$:.unshift File.expand_path("./../lib", __FILE__)
require 'app/application'
require 'app/game'
require 'app/player'
require 'app/board'
require 'app/boardcase'
require 'app/show'
require 'app/string'


# -> plus besoin de préciser le path exact grâce à $:.unshift File.....
# par exemple require 'scrapper' suffira


Application.new.perform