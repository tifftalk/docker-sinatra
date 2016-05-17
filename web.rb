require 'sinatra'

get '/hi' do
  "Hello Make School!"
end

# verification token
get '/loaderio-b4b9b83c5b5c1cdb8584efa9592820f3/' do
  "loaderio-b4b9b83c5b5c1cdb8584efa9592820f3"
end
