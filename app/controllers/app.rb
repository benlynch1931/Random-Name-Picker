require 'sinatra'
require './app/models/names.rb'

class NameGenerator < Sinatra::Base
  set :views, File.expand_path('../../views',__FILE__)
  set :public_folder, File.expand_path('../../public', __FILE__)
  set :root, File.dirname(__FILE__)
  enable :sessions
  set :session_secret, ENV["SESSION_SECRET"]

  get '/' do
    session[:pick_name] = false
    erb :index
  end

  post '/sort-names' do
    session[:name_instance] = Name.new(params[:names])
    redirect '/generate-names'
  end

  get '/generate-names' do
    @name_instance = session[:name_instance]
    @selected_name = @name_instance.pick_name if session[:pick_name]
    erb :generate_names
  end

  post '/pick-name' do
    session[:pick_name] = true
    redirect '/generate-names'
  end
end
