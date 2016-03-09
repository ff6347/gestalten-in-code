$(document).ready(function() {


  $.ajax({
    url: "README.md",
    dataType: "text",
    success: function(data) {
      var writer = new stmd.HtmlRenderer();
      var reader = new stmd.DocParser();
      var parsed = reader.parse(data);
      var result = writer.renderBlock(parsed);
      $("#info").html(result);
    }
  });
});