# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  uid        :string
#  first_name :string
#  last_name  :string
#  nickname   :string
#  photo      :string
#  token      :string
#  href       :string
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :user do
    name Faker::Name.name
    nick Faker::Internet.user_name
    email Faker::Internet.email
  end
end
