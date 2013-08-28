class Url < ActiveRecord::Base
  # Remember to create a migration!
  def generate_short_url
    chars = 'abcdefghjkmnpqrstuvwxyzABCDEFGHJKLMNOPQRSTUVWXYZ23456789'
    password = ''
    6.times { |i| password << chars[rand(chars.length)] }
    "shit.ly/" + password
  end

end
