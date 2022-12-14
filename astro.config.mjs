import { defineConfig } from "astro/config";
import solidJs from "@astrojs/solid-js";
import vercel from "@astrojs/vercel/serverless";

import image from "@astrojs/image";

// https://astro.build/config
export default defineConfig({
  integrations: [solidJs(), image()],
  output: "server",
  adapter: vercel()
});