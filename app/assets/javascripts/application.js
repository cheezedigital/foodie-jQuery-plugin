//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require moment
//= require fullcalendar
//= require chosen-jquery
//= require backstretch
//= require_self

$(function () {
  $('body').backstretch("http://www.allaboutjazz.com/media/medium/5/c/3/5fe95d0cee2b3abb96b089d077712.jpg");
});

var startTheParty = function() {
  console.log('it works!');
  window.setTimeout(function(){
    $('#hello').modal('show');
  }, 1500);
};

var loadEvents = function() {
  $.getJSON('/events', function(events) {
    $('#calendar').fullCalendar({
      events: events,
      header: {
        left: 'prev',
        center: 'title',
        right: 'next'
      },
      dayClick: function(date, jsEvent, view) {
        var today = date.format('MMM Do YYYY');
        $('#hello .modal-dialog .modal-content .modal-body p').replaceWith('<p>Today is '+today+'</p>');
        $('#hello').modal('show');
      }
    });
  });
});



$(function() {
  loadEvents();


  // $.getJSON('/places', function(data) {
  //   console.log(data);
  // });
  //
  // $.getJSON('/restaurants', function(restaurants) {
  //   $(restaurants).each(function(index, restaurant) {
  //     $('#restaurants').append('<p>' + restaurant.name + '</p>')
  //   });
  // });



var $form = $('form#new_event');
  $('input.btn', $form).click(function() {
    $.post($form.attr('action'), $form.serialize(), function(data) {
      console.log(data);
      console.log('Event created');
      $('#create-event').modal('hide');
      $('#calendar').html('');
      loadEvents();
    });
    return false;
  });
});

// $(function() {
//   // enable chosen js
//   $('.chosen-select').chosen({
//     allow_single_deselect: true,
//     no_results_text: 'No results matched',
//     width: '200px'
//   });
//
// });
