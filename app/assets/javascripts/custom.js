jQuery(document).ready(function($) {
  $(".datepicker").datepicker({
    dateFormat: "yy-mm-dd"
  });

  $('#myTab a').click(function (e) {
    e.preventDefault()
    $(this).tab('show');
  })
})