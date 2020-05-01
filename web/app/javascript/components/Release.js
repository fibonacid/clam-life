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
      const coverInner = container.querySelector(".release__cover-inner");
      const header = container.querySelector(".release__top-header");

      if (!coverInner || !header) {
        console.error("Release is missing some elements");
        return;
      }

      // When user clicks on the cover:
      coverInner.addEventListener("click", function() {
        // Hide the cover.
        coverInner.classList.add("release__cover-inner--hidden");
      });

      // When user clicks on the header:
      header.addEventListener("click", function() {
        // Toggle the cover.
        coverInner.classList.toggle("release__cover-inner--hidden");
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
