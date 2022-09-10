import { Release } from "./Release";

/**
 * This is the script that provides
 * all the functionality specific to
 * the homepage of the site.
 */
class _Homepage {
  init() {
    Release.init();
  }
}

export const Homepage = new _Homepage();
