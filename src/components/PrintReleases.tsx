import { onMount } from "solid-js";

export default function PrintReleases() {
  onMount(() => {
    const elements = [...document.querySelectorAll(".release")];
    const collection: any = [];
    elements.forEach((release) => {
      const catalogNumber = release.querySelector(
        ".release__catalog-number"
      )?.textContent;
      const publishDate = release.querySelector(
        ".release__publish-date"
      )?.textContent;
      const releaseType =
        release.querySelector(".release__detail")?.textContent;
      const releaseTitle =
        release.querySelector(".release__title")?.textContent;
      const artistName = release.querySelector(".release__artist")?.textContent;
      const buyLink = (release.querySelector(".release__buy-link") as any)
        ?.href;
      const coverImage = (release.querySelector(".release__cover-image") as any)
        ?.src;
      collection.push({
        catalogNumber,
        publishDate,
        releaseTitle,
        releaseType,
        artistName,
        buyLink,
        coverImage,
      });
    });
    console.log(collection);
  });

  return (
    <div>
      <ul class="releases__list">
        <li class="releases__item">
          <article class="release">
            <div class="release__top-header">
              <h2 class="release__catalog-number">CLAM013</h2>
              <img
                class="release__arrow"
                src="./Clam_files/arrow-down-cc92df1347d828e831673767a815fa0dc8b45bde965da6c1e8819721688aeff2.svg"
              />
            </div>
            <div class="release__container">
              <div class="release__cover">
                <div class="release__cover-inner">
                  <img
                    class="release__cover-image loaded"
                    src="./Clam_files/CLAM_Website_IMG-26.png"
                  />
                </div>
              </div>
              <section class="release__content">
                <div class="release__header">
                  <div class="release__left-column">
                    <span class="release__publish-date">17/06/2022</span>
                    <span class="release__detail">DIGITAL RELEASE</span>
                  </div>
                  <div class="release__right-column">
                    <address class="release__artist">TONY PEREZ</address>
                    <h1 class="release__title">SUBBO</h1>
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
                      <li class="tracklist__item">
                        <span class="track__number">02</span>
                        <span class="track__title">CHERRY</span>
                        <span class="track__duration">02:58</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">03</span>
                        <span class="track__title">GASH SKIT</span>
                        <span class="track__duration">02:31</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">04</span>
                        <span class="track__title">BETTO</span>
                        <span class="track__duration">03:18</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">05</span>
                        <span class="track__title">TONY'S TOYS</span>
                        <span class="track__duration">03:10</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">06</span>
                        <span class="track__title">L.O.F.T.YU</span>
                        <span class="track__duration">04:16</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">07</span>
                        <span class="track__title">SUBBO</span>
                        <span class="track__duration">07:12</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">08</span>
                        <span class="track__title">ASCENDooo</span>
                        <span class="track__duration">04:17</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">09</span>
                        <span class="track__title">EGG SHAPED PENIS</span>
                        <span class="track__duration">03:23</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">10</span>
                        <span class="track__title">CANDLE</span>
                        <span class="track__duration">05:12</span>
                      </li>
                      <ul></ul>
                    </ul>
                  </div>
                </div>
                <div class="release__footer">
                  <div class="release__left-column"></div>
                  <div class="release__right-column">
                    <div class="release__footer-inner">
                      <a
                        class="release__buy-link"
                        target="_blank"
                        href="https://clam-pressure.bandcamp.com/album/clam013-subbo"
                      >
                        BUY
                      </a>
                      <a
                        href="https://clam-pressure.bandcamp.com/album/clam013-subbo"
                        target="_blank"
                        class="release__image-container"
                      >
                        <img
                          class="release__image"
                          src="./Clam_files/CLAM_Website_IMG-27.png"
                        />
                      </a>
                    </div>
                  </div>
                </div>
              </section>
            </div>
          </article>
        </li>
        <li class="releases__item">
          <article class="release">
            <div class="release__top-header">
              <h2 class="release__catalog-number">CLAM012</h2>
              <img
                class="release__arrow"
                src="./Clam_files/arrow-down-cc92df1347d828e831673767a815fa0dc8b45bde965da6c1e8819721688aeff2.svg"
              />
            </div>
            <div class="release__container">
              <div class="release__cover">
                <div class="release__cover-inner">
                  <img
                    class="release__cover-image loaded"
                    src="./Clam_files/CLAM_Website_IMG-24.png"
                  />
                </div>
              </div>
              <section class="release__content">
                <div class="release__header">
                  <div class="release__left-column">
                    <span class="release__publish-date">11/03/2022</span>
                    <span class="release__detail">DIGITAL RELEASE</span>
                  </div>
                  <div class="release__right-column">
                    <address class="release__artist">SINERAW</address>
                    <h1 class="release__title">EMULATION OF US</h1>
                  </div>
                </div>
                <div class="release__tracklist">
                  <div class="release__tracklist-inner">
                    <ul class="tracklist">
                      <li class="tracklist__item">
                        <span class="track__number">01</span>
                        <span class="track__title">EMULATION OF US</span>
                        <span class="track__duration">04:16</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">02</span>
                        <span class="track__title">DISINTEGRATES</span>
                        <span class="track__duration">03:06</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">03</span>
                        <span class="track__title">VERY ANGRY TYPING</span>
                        <span class="track__duration">03:43</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">04</span>
                        <span class="track__title">INEMURI NOW</span>
                        <span class="track__duration">04:23</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">05</span>
                        <span class="track__title">
                          RAGÙ DESTINO DI LEPRE W/ TVVAASTE
                        </span>
                        <span class="track__duration">03:22</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">06</span>
                        <span class="track__title">RELIABLE FACILITIES</span>
                        <span class="track__duration">03:38</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">07</span>
                        <span class="track__title">FORZANTICA</span>
                        <span class="track__duration">03:59</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">08</span>
                        <span class="track__title">
                          OPERANT PARADIGM TRIGGER
                        </span>
                        <span class="track__duration">03:09</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">09</span>
                        <span class="track__title">SEXUAL EXPANSION</span>
                        <span class="track__duration">04:48</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">10</span>
                        <span class="track__title">SHE IS</span>
                        <span class="track__duration">05:00</span>
                      </li>
                      <ul></ul>
                    </ul>
                  </div>
                </div>
                <div class="release__footer">
                  <div class="release__left-column"></div>
                  <div class="release__right-column">
                    <div class="release__footer-inner">
                      <a
                        class="release__buy-link"
                        target="_blank"
                        href="http://localhost:3000/home"
                      >
                        BUY
                      </a>
                      <a
                        href="http://localhost:3000/target=%22_blank%22"
                        class="release__image-container"
                      >
                        <img
                          class="release__image"
                          src="./Clam_files/CLAM_Website_IMG-25.png"
                        />
                      </a>
                    </div>
                  </div>
                </div>
              </section>
            </div>
          </article>
        </li>
        <li class="releases__item">
          <article class="release">
            <div class="release__top-header">
              <h2 class="release__catalog-number">CLAM011</h2>
              <img
                class="release__arrow"
                src="./Clam_files/arrow-down-cc92df1347d828e831673767a815fa0dc8b45bde965da6c1e8819721688aeff2.svg"
              />
            </div>
            <div class="release__container">
              <div class="release__cover">
                <div class="release__cover-inner">
                  <img
                    class="release__cover-image loaded"
                    src="./Clam_files/C0011.2.jpg"
                  />
                </div>
              </div>
              <section class="release__content">
                <div class="release__header">
                  <div class="release__left-column">
                    <span class="release__publish-date">02/02/2022</span>
                    <span class="release__detail">DIGITAL RELEASE</span>
                  </div>
                  <div class="release__right-column">
                    <address class="release__artist">EKSE &amp; ELAZY</address>
                    <h1 class="release__title">BINEAL PONK</h1>
                  </div>
                </div>
                <div class="release__tracklist">
                  <div class="release__tracklist-inner">
                    <ul class="tracklist">
                      <li class="tracklist__item">
                        <span class="track__number">01</span>
                        <span class="track__title">KCK</span>
                        <span class="track__duration">02:29</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">02</span>
                        <span class="track__title">CAINS GIBBET DROP</span>
                        <span class="track__duration">03:08</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">03</span>
                        <span class="track__title">BUNGO BAGGINS</span>
                        <span class="track__duration">04:44</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">04</span>
                        <span class="track__title">HEART SHAPED HEDGES</span>
                        <span class="track__duration">02:40</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">05</span>
                        <span class="track__title">PHOEBE</span>
                        <span class="track__duration">04:24</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">06</span>
                        <span class="track__title">NEW CB</span>
                        <span class="track__duration">04:04</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">07</span>
                        <span class="track__title">XESK</span>
                        <span class="track__duration">02:56</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">08</span>
                        <span class="track__title">INTERZONE</span>
                        <span class="track__duration">03:05</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">09</span>
                        <span class="track__title">MARIE ORK</span>
                        <span class="track__duration">02:33</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">10</span>
                        <span class="track__title">KHALID</span>
                        <span class="track__duration">03:16</span>
                      </li>
                      <ul></ul>
                    </ul>
                  </div>
                </div>
                <div class="release__footer">
                  <div class="release__left-column"></div>
                  <div class="release__right-column">
                    <div class="release__footer-inner">
                      <a
                        class="release__buy-link"
                        target="_blank"
                        href="https://clam-pressure.bandcamp.com/album/clam011-bineal-ponk"
                      >
                        BUY
                      </a>
                      <a
                        href="https://clam-pressure.bandcamp.com/album/clam011-bineal-ponk"
                        target="_blank"
                        class="release__image-container"
                      >
                        <img
                          class="release__image"
                          src="./Clam_files/C011.2.jpg"
                        />
                      </a>
                    </div>
                  </div>
                </div>
              </section>
            </div>
          </article>
        </li>
        <li class="releases__item">
          <article class="release">
            <div class="release__top-header">
              <h2 class="release__catalog-number">CLAM010</h2>
              <img
                class="release__arrow"
                src="./Clam_files/arrow-down-cc92df1347d828e831673767a815fa0dc8b45bde965da6c1e8819721688aeff2.svg"
              />
            </div>
            <div class="release__container">
              <div class="release__cover">
                <div class="release__cover-inner">
                  <img
                    class="release__cover-image loaded"
                    src="./Clam_files/C0010.jpg"
                  />
                </div>
              </div>
              <section class="release__content">
                <div class="release__header">
                  <div class="release__left-column">
                    <span class="release__publish-date">01/10/2021</span>
                    <span class="release__detail">DIGITAL RELEASE</span>
                  </div>
                  <div class="release__right-column">
                    <address class="release__artist">JENNN</address>
                    <h1 class="release__title">UNCAGED, UNLIMITED</h1>
                  </div>
                </div>
                <div class="release__tracklist">
                  <div class="release__tracklist-inner">
                    <ul class="tracklist">
                      <li class="tracklist__item">
                        <span class="track__number">01</span>
                        <span class="track__title">UNTIL</span>
                        <span class="track__duration">01:27</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">02</span>
                        <span class="track__title">RE SPITE</span>
                        <span class="track__duration">02:33</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">03</span>
                        <span class="track__title">U???</span>
                        <span class="track__duration">03:49</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">04</span>
                        <span class="track__title">ONE</span>
                        <span class="track__duration">02:43</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">05</span>
                        <span class="track__title">BEAST, WORLD</span>
                        <span class="track__duration">03:50</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">06</span>
                        <span class="track__title">PROX</span>
                        <span class="track__duration">04:14</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">07</span>
                        <span class="track__title">BLESSER</span>
                        <span class="track__duration">04:17</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">08</span>
                        <span class="track__title">PESO</span>
                        <span class="track__duration">02:00</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">09</span>
                        <span class="track__title">EAT THE SHELL</span>
                        <span class="track__duration">02:24</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">10</span>
                        <span class="track__title">UNLIMITED</span>
                        <span class="track__duration">04:10</span>
                      </li>
                      <ul></ul>
                    </ul>
                  </div>
                </div>
                <div class="release__footer">
                  <div class="release__left-column"></div>
                  <div class="release__right-column">
                    <div class="release__footer-inner">
                      <a
                        class="release__buy-link"
                        target="_blank"
                        href="https://clam-pressure.bandcamp.com/album/clam010-uncaged-unlimited"
                      >
                        BUY
                      </a>
                      <a
                        href="https://clam-pressure.bandcamp.com/album/clam010-uncaged-unlimited"
                        target="_blank"
                        class="release__image-container"
                      >
                        <img
                          class="release__image"
                          src="./Clam_files/C010.jpg"
                        />
                      </a>
                    </div>
                  </div>
                </div>
              </section>
            </div>
          </article>
        </li>
        <li class="releases__item">
          <article class="release">
            <div class="release__top-header">
              <h2 class="release__catalog-number">CLAM009</h2>
              <img
                class="release__arrow"
                src="./Clam_files/arrow-down-cc92df1347d828e831673767a815fa0dc8b45bde965da6c1e8819721688aeff2.svg"
              />
            </div>
            <div class="release__container">
              <div class="release__cover">
                <div class="release__cover-inner">
                  <img
                    class="release__cover-image loaded"
                    src="./Clam_files/CLAM009_Website_IMG_Portrait_2.jpg"
                  />
                </div>
              </div>
              <section class="release__content">
                <div class="release__header">
                  <div class="release__left-column">
                    <span class="release__publish-date">18/06/2021</span>
                    <span class="release__detail">DIGITAL RELEASE</span>
                  </div>
                  <div class="release__right-column">
                    <address class="release__artist">
                      KUTHI JIN, VORONHIL, TROPICAL INTERFACE
                    </address>
                    <h1 class="release__title">A · • · Z</h1>
                  </div>
                </div>
                <div class="release__tracklist">
                  <div class="release__tracklist-inner">
                    <ul class="tracklist">
                      <li class="tracklist__item">
                        <span class="track__number">01</span>
                        <span class="track__title">A</span>
                        <span class="track__duration">04:49</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">02</span>
                        <span class="track__title">· • · Z</span>
                        <span class="track__duration">04:19</span>
                      </li>
                      <ul></ul>
                    </ul>
                  </div>
                </div>
                <div class="release__footer">
                  <div class="release__left-column"></div>
                  <div class="release__right-column">
                    <div class="release__footer-inner">
                      <a
                        class="release__buy-link"
                        target="_blank"
                        href="https://clam-pressure.bandcamp.com/album/clam009-a-z"
                      >
                        BUY
                      </a>
                      <a
                        href="https://clam-pressure.bandcamp.com/album/clam009-a-z"
                        target="_blank"
                        class="release__image-container"
                      >
                        <img
                          class="release__image"
                          src="./Clam_files/CLAM009_Website_IMG_Square.jpg"
                        />
                      </a>
                    </div>
                  </div>
                </div>
              </section>
            </div>
          </article>
        </li>
        <li class="releases__item">
          <article class="release">
            <div class="release__top-header">
              <h2 class="release__catalog-number">CLAM008</h2>
              <img
                class="release__arrow"
                src="./Clam_files/arrow-down-cc92df1347d828e831673767a815fa0dc8b45bde965da6c1e8819721688aeff2.svg"
              />
            </div>
            <div class="release__container">
              <div class="release__cover">
                <div class="release__cover-inner">
                  <img
                    class="release__cover-image loaded"
                    src="./Clam_files/CLAM_Website_Skuge_Portrait.jpg"
                  />
                </div>
              </div>
              <section class="release__content">
                <div class="release__header">
                  <div class="release__left-column">
                    <span class="release__publish-date">06/05/2021</span>
                    <span class="release__detail">DIGITAL RELEASE</span>
                  </div>
                  <div class="release__right-column">
                    <address class="release__artist">AMISH BOY</address>
                    <h1 class="release__title">COMMON PRACTICES</h1>
                  </div>
                </div>
                <div class="release__tracklist">
                  <div class="release__tracklist-inner">
                    <ul class="tracklist">
                      <li class="tracklist__item">
                        <span class="track__number">01</span>
                        <span class="track__title">VASELINE</span>
                        <span class="track__duration">04:12</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">02</span>
                        <span class="track__title">DISTO SKUGE MEDLEY</span>
                        <span class="track__duration">05:11</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">03</span>
                        <span class="track__title">OMETHYLASETHYLIC</span>
                        <span class="track__duration">03:30</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">04</span>
                        <span class="track__title">SHILOH</span>
                        <span class="track__duration">03:34</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">05</span>
                        <span class="track__title">SOLAR FASCINUUM</span>
                        <span class="track__duration">04:37</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">06</span>
                        <span class="track__title">AUTHORITEIT</span>
                        <span class="track__duration">03:16</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">07</span>
                        <span class="track__title">KITCHEN BEE</span>
                        <span class="track__duration">03:43</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">08</span>
                        <span class="track__title">ROCK A BILLY</span>
                        <span class="track__duration">05:09</span>
                      </li>
                      <ul></ul>
                    </ul>
                  </div>
                </div>
                <div class="release__footer">
                  <div class="release__left-column"></div>
                  <div class="release__right-column">
                    <div class="release__footer-inner">
                      <a
                        class="release__buy-link"
                        target="_blank"
                        href="https://clam-pressure.bandcamp.com/album/clam008-common-practices"
                      >
                        BUY
                      </a>
                      <a
                        href="https://clam-pressure.bandcamp.com/album/clam008-common-practices"
                        target="_blank"
                        class="release__image-container"
                      >
                        <img
                          class="release__image"
                          src="./Clam_files/CLAM_Website_Skuge_Square.jpg"
                        />
                      </a>
                    </div>
                  </div>
                </div>
              </section>
            </div>
          </article>
        </li>
        <li class="releases__item">
          <article class="release">
            <div class="release__top-header">
              <h2 class="release__catalog-number">CLAM007</h2>
              <img
                class="release__arrow"
                src="./Clam_files/arrow-down-cc92df1347d828e831673767a815fa0dc8b45bde965da6c1e8819721688aeff2.svg"
              />
            </div>
            <div class="release__container">
              <div class="release__cover">
                <div class="release__cover-inner">
                  <img
                    class="release__cover-image loaded"
                    src="./Clam_files/CLAM_Website_Talpah_Portrait.jpg"
                  />
                </div>
              </div>
              <section class="release__content">
                <div class="release__header">
                  <div class="release__left-column">
                    <span class="release__publish-date">01/04/2021</span>
                    <span class="release__detail">DIGITAL RELEASE</span>
                  </div>
                  <div class="release__right-column">
                    <address class="release__artist">TALPAH</address>
                    <h1 class="release__title">HOW DID I SURVIVE?</h1>
                  </div>
                </div>
                <div class="release__tracklist">
                  <div class="release__tracklist-inner">
                    <ul class="tracklist">
                      <li class="tracklist__item">
                        <span class="track__number">01</span>
                        <span class="track__title">TURN ME A</span>
                        <span class="track__duration">04:24</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">02</span>
                        <span class="track__title">3MINTRIP W/ DEEPHO</span>
                        <span class="track__duration">03:06</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">03</span>
                        <span class="track__title">THROAT SINGING</span>
                        <span class="track__duration">03:42</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">04</span>
                        <span class="track__title">
                          TIME BENDING W/ KUTHI JIN
                        </span>
                        <span class="track__duration">03:35</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">05</span>
                        <span class="track__title">INSECURITY</span>
                        <span class="track__duration">03:20</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">06</span>
                        <span class="track__title">
                          HOLE W/ DEEPHO &amp; DERIANSKY
                        </span>
                        <span class="track__duration">03:45</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">07</span>
                        <span class="track__title">NOT FUNNY</span>
                        <span class="track__duration">03:04</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">08</span>
                        <span class="track__title">VACUUM W/ TANCA</span>
                        <span class="track__duration">03:33</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">09</span>
                        <span class="track__title">PRESENT DAY</span>
                        <span class="track__duration">03:35</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">10</span>
                        <span class="track__title">
                          THE BEGINNING AND THE END ARE ONE AND THE SAME
                        </span>
                        <span class="track__duration">03:22</span>
                      </li>
                      <ul></ul>
                    </ul>
                  </div>
                </div>
                <div class="release__footer">
                  <div class="release__left-column"></div>
                  <div class="release__right-column">
                    <div class="release__footer-inner">
                      <a
                        class="release__buy-link"
                        target="_blank"
                        href="https://clam-pressure.bandcamp.com/album/clam007-how-did-i-survive"
                      >
                        BUY
                      </a>
                      <a
                        href="https://clam-pressure.bandcamp.com/album/clam007-how-did-i-survive"
                        target="_blank"
                        class="release__image-container"
                      >
                        <img
                          class="release__image"
                          src="./Clam_files/CLAM_Website_Talpah_Square.jpg"
                        />
                      </a>
                    </div>
                  </div>
                </div>
              </section>
            </div>
          </article>
        </li>
        <li class="releases__item">
          <article class="release">
            <div class="release__top-header">
              <h2 class="release__catalog-number">CLAM006</h2>
              <img
                class="release__arrow"
                src="./Clam_files/arrow-down-cc92df1347d828e831673767a815fa0dc8b45bde965da6c1e8819721688aeff2.svg"
              />
            </div>
            <div class="release__container">
              <div class="release__cover">
                <div class="release__cover-inner">
                  <img
                    class="release__cover-image loaded"
                    src="./Clam_files/CLAM_Website_IMG_Portrait.png"
                  />
                </div>
              </div>
              <section class="release__content">
                <div class="release__header">
                  <div class="release__left-column">
                    <span class="release__publish-date">29/01/2021</span>
                    <span class="release__detail">DIGITAL RELEASE</span>
                  </div>
                  <div class="release__right-column">
                    <address class="release__artist">Voronhil</address>
                    <h1 class="release__title">PHANTASMAGORIA</h1>
                  </div>
                </div>
                <div class="release__tracklist">
                  <div class="release__tracklist-inner">
                    <ul class="tracklist">
                      <li class="tracklist__item">
                        <span class="track__number">01</span>
                        <span class="track__title">01</span>
                        <span class="track__duration">04:43</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">02</span>
                        <span class="track__title">02</span>
                        <span class="track__duration">04:18</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">03</span>
                        <span class="track__title">03</span>
                        <span class="track__duration">05:21</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">04</span>
                        <span class="track__title">04</span>
                        <span class="track__duration">05:49</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">05</span>
                        <span class="track__title">05</span>
                        <span class="track__duration">04:34</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">06</span>
                        <span class="track__title">06</span>
                        <span class="track__duration">04:32</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">07</span>
                        <span class="track__title">07</span>
                        <span class="track__duration">04:07</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">08</span>
                        <span class="track__title">08</span>
                        <span class="track__duration">04:04</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">09</span>
                        <span class="track__title">09</span>
                        <span class="track__duration">04:40</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">10</span>
                        <span class="track__title">10</span>
                        <span class="track__duration">04:04</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">11</span>
                        <span class="track__title">11</span>
                        <span class="track__duration">05:08</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">12</span>
                        <span class="track__title">12</span>
                        <span class="track__duration">04:34</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">13</span>
                        <span class="track__title">13</span>
                        <span class="track__duration">03:36</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">14</span>
                        <span class="track__title">14</span>
                        <span class="track__duration">05:19</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">15</span>
                        <span class="track__title">15</span>
                        <span class="track__duration">04:26</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">16</span>
                        <span class="track__title">16</span>
                        <span class="track__duration">04:43</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">17</span>
                        <span class="track__title">17</span>
                        <span class="track__duration">04:51</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">18</span>
                        <span class="track__title">18</span>
                        <span class="track__duration">03:55</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">19</span>
                        <span class="track__title">19</span>
                        <span class="track__duration">05:10</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">20</span>
                        <span class="track__title">20</span>
                        <span class="track__duration">06:14</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">21</span>
                        <span class="track__title">21</span>
                        <span class="track__duration">08:16</span>
                      </li>
                      <ul></ul>
                    </ul>
                  </div>
                </div>
                <div class="release__footer">
                  <div class="release__left-column"></div>
                  <div class="release__right-column">
                    <div class="release__footer-inner">
                      <a
                        class="release__buy-link"
                        target="_blank"
                        href="https://clam-pressure.bandcamp.com/album/clam006-phantasmagoria"
                      >
                        BUY
                      </a>
                      <a
                        href="https://clam-pressure.bandcamp.com/album/clam006-phantasmagoria"
                        target="_blank"
                        class="release__image-container"
                      >
                        <img
                          class="release__image"
                          src="./Clam_files/CLAM_Website_IMG.png"
                        />
                      </a>
                    </div>
                  </div>
                </div>
              </section>
            </div>
          </article>
        </li>
        <li class="releases__item">
          <article class="release">
            <div class="release__top-header">
              <h2 class="release__catalog-number">CLAM005</h2>
              <img
                class="release__arrow"
                src="./Clam_files/arrow-down-cc92df1347d828e831673767a815fa0dc8b45bde965da6c1e8819721688aeff2.svg"
              />
            </div>
            <div class="release__container">
              <div class="release__cover">
                <div class="release__cover-inner">
                  <img
                    class="release__cover-image loaded"
                    src="./Clam_files/C005.jpg"
                  />
                </div>
              </div>
              <section class="release__content">
                <div class="release__header">
                  <div class="release__left-column">
                    <span class="release__publish-date">30/09/2020</span>
                    <span class="release__detail">DIGITAL RELEASE</span>
                  </div>
                  <div class="release__right-column">
                    <address class="release__artist">KUTHI JIN</address>
                    <h1 class="release__title">K MAJIK 23</h1>
                  </div>
                </div>
                <div class="release__tracklist">
                  <div class="release__tracklist-inner">
                    <ul class="tracklist">
                      <li class="tracklist__item">
                        <span class="track__number">01</span>
                        <span class="track__title">MAJIK 23 </span>
                        <span class="track__duration">06:34</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">02</span>
                        <span class="track__title">THE LOVE (AGE OF K) </span>
                        <span class="track__duration">04:00</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">03</span>
                        <span class="track__title">MAMA, LIFE MIRAKLE </span>
                        <span class="track__duration">07:34</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">04</span>
                        <span class="track__title">DROOOL </span>
                        <span class="track__duration">05:04</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">05</span>
                        <span class="track__title">
                          VAGINAL GROOVE, KUNG POW PENIS
                        </span>
                        <span class="track__duration">05:00</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">06</span>
                        <span class="track__title">JWELEZ </span>
                        <span class="track__duration">05:41</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">07</span>
                        <span class="track__title">
                          ANTIKASHIZHA W/ VORONHIL
                        </span>
                        <span class="track__duration">06:31</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">08</span>
                        <span class="track__title">TRIKMAZTER </span>
                        <span class="track__duration">11:34</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">09</span>
                        <span class="track__title">KLIT SUIT W/ CAPO </span>
                        <span class="track__duration">06:20</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">10</span>
                        <span class="track__title">SORTE. . . </span>
                        <span class="track__duration">02:08</span>
                      </li>
                      <ul></ul>
                    </ul>
                  </div>
                </div>
                <div class="release__footer">
                  <div class="release__left-column"></div>
                  <div class="release__right-column">
                    <div class="release__footer-inner">
                      <a
                        class="release__buy-link"
                        target="_blank"
                        href="https://clam-pressure.bandcamp.com/album/clam005-k-majik-23"
                      >
                        BUY
                      </a>
                      <a
                        href="https://clam-pressure.bandcamp.com/album/clam005-k-majik-23"
                        target="_blank"
                        class="release__image-container"
                      >
                        <img
                          class="release__image"
                          src="./Clam_files/C005(1).jpg"
                        />
                      </a>
                    </div>
                  </div>
                </div>
              </section>
            </div>
          </article>
        </li>
        <li class="releases__item">
          <article class="release">
            <div class="release__top-header">
              <h2 class="release__catalog-number">CLAM004</h2>
              <img
                class="release__arrow"
                src="./Clam_files/arrow-down-cc92df1347d828e831673767a815fa0dc8b45bde965da6c1e8819721688aeff2.svg"
              />
            </div>
            <div class="release__container">
              <div class="release__cover">
                <div class="release__cover-inner">
                  <img
                    class="release__cover-image loaded"
                    src="./Clam_files/C004_Digital.jpg"
                  />
                </div>
              </div>
              <section class="release__content">
                <div class="release__header">
                  <div class="release__left-column">
                    <span class="release__publish-date">04/06/2020</span>
                    <span class="release__detail">DIGITAL RELEASE</span>
                  </div>
                  <div class="release__right-column">
                    <address class="release__artist">
                      Tropical Interface
                    </address>
                    <h1 class="release__title">POLLUTION</h1>
                  </div>
                </div>
                <div class="release__tracklist">
                  <div class="release__tracklist-inner">
                    <ul class="tracklist">
                      <li class="tracklist__item">
                        <span class="track__number">01</span>
                        <span class="track__title">ANCIENT W/ PIXELORD </span>
                        <span class="track__duration">04:37</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">02</span>
                        <span class="track__title">MELT </span>
                        <span class="track__duration">04:03</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">03</span>
                        <span class="track__title">REAL MFG </span>
                        <span class="track__duration">04:19</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">04</span>
                        <span class="track__title">POLLUTION ANTHEM </span>
                        <span class="track__duration">03:31</span>
                      </li>
                      <ul></ul>
                    </ul>
                  </div>
                </div>
                <div class="release__footer">
                  <div class="release__left-column"></div>
                  <div class="release__right-column">
                    <div class="release__footer-inner">
                      <a
                        class="release__buy-link"
                        target="_blank"
                        href="https://clam-pressure.bandcamp.com/album/clam004-pollution"
                      >
                        BUY
                      </a>
                      <a
                        href="https://clam-pressure.bandcamp.com/album/clam004-pollution"
                        target="_blank"
                        class="release__image-container"
                      >
                        <img
                          class="release__image"
                          src="./Clam_files/C004.jpg"
                        />
                      </a>
                    </div>
                  </div>
                </div>
              </section>
            </div>
          </article>
        </li>
        <li class="releases__item">
          <article class="release">
            <div class="release__top-header">
              <h2 class="release__catalog-number">CLAM003</h2>
              <img
                class="release__arrow"
                src="./Clam_files/arrow-down-cc92df1347d828e831673767a815fa0dc8b45bde965da6c1e8819721688aeff2.svg"
              />
            </div>
            <div class="release__container">
              <div class="release__cover">
                <div class="release__cover-inner">
                  <img
                    class="release__cover-image loaded"
                    src="./Clam_files/CLAM_Website_IMG.jpg"
                  />
                </div>
              </div>
              <section class="release__content">
                <div class="release__header">
                  <div class="release__left-column">
                    <span class="release__publish-date">13/04/2020</span>
                    <span class="release__detail">200 CDs</span>
                  </div>
                  <div class="release__right-column">
                    <address class="release__artist">Voronhil</address>
                    <h1 class="release__title">
                      FANTASIA EXFORMATION PRINCIPLE
                    </h1>
                  </div>
                </div>
                <div class="release__tracklist">
                  <div class="release__tracklist-inner">
                    <ul class="tracklist">
                      <li class="tracklist__item">
                        <span class="track__number">01</span>
                        <span class="track__title">FERAL RUPTURE</span>
                        <span class="track__duration">03:53</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">02</span>
                        <span class="track__title">BLEEDING TOOTH</span>
                        <span class="track__duration">04:04</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">03</span>
                        <span class="track__title">ETERNAL RETURN</span>
                        <span class="track__duration">03:03</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">04</span>
                        <span class="track__title">
                          POWER OUTAGE, SINKING SPACESHIP
                        </span>
                        <span class="track__duration">03:11</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">05</span>
                        <span class="track__title">DISCARDED EXOSKELETON</span>
                        <span class="track__duration">02:49</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">06</span>
                        <span class="track__title">TON619</span>
                        <span class="track__duration">03:07</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">07</span>
                        <span class="track__title">NEO-WASP</span>
                        <span class="track__duration">04:07</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">08</span>
                        <span class="track__title">SINGULARITY</span>
                        <span class="track__duration">03:00</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">09</span>
                        <span class="track__title">
                          CLUSTERSHOT W/ KUTHI JIN
                        </span>
                        <span class="track__duration">04:31</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">10</span>
                        <span class="track__title">OVEREXPOSURE</span>
                        <span class="track__duration">04:08</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">11</span>
                        <span class="track__title">PURGING DAGGER</span>
                        <span class="track__duration">03:29</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">12</span>
                        <span class="track__title">THE BLACK RAT</span>
                        <span class="track__duration">03:32</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">13</span>
                        <span class="track__title">CLEAN CUTS</span>
                        <span class="track__duration">04:04</span>
                      </li>
                      <ul></ul>
                    </ul>
                  </div>
                </div>
                <div class="release__footer">
                  <div class="release__left-column"></div>
                  <div class="release__right-column">
                    <div class="release__footer-inner">
                      <a
                        class="release__buy-link"
                        target="_blank"
                        href="https://clam-pressure.bandcamp.com/album/clam003-fantasia-exformation-principle"
                      >
                        BUY
                      </a>
                      <a
                        href="https://clam-pressure.bandcamp.com/album/clam003-fantasia-exformation-principle"
                        target="_blank"
                        class="release__image-container"
                      >
                        <img
                          class="release__image"
                          src="./Clam_files/CLAM_Website_IMG_Product1.jpg"
                        />
                      </a>
                    </div>
                  </div>
                </div>
              </section>
            </div>
          </article>
        </li>
        <li class="releases__item">
          <article class="release">
            <div class="release__top-header">
              <h2 class="release__catalog-number">CLAM002</h2>
              <img
                class="release__arrow"
                src="./Clam_files/arrow-down-cc92df1347d828e831673767a815fa0dc8b45bde965da6c1e8819721688aeff2.svg"
              />
            </div>
            <div class="release__container">
              <div class="release__cover">
                <div class="release__cover-inner">
                  <img
                    class="release__cover-image loaded"
                    src="./Clam_files/CLAM_Website_IMG_2.jpg"
                  />
                </div>
              </div>
              <section class="release__content">
                <div class="release__header">
                  <div class="release__left-column">
                    <span class="release__publish-date">02/02/2020</span>
                    <span class="release__detail">
                      150 BLACK / 50 PINK 12”VINYLS
                    </span>
                  </div>
                  <div class="release__right-column">
                    <address class="release__artist">
                      011668 &amp; S280F
                    </address>
                    <h1 class="release__title">61218</h1>
                  </div>
                </div>
                <div class="release__tracklist">
                  <div class="release__tracklist-inner">
                    <ul class="tracklist">
                      <li class="tracklist__item">
                        <span class="track__number">01</span>
                        <span class="track__title">
                          TENDRE AEL &amp; S280F - ,/ 161218 (ft. 011668)
                        </span>
                        <span class="track__duration">06:07</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">02</span>
                        <span class="track__title">
                          HIGH CHARITY ) RED EARTH PURIFICATION CEREMONY (ft.
                          vvxxii)
                        </span>
                        <span class="track__duration">08:47</span>
                      </li>
                      <ul></ul>
                    </ul>
                  </div>
                </div>
                <div class="release__footer">
                  <div class="release__left-column"></div>
                  <div class="release__right-column">
                    <div class="release__footer-inner">
                      <a
                        class="release__buy-link"
                        target="_blank"
                        href="https://clam-pressure.bandcamp.com/album/clam002-161218"
                      >
                        BUY
                      </a>
                      <a
                        href="https://clam-pressure.bandcamp.com/album/clam002-161218"
                        target="_blank"
                        class="release__image-container"
                      >
                        <img
                          class="release__image"
                          src="./Clam_files/CLAM_Website_IMG_Product3.jpg"
                        />
                      </a>
                    </div>
                  </div>
                </div>
              </section>
            </div>
          </article>
        </li>
        <li class="releases__item">
          <article class="release">
            <div class="release__top-header">
              <h2 class="release__catalog-number">CLAM001</h2>
              <img
                class="release__arrow"
                src="./Clam_files/arrow-down-cc92df1347d828e831673767a815fa0dc8b45bde965da6c1e8819721688aeff2.svg"
              />
            </div>
            <div class="release__container">
              <div class="release__cover">
                <div class="release__cover-inner">
                  <img
                    class="release__cover-image loaded"
                    src="./Clam_files/CLAM_Website_IMG_3.jpg"
                  />
                </div>
              </div>
              <section class="release__content">
                <div class="release__header">
                  <div class="release__left-column">
                    <span class="release__publish-date">12/10/2019</span>
                    <span class="release__detail">200 12”VINYLS</span>
                  </div>
                  <div class="release__right-column">
                    <address class="release__artist">Kuthi Jin</address>
                    <h1 class="release__title">MIMICRY OF DEATH</h1>
                  </div>
                </div>
                <div class="release__tracklist">
                  <div class="release__tracklist-inner">
                    <ul class="tracklist">
                      <li class="tracklist__item">
                        <span class="track__number">01</span>
                        <span class="track__title">CHAOS PIT</span>
                        <span class="track__duration">03:44</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">02</span>
                        <span class="track__title">LAST RITUAL</span>
                        <span class="track__duration">02:41</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">03</span>
                        <span class="track__title">COMFORT ZONES</span>
                        <span class="track__duration">02:23</span>
                      </li>
                      <li class="tracklist__item">
                        <span class="track__number">04</span>
                        <span class="track__title">THE CREATOR?</span>
                        <span class="track__duration">03:33</span>
                      </li>
                      <ul></ul>
                    </ul>
                  </div>
                </div>
                <div class="release__footer">
                  <div class="release__left-column"></div>
                  <div class="release__right-column">
                    <div class="release__footer-inner">
                      <a
                        class="release__buy-link"
                        target="_blank"
                        href="https://clam-pressure.bandcamp.com/album/clam001-mimicry-of-death"
                      >
                        BUY
                      </a>
                      <a
                        href="https://clam-pressure.bandcamp.com/album/clam001-mimicry-of-death"
                        target="_blank"
                        class="release__image-container"
                      >
                        <img
                          class="release__image"
                          src="./Clam_files/CLAM_Website_IMG_Product2.jpg"
                        />
                      </a>
                    </div>
                  </div>
                </div>
              </section>
            </div>
          </article>
        </li>
      </ul>
    </div>
  );
}