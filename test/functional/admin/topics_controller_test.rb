require 'test_helper'

class Admin::TopicsControllerTest < ActionController::TestCase
  setup do
    login_as :writer
  end

  should_be_an_admin_controller

  ### Describing :index ###

  view_test "GET :index lists the topical events in alphabetial order" do
    topic_c = create(:policy_area, name: "PolicyArea C")
    topic_a = create(:policy_area, name: "PolicyArea A")
    topic_b = create(:policy_area, name: "PolicyArea B")

    get :index

    assert_response :success
    assert_select "#{record_css_selector(topic_a)} + #{record_css_selector(topic_b)} + #{record_css_selector(topic_c)}"
  end

  ### Describing :show ###

  view_test "GET :show lists the topic's details" do
    topic = create(:policy_area)
    get :show, id: topic

    assert_response :success
    assert_select 'h1', topic.name
  end

  ### Describing :new ###

  view_test "GET :new displays topic form" do
    get :new
    assert_select "input[name='topic[name]']"
  end

  ### Describing :create ###

  test "POST :create creates a new topic" do
    first_topic = create(:policy_area)
    second_topic = create(:policy_area)
    attributes = attributes_for(:topic)

    post :create, topic: attributes.merge(
      related_classification_ids: [first_topic.id]
    )

    assert_response :redirect

    assert topic = PolicyArea.last
    assert_equal attributes[:name], topic.name
    assert_equal attributes[:description], topic.description
    assert_equal [first_topic].to_set, topic.related_classifications.to_set
  end

  view_test "POST :create with bad data shows errors" do
    post :create, topic: attributes_for(:topic).merge(name: "")

    assert_template :new
    assert_select ".form-errors"
  end

  ### Describing :edit ###

  view_test "GET :edit renders the edit form" do
    topic = create(:policy_area)
    get :edit, id: topic

    assert_response :success
    assert_select "input[name='topic[name]'][value='#{topic.name}']"
  end

  ### Describing :update ###

  test "PUT :update saves changes to the topic and redirects" do
    topic = create(:policy_area)

    put :update, id: topic, topic: {
      name: "new-name",
      description: "new-description"
    }

    assert_response :redirect
    assert_equal "new-name", topic.reload.name
    assert_equal "new-description", topic.description
  end

  view_test "PUT :update with bad data renders errors" do
    topic = create(:policy_area, name: 'topic')
    put :update, id: topic.id, topic: {name: "Blah", description: ""}

    assert_equal 'topic', topic.reload.name
    assert_select ".form-errors"
  end

  test "PUT :update re-orders editions" do
    topic = create(:policy_area)
    publication = create(:publication, policy_areas: [topic])
    association = topic.classification_memberships.first

    put :update, id: topic.id, topic: {name: "Blah", description: "Blah", classification_memberships_attributes: {
      "0" => {id: association.id, ordering: "4"}
    }}

    assert_equal 4, association.reload.ordering
  end

  ### Describing :destroy ###

  test "DELETE :destroy deletes a deletable topic" do
    topic = create(:policy_area)
    delete :destroy, id: topic.id

    assert_response :redirect
    assert topic.reload.deleted?
  end

  test "DELETE :destroy does not delete topics with associated content" do
    topic = create(:policy_area, policy_content_ids: [policy_1["content_id"]])

    delete :destroy, id: topic
    assert_equal "Cannot destroy Policy area with associated content", flash[:alert]
    refute topic.reload.deleted?
  end
end
