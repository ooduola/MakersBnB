# frozen_string_literal: true

require 'sinatra/base'
require './lib/makers_bnb'
require './lib/user'

class ProjectBnB < Sinatra::Base # :nodoc:
  enable :sessions

  get '/' do
    erb :signup
  end

  get '/login' do
    erb :login
  end

  post '/logincheck' do
    session[:username] = params[:username]
    if User.login(params[:username]) == false
      redirect '/'
    else
      redirect '/homepage'
    end
  end

  post '/usercreate' do
    User.sign_up(params[:username], params[:password])
    redirect '/login'
  end

  post '/add_space' do
    MakersBnB.add(params[:space_name], params[:space_description], params[:space_price])
    redirect '/homepage'
  end

  get '/homepage' do
    @user = session[:username]
    @spaces = MakersBnB.all
    erb :homepage
  end

  post '/check_availability' do
    session[:name] = params[:space_name]
    redirect '/book_space'
  end

  get '/requests' do
    @name = session[:name]
    erb :requests
  end

  get '/list_space' do
    erb :list_space
  end

  get '/book_space' do
    @name = session[:name]
    erb :book_space
  end

  run! if app_file == $PROGRAM_NAME
end
