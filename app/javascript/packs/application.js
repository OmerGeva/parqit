import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

import "../plugins/flatpickr"
import { toggleNavbar } from "../components/navbar"
import { initStarRating } from '../plugins/init_star_rating';


import { previewImageOnFileSelect } from "../components/photo_preview"


import { initMapbox } from '../plugins/init_mapbox';
import { initAddressAutocomplete } from '../plugins/init_autocomplete'

initStarRating();
toggleNavbar();
previewImageOnFileSelect();
initMapbox();
initAddressAutocomplete();
