export const join = (...tokens: (string | boolean)[]) =>
  tokens.filter((t) => typeof t === "string").join(" ");
