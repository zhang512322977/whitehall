require 'test_helper'

class EditionTaxonomyTagFormTest < ActiveSupport::TestCase
  test '#load should request links to publishing-api' do
    content_id = "64aadc14-9bca-40d9-abb6-4f21f9792a05"
    taxons = ["c58fdadd-7743-46d6-9629-90bb3ccc4ef0"]

    publishing_api_has_links(
      {
        "content_id" => "64aadc14-9bca-40d9-abb6-4f21f9792a05",
        "links" => {
          "taxons" => taxons,
        },
        "version" => 1
      }
    )

    form = EditionTaxonomyTagForm.load(content_id)

    assert_equal(form.edition_content_id, content_id)
    assert_equal(form.selected_taxons, taxons)
    assert_equal(form.previous_version, 1)
  end

  test '#publish should send a patch links to publishing-api with the most specific selected taxons' do
    content_id = "64aadc14-9bca-40d9-abb6-4f21f9792a05"
    selected_taxons = %w(47b6ce42-0bfa-42ee-9ff1-7a9c71ee9727 c58fdadd-7743-46d6-9629-90bb3ccc4ef0)
    most_specific_taxons = %w(47b6ce42-0bfa-42ee-9ff1-7a9c71ee9727)

    form = EditionTaxonomyTagForm.new(
      edition_content_id: content_id,
      selected_taxons: selected_taxons,
      previous_version: 1,
    )

    form.publish!

    assert_publishing_api_patch_links(
      content_id,
      {
        links: {
          taxons: most_specific_taxons,
        },
        previous_version: 1
      }
    )
  end

  test '#publish ignores links to non-taxonomy content items' do
    content_id = "64aadc14-9bca-40d9-abb6-4f21f9792a05"
    taxons = ["aaaaaaaa-7743-46d6-9629-90bb3ccc4ef0"]

    form = EditionTaxonomyTagForm.new(
      edition_content_id: content_id,
      selected_taxons: taxons,
      previous_version: 1,
    )

    form.publish!

    assert_publishing_api_patch_links(
      content_id,
      {
        links: {
          taxons: [],
        },
        previous_version: 1
      }
    )
  end
end
