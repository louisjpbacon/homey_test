FactoryBot.define do
  factory :status_change do
    status { :not_started }
    association :user
    association :project
  end
end