import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

import "../plugins/flatpickr"

import { previewImageOnFileSelect } from "../components/photo_preview"


import { initMapbox } from '../plugins/init_mapbox';
// import { initAddressAutocomplete } from '../plugins/init_autocomplete'

previewImageOnFileSelect();
initMapbox();
// initAddressAutocomplete();
