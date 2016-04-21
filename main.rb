require 'sinatra'
require 'sinatra/reloader'
require 'pg'

require './db_config'
require 'active_record'
require './models/studio'
require './models/user'
require './models/comment'
require './models/like'

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

get '/favourites' do
  @likes = Like.where(user_id: current_user.id)
  erb :favourites
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
  @like = Like.find_by(user_id: current_user.id, studio_id: params[:id].to_i)
  @comments = @studios.comments
  erb :studiodetails
end

post '/studios/:id/comments' do
  user = User.find_by(id: params[:id])
  comment = Comment.new
  comment.body = params[:body]
  comment.studio_id = params[:studio_id]
  comment.user_id = current_user.id
  comment.save
  redirect to "/studios/#{ params[:studio_id] }"
end

post '/like/:studio_id' do
  like = Like.new
  like.user_id = current_user.id
  like.studio_id = params[:studio_id]
  like.save
  redirect to "/studios/#{ params[:studio_id] }"
end

delete '/likes/:id' do
  like = Like.find(params[:id])
  studio_id = like.studio_id
  like.delete
  like.save
  redirect to "/favourites"
end
