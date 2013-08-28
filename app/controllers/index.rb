get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/urls' do
  puts params[:urls]
  @url = Url.new(params[:urls])
  @short_url = @url.generate_short_url

  #  Url.create(:url => )
  #### stick in in the urls table with url and short_url
  erb :urls
end 

