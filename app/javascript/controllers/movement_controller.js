import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="movement"
export default class extends Controller {
  connect() {
  }

  async search(e) {
    const response = await fetch(`/dashboard/filter_by?search=${e.target.value}`, {
      headers: {
        "Accept": "text/vnd.turbo-stream.html"
      }
    });

    if (!response.ok) {
      throw new Error(`Error HTTP: ${response.status}`)
    }

    const html = await response.text()
    Turbo.renderStreamMessage(html)
  }
}
