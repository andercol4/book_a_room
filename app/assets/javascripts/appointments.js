// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function(){

  $('#calendar').fullCalendar({
      dayClick: function() {
        window.location.pathname = '/appointmentsdate/' +$(this).data().date;
      }
  });

});
