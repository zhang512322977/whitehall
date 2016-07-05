Then(/^I can tag the edition to some policies$/) do
  tag_to_policies(policies: [policy_1])
  check_edition_is_tagged_to_policies(edition: Publication.last, policies: [policy_area_1, policy_1])
end

Then(/^I can tag the policy_area to some policies$/) do
  tag_to_policies(policies: [policy_1])
  check_policy_area_is_tagged_to_policies(policy_area: PolicyArea.last, policies: [policy_area_1, policy_1])
end
