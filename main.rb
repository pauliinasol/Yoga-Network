require 'sinatra'
require 'sinatra/reloader'
require 'pg'

require './db_config'
require 'active_record'
require './models/studio'
require './models/user'

enable :sessions

helpers do
    def current_user
      User.find_by(id: session[:user_id])
    end

    def logged_in?
    !!current_user
    end
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

get '/new' do
  erb :new
end

get '/signup' do
  erb :signup
end

get '/studiodetails' do
  erb :studiodetails
end

get '/show' do
  @studios = Studio.all
  erb :show
end

get '/studios/new' do
  erb :new
end

get '/session/new' do
  erb :login
end

post "/session" do
  user = User.find_by(username: params[:username])
  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect to '/'
  else
    erb :login
  end
end

delete '/session' do
  session[:user_id] = nil
  redirect to '/'
end

post '/studios' do
  studio = Studio.new
  studio.name = params[:name]
  studio.image_url = params[:image_url]
  studio.address = params[:address]
  studio.body = params[:body]
  studio.website_url = params[:website_url]
  studio.save
  redirect to '/show'
end

post '/signup' do
  user = User.new
  user.username = params[:username]
  user.password = params[:password]
  user.email = params[:email]
  user.homestudio = params[:homestudio]
  user.favourite_yoga = params[:favourite_yoga]
  user.save
  redirect to '/index'
end

get '/studios/:id' do
  @studios = Studio.find_by(id: params[:id])
  erb :studiodetails
end
