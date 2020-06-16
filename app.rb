# frozen_string_literal: true
require 'sinatra/base'
require './lib/makers_bnb'

class ProjectBnB < Sinatra::Base
  enable :sessions

  # get '/' do
  #   $spaces = ['light and airy loft', 'my mums old room', 'sunny basement']
  #   erb :index
  # end

  get '/' do
    @spaces = MakersBnB.all
    erb :index
  end

  # post '/add_space' do
  #   session[:space_name] = params[:space_name]
  #   redirect '/space'
  # end

  post '/add_space' do
    MakersBnB.add(params[:space_name])
    redirect '/'
  end

  # get '/space' do
  #   $space_name = session[:space_name]
  #   $spaces << $space_name
  #   erb :index
  # end

  run! if app_file == $PROGRAM_NAME
end
