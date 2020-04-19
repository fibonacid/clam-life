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

      // When user clicks on the cover:
      cover.addEventListener("click", function() {
        // Hide the cover.
        cover.classList.add("release__cover--hidden");
      });

      // When user clicks outside
      document.addEventListener("click", function(event) {
        let targetElement = event.target;
        do {
          if (targetElement == cover) {
            return;
          }
          // Go up the DOM
          targetElement = targetElement.parentNode;
        } while (targetElement);

        // Outside click !
        cover.classList.remove("release__cover--hidden");
      });
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
