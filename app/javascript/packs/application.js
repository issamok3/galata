// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import { initConversationCable } from '../channels/conversation_channel';
import { initNotifications } from '../components/init_notifications'
import { initMarkNotificationAsRead } from '../components/init_mark_as_read'


Rails.start()
Turbolinks.start()
ActiveStorage.start()

// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// CSS imports
import 'mapbox-gl/dist/mapbox-gl.css';
// External imports
import "bootstrap";
import { initMapbox } from '../plugins/init_mapbox';
import { initGeolocateBtn } from '../plugins/init_geolocatebtn';


// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

document.addEventListener('turbolinks:load', () => {
  initMapbox();
  initConversationCable();
  initNotifications();
  initMarkNotificationAsRead();
  initGeolocateBtn();
});

require("trix")
require("@rails/actiontext")
