import { createSignal, onMount } from "solid-js";
import fullLogo from "../../public/assets/images/full-logo.svg";
import logo from "../../public/assets/images/logo.svg";
import { join } from "../utils/join";

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
  const [showLinks, setShowLinks] = createSignal(false);

  onMount(() => {
    document.addEventListener(
      "click",
      function (event: any) {
        if (!event.target.closest(".header__show-links")) {
          // User clicked outside.
          if (showLinks()) setShowLinks(false);
        }
      },
      false
    );
  });

  return (
    <header class="header">
      <a href="/">
        <img class="header__logo" src={fullLogo} />
      </a>
      <div class="header__right-column">
        <img
          class="header__show-links"
          src={logo}
          onClick={() => setShowLinks(true)}
        />
        <div
          class={join(
            "header__social",
            showLinks() || "header__social--hidden"
          )}
        >
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
