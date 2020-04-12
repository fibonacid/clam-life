import { Homepage } from "../components/Homepage";

/**
 * CONTROLLERS
 * -----------
 * NOTE: you should place here the scripts you want to run and update it constantly
 *   depending on your controller/action naming.
 **/
const Controllers = {
  // -------------------------- application-wide scripts --------------------------
  application: {
    init: function() {}
  },
  // -------------------------- controller-wide scripts --------------------------
  homepage: {
    init: function() {},
    show: function() {
      Homepage.init();
    }
  }
  // -------------------------------- end scripts --------------------------------
};

/**
 * APP CONTROLLER
 * --------------
 * The App Controller runs a specifc selection of scripts in the following order.
 *
 * 1. `Controllers.application` scripts.
 *    These are always run on every doc ready.
 * 2. `Controllers[controller].init` scripts.
 *    These are run every time a document is rendered by a specific `controller`.
 * 3. `Controllers[controller][action]` scripts.
 *    These are run every time a document is rendered by a specific `action` and `controller`.
 *
 * NOTE: you should not touch this function.
 **/
export const AppController = {
  exec: function(controller, action = "init") {
    if (
      controller !== "" &&
      Controllers[controller] &&
      typeof Controllers[controller][action] == "function"
    ) {
      Controllers[controller][action]();
    }
  },

  init: function() {
    const body = document.body;
    const controller = body.getAttribute("data-controller");
    const action = body.getAttribute("data-action");

    AppController.exec("application");
    AppController.exec(controller);
    AppController.exec(controller, action);
  }
};
