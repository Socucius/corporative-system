FactoryGirl.define do
  factory :employee do
    first_name { Faker::Lorem.word }
    last_name { Faker::Lorem.word }
    email { Faker::Internet.email }
    password 'password'
  end
end
