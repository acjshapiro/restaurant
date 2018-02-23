ENV['RACK_ENV'] ||= 'development'

require 'bundler'
Bundler.require :default, ENV['RACK_ENV'].to_sym
require_relative 'routes'
require 'rubygems'
require 'sinatra'
require 'sinatra/activerecord'
require './environments'
require 'sinatra/base'
require './models/meat'



class Food < Sinatra::Base
  set :root, File.dirname(__FILE__)
  enable :sessions
  register Sinatra::ActiveRecordExtension
  use Rack::MethodOverride

end
