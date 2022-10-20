require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'app/application'
require 'app/game'
require 'app/player'
require 'app/board'
require 'app/show'
require 'app/string'

Application.new.perform