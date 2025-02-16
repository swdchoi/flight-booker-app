import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="passenger"
export default class extends Controller {

  static targets = ["container", "template"]

  connect() {
  }

  create() {
    const template = this.templateTarget.content.cloneNode(true);
    this.containerTarget.appendChild(template)
  }

  remove() {
    event.target.closest(".card").remove();
  }

}
