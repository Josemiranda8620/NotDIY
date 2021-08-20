require "open-uri"

# Create Users

# User.destroy_all
# puts "Users destroyed"

# 15.times do
#   file = URI.open('https://thispersondoesnotexist.com/image')
#   user = User.create!(
  #     email: Faker::Internet.safe_email,
  #     password: '123123',
  #     first_name: Faker::Name.first_name,
  #     last_name: Faker::Name.last_name
  #   )
  #   user.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
  # end

  # puts "Created #{User.count} accounts, last user id is #{User.last.id}"


  # =========================================================================
  # Create Offers

  name_hash = {
    "Break up with your partner" => "I can help you dissolve that relationship with that person you don't want to see anymore",
    "Fire an employee" => "I can make a quick and painless firing process right away",
    "Deliver a citation" => "If you are afraid of a violent situation I can report on behalf of you",
    "Deal with your noisy neighboor" => "A confrontation that your neighboor will never forget. The very next day you will have peace and quiet",
    "Announce a recent death" => "To ease the pain of the current lost I can help you communicate it to others",
    "Present a complaint to a store" => "If you don't want to go through the problems of getting your money back I can offer an easy solution",
    "Decline a marriage proposal" => "To tell that person that they are not the one",
    "Manager complaint" => "Is your manager taking advantage of you? I can talk with your manager to avoid that awkward situation.",
    "Report a creepy stranger" => "Have you ever been stalked and scared to report that person? Let me handle that for you.",
    "Call your parents" => "Are you scared to tell your parents the truth? I can ease that process and make sure you do not get in trouble",
    "Talk with teacher" => "Is your child's teacher picking on your child or causing problems? I have experience working with teachers and know how to handle this kind of situation"
  }

  price_array = [2000, 4000, 5000, 8000, 10000, 13000, 15000, 20000, 24000, 27000, 30000, 39000, 50000]

  key_array = []
  value_array = []
  name_hash.each do |key, value|
    key_array << key
    value_array << value
  end
  # ==============================================================
  # Create Reviews

  reviews_hash = {
    "Best Service Ever" => 5,
    "Not too bad I guess, was hoping for better" => 2,
    "Will definitly book again!" => 4,
    "Couldn't have asked for more. The process was so seamless and I didn't have to worry about a thing!" => 5,
    "It was a terrible experience, I ended up doing everything on my own" => 1,
    "Had to ask for a refund since the person never responded" =>2,
    "This person deserves a 5 star for sure. Loved the customer experience" => 5,
    "It was alright, not sure if I would do book this service again though" => 2,
    "The job was done so not much to complain about. A little pricey though" => 3
  }

  content_array = []
  star_array = []
  reviews_hash.each do |key, value|
    content_array << key
    star_array << value
  end

  Offer.destroy_all
  puts "offers destroyed"

  30.times do
    file = URI.open('https://source.unsplash.com/random')
    offer = Offer.create!({
      name: key_array.sample,
      detail: value_array.sample,
      price: price_array.sample,
      user_id: rand(User.last.id-10..User.last.id),
      })
      offer.photo.attach(io: file, filename: 'offer.png', content_type: 'image/png')

      puts "#{Offer.count} offers created"

      rand(5).times do
        Review.create!({
          content: content_array.sample,
          stars: star_array.sample,
          offer: offer
          })
          puts "#{Review.count} reviews created"
      end
    end
    puts "all completed"
