import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="task-dropdown"
export default class extends Controller {
  static targets = ["card", "title", "caret", "edit", "active-button", "upcoming-button", "complete-button"]

  connect() {
    console.log("connected to task-dropdown-controller");
  }

  revealEdit() {
    console.log('clicked');
    this.editTarget.classList.toggle("d-none")
    this.caretTarget.classList.toggle("fa-caret-down")
    this.caretTarget.classList.toggle("fa-caret-up")
  }

  refresh() {
    window.location = this.location;
    location.reload(true);

    console.log("refresh() called");
  }
}
