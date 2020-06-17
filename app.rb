# frozen_string_literal: true
require 'sinatra/base'
require './lib/makers_bnb'
require './lib/user'

class ProjectBnB < Sinatra::Base
  enable :sessions

  get '/sign_up' do
    erb :signup
  end

  get '/login' do
    erb :login
  end
 
  post '/checker' do
    
  end

  post '/' do
    $user = User.create(params[:username], params[:password])
    redirect '/'
  end

  post '/add_space' do
    MakersBnB.add(params[:space_name])
    redirect '/'
  end

  get '/' do
    @user = $user
    @spaces = MakersBnB.all
    erb :index
  end

  run! if app_file == $PROGRAM_NAME
end
