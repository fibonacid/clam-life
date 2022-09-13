const tracklist = {
  name: "tracklist",
  title: "Tracklist",
  type: "object",
  fields: [
    {
      name: "items",
      title: "Items",
      type: "array",
      of: [
        {
          name: "track",
          title: "Track",
          type: "object",
          fields: [
            {
              name: "number",
              title: "Number",
              type: "string",
            },
            {
              name: "title",
              title: "Title",
              type: "string",
            },
            {
              name: "duration",
              title: "Duration",
              type: "string",
            },
          ],
        },
      ],
    },
  ],
};

export default tracklist;
