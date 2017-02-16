(function(Modules) {
  "use strict";

  Modules.BreadcrumbPreview = function() {
    var that = this;

    that.fetchCurrentCheckboxes = function() {
      return $('.topic-tree :checked');
    };

    that.buildBreadcrumbsStructure = function(elements) {

    };

    that.toString = function(arrayOfArrays) {
      var string = "";

      arrayOfArrays.forEach(function(values, index) {
        var result = values.map(function (value, index) {
          if (index == (values.length - 1)) {
            value = "<b>" + value + "</b>"
          }
          return value;
        });

        string = string.concat(result.join(' > ') + '<br />');
      });

      return string;
    };

    that.start = function(element) {
      var checkboxes = that.fetchCurrentCheckboxes();

      var arrays = [
        ['School curriculum' , 'Primary curriculum, key stage 1', 'Tests'],
        ['Further and higher education, skills and vocational training', 'Apprenticeships, traineeships and internships', 'Employers and training organisations']
      ];

      $(element).html(that.toString(arrays));

      // first iteration. when the page loads, needs to show the ones already checked.
      // if (checkboxes.length > 0) {
      //   var breadcrumbs = [];
      //
      //   checkboxes.each(function(index, checkbox) {
      //     breadcrumbs.push($(checkbox).attr('taxon_title'));
      //   })
      //
      //   $(element).html(breadcrumbs.join(' > '));
      // }


      updateBreadcrumb();

      function updateBreadcrumb() {
        $('.topic-tree input[type="checkbox"]').on('change', function(event) {
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
