$(document).ready(function() {

  console.log($('body'))

  $(".workflow_change").click( function() {
    console.log("workflow_change")
    var link = $(this).attr("link")
    $.ajax({
      url: link,
      dataType: "script",
      type: "PUT"
    })
  })

  // $(".hide_location").click( function() {
  //   $(".hide_location").hide();
  // })

  // $(".show_location").click( function() {
  //   $(".show_location").show();    
  // })
  

})