require 'sinatra'
require './app/models/names.rb'

class NameGenerator < Sinatra::Base
  set :views, File.expand_path('../../views',__FILE__)
  set :public_folder, File.expand_path('../../public', __FILE__)
  set :root, File.dirname(__FILE__)

  get '/' do
    erb :index
  end

  post '/sort-names' do
    @name = Name.new(params[:name])
    redirect '/generate-names'
  end

  get '/generate-names' do
    erb :generate_names
  end
end
