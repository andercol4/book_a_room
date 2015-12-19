// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function(){
  var $date

  $('#calendar').fullCalendar({
      dayClick: function() {
        $date = $(this).data().date;
      
        window.location.pathname = '/appointmentsdate/' + $date

        // $.ajax('/appointmentsdate/' + $date, {
        //   type: 'GET',
        //   dataType: 'HTML',
        //   success: function(data){
        //
        //     $("#calendar").html(data)
        //
        //     var dateTime = $('#date_time').html()
        //
        //     createTime(dateTime)
        //   },
        //   error: function(data){
        //     debugger;
        //   }
        // })
      }
  });

  function createTime(dateTime){
    var startTime = new Date(dateTime);


    var endTime = new Date(dateTime);
    debugger
  }

});
