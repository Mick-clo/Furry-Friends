import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="sounds"
export default class extends Controller {
  static values = {cat: String, dog: String}
  connect() {
    console.log("hello")
  }
playDog(){
  const dogSound = new Audio(this.dogValue);
  dogSound.play();
}
playCat(){
  const catSound = new Audio(this.catValue);
  catSound.play();
}
}
