// app/javascript/loading.js
document.addEventListener("DOMContentLoaded", function() {
  const gifs = [
    "/assets/loading_gifs/reversecongaparrot.gif",
    "/assets/loading_gifs/shuffleparrot.gif",
    "/assets/loading_gifs/beltparrot.gif",
    "/assets/loading_gifs/dealwithitnowparrot.gif",
    "/assets/loading_gifs/christmasparrot.gif",
    "/assets/loading_gifs/sleepingparrot.gif",
    "/assets/loading_gifs/mailparrot.gif",
    "/assets/loading_gifs/dabparrot.gif",
    "/assets/loading_gifs/reactparrot.gif"
  ];
  const loadingGif = document.getElementById("loading-gif");
  if (loadingGif) {
    const randomGif = gifs[Math.floor(Math.random() * gifs.length)];
    loadingGif.src = randomGif;
  }
  const form = document.querySelector("form");
  if (form) {
    form.addEventListener("submit", function() {
      document.getElementById("loading-overlay").style.display = "block";
    });
  }
});

