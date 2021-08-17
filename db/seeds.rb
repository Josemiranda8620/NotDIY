# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Offer.destroy_all

Offer.create(name: "Break up relationships", detail: "I can help you avoid that difficult situation with that person you don't want to see anymore", price: 10000, user_id: 1)
Offer.create(name: "Fire an employee", detail: "Quick and painless firing service on demand", price: 15000, user_id: 1)
Offer.create(name: "Deliver a citation", detail: "If you don't want to deal with possible violent situations", price: 15000, user_id: 1)
Offer.create(name: "Deal with your noisy neighboor", detail: "A confrontation that your neighboor will never forget", price: 20000, user_id: 1)
Offer.create(name: "Announce a recent death", detail: "To ease the pain of the current lost I can help you do communicate it to others", price: 10000, user_id: 1)
Offer.create(name: "Present a complaint to a store", detail: "If you don't want to go through the problems of getting your money back I can offer an easy solution", price: 10000, user_id: 1)
Offer.create(name: "Decline a marriage propposal", detail: "To tell that person that they are not the one", price: 30000, user_id: 1)
Offer.create(name: "Offer Name", detail: "Description of the offer", price: 10000, user_id: 1)
Offer.create(name: "Offer Name", detail: "Description of the offer", price: 10000, user_id: 1)
Offer.create(name: "Offer Name", detail: "Description of the offer", price: 10000, user_id: 1)
Offer.create(name: "Offer Name", detail: "Description of the offer", price: 10000, user_id: 1)
Offer.create(name: "Offer Name", detail: "Description of the offer", price: 10000, user_id: 1)
Offer.create(name: "Offer Name", detail: "Description of the offer", price: 10000, user_id: 1)
Offer.create(name: "Offer Name", detail: "Description of the offer", price: 10000, user_id: 1)
Offer.create(name: "Offer Name", detail: "Description of the offer", price: 10000, user_id: 1)
Offer.create(name: "Offer Name", detail: "Description of the offer", price: 10000, user_id: 1)
Offer.create(name: "Offer Name", detail: "Description of the offer", price: 10000, user_id: 1)
Offer.create(name: "Offer Name", detail: "Description of the offer", price: 10000, user_id: 1)
Offer.create(name: "Offer Name", detail: "Description of the offer", price: 10000, user_id: 1)
Offer.create(name: "Offer Name", detail: "Description of the offer", price: 10000, user_id: 1)
Offer.create(name: "Offer Name", detail: "Description of the offer", price: 10000, user_id: 1)
Offer.create(name: "Offer Name", detail: "Description of the offer", price: 10000, user_id: 1)
Offer.create(name: "Offer Name", detail: "Description of the offer", price: 10000, user_id: 1)
Offer.create(name: "Offer Name", detail: "Description of the offer", price: 10000, user_id: 1)
Offer.create(name: "Offer Name", detail: "Description of the offer", price: 10000, user_id: 1)
Offer.create(name: "Offer Name", detail: "Description of the offer", price: 10000, user_id: 1)
Offer.create(name: "Offer Name", detail: "Description of the offer", price: 10000, user_id: 1)
Offer.create(name: "Offer Name", detail: "Description of the offer", price: 10000, user_id: 1)

puts "seedind #{Offer.count} done"
