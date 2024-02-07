import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="new-channel"
export default class extends Controller {
  static targets = ["modal"]

  openModal(event) {
    event.currentTarget.classList.add("d-none")
    this.modalTarget.classList.remove("d-none")
  }

  addChannel(event) {
    event.currentTarget.classList.remove("d-none")
    this.modalTarget.classList.add("d-none")
  }
}
