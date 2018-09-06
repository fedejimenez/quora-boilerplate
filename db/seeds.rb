require_relative '../config/init'
require_relative '../models/user.rb'

user_list = [
  [ "John", "Doe", "jd@gmail.com", "1234" ],
]

user_list.each do |n, i|
  User.create(user_list[i])
end