require 'sinatra'
require 'sinatra/reloader'
require 'pg'

require './db_config'
require 'active_record'

get '/' do
  erb :index
end
