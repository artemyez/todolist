FactoryBot.define do
  factory :task, class: Task do
    association(:list)
    title { Faker::Food.ingredient }
  end
end
