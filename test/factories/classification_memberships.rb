FactoryGirl.define do
  factory :classification_membership do
    publication
    classification factory: :policy_area
  end
end
