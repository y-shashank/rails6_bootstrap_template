// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
import "../stylesheets/application";

// window.bootstrap = require('bootstrap/dist/js/bootstrap.bundle.js');

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

import "bootstrap"
import "@fortawesome/fontawesome-free/css/all"
import Chart from 'chart.js'
import 'datatables.net'
import 'datatables.net-bs4'
import "./sb-admin-2"


document.addEventListener("turbolinks:load", () => {
    $('[data-toggle="tooltip"]').tooltip()
    $('[data-toggle="popover"]').popover()
    $('.toast').toast({ autohide: false })
    $('#toast').toast('show')
})