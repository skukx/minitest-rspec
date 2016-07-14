FactoryGirl.define do
  sequence (:user_email) do |n|
    n + Faker::Internet.email
  end

  factory :user do
    user_email
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    password { Faker::Number.number(6) }
  end
end
