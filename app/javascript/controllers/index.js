
// Load all the controllers within this directory and all subdirectories.
// Controller files must be named *_controller.js.

import { Application } from "stimulus"
import { definitionsFromContext } from "stimulus/webpack-helpers"

const application = Application.start()
const context = require.context("controllers", true, /_controller\.js$/)
application.load(definitionsFromContext(context))

mybutton = document.getElementById("findOutBtn");
function infoFunction() {
  document.body.scrollTop = 100; // For Safari
  document.documentElement.scrollTop = 100; // For Chrome, Firefox, IE and Opera
}
