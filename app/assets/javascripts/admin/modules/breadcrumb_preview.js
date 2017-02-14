(function(Modules) {
  "use strict";

  Modules.BreadcrumbPreview = function() {
    var that = this;

    that.start = function(element) {
      updateBreadcrumb();

      function updateBreadcrumb() {
        $('.topic-tree input[type="checkbox"]').on('change', function(event) {
          var checkboxes = $('.topic-tree :checked');
          var breadcrumbs = [];

          checkboxes.each(function(index, checkbox) {
            breadcrumbs.push($(checkbox).attr('taxon_title'));
          })

          $(element).html(breadcrumbs.join(' > '));
        });

      }
    }
  };
})(window.GOVUKAdmin.Modules);
