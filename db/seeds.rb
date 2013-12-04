# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = [{:name => "Alex Isgay", :email => "Alex_Ackerman@msn.com", :password => "imreallygay"}]

users.each do |user|
	User.create!(user)
end
