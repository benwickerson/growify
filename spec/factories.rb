FactoryGirl.define do
  factory :user do
    name     "Ben Wickerson"
    email    "ben@test.com"
    password "foobar"
    password_confirmation "foobar"
  end
end