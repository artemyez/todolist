FactoryBot.define do
  factory :list, class: List do
    title { Faker::Food.dish }
    user
  end
end
