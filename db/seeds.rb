# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# (%w[hiking formal flippers sneakers wellies industrial climbing cycling sport].sample)
require "open-uri"

user1 = User.new(
  username: "ha",
  email: "seb@seb.seb",
  password: "123123"
)
puts "saving"
user1.save!
puts "saved"

user2 = User.new(
  username: "he",
  email: "giorgio@bigpasta.biz",
  password: "123123"
)
puts "saving"
user2.save!
puts "saved"

user3 = User.new(
  username: "hi",
  email: "janet@janet.janet",
  password: "123123"
)
puts "saving"
user3.save!
puts "saved"
#############################################################################

puts "preparing"
shoe = Shoe.new(
  title: "addiddas",
  brand: "nike",
  size: "8",
  category: "sneakers",
  price: "8",
  address: "958 The Crescent, London",
  user_id: user1.id
)
shoeimg = URI.open("https://assets.adidas.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy,c_fill,g_auto/4e894c2b76dd4c8e9013aafc016047af_9366/Superstar_Shoes_White_FV3284_01_standard.jpg")
shoe.photo.attach(io: shoeimg, filename: "shoe1.png", content_type: 'image/jpeg')
puts "saving"
shoe.save!
puts "saved"


#############################################################################

shoe = Shoe.new(
  title: "Hiking boots",
  brand: "Burtton",
  size: "10",
  category: "hiking",
  price: "15",
  address: "820 Main Road, London",
  user_id: user1.id
)
shoeimg = URI.open("https://www.grisport.co.uk/images/evolution-hiking-boot-p4594-288665_image.jpg")
shoe.photo.attach(io: shoeimg, filename: "shoe1.png", content_type: 'image/jpeg')
puts "saving"
shoe.save!
puts "saved"


#############################################################################

shoe = Shoe.new(
  title: "LV slippers",
  brand: "Louis Vuitton",
  size: "6",
  category: "formal",
  price: "20",
  address: "44 Green Lane, London",
  user_id: user1.id
)
shoeimg = URI.open("https://uk.louisvuitton.com/images/is/image/lv/1/PP_VP_L/louis-vuitton-dreamy-flat-loafers-shoes--AHDL1PMK54_PM2_Front%20view.jpg")
shoe.photo.attach(io: shoeimg, filename: "shoe1.png", content_type: 'image/jpeg')
puts "saving"
shoe.save!
puts "saved"


#############################################################################

shoe = Shoe.new(
  title: "Bob l'Eponge Slippers",
  brand: "Bobby",
  size: "2",
  category: "slippers",
  price: "1",
  address: "85 West Street, London",
  user_id: user1.id
)
shoeimg = URI.open("https://m.media-amazon.com/images/I/61VM-EVE7cL._AC_UX395_.jpg")
shoe.photo.attach(io: shoeimg, filename: "shoe1.png", content_type: 'image/jpeg')
puts "saving"
shoe.save!
puts "saved"

#############################################################################

shoe = Shoe.new(
  title: "Dwayne (the croc) Johnsons",
  brand: "Crocs",
  size: "72",
  category: "sneakers",
  price: "99",
  address: "432 Richmond Road, London",
  user_id: user1.id
)
shoeimg = URI.open("https://i.redd.it/9vyht6jsrbv01.jpg")
shoe.photo.attach(io: shoeimg, filename: "shoe1.png", content_type: 'image/jpeg')
puts "saving"
shoe.save!
puts "saved"

#############################################################################

shoe = Shoe.new(
  title: "Fresh Fish slippers",
  brand: "Flippy",
  size: "8",
  category: "sneakers",
  price: "3",
  address: "367 South Street London",
  user_id: user1.id
)
shoeimg = URI.open("https://m.media-amazon.com/images/I/717-Mksh02L._AC_UY500_.jpg")
shoe.photo.attach(io: shoeimg, filename: "shoe1.png", content_type: 'image/jpeg')
puts "saving"
shoe.save!
puts "saved"


#############################################################################
#############################################################################

shoe = Shoe.new(
  title: "Balenciaga x Crocs",
  brand: "Balenciaga",
  size: "7",
  category: "formal",
  price: "50",
  address: "61 Queens Road London",
  user_id: user3.id
)
shoeimg = URI.open("https://cdn-images.farfetch-contents.com/17/33/66/49/17336649_36297683_1000.jpg")
shoe.photo.attach(io: shoeimg, filename: "shoe1.png", content_type: 'image/jpeg')
puts "saving"
shoe.save!
puts "saved"

#############################################################################

shoe = Shoe.new(
  title: "Balenciaga Heels",
  brand: "Balenciaga",
  size: "8",
  category: "formal",
  price: "5",
  address: "2 Springfield Road London",
  user_id: user3.id
)
shoeimg = URI.open("https://cdna.lystit.com/520/650/n/photos/yoox/91fd0ac8/balenciaga-black-Bottines.jpeg")
shoe.photo.attach(io: shoeimg, filename: "shoe1.png", content_type: 'image/jpeg')
puts "saving"
shoe.save!
puts "saved"

#############################################################################

shoe = Shoe.new(
  title: "Bright pink heels",
  brand: "Target",
  size: "8",
  category: "formal",
  price: "7",
  address: "9287 Stanley Road London",
  user_id: user3.id
)
shoeimg = URI.open("https://cdn11.bigcommerce.com/s-135f0/images/stencil/1280x1280/products/860/9283/pearlescent_fuchsia_pink_8_inch_pole_dance_boot._dragpoleshoes__75040.1569320310.JPG?c=2")
shoe.photo.attach(io: shoeimg, filename: "shoe1.png", content_type: 'image/jpeg')
puts "saving"
shoe.save!
puts "saved"

# new shoes

shoe = Shoe.new(
  title: "Flippers",
  brand: "Diver",
  size: "7",
  category: "Flippers",
  price: "5",
  address: "7 Park Lane London",
  user_id: user3.id
)
shoeimg = URI.open("https://www.tunturi.org/website/Accessoires/14TUSSW091.jpg")
shoe.photo.attach(io: shoeimg, filename: "shoe1.png", content_type: 'image/jpeg')
puts "saving"
shoe.save!
puts "saved"
