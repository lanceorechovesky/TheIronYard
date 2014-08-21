$(document).ready(function() {

  console.log($('body'))
  
  $(".search_hospital_patients").click( function() {
    var link = $(this).attr("link")
    console.log($('.hospital_patient_search').val())
    $.ajax({
      url: link,
      dataType: "script",
      type: "GET",
      data: {q: $('.hospital_patient_search').val()}
    })
  })
})