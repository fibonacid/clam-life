const settings = {
  name: "settings",
  title: "Settings",
  type: "document",
  fields: [{ name: "seo", type: "seo" }],
  preview: {
    prepare() {
      return {
        title: "Settings",
      };
    },
  },
};

export default settings;
