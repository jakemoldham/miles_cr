$(document).ready(function(){
  $(document).on("click", ".coming", function(){
    if ($(".coming").hasClass("notcomming-check")) {
      console.log("comming has notcomming-check");
      $(".coming").removeClass('');
      $(".fa-caret-right").removeClass('fa-caret-right');
      $(".fa-caret-left").removeClass('fa-caret-left');
      $(".coming").addClass('comming-check');
      $(".coming").prepend('<div class="fa fa-caret-right carrots">');
      $(".coming").append('<div class="fa fa-caret-left carrots">');
      //$(".coming").html('<div class="fa fa-caret-right carrots"></div>#{check_box_tag "coming", "yes", false, id: "coming"}<div class="fa fa-caret-left carrots"></div>');
    } else {
      console.log("comming hitting your first else statment");
    }
    if ($(".notcoming").hasClass('notcomming-check')) {
      console.log("Do nothing")
    } else {
      console.log("comming hitting your second else statment");
      $(".notcoming").addClass("notcomming-check");
      $(".notcoming").html('<label class="notcoming">NO</lable>#{check_box_tag "coming", "no", false, id: "notcoming"}');
    }
  });
  $(document).on("click", ".notcoming", function(){
    if ($(".notcoming").hasClass("notcomming-check")) {
      console.log("notcoming has notcomming-check");
      $(".notcoming").removeClass('');
      $(".fa-caret-right").removeClass('fa-caret-right');
      $(".fa-caret-left").removeClass('fa-caret-left');
      $(".notcoming").addClass('comming-check');
      $(".notcoming").prepend('<div class="fa fa-caret-right carrots">');
      $(".notcoming").append('<div class="fa fa-caret-left carrots">');
    } else {
      console.log("comming hitting your first else statment");
    }
    if ($(".coming").hasClass('notcomming-check')) {
      console.log("Do nothing")
    } else {
      $(".coming").addClass('notcomming-check');
      $(".coming").html('<label class="coming">YES</label>#{check_box_tag "coming", "yes", false, id: "coming"}');
    }
  });

  $("input:checkbox").on('click', function() {
    // in the handler, 'this' refers to the box clicked on
    var $box = $(this);
    if ($box.is(":checked")) {
      var group = "input:checkbox[class='" + $box.attr("class") + "']";
      $(group).prop("checked", false);
      $box.prop("checked", true);
      console.log("left");
    } else {
      $box.prop("checked", false);
      console.log("right");
    }
  });
})
