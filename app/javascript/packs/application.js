import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

import "../plugins/flatpickr"
import { initSliders } from "../plugins/slider"
import { toggleNavbar } from "../components/navbar"
import { initStarRating } from '../plugins/init_star_rating';


import { previewImageOnFileSelect } from "../components/photo_preview"


import { initMapbox } from '../plugins/init_mapbox';
import { initAddressAutocomplete } from '../plugins/init_autocomplete'
import { initSweetalert } from '../plugins/init_sweetalert';


initStarRating();
toggleNavbar();
previewImageOnFileSelect();
initMapbox();
initAddressAutocomplete();
initSliders();
initSweetalert('#sweet-alert-demo', {
  title: "Are you sure?",
  text: "Your booking will be permanently deleted",
  icon: "warning",
  buttons: true,
  dangerMode: true,
}, (value) => {
  if (value) {
    document.querySelector('#delete-booking-btn').click();
    // const link = document.querySelector('#delete-link');
    // link.click();
  }
});
