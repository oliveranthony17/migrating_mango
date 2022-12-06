import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="avatar"
export default class extends Controller {
  static targets = ["mango", "input"]

  connect() {
    console.log("hi")
  }

  mark() {
    // console.log(this.mangoTargets)
    this.mangoTargets.forEach(mango => {
      mango.classList.remove("marked")
    })
    event.target.classList.add("marked")
    this.inputTarget.value = event.target.dataset.image
  }
}
