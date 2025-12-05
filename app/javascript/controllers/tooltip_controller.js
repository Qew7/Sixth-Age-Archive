import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = {
    content: String,
    position: { type: String, default: "top" }
  }

  connect() {
    this.tooltip = null
  }

  show(event) {
    // Remove any existing tooltip
    this.hide()

    // Create tooltip element
    this.tooltip = document.createElement("div")
    this.tooltip.className = "tooltip-popup"
    this.tooltip.innerHTML = this.contentValue

    // Add to body
    document.body.appendChild(this.tooltip)

    // Position tooltip
    this.positionTooltip(event)

    // Animate in
    requestAnimationFrame(() => {
      this.tooltip.classList.add("tooltip-visible")
    })
  }

  hide() {
    if (this.tooltip) {
      this.tooltip.classList.remove("tooltip-visible")
      setTimeout(() => {
        if (this.tooltip && this.tooltip.parentNode) {
          this.tooltip.parentNode.removeChild(this.tooltip)
        }
        this.tooltip = null
      }, 150)
    }
  }

  positionTooltip(event) {
    if (!this.tooltip) return

    const rect = this.element.getBoundingClientRect()
    const tooltipRect = this.tooltip.getBoundingClientRect()
    const scrollTop = window.pageYOffset || document.documentElement.scrollTop
    const scrollLeft = window.pageXOffset || document.documentElement.scrollLeft

    let top, left

    switch (this.positionValue) {
      case "bottom":
        top = rect.bottom + scrollTop + 8
        left = rect.left + scrollLeft + (rect.width / 2) - (tooltipRect.width / 2)
        break
      case "left":
        top = rect.top + scrollTop + (rect.height / 2) - (tooltipRect.height / 2)
        left = rect.left + scrollLeft - tooltipRect.width - 8
        break
      case "right":
        top = rect.top + scrollTop + (rect.height / 2) - (tooltipRect.height / 2)
        left = rect.right + scrollLeft + 8
        break
      default: // top
        top = rect.top + scrollTop - tooltipRect.height - 8
        left = rect.left + scrollLeft + (rect.width / 2) - (tooltipRect.width / 2)
    }

    // Keep tooltip within viewport
    const padding = 10
    const maxLeft = window.innerWidth - tooltipRect.width - padding + scrollLeft
    const minLeft = padding + scrollLeft

    left = Math.max(minLeft, Math.min(maxLeft, left))

    // If tooltip would go above viewport, show below instead
    if (top < scrollTop + padding) {
      top = rect.bottom + scrollTop + 8
    }

    this.tooltip.style.top = `${top}px`
    this.tooltip.style.left = `${left}px`
  }

  disconnect() {
    this.hide()
  }
}

