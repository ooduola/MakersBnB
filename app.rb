# frozen_string_literal: true
require 'sinatra/base'
require './lib/makers_bnb'

class ProjectBnB < Sinatra::Base
  enable :sessions

  get '/' do
    @spaces = MakersBnB.all
    erb :index
  end

  post '/add_space' do
    MakersBnB.add(params[:space_name], params[:space_description], params[:space_price])
    redirect '/'
  end

  get '/list_space' do
    erb :list_space
  end

  get '/book_space' do
    erb :book_space
  end

  run! if app_file == $PROGRAM_NAME
end
