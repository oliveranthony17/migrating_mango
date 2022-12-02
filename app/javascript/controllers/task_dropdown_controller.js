import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="task-dropdown"
export default class extends Controller {
  static targets = ["title", "card", "edit"]

  connect() {
    console.log("connected to task-dropdown-controller");
  }

  revealEdit() {
    console.log('CLICKED');
    this.editTarget.classList.toggle("d-none")
    this.cardTarget.classList.toggle("card-product-bigger")
  }
}
