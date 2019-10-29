require 'sinatra'

set :session_secret, 'super secret'


# get '/cat' do
#   "<div>
#    <img src='http://bit.ly/1eze8aE'>
#    </div>"
# end


get '/cat-form' do
  erb :cat_form
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/random-cat' do
  @name = ["amigo", "oscar", "viking"].sample
  erb(:index)
end

get '/' do
  "words"
end

get '/' do
  "Hello world!"
end

get '/secret' do
  "This is a secret page"
end
