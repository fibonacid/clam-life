/**
 * This is the script that provides
 * all the functionality specific to
 * the homepage of the site.
 */
class _Header {
  init() {
    this.setupEvents();
  }

  setupEvents() {
    const showLinks = document.querySelector(".header__show-links");
    const links = document.querySelector(".header__social");
    console.log(links);

    if (showLinks && links) {
      showLinks.addEventListener("click", function() {
        links.classList.remove("header__social--hidden");
        showLinks.classList.add("header__show-links--hidden");
      });

      // Listen for all clicks on the document
      document.addEventListener(
        "click",
        function(event) {
          // If the click happened inside the container, bail
          if (event.target.closest(".header__show-links")) return;

          // Otherwise, show the cover
          links.classList.add("header__social--hidden");
          showLinks.classList.remove("header__show-links--hidden");
        },
        false
      );
    }
  }
}

export const Header = new _Header();
