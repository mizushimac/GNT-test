(function() {
  $(document).on("turbolinks:load", function() {
    return $('*[data-toggle="dropdown"]').dropdown();
  });
}).call(this);