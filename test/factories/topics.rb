FactoryGirl.define do
  factory :policy_area do
    sequence(:name) { |index| "topic-#{index}" }
    description 'PolicyArea description'
  end
end
