# frozen_string_literal: true
require 'sinatra/base'
require './lib/makers_bnb'

class ProjectBnB < Sinatra::Base
  enable :sessions
 
  get '/sign_up' do
    erb :signup
  end

  get '/' do
    @spaces = MakersBnB.all
    erb :index
  end

  post '/add_space' do
    MakersBnB.add(params[:space_name])
    redirect '/'
  end

  run! if app_file == $PROGRAM_NAME
end
