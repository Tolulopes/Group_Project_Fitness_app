console.log("in the booking.js file")

function request(method, url, data){
  return $.ajax({
    url: url,
    method: method,
    dataType:"json",
    data: data
  });
};

function changeBooking(lesson, user, stat){

  request("POST", "/bookings", {booking:{lesson_id: lesson, user_id: user, status: stat}}).done(function(data){
    console.log("updated booking table, ", "lesson id: ", lesson, "user id: ", user, stat);

    if(stat === "pending") {
      $("#apply-to-join").hide();
      // var nowAvailable = $("#lesson-availability").data("avail") - 1;
      // $("#lesson-availability").replaceWith("<li>Available space left: " + nowAvailable + "</li>");
      $("#lesson-view-ul").append("<li>Your registration status: pending</li>");
    }else if ( stat === "confirmed" ) {
      
    }
  });
};

// function confirmBooking(lesson, user, stat){
//   console.log("inside confirm booking function")
  

  // request("POST", "/bookings", {booking:{lesson_id: lesson, user_id: user, status: stat}}).done(function(data){
  //   console.log("updated booking table, ", "lesson id: ", lesson, "user id: ", user, stat);
  //   $("#apply-to-join").hide();

  //   var nowAvailable = $("#lesson-availability").data("avail") - 1;

  //   $("#lesson-availability").replaceWith("<li>Available space left: " + nowAvailable + "</li>");
  // });
// };

$(document).ready(function(){
  $("#apply-to-join").on("click", function(e){

    var lesson = $('#apply-to-join').data('id');
    var user = $('#apply-to-join').data('user');
    var stat = "pending";

    changeBooking(lesson.toString(), user.toString(), stat);

  });

  $(".confirm-booking").on("click", function(e){

    $(this).each(function(index, booking){
      var lesson = $(booking).data('id');
      var user = $(booking).data('user');
      var stat = "confirmed";
      
      changeBooking(lesson.toString(), user.toString(), stat);

    });

  });

});