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
  console.log(lesson, user, stat);

  request("POST", "/bookings", {booking:{lesson_id: lesson, user_id: user, status: stat}}).done(function(data){
    console.log("updated bookings table");
  });
};

$(document).ready(function(){
  $("#apply-to-join").on("click", function(e){

    var lesson = $('#apply-to-join').data('id');
    var user = $('#apply-to-join').data('user');
    var stat = "pending";

    // debugger

    createBooking(lesson.toString(), user.toString(), stat);
    
    // console.log($('#apply-to-join').data('id'));
    // console.log($('#apply-to-join').data('user'));
  });
});