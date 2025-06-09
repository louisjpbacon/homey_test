FactoryBot.define do
  factory :comment do
    body { "Test comment body" }
    association :user
    association :project
  end
end