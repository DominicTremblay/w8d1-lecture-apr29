FactoryBot.define do
  factory :artist do
    sequence(:name, 2) {|n| "Bob#{n} Squarepants"}
    email {'bob@sq.com'}
  end
end
