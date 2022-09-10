import { createSignal } from "solid-js";
import arrowDown from "../../public/assets/images/arrow-down.svg";

export interface Props {
  catalogNumber: string;
  publishDate: string;
  releaseType?: string;
  artistName: string;
  releaseTitle: string;
  buyLink: string;
  coverImage: string;
}

const join = (tokens: (string | boolean)[]) => tokens.filter(Boolean).join(" ");

export default function Release(props: Props) {
  const {
    catalogNumber,
    publishDate,
    releaseType = "DIGITAL RELEASE",
    releaseTitle,
    artistName,
    buyLink,
    coverImage,
  } = props;

  const [imageLoaded, setImageLoaded] = createSignal(false);
  const [open, setOpen] = createSignal(false);
  const toggleOpen = () => setOpen(!open());

  return (
    <article class="release">
      <div class="release__top-header" onClick={toggleOpen}>
        <h2 class="release__catalog-number">{catalogNumber}</h2>
        <img
          class={join(["release__arrow", open() && "release_arrow--open"])}
          src={arrowDown}
        />
      </div>
      <div class="release__container">
        <div class="release__cover">
          <div
            class={join([
              "release__cover-inner",
              open() && "release__cover-inner--hidden",
            ])}
            onClick={toggleOpen}
          >
            <img
              class={join(["release__cover-image", imageLoaded() && "loaded"])}
              src={coverImage}
              onLoad={() => {
                setImageLoaded(true);
              }}
            />
          </div>
        </div>
        <section class="release__content">
          <div class="release__header">
            <div class="release__left-column">
              <span class="release__publish-date">{publishDate}</span>
              <span class="release__detail">{releaseType}</span>
            </div>
            <div class="release__right-column">
              <address class="release__artist">{artistName}</address>
              <h1 class="release__title">{releaseTitle}</h1>
            </div>
          </div>
          <div class="release__tracklist">
            <div class="release__tracklist-inner">
              <ul class="tracklist">
                <li class="tracklist__item">
                  <span class="track__number">01</span>
                  <span class="track__title">ME ON</span>
                  <span class="track__duration">03:59</span>
                </li>
              </ul>
            </div>
          </div>
          <div class="release__footer">
            <div class="release__left-column"></div>
            <div class="release__right-column">
              <div class="release__footer-inner">
                <a class="release__buy-link" target="_blank" href={buyLink}>
                  BUY
                </a>
              </div>
            </div>
          </div>
        </section>
      </div>
    </article>
  );
}
