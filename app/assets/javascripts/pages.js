$(function(e) {

  function handle_coming_toggle (e) {
    var $tgt = $(e.target);
    var $container = $tgt.parents('.guest');
    if($tgt.hasClass('coming-yes')) {
      $('.menu-choices', $container).show('500');
    } else if($tgt.hasClass('coming-no')){
      $('.menu-choices', $container).hide('500');
    }
  };

  $('body').on('click', '.coming-toggle',  handle_coming_toggle);



    function initialize() {
        var mapOptions = {
          center: new google.maps.LatLng(54.969256, -1.598138),
          zoom: 14
        };
        var map = new google.maps.Map(document.getElementById("map"),
            mapOptions);

        map.setOptions({styles:
      [
        {
          "featureType": "water",
          "elementType": "geometry.fill",
          "stylers": [
            { "color": "#5ACDCD" }
          ]
        }
      ]});
      }
      google.maps.event.addDomListener(window, 'load', initialize);




})



