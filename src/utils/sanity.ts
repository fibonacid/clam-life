import PicoSanity from "picosanity";

export const client = new PicoSanity({
  projectId: import.meta.env.SANITY_PROJECT_ID as string,
  dataset: import.meta.env.SANITY_DATASET || "production",
  apiVersion: "2021-03-25", // use a UTC date string
  useCdn: false,
  token: import.meta.env.SANITY_API_TOKEN,
});
