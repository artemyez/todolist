FactoryBot.define do
  factory :user, class: User do
    email { Faker::Internet.safe_email }
    password { Faker::Internet.password }
  end
end
