async function handleTime() {
  const notice = await document.querySelector("#notice")
  const alert = await document.querySelector("#alert")
  setTimeout(() => {
    if (notice) {
      notice.style.display = "none"
    }
    if (alert) {
      alert.style.display = "none"
    }
  }, 2000)
}

window.addEventListener("DOMContentLoaded", handleTime)
