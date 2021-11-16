# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# (%w[hiking formal flippers sneakers wellies industrial climbing cycling sport].sample)


user = User.new(
  username: "coolguy123",
  email: "jamn@gmail.com",
  password: "helloworld"
)
puts "saving"
user.save!
puts "saved"



puts "preparing"

shoe = Shoe.new(
  title: "addiddas new sexy ones!",
  brand: "nike",
  size: "8",
  category: "sneakers",
  price: "£8",
  image_url: "https://assets.adidas.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy,c_fill,g_auto/4e894c2b76dd4c8e9013aafc016047af_9366/Superstar_Shoes_White_FV3284_01_standard.jpg",
  user_id: user.id
)
puts "saving"
shoe.save!
puts "saved"




user1 = User.new(
  username: "jimmybob6969",
  email: "jimmy@testy.com",
  password: "password"
)
puts "saving"
user1.save!
puts "saved"




shoe1 = Shoe.new(
  title: "Proper good hiking boots",
  brand: "Burtton",
  size: "10",
  category: "hiking",
  price: "£15",
  image_url: "https://www.grisport.co.uk/images/evolution-hiking-boot-p4594-288665_image.jpg",
  user_id: user1.id
)
puts "saving"
shoe1.save!
puts "saved"

shoe2 = Shoe.new(
  title: "really fancy LV slippers",
  brand: "Louis Vuitton",
  size: "6",
  category: "formal",
  price: "£20",
  image_url: "https://uk.louisvuitton.com/images/is/image/lv/1/PP_VP_L/louis-vuitton-dreamy-flat-loafers-shoes--AHDL1PMK54_PM2_Front%20view.jpg",
  user_id: user1.id
)
puts "saving"
shoe2.save!
puts "saved"

shoe3 = Shoe.new(
  title: "Welliessss!!!",
  brand: "Wellington",
  size: "9",
  category: "wellies",
  price: "£10",
  image_url: "https://i.ebayimg.com/images/g/WJwAAOSwcdBcQf~e/s-l300.jpg",
  user_id: user.id
)
puts "saving"
shoe3.save!
puts "saved"


booking1 = Booking.new(
  user_id: 2,
  shoe_id: 1
)

booking1.save!
puts "saved #{booking1.id}"

booking2 = Booking.new(
  user_id: 2,
  shoe_id: 2
)

booking2.save!
puts "saved #{booking2.id}"

booking3 = Booking.new(
  user_id: 2,
  shoe_id: 3
)

booking3.save!
puts "saved #{booking1.id}"
