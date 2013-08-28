get '/' do
  # Look in app/views/index.erb
  erb :index
end


post '/urls' do
  erb :urls
end 
