import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  submit(event) {
    const form = this.element
    const changedField = event.target
    const frameElement = changedField.closest("turbo-frame")
    const frameId = frameElement?.id

    const url = new URL(window.location.href)
    const formData = new FormData(form)

    for (const [key, value] of formData.entries()) {
      url.searchParams.set(key, value)
    }

    const options = frameId ? { frame: frameId } : {}
    Turbo.visit(url.toString(), options)
  }
}