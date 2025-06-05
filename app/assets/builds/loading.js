// app/javascript/loading.js
document.addEventListener("DOMContentLoaded", function () {
  const container = document.getElementById("loading-gif-container");
  let gifs = [];
  if (container && container.dataset.gifs) {
    gifs = JSON.parse(container.dataset.gifs);
  }
  const loadingGif = document.getElementById("loading-gif");
  if (loadingGif && gifs.length > 0) {
    const randomGif = gifs[Math.floor(Math.random() * gifs.length)];
    loadingGif.src = randomGif;
  }
  const form = document.querySelector("form");
  if (form) {
    form.addEventListener("submit", function () {
      document.getElementById("loading-overlay").style.display = "block";
    });
  }
});
//# sourceMappingURL=/assets/loading.js.map
