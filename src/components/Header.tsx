import { onMount } from "solid-js";
import fullLogo from "../../public/assets/images/full-logo.svg";
import logo from "../../public/assets/images/logo.svg";

type Link = {
  title: string;
  url: string;
};
const links: Link[] = [
  { title: "Bandcamp", url: "https://clam-pressure.bandcamp.com/" },
  { title: "Soundcloud", url: "https://soundcloud.com/clam-pressure" },
  { title: "Instagram", url: "https://www.instagram.com/clam.pressure" },
  {
    title: "YouTube",
    url: "https://www.youtube.com/channel/UCcPnow6iHgZ6TgkuRY05M5w",
  },
];

export default function Header() {
  onMount(() => {
    init();
  });
  return (
    <header class="header">
      <a href="/">
        <img class="header__logo" src={fullLogo} />
      </a>
      <div class="header__right-column">
        <img class="header__show-links" src={logo} />
        <div class="header__social header__social--hidden">
          {links.map((link) => (
            <a class="header__link" href={link.url} target="__blank">
              {link.title}
            </a>
          ))}
        </div>
      </div>
    </header>
  );
}

function init() {
  const showLinks = document.querySelector(".header__show-links");
  const links = document.querySelector(".header__social");

  if (showLinks && links) {
    showLinks.addEventListener("click", function () {
      links.classList.remove("header__social--hidden");
      showLinks.classList.add("header__show-links--hidden");
    });

    // Listen for all clicks on the document
    document.addEventListener(
      "click",
      function (event: any) {
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
