require "open-uri"
15.times do
  file = URI.open('https://thispersondoesnotexist.com/image')
  user = User.create!(
    email: Faker::Internet.safe_email,
    password: '123123',
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name
  )
  user.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
end

puts "Created #{User.count} accounts"

Offer.destroy_all

Offer.create!(name: "Break up with your partner", detail: "I can help you avoid that difficult situation with that person you don't want to see anymore", price: 10000, user_id: rand(1..16))
Offer.create!(name: "Fire an employee", detail: "Quick and painless firing service on demand", price: 15000, user_id: rand(1..16))
Offer.create!(name: "Deliver a citation", detail: "If you don't want to deal with possible violent situations", price: 15000, user_id: rand(1..16))
Offer.create!(name: "Deal with your noisy neighboor", detail: "A confrontation that your neighboor will never forget", price: 20000, user_id: rand(1..16))
Offer.create(name: "Announce a recent death", detail: "To ease the pain of the current lost I can help you do communicate it to others", price: 10000, user_id: rand(1..16))
Offer.create(name: "Present a complaint to a store", detail: "If you don't want to go through the problems of getting your money back I can offer an easy solution", price: 10000, user_id: rand(1..16))
Offer.create(name: "Decline a marriage proposal", detail: "To tell that person that they are not the one", price: 30000, user_id: rand(1..16))
Offer.create(name: "Offer Name", detail: "Description of the offer", price: 10000, user_id: rand(1..16))
Offer.create(name: "Offer Name", detail: "Description of the offer", price: 10000, user_id: rand(1..16))
Offer.create(name: "Offer Name", detail: "Description of the offer", price: 10000, user_id: rand(1..16))
Offer.create(name: "Offer Name", detail: "Description of the offer", price: 10000, user_id: rand(1..16))
Offer.create(name: "Offer Name", detail: "Description of the offer", price: 10000, user_id: rand(1..16))
Offer.create(name: "Offer Name", detail: "Description of the offer", price: 10000, user_id: rand(1..16))
Offer.create(name: "Offer Name", detail: "Description of the offer", price: 10000, user_id: rand(1..16))
Offer.create(name: "Offer Name", detail: "Description of the offer", price: 10000, user_id: rand(1..16))
Offer.create(name: "Offer Name", detail: "Description of the offer", price: 10000, user_id: rand(1..16))
Offer.create(name: "Offer Name", detail: "Description of the offer", price: 10000, user_id: rand(1..16))
Offer.create(name: "Offer Name", detail: "Description of the offer", price: 10000, user_id: rand(1..16))
Offer.create(name: "Offer Name", detail: "Description of the offer", price: 10000, user_id: rand(1..16))
Offer.create(name: "Offer Name", detail: "Description of the offer", price: 10000, user_id: rand(1..16))
Offer.create(name: "Offer Name", detail: "Description of the offer", price: 10000, user_id: rand(1..16))
Offer.create(name: "Offer Name", detail: "Description of the offer", price: 10000, user_id: rand(1..16))
Offer.create(name: "Offer Name", detail: "Description of the offer", price: 10000, user_id: rand(1..16))
Offer.create(name: "Offer Name", detail: "Description of the offer", price: 10000, user_id: rand(1..16))
Offer.create(name: "Offer Name", detail: "Description of the offer", price: 10000, user_id: rand(1..16))
Offer.create(name: "Offer Name", detail: "Description of the offer", price: 10000, user_id: rand(1..16))
Offer.create(name: "Offer Name", detail: "Description of the offer", price: 10000, user_id: rand(1..16))
Offer.create(name: "Offer Name", detail: "Description of the offer", price: 10000, user_id: rand(1..16))

puts "seeding #{Offer.count} done"
