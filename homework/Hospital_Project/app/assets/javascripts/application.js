// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require bootstrap

$(document).ready(function() {

  console.log($('body'))
  
  var clean_email = $('input#user_email').val();

  $('input#user_email').addClass("valid")

  $('input#user_email').on( 'input', function() {
    var user_email = $( this ).val();
    var is_email = clean_email === user_email;
    if(is_email){
      $(this).removeClass("invalid").addClass("valid")
    }
    else{
      $(this).removeClass("valid").addClass("invalid")
    }
  })


    
})
