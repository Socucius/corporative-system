FactoryGirl.define do
  factory :customer do
    first_name { Faker::Lorem.word }
    last_name { Faker::Lorem.word }
    email { Faker::Internet.email }
    password 'password'
    confirmed_at Time.now
  end
end
