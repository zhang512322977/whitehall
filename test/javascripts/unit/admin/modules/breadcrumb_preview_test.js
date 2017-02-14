module("BreadcrumbPreview", {
  setup: function(){
    $('#qunit-fixture').append('\
    <div class="topic-tree">\
        <p>\
          <label>\
            <input type="checkbox" name="edition_taxonomy_tag_form[taxons][]" id="7c75c541-403f-4cb1-9b34-4ddde816a80d" value="7c75c541-403f-4cb1-9b34-4ddde816a80d" taxon_title="School curriculum" taxon_node_depth="1" />\
            <span>School curriculum</span>\
          </label>\
        </p>\
      <div class="topics">\
        <p>\
          <label>\
            <input type="checkbox" name="edition_taxonomy_tag_form[taxons][]" id="904cfd73-2707-47b8-8754-5765ec5a5b68" value="904cfd73-2707-47b8-8754-5765ec5a5b68" taxon_title="Primary curriculum, key stage 1" taxon_node_depth="2" />\
            <span>Primary curriculum, key stage 1</span>\
          </label>\
        </p>\
        <div class="topics">\
          <p>\
            <label>\
              <input type="checkbox" name="edition_taxonomy_tag_form[taxons][]" id="07fdd985-f3ec-4f4e-a316-3f4fd491bd64" value="07fdd985-f3ec-4f4e-a316-3f4fd491bd64" taxon_title="Tests" taxon_node_depth="3" />\
              <span>Tests</span>\
            </label>\
          </p>\
        </div>\
      </div>\
    </div>\
    ');
  }
});

test("It fetches the current checked checkboxes", function() {
  var subject = new GOVUK.BreadcrumbPreview();

  subject.fetchCurrentCheckboxes($('#qunit-fixture .topic-tree'));

  ok(false);
});
