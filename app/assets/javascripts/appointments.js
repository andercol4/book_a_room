// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function(){

  $('#calendar').fullCalendar({
      dayClick: function() {

        var $date = $(this).data().date;
        $.ajax('/appointmentsdate/' + $date, {
          type: 'GET',
          dataType: 'HTML',
          success: function(data){
            
            $("#calendar").html(data)
          },
          error: function(data){
            debugger;
          }
        })
      }
  });

});
