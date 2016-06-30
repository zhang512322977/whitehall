FactoryGirl.define do
  factory :organisation_classification do
    organisation { FactoryGirl.build(:organisation) }
    classification { FactoryGirl.build(:policy_area) }
    lead false
  end
end
