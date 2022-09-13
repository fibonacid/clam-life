const seo = {
  title: "SEO / Share Settings",
  name: "seo",
  type: "object",
  description: "Metadata for search engines and social media previews",
  options: {
    collapsible: true,
  },
  fields: [
    {
      title: "Meta Title",
      name: "metaTitle",
      type: "string",
      description: "Title used for search engines and browsers.",
      validation: (Rule: any) =>
        Rule.max(50).warning(
          "Longer titles may be truncated by search engines"
        ),
    },
    {
      title: "Meta Description",
      name: "metaDesc",
      type: "text",
      rows: 3,
      description: "Description for search engines.",
      validation: (Rule: any) =>
        Rule.max(150).warning(
          "Longer descriptions may be truncated by search engines"
        ),
    },
    {
      title: "Share Title",
      name: "shareTitle",
      type: "string",
      description: "TItle used for social sharing cards.",
      validation: (Rule: any) =>
        Rule.max(50).warning("Longer titles may be truncated by social sites"),
    },
    {
      title: "Share Description",
      name: "shareDesc",
      type: "text",
      rows: 3,
      description: "Description for social sharing cards.",
      //   validation: (Rule: any) =>
      //     Rule.max(150).warning(
      //       "Longer descriptions may be truncated by social sites"
      //     ),
    },
    {
      title: "Share Graphic",
      name: "shareGraphic",
      type: "image",
      description: "Share graphics will be cropped to 1200x630",
    },
  ],
};

export default seo;
