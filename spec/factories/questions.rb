FactoryBot.define do
  factory :question do
    question  {Faker::Lorem.sentence}
    answer    {Faker::Lorem.sentence}
    genre_id  {Faker::Number.between(from: 2, to: 11) }
    association :user

    after(:build) do |question|
      question.image.attach(io: File.open('public/images/test_image.jpeg'), filename: 'test_image.jpeg')
    end
  end
end
