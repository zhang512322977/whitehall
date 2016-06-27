require "test_helper"

class TopicsControllerTest < ActionController::TestCase
  include FeedHelper

  should_be_a_public_facing_controller

  view_test "GET :shows lists the policy_area details, setting the expiry headers based on the scheduled editions" do
    organisation_1 = create(:organisation)
    organisation_2 = create(:organisation)
    publication = create(:draft_publication, :scheduled)
    policy_area = create(:topic, editions: [publication, create(:published_news_article)])
    policy_area.organisations << organisation_1
    policy_area.organisations << organisation_2

    controller.expects(:expire_on_next_scheduled_publication).with(policy_area.scheduled_editions)

    get :show, id: policy_area

    assert_select "h1", text: policy_area.name
    assert_select ".govspeak", text: policy_area.description
    assert_equal policy_area.description, assigns(:meta_description)
    assert_select "a[href=?]", organisation_path(organisation_1)
    assert_select "a[href=?]", organisation_path(organisation_2)
  end

  view_test "GET :show lists published publications and links to more" do
    policy_area = create(:topic)
    published = []
    4.times do |i|
      published << create(:published_publication, {
        title: "title-#{i}", topics: [policy_area], first_published_at: i.days.ago
      })
    end

    get :show, id: policy_area

    assert_select "#publications" do
      published.take(3).each do |edition|
        assert_select_object(edition) do
          assert_select "h2", text: edition.title
        end
      end
      refute_select_object(published[3])
    end
  end

  view_test "GET :show lists published consultations and links to more" do
    policy_area = create(:topic)
    published = []
    4.times do |i|
      published << create(:published_consultation, {
        title: "title-#{i}", topics: [policy_area], opening_at: i.days.ago
      })
    end

    get :show, id: policy_area

    assert_select "#consultations" do
      published.take(3).each do |edition|
        assert_select "a", text: edition.title, href: public_document_path(edition)
      end
      refute_select "a", text: published[3].title
    end
  end

  view_test "GET :show lists published statistical publications and links to more" do
    policy_area = create(:topic)
    published = []
    4.times do |i|
      published << create(:published_statistics, {
        title: "title-#{i}", topics: [policy_area], first_published_at: i.days.ago
      })
    end

    get :show, id: policy_area

    assert_select "#statistics" do
      published.take(3).each do |edition|
        assert_select "a", text: edition.title, href: public_document_path(edition)
      end
      refute_select "a", text: published[3].title
    end
  end

  view_test "GET :show lists published announcements and links to more" do
    policy_area = create(:topic)
    published = []
    4.times do |i|
      published << create(:published_news_article, {
        title: "title-#{i}", topics: [policy_area], first_published_at: i.days.ago
      })
    end

    get :show, id: policy_area

    assert_select "#announcements" do
      published.take(3).each do |edition|
        assert_select_object(edition) do
          assert_select "h2", text: edition.title
        end
      end
      refute_select_object(published[3])
    end
  end

  view_test "GET :show lists 5 published detailed guides and links to more" do
    published_detailed_guides = []
    6.times do |i|
      published_detailed_guides << create(:published_detailed_guide, title: "detailed-guide-title-#{i}")
    end
    policy_area = create(:topic, editions: published_detailed_guides)

    get :show, id: policy_area

    assert_select ".detailed-guidance" do
      published_detailed_guides.take(5).each do |guide|
        assert_select_object(guide) do
          assert_select "h2", text: guide.title
        end
      end
      refute_select_object(published_detailed_guides[5])
    end
  end

  view_test "GET :show displays latest documents relating to the policy_area, including atom feed and govdelivery links" do
    policy_area = create(:topic)
    publication_1 = create(:published_publication, topics: [policy_area])
    news_article = create(:published_news_article, topics: [policy_area])
    publication_2 = create(:published_publication, topics: [policy_area])
    create(:classification_featuring, classification: policy_area, edition: publication_1)

    get :show, id: policy_area

    assert_select "#recently-updated" do
      assert_select_prefix_object publication_1, prefix = "recent"
      assert_select_prefix_object publication_2, prefix = "recent"
      assert_select_prefix_object news_article, prefix = "recent"
    end

    assert_select ".govdelivery[href='#{new_email_signups_path(email_signup: { feed: atom_feed_url_for(policy_area) })}']"
    assert_select_autodiscovery_link atom_feed_url_for(policy_area)
  end

  view_test 'GET :show for atom feed has the right elements' do
    policy_area = create(:topic)
    publication = create(:published_publication, topics: [policy_area])

    get :show, id: policy_area, format: :atom

    assert_select_atom_feed do
      assert_select 'feed > id', 1
      assert_select 'feed > title', 1
      assert_select 'feed > author, feed > entry > author'
      assert_select 'feed > updated', 1
      assert_select 'feed > link[rel=?][type=?][href=?]', 'self', 'application/atom+xml', topic_url(policy_area, format: 'atom'), 1
      assert_select 'feed > link[rel=?][type=?][href=?]', 'alternate', 'text/html', topic_url(policy_area), 1

      assert_select_atom_entries([publication])
    end
  end

  test 'GET :show has a 5 minute expiry time' do
    policy_area = create(:topic)
    get :show, id: policy_area

    assert_cache_control("max-age=#{5.minutes}")
  end

  test 'GET :show caps max expiry to 5 minute when there are future scheduled editions' do
    policy_area = create(:topic)
    create(:scheduled_publication, scheduled_publication: 1.day.from_now, topics: [policy_area])

    get :show, id: policy_area

    assert_cache_control("max-age=#{5.minutes}")
  end

  test 'GET :show sets analytics organisation headers' do
    organisation = create(:organisation)
    policy_area = create(:topic)
    policy_area.organisations << organisation

    get :show, id: policy_area

    assert_equal "<#{organisation.analytics_identifier}>", response.headers["X-Slimmer-Organisations"]
  end
end
