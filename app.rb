require_relative './config/init.rb'
require 'date'
# set :run, true

get '/' do
  @name = "Fede J"
  @variable = DateTime.now
  erb :"home"
end