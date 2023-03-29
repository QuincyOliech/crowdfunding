require 'faker'

images = ["https://images.pexels.com/photos/2980955/pexels-photo-2980955.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=699.825&fit=crop&h=1133.05",
    "https://images.pexels.com/photos/463996/pexels-photo-463996.jpeg?auto=compress&cs=tinysrgb&w=1600",
    "https://cf.bstatic.com/xdata/images/hotel/max1280x900/186576516.jpg?k=b31efb6b486fbd01e812ba18d33f62b4f7fa68bce04ada60143aa6460c257718&o=&hp=1",
    "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/d9/bf/a5/biggest-bedroom-48-square.jpg?w=1200&h=-1&s=1",
    "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1c/8e/34/3f/kole-kole.jpg?w=1200&h=-1&s=1",
    "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/26/b8/4a/4a/southern-palms-beach.jpg?w=1200&h=-1&s=1",
    "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/05/09/ad/27/severin-sea-lodge.jpg?w=1100&h=-1&s=1",
    "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/05/09/ad/27/severin-sea-lodge.jpg?w=1100&h=-1&s=1",
    "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/05/ef/9b/83/palacina-residence-suites.jpg?w=1200&h=-1&s=1",
    "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/37/52/56/suite.jpg?w=1200&h=-1&s=1",
    "https://images.pexels.com/photos/106399/pexels-photo-106399.jpeg?auto=compress&cs=tinysrgb&w=1600",
    "https://images.pexels.com/photos/323780/pexels-photo-323780.jpeg?auto=compress&cs=tinysrgb&w=1600"
    ]

puts "seeding..................."

# Create 10 users
10.times do
    User.create(
        username: Faker::Internet.unique.username,
        email: Faker::Internet.unique.email,
        password: Faker::Internet.password(min_length: 8)
    )
  end
  
  # Create 10 campaigns
10.times do
    Campaign.create(
        title: Faker::Lorem.sentence(word_count: 3),
        description: Faker::Lorem.paragraph(sentence_count: 3),
        category: Faker::Job.field,
        goal_amount: Faker::Number.decimal(l_digits: 5, r_digits: 2),
        image_url: images.sample,
        current_amount: Faker::Number.decimal(l_digits: 4, r_digits: 1),
        start_date: Faker::Date.between(from: Date.today, to: 1.year.from_now),
        end_date: Faker::Date.between(from: 2.months.from_now, to: 1.year.from_now),
    )
  end




# Create 10 reviews
10.times do
    Review.create(
    comment: Faker::Lorem.sentence(word_count: 10),
    user_id: Faker::Number.between(from: 1, to: 10),
    campaign_id: Faker::Number.between(from: 1, to: 10),
    rating: Faker::Number.between(from: 1, to: 5)
    )
end


# Create 10 pledges
10.times do
  Pledge.create(
    pledge_amount: Faker::Number.decimal(l_digits: 4, r_digits: 2),
    user_id: Faker::Number.between(from: 1, to: 10),
    campaign_id: Faker::Number.between(from: 1, to: 10)
  )
end


puts "Done seeding..................."

