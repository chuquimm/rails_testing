// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// Vue.js
import Vue from 'vue'

import TurbolinksAdapter from 'vue-turbolinks'
import BootstrapVue from 'bootstrap-vue'

import VueSelect from 'vue-select'
import VuejsDatepicker from 'vuejs-datepicker'
import CKEditor from '@ckeditor/ckeditor5-vue'

import AppHeader from 'views/app_header'

Vue.use(TurbolinksAdapter)
Vue.use(BootstrapVue)
Vue.use(CKEditor)

Vue.component('vue-select', VueSelect)
Vue.component('vuejs-datepicker', VuejsDatepicker)

Vue.component('app-header', AppHeader)

document.addEventListener('turbolinks:load', () => {
  const app = new Vue({
    el: '[data-behavior="vue"]'
  })
})