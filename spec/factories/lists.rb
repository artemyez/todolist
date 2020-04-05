FactoryBot.define do
  factory :list, class: List do
    title { Faker::Food.dish }
    user_id { 1 }
  end
end
