console.log("in the booking.js file")

function request(method, url, data){
  return $.ajax({
    url: url,
    method: method,
    dataType:"json",
    data: data
  });
};

function createBooking(lesson, user, stat){

  request("POST", "/bookings", {booking:{lesson_id: lesson, user_id: user, status: stat}}).done(function(data){
    console.log("updated booking table, ", "lesson id: ", lesson, "user id: ", user, stat);

    $("#apply-to-join").hide();
    $("#lesson-view-ul").append("<li>Your registration status: pending</li>");

  });
};

function changeBooking(lesson, user, stat, bookingId){

  request("PUT", "/bookings/"+bookingId, {booking:{lesson_id: lesson, user_id: user, status: stat}}).done(function(data){
    console.log("change booking table, ", "lesson id: ", lesson, "user id: ", user, stat, bookingId);

    // $("#apply-to-join").hide();
    // $("#lesson-view-ul").append("<li>Your registration status: pending</li>");

  });
};

$(document).ready(function(){

  $("#apply-to-join").on("click", function(e){

    var lesson = $('#apply-to-join').data('id');
    var user = $('#apply-to-join').data('user');
    var stat = "pending";

    createBooking(lesson.toString(), user.toString(), stat);

  });

  $(".confirm-booking").on("click", function(e){

    $(this).each(function(index, booking){
      var lesson = $(booking).data('lessonid');
      var user = $(booking).data('user');
      var stat = "confirmed";
      var bookingId = $(booking).data('id');
      
      changeBooking(lesson.toString(), user.toString(), stat, bookingId);

    });
  });

});