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

function changeBooking(lesson, user, stat, bookingId, booking){

  console.log("change booking table, ", "lesson id: ", lesson, "user id: ", user, stat, bookingId);
  console.log("/bookings/"+bookingId);

  request("PUT", "/bookings/"+bookingId, {booking:{lesson_id: lesson, user_id: user, status: stat}}).done(function(data){

    console.log("booking created?", stat);
    debugger;

    // if stat === "confirmed"
    //   then turn off button and make text "attended"


    $(this).text("confirmed");
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

      // if button text is pending?
      //   do the above

      // else if the button text is confirmed?
      //   status = attended
      //   make request and in the done disable the button
      
      changeBooking(lesson.toString(), user.toString(), stat, bookingId.toString(), booking);

    });
  });

});