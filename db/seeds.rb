require 'faker'

# Set the Faker seed value
Faker::Config.random = Random.new(1234)

#Generate a random start date using Faker
start_date = Faker::Date.between(from: '2022-01-01', to: '2022-12-31')

# Generate a random end date using Faker between the start date and a year later
end_date = Faker::Date.between(from: start_date, to: (start_date + 1.year))

10.times do
User.create(
    username:Faker::Internet.username,
    email:Faker::Internet.email
)
end

10.times do
    Campaign.create(
        title:Faker::Lorem.sentence(word_count: 3),
        description:Faker::Lorem.paragraph(sentence_count: 3),
        category:Faker::Job.field,
        goal_amount:Faker::Number.decimal(l_digits: 5, r_digits: 2),
        start_date: start_date,
        end_date: end_date)
end

10.times do
    Review.create(
        comment:Faker::Lorem.sentence(word_count: 50),
        user_id:Faker::Number.between(from: 1, to: 10),
        campaign_id:Faker::Number.between(from: 1, to: 10)
    )
end

10.times do
    Pledge.create(
        pledge_amount:Faker::Number.decimal(l_digits: 4, r_digits: 2),
        user_id:Faker::Number.between(from: 1, to: 10),
        campaign_id:Faker::Number.between(from: 1, to: 10)
    )
end
