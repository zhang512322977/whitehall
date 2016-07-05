Given(/^a publicationesque that can be assigned to policies and policy_areas$/) do
  @edition = create(:draft_publication)
  @policy_area = create(:policy_area)
end

When(/^I assign the publicationesque to a policy_area$/) do
  visit edit_admin_publication_path(@edition)
  select @policy_area.name, from: 'edition_policy_area_ids'
  click_button 'Save'
end

Then(/^the edition will be assigned to the policy_area$/) do
  assert @edition.policy_areas.include?(@policy_area)
end

Given(/^an announcement that can be assigned to policies and policy_areas$/) do
  @edition = create(:draft_news_article)
  @policy_area = create(:policy_area)
end

When(/^I assign the announcement to a policy with policy_areas$/) do
  visit edit_admin_news_article_path(@edition)
  select "Policy 1", from: 'edition_policy_content_ids'
end

Then(/^the policy's policy_areas will be copied from the policy to the announcement$/) do
  assert page.has_css?('li.search-choice span', text: /^#{@policy_area.name}$/)
  click_button 'Save'
end
