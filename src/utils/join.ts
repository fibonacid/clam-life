export const join = (...tokens: (string | boolean)[]) =>
  tokens.filter(Boolean).join(" ");
