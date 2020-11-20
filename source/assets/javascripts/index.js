//------------------------------------
//	# List of Application
//------------------------------------

// Turbolinks init
const Turbolinks = require("turbolinks");
Turbolinks.start();

// Import stimulus
import { Application } from "stimulus";
import { definitionsFromContext } from "stimulus/webpack-helpers";

const application = Application.start();
const context = require.context("./controllers", true, /\.js$/);
application.load(definitionsFromContext(context));
