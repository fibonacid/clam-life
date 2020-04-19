import imagesLoaded from "imagesloaded";

/**
 * This is the script that provides
 * all the functionality specific to
 * the homepage of the site.
 */
class _Release {
  init() {
    this.setupEvents();
  }

  setupEvents() {
    // Fade in cover image as soon it's loaded.
    imagesLoaded(".release__cover-inner", onImageLoaded);

    const containers = document.querySelectorAll(".release");

    [...containers].forEach(function(container) {
      const cover = container.querySelector(".release__cover");
      const header = container.querySelector(".release__top-header");

      // When user clicks on the cover:
      cover.addEventListener("click", function() {
        // Hide the cover.
        cover.classList.add("release__cover--hidden");
      });

      // When user clicks on the header:
      header.addEventListener("click", function() {
        // Toggle the cover.
        cover.classList.toggle("release__cover--hidden");
      });

      // Listen for all clicks on the document
      // document.addEventListener(
      //   "click",
      //   function(event) {
      //     // If the click happened inside the container, bail
      //     if (event.target.closest(".release")) return;

      //     // Otherwise, show the cover
      //     cover.classList.remove("release__cover--hidden");
      //   },
      //   false
      // );
    });
  }
}

export const Release = new _Release();

/**
 * Adds class loaded to every element targeted
 * by imagesLoaded.
 * @param {elements} param0
 */
function onImageLoaded({ elements }) {
  [...elements].forEach(el => {
    const image = el.querySelector("img");
    image && image.classList.add("loaded");
  });
}
