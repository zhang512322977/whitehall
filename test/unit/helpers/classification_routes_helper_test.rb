require 'test_helper'

class ClassificationRoutesHelperTest < ActionView::TestCase
  test "given a topical event creates a topical event path" do
    classification = create(:topical_event)
    assert_equal send("topical_event_path", classification), classification_path(classification)
  end

  test "given a topical event creates a topical event url" do
    classification = create(:topical_event)
    assert_equal send("topical_event_url", classification), classification_url(classification)
  end

  test "given a policy area creates a policy area path" do
    classification = create(:policy_area)
    assert_equal send("policy_area_path", classification), classification_path(classification)
  end

  test "given a policy area creates a policy area url" do
    classification = create(:policy_area)
    assert_equal send("policy_area_url", classification), classification_url(classification)
  end
end
