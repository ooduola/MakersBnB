# frozen_string_literal: true
require 'sinatra/base'
require './lib/makers_bnb'
require './lib/user'

class ProjectBnB < Sinatra::Base
  enable :sessions
  get '/' do
    erb :signup
  end
  get '/login' do
    @user = User.find(params[:username])
    erb :login
  end
  post '/usercreate' do
    User.create(params[:username], params[:password])
    redirect '/spaces'
  end
  post '/add_space' do
      MakersBnB.add(params[:space_name], params[:space_description], params[:space_price])
      redirect '/spaces'
    end
  get '/spaces' do
    @spaces = MakersBnB.all
    erb :index
  end
  get '/list_space' do
    erb :list_space
  end
  get '/book_space' do
    erb :book_space
  end
  run! if app_file == $PROGRAM_NAME
end
