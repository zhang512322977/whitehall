Given /^a policy_area called "([^"]*)" exists$/ do |name|
  @policy_area = create(:policy_area, name: name)
end

Given /^a policy_area called "([^"]*)" with description "([^"]*)"$/ do |name, description|
  create(:policy_area, name: name, description: description)
end

Given(/^the publication "(.*?)" is associated with the policy_area "(.*?)"$/) do |publication_name, policy_area_name|
  publication = Publication.find_by!(title: publication_name)
  policy_area = PolicyArea.find_by!(name: policy_area_name)

  publication.policy_areas << policy_area
end

Given /^the policy_area "([^"]*)" is associated with organisation "([^"]*)"$/ do |policy_area_name, organisation_name|
  policy_area = PolicyArea.find_by(name: policy_area_name) || create(:policy_area, name: policy_area_name)
  organisation = Organisation.find_by(name: organisation_name) || create(:ministerial_department, name: organisation_name)
  organisation.policy_areas << policy_area
end

Given /^the policy_area "([^"]*)" has "([^"]*)" as a lead organisation$/ do |policy_area_name, organisation_name|
  policy_area = PolicyArea.find_by(name: policy_area_name) || create(:policy_area, name: policy_area_name)
  organisation = Organisation.find_by(name: organisation_name) || create(:ministerial_department, name: organisation_name)
  OrganisationClassification.create(policy_area: policy_area, organisation: organisation, lead: true)
end

Given /^two policy_areas "([^"]*)" and "([^"]*)" exist$/ do |first_policy_area, second_policy_area|
  create(:policy_area, name: first_policy_area)
  create(:policy_area, name: second_policy_area)
end

Given /^the policy_area "([^"]*)" is related to the policy_area "([^"]*)"$/ do |name, related_name|
  related_policy_area = create(:policy_area, name: related_name)
  policy_area = PolicyArea.find_by(name: name)
  policy_area.update_attributes!(related_classifications: [related_policy_area])
end

Given(/^a (policy_area|topical event) called "(.*?)" exists with featured documents$/) do |type, name|
  classification = if type == 'policy_area'
    create(:policy_area, name: name)
  else
    create(:topical_event, name: name)
  end

  create(:classification_featuring, classification: classification)
end

Given(/^I have an offsite link "(.*?)" for the policy_area "(.*?)"$/) do |title, policy_area_name|
  policy_area = PolicyArea.find_by(name: policy_area_name)
  @offsite_link = create :offsite_link, title: title, parent: policy_area
end

When /^I create a new policy_area "([^"]*)" with description "([^"]*)"$/ do |name, description|
  create_policy_area(name: name, description: description)
end

When /^I create a new policy_area "([^"]*)" related to policy_area "([^"]*)"$/ do |name, related_name|
  create_policy_area(name: related_name)
  create_policy_area(name: name, related_classifications: [related_name])
end

When /^I edit the policy_area "([^"]*)" to have description "([^"]*)"$/ do |name, description|
  visit admin_root_path
  click_link "Policy Areas"
  click_link name
  click_on "Edit"
  fill_in "Description", with: description
  click_button "Save"
end

When /^I visit the list of policy_areas$/ do
  visit policy_areas_path
end

When /^I visit the "([^"]*)" (policy_area|topical event)$/ do |name, type|
  path = if type == 'policy_area'
    policy_area = PolicyArea.find_by!(name: name)
    policy_area_path(policy_area)
  else
    topical_event = TopicalEvent.find_by!(name: name)
    topical_event_path(topical_event)
  end

  visit path
end

When /^I set the order of the policies in the "([^"]*)" policy_area to:$/ do |name, table|
  policy_area = PolicyArea.find_by!(name: name)
  visit edit_admin_policy_area_path(policy_area)
  table.rows.each_with_index do |(policy_name), index|
    fill_in policy_name, with: index
  end
  click_button "Save"
end

When /^I set the order of the lead organisations in the "([^"]*)" policy_area to:$/ do |policy_area_name, table|
  policy_area = PolicyArea.find_by!(name: policy_area_name)
  visit edit_admin_policy_area_path(policy_area)

  lead_organisations = table.rows.map { |(organisation_name)| organisation_name }
  lead_organisations.each_with_index do |organisation_name, index|
    fill_in organisation_name, with: index
    fill_in organisation_name + ' is lead?', with: '1'
  end
  other_organisations = policy_area.organisations.map(&:name) - lead_organisations
  other_organisations.each do |organisation_name|
    fill_in organisation_name, with: ''
    fill_in organisation_name + ' is lead?', with: '0'
  end
  click_button "Save"
end

Then /^I should see in the admin the "([^"]*)" policy_area description is "([^"]*)"$/ do |name, description|
  visit admin_policy_areas_path
  assert page.has_css?(".name", text: name)
  assert page.has_css?(".description", text: description)
end

Then /^I should see in the admin the "([^"]*)" policy_area is related to policy_area "([^"]*)"$/ do |name, related_name|
  visit admin_policy_areas_path
  policy_area = PolicyArea.find_by(name: name)
  related_policy_area = PolicyArea.find_by(name: related_name)
  assert page.has_css?("#{record_css_selector(policy_area)} .related #{record_css_selector(related_policy_area)}")
end

Then /^I should be able to delete the policy_area "([^"]*)"$/ do |name|
  visit admin_policy_areas_path
  click_link name
  click_on 'Edit'
  click_button 'Delete'
end

Then /^I should see the order of the policies in the "([^"]*)" policy_area is:$/ do |name, expected_table|
  policy_area = PolicyArea.find_by!(name: name)
  visit policy_area_path(policy_area)
  rows = find("#policies").all('h2')
  table = rows.map { |r| r.all('a').map { |c| c.text.strip } }
  expected_table.diff!(table)
end

Then /^I should see the order of the lead organisations in the "([^"]*)" policy_area is:$/ do |policy_area_name, expected_table|
  policy_area = PolicyArea.find_by!(name: policy_area_name)
  visit edit_admin_policy_area_path(policy_area)
  rows = find("#lead_organisation_order").all(:xpath, './/label[./a]')
  table = rows.map { |r| r.all('a').map { |c| c.text.strip } }
  expected_table.diff!(table)
end

Then /^I should see the following organisations for the "([^"]*)" policy_area:$/ do |policy_area_name, expected_table|
  policy_area = PolicyArea.find_by!(name: policy_area_name)
  visit edit_admin_policy_area_path(policy_area)
  rows = find("#organisations").all(:xpath, './/label[./a]')
  table = rows.map { |r| r.all('a').map { |c| c.text.strip } }
  expected_table.diff!(table)
end

Then /^I should see the policy_areas "([^"]*)" and "([^"]*)"$/ do |first_policy_area_name, second_policy_area_name|
  first_policy_area = PolicyArea.find_by!(name: first_policy_area_name)
  second_policy_area = PolicyArea.find_by!(name: second_policy_area_name)
  assert page.has_css?(record_css_selector(first_policy_area), text: first_policy_area_name)
  assert page.has_css?(record_css_selector(second_policy_area), text: second_policy_area_name)
end

Then /^I should see a link to the related policy_area "([^"]*)"$/ do |related_name|
  related_policy_area = PolicyArea.find_by(name: related_name)
  assert page.has_css?(".related-policy_areas a[href='#{policy_area_path(related_policy_area)}']", text: related_name)
end

When(/^I feature the publication "([^"]*)" on the policy_area "([^"]*)"$/) do |publication_name, policy_area_name|
  publication = Publication.find_by!(title: publication_name)
  policy_area = PolicyArea.find_by!(name: policy_area_name)

  visit admin_policy_area_path(policy_area)
  click_on 'Features'

  within record_css_selector(publication) do
    click_link "Feature"
  end
  attach_file "Select a 960px wide and 640px tall image to be shown when featuring", jpg_image
  fill_in :classification_featuring_alt_text, with: "An accessible description of the image"
  click_button "Save"
end

When(/^I add the offsite link "(.*?)" of type "(.*?)" to the policy_area "(.*?)"$/) do |title, type, policy_area_name|
  policy_area = PolicyArea.find_by!(name: policy_area_name)
  visit admin_policy_area_classification_featurings_path(policy_area)
  click_link "Create an offsite link"
  fill_in :offsite_link_title, with: title
  select type, from: 'offsite_link_link_type'
  fill_in :offsite_link_summary, with: "summary"
  fill_in :offsite_link_url, with: "http://gov.uk"
  click_button "Save"
end

When(/^I feature the offsite link "(.*?)" for policy_area "(.*?)" with image "(.*?)"$/) do |offsite_link_title, policy_area_name, image_filename|
  policy_area = PolicyArea.find_by!(name: policy_area_name)
  visit admin_policy_area_classification_featurings_path(policy_area)
  @offsite_link = OffsiteLink.find_by(title: offsite_link_title)
  within record_css_selector(@offsite_link) do
    click_link "Feature"
  end
  attach_file "Select a 960px wide and 640px tall image to be shown when featuring", Rails.root.join("test/fixtures/#{image_filename}")
  fill_in :classification_featuring_alt_text, with: "An accessible description of the image"
  click_button "Save"
end

Then(/^I should see the publication "([^"]*)" featured on the public policy_area page for "([^"]*)"$/) do |publication_name, policy_area_name|
  publication = Publication.find_by!(title: publication_name)
  policy_area = PolicyArea.find_by!(name: policy_area_name)

  visit policy_area_path(policy_area)

  within('section.featured-news') do
    assert page.has_content?(publication.title)
  end
end

Then(/^I should see the offsite link featured on the public policy_area page$/) do
  visit policy_area_path(@policy_area)
  within('section.featured-news') do
    assert page.has_content?(@offsite_link.title)
  end
end

When /^I add some featured links to the policy_area "([^"]*)" via the admin$/ do |policy_area_name|
  policy_area = PolicyArea.find_by!(name: policy_area_name)
  visit admin_policy_area_path(policy_area)
  click_link "Edit"
  within ".featured-links" do
    fill_in "URL", with: "https://www.gov.uk/mainstream/tool-alpha"
    fill_in "Title", with: "Tool Alpha"
  end
  click_button "Save"
end

Then /^the featured links for the policy_area "([^"]*)" should be visible on the public site$/ do |policy_area_name|
  visit_policy_area policy_area_name
  within ".featured-links" do
    assert page.has_css?("a[href='https://www.gov.uk/mainstream/tool-alpha']", "Tool Alpha")
  end
end

Then(/^I should see the edit offsite link "(.*?)" on the "(.*?)" policy_area page$/) do |title, policy_area_name|
  policy_area = PolicyArea.find_by!(name: policy_area_name)
  offsite_link = OffsiteLink.find_by!(title: title)
  visit admin_policy_area_path(policy_area)
  page.has_link?(title, href: edit_admin_policy_area_offsite_link_path(policy_area.id, offsite_link.id))
end

When(/^I start creating a policy_area$/) do
  start_creating_policy_area
end
