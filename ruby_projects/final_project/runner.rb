require 'pp'
require_relative 'user'

user = User.new 'kamilatomaszczyk@gmail.com', 'Kamila'

pp user

user.save