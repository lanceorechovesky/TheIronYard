

$(document).ready(function() {

  console.log($('body'))
  
  $(".search_hospitals").click( function() {
    console.log($('.hospital_search').val())
    $.ajax({
      url: "/search_hospitals",
      dataType: "script",
      type: "GET",
      data: {q: $('.hospital_search').val()}
    })
  })

  // $('#hospital_name').on('input', function() {
  //   var input=$(this);
  //   var is_name=input.val();
  //   if(is_name){input.removeClass("invalid").addClass("valid");}
  //   else{input.removeClass("valid").addClass("invalid");}
  // });
  
})
