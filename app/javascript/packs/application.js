import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

import "../plugins/flatpickr"

import { initMapbox } from '../plugins/init_mapbox';
// import { initAddressAutocomplete } from '../plugins/init_autocomplete'


initMapbox();
// initAddressAutocomplete();
