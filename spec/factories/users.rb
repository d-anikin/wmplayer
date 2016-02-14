FactoryGirl.define do
  factory :user do
    name Faker::Name.name
    nick Faker::Internet.user_name
    email Faker::Internet.email
  end
end
