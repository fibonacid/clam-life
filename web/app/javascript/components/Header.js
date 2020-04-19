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

      // When user clicks outside
      document.addEventListener("click", function(event) {
        let targetElement = event.target;
        let clickedInside = false;
        do {
          if (targetElement == showLinks) {
            clickedInside = true;
            return;
          }
          // Go up the DOM
          targetElement = targetElement.parentNode;
        } while (targetElement);

        // Outside click !
        if (!clickedInside) {
          links.classList.add("header__social--hidden");
          showLinks.classList.remove("header__show-links--hidden");
        }
      });
    }
  }
}

export const Header = new _Header();
