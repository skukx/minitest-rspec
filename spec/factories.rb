#require 'faker'

FactoryGirl.define do

  factory :post, class: MinitestAndRspec::Post do
    name { Faker::Name.name }
    message { Faker::Lorem.sentence }
    votes { Faker::Number.number(6) }
  end
end
