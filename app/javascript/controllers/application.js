import { Application } from "@hotwired/stimulus"
import { Turbo } from "@hotwired/turbo-rails"

const application = Application.start()
const context = require.context("controllers", true, /\.js$/)
application.load(definitionsFromContext(context))
// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
Turbo.start()
