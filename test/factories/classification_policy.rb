FactoryGirl.define do
  factory :classification_policy do
    association :classification, factory: :policy_area
  end
end
