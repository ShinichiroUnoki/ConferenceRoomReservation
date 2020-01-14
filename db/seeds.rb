# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 10.times do |num|
#   Room.create(facility_id: 1, name: 'デモ会議室', seating_capacity: 40, usage_fee: 4000, accountable_time: "9:00-18:00", note: 'テキストテキスト')
# end
# User.create(last_name: 'unoki')
Facility.create(name: 'Inner Resource')
User.create(facility_id: 1, last_name: '鵜木', first_name: '新一郎', email: 'unoki.shinichiro.1994@gmail.com', password: '123456')