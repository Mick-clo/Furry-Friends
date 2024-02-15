import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="donation"
export default class extends Controller {
  static targets = ["foodItems", "toyItems", "medicalItems"]
  openCards(event) {
    console.log(event.currentTarget.classList)
    const itemClass = event.currentTarget.classList
    if (itemClass.contains("dog-food-icon")) {
      this.foodItemsTarget.classList.remove("d-none")
      this.toyItemsTarget.classList.add("d-none")
      this.medicalItemsTarget.classList.add("d-none")
    } else if (itemClass.contains("dog-toy-icon")) {
      this.foodItemsTarget.classList.add("d-none")
      this.toyItemsTarget.classList.remove("d-none")
      this.medicalItemsTarget.classList.add("d-none")
    } else if (itemClass.contains("dog-medical-icon")) {
      this.foodItemsTarget.classList.add("d-none")
      this.toyItemsTarget.classList.add("d-none")
      this.medicalItemsTarget.classList.remove("d-none")
    }
  }

}
