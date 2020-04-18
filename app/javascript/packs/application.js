require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("expose-loader?$!jquery")

require("packs/posts")

import "bootstrap"
import "../stylesheets/application"
import "@fortawesome/fontawesome-free/css/all.css";

document.addEventListener("turbolinks:load", () => {
  $('[data-toggle="tooltip"]').tooltip()
  $('[data-toggle="popover"]').popover()
})

