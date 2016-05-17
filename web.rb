require 'sinatra'

get '/hi' do
  "Hello Make School!"
end

# verification token
get '/loaderio-29be9792fd305f28cf88a1abc75be234/' do
  "loaderio-29be9792fd305f28cf88a1abc75be234"
end
