import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="avatar"
export default class extends Controller {
  static targets = ["mango", "input"]

  connect() {
    this.mangoTargets.forEach(mango => {
      if (mango.dataset.image == this.inputTarget.dataset.avatar) {
        mango.classList.add("marked")
        this.inputTarget.value = this.inputTarget.dataset.avatar
      }
    })
  }

  mark() {
    this.mangoTargets.forEach(mango => {
      mango.classList.remove("marked")
    })
    event.target.classList.add("marked")
    this.inputTarget.value = event.target.dataset.image
  }
}
