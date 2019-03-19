require 'sinatra'
require 'shotgun'

get '/' do
  "Hello World"
end

get '/secret' do
  "Hi"
end

get '/secret2' do
  "Hi again"
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb :index
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb :index
end

get '/cat-form' do
  p params
  erb :cat_form
end
