require 'sinatra'

get '/hi' do
  "Hello Make School!"
end

# verification token
get '/loaderio-ec918e838e691ac73089527347514d82/' do
  "loaderio-ec918e838e691ac73089527347514d82"
end
