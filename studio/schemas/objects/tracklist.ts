import { Props as ReleaseProps } from "@app/components/Release";

type Tracklist = ReleaseProps["tracklist"];

export const example: Tracklist = [
  {
    number: 1,
    title: "ME ON",
    duration: "03:59",
  },
];

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
              type: "number",
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
