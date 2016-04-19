require 'sinatra'
require 'sinatra/reloader'
require 'pg'

require './db_config'
require 'active_record'
require './models/studio'

def run_sql(sql)
  db = PG.connect(dbname: 'movies')
  results = db.exec(sql)
  db.close
  return results
end

after do
  ActiveRecord::Base.connection.close
end

get '/' do
  erb :index
end

get '/index' do
  erb :index
end

get '/about' do
  erb :about
end

get '/show' do
  @studios = Studio.all
  erb :show
end

get '/studios/new' do
  erb :new
end

post '/studios' do
  studio = Studio.new
  studio.name = params[:name]
  studio.image_url = params[:image_url]
  studio.suburb = params[:suburb]
  studio.body = params[:body]
  studio.save
  redirect to '/show'
end
