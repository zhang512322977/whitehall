(function(Modules) {
  "use strict";

  Modules.BreadcrumbPreview = function() {
    var that = this;

    var visitTopic = function($topic) {
      var thisTitle = $topic.prev('p').find('span').text();
      var $children = $topic.children('.topics');
      var breadcrumbs = [];

      if ($children.length == 0) {
        breadcrumbs.push([thisTitle]);
      } else {
        $children.each(function(index, child) {
          var childBreadcrumbs = visitTopic($(child));

            $(childBreadcrumbs).each(function(index, childBreadcrumb) {
              childBreadcrumb.unshift(thisTitle);
              breadcrumbs.push(childBreadcrumb);
            });
        });
      }


      return breadcrumbs;
    }

    that.start = function(element) {
      updateBreadcrumb();

      function updateBreadcrumb() {
        $('.topic-tree').on('change', function(event) {
          var breadcrumbs = visitTopic($('.topic-tree'));
          console.log(breadcrumbs);

          $(element).html(breadcrumbs[0].join('>'));
        });

      }
    }
  };
})(window.GOVUKAdmin.Modules);
