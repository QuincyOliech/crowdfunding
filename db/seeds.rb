require 'faker'

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

