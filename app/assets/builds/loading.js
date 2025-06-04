// app/javascript/loading.js
document.addEventListener("DOMContentLoaded", function () {
  const gifs = [
    "/loading_gifs/reversecongaparrot.gif",
    "/loading_gifs/shuffleparrot.gif",
    "/loading_gifs/beltparrot.gif",
    "/loading_gifs/dealwithitnowparrot.gif",
    "/loading_gifs/christmasparrot.gif",
    "/loading_gifs/sleepingparrot.gif",
    "/loading_gifs/mailparrot.gif",
    "/loading_gifs/dabparrot.gif",
    "/loading_gifs/reactparrot.gif"
  ];
  const loadingGif = document.getElementById("loading-gif");
  if (loadingGif) {
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
