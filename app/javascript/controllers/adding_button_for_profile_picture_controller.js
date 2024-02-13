import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="adding-button-for-profile-picture"
export default class extends Controller {
  static targets = ["modal"]

    connect() {
      console.log("connected")
    }

  openModal(event) {
    this.modalTarget.classList.toggle("d-none")
  }

  updatePicture(event) {
    this.modalTarget.classList.add("d-none")
  }
}
