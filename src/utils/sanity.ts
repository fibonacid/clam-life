import PicoSanity from "picosanity";

export const client = new PicoSanity({
  projectId: process.env.SANITY_PROJECT_ID as string,
  dataset: process.env.SANITY_DATASET || "production",
  apiVersion: "2021-03-25", // use a UTC date string
  useCdn: false,
  token: process.env.SANITY_API_TOKEN,
});
