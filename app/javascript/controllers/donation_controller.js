import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="donation"
export default class extends Controller {
  static targets = ["foodItems", "toyItems", "medicalItems"]

  openCards(event) {
    console.log(event.currentTarget.parentElement.classList)
    const itemClass = event.currentTarget.parentElement.classList
    if (itemClass.contains("food-items")) {
      this.foodItemsTarget.classList.remove("d-none")
      this.toyItemsTarget.classList.add("d-none")
      this.medicalItemsTarget.classList.add("d-none")
    } else if (itemClass.contains("toy-items")) {
      this.foodItemsTarget.classList.add("d-none")
      this.toyItemsTarget.classList.remove("d-none")
      this.medicalItemsTarget.classList.add("d-none")
    } else if (itemClass.contains("medical-items")) {
      this.foodItemsTarget.classList.add("d-none")
      this.toyItemsTarget.classList.add("d-none")
      this.medicalItemsTarget.classList.remove("d-none")
    }
  }

}
