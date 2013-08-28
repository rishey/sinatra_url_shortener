get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/urls' do
  params[:urls]
  @url = Url.new(params[:urls])
  @short_url = @url.generate_short_url
  @url.url 
  @url.short_url = @short_url
  @url.clicks = 0
  @url.save

  #  Url.create(:url => )
  #### stick in in the urls table with url and short_url
  erb :urls
end 

get '/:short_url' do
  #### find row for short_url
    #### count += 1
    #### redirect to url

  @look_url = 'shit.ly/' + params[:short_url]
  @redirect_url = Url.where(short_url: @look_url).first.url

  p @url = Url.where(short_url: @look_url).last
  @url.clicks += 1
  @url.save

  erb :show
end


