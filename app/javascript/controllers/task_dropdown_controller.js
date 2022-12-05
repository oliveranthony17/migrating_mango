import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="task-dropdown"
export default class extends Controller {
  static targets = ["card", "title", "edit"]

  connect() {
    console.log("connected to task-dropdown-controller");
  }

  revealEdit() {
    this.editTarget.classList.toggle("d-none")
  }

  update(event) {
    event.preventDefault()
    const url = this.formTarget.action
    fetch(url, {
      method: "PATCH",
      headers: { "Accept": "text/plain" },
      body: new FormData(this.formTarget)
    })
      // .then(response => response.text())
      // .then((data) => {
      // })
    // NEED TO MAYBE RELOAD PAGE? OR RELOAD THE WHOLE CONTAINER?
    document.location.reload();
  }
}
