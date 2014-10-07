FactoryGirl.define do
  factory :user do
    name    "Jane Doe"
    email   "person@poo.com"
    password "foobar"
    password_confirmation "foobar"
  end
end