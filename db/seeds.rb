users = [
  {
    name: "Rishi",
    email: "test@test.com",
    password: "password",
    password_confirmation: "password"
  },
  {
    name: "Andy Mental",
    email: "andy.is.mental@gmail.com",
    password: "password",
    password_confirmation: "password"
  }
]

users.each do |data|
  x = User.create data
  puts "ID: " + x.id.to_s + " | " + x.name.to_s + " created"
end

listings = [
  {
    name: "Magic MultiColor Slime Sludge",
    summary: FFaker::HipsterIpsum.paragraph,
    description: FFaker::HTMLIpsum.body,
    price: 20,
    user_id: User.last.id,
    image: File.open("#{Rails.root}/public/bulk/1.jpg"),
    secondary_image1: File.open("#{Rails.root}/public/bulk/2.jpg"),
    secondary_image2: File.open("#{Rails.root}/public/bulk/3.jpg"),
    secondary_image3: File.open("#{Rails.root}/public/bulk/4.jpg")
  },
  {
    name: "Slime Toy for All",
    summary: FFaker::HipsterIpsum.paragraph,
    description: FFaker::HTMLIpsum.body,
    price: 20,
    user_id: User.last.id,
    image: File.open("#{Rails.root}/public/bulk/2.jpg"),
    secondary_image1: File.open("#{Rails.root}/public/bulk/2.jpg"),
    secondary_image2: File.open("#{Rails.root}/public/bulk/3.jpg"),
    secondary_image3: File.open("#{Rails.root}/public/bulk/4.jpg")
  },
  {
    name: "Rainbow Slime",
    summary: FFaker::HipsterIpsum.paragraph,
    description: FFaker::HTMLIpsum.body,
    price: 20,
    user_id: User.last.id,
    image: File.open("#{Rails.root}/public/bulk/3.jpg"),
    secondary_image1: File.open("#{Rails.root}/public/bulk/2.jpg"),
    secondary_image2: File.open("#{Rails.root}/public/bulk/3.jpg"),
    secondary_image3: File.open("#{Rails.root}/public/bulk/4.jpg")
  },
  {
    name: "Slime Magnatic Magic",
    summary: FFaker::HipsterIpsum.paragraph,
    description: FFaker::HTMLIpsum.body,
    price: 20,
    user_id: User.last.id,
    image: File.open("#{Rails.root}/public/bulk/4.jpg"),
    secondary_image1: File.open("#{Rails.root}/public/bulk/2.jpg"),
    secondary_image2: File.open("#{Rails.root}/public/bulk/3.jpg"),
    secondary_image3: File.open("#{Rails.root}/public/bulk/4.jpg")
  },
  {
    name: "Sludge Magic",
    summary: FFaker::HipsterIpsum.paragraph,
    description: FFaker::HTMLIpsum.body,
    price: 20,
    user_id: User.last.id,
    image: File.open("#{Rails.root}/public/bulk/5.jpg"),
    secondary_image1: File.open("#{Rails.root}/public/bulk/2.jpg"),
    secondary_image2: File.open("#{Rails.root}/public/bulk/3.jpg"),
    secondary_image3: File.open("#{Rails.root}/public/bulk/4.jpg")
  },
  {
    name: "Magic Slime Sludge",
    summary: FFaker::HipsterIpsum.paragraph,
    description: FFaker::HTMLIpsum.body,
    price: 20,
    user_id: User.last.id,
    image: File.open("#{Rails.root}/public/bulk/6.jpg"),
    secondary_image1: File.open("#{Rails.root}/public/bulk/2.jpg"),
    secondary_image2: File.open("#{Rails.root}/public/bulk/3.jpg"),
    secondary_image3: File.open("#{Rails.root}/public/bulk/4.jpg")
  },
  {
    name: "MultiColor Slime",
    summary: FFaker::HipsterIpsum.paragraph,
    description: FFaker::HTMLIpsum.body,
    price: 20,
    user_id: User.last.id,
    image: File.open("#{Rails.root}/public/bulk/7.jpg"),
    secondary_image1: File.open("#{Rails.root}/public/bulk/2.jpg"),
    secondary_image2: File.open("#{Rails.root}/public/bulk/3.jpg"),
    secondary_image3: File.open("#{Rails.root}/public/bulk/4.jpg")
  },
  {
    name: "Clay MultiColor Slime Sludge",
    summary: FFaker::HipsterIpsum.paragraph,
    description: FFaker::HTMLIpsum.body,
    price: 20,
    user_id: User.last.id,
    image: File.open("#{Rails.root}/public/bulk/8.jpg"),
    secondary_image1: File.open("#{Rails.root}/public/bulk/2.jpg"),
    secondary_image2: File.open("#{Rails.root}/public/bulk/3.jpg"),
    secondary_image3: File.open("#{Rails.root}/public/bulk/4.jpg")
  }
]

listings.each do |data|
  x = Listing.create data
  puts x.name + " created"
end
