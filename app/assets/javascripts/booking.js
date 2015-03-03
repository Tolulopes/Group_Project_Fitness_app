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
    var variable = $("#lesson-availability").data("avail");
    console.log(variable);
    // $("#lesson-availability").replaceWith("<li>Availability:" + variable + "</li>");

    // console.log($("#lesson-availability").data("lesson-id"));
  });
};

$(document).ready(function(){
  $("#apply-to-join").on("click", function(e){

    var lesson = $('#apply-to-join').data('id');
    var user = $('#apply-to-join').data('user');
    var stat = "pending";

    createBooking(lesson.toString(), user.toString(), stat);

  });

});