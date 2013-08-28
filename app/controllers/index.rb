get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/urls' do
  @short_url = generate_short_url
  erb :urls
end 

def generate_short_url
  chars = 'abcdefghjkmnpqrstuvwxyzABCDEFGHJKLMNOPQRSTUVWXYZ23456789'
  password = ''
  6.times { |i| password << chars[rand(chars.length)] }
  "shit.ly/" + password
end
