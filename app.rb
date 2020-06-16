# frozen_string_literal: true

require 'sinatra/base'

class MakersBnB < Sinatra::Base
  get '/' do
    @spaces = ['light and airy loft', 'my mums old room', 'sunny basement']
    erb :index
  end

  post '/add_space' do
    session[:name] = params[:space_name]
    # redirect '/'
  end

  # get '/' do
  #   erb :index
  # end

  run! if app_file == $PROGRAM_NAME
end
