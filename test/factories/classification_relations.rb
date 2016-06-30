FactoryGirl.define do
  factory :classification_relation do
    association :classification, factory: :policy_area
    association :related_classification, factory: :policy_area
  end
end
