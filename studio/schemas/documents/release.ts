import type { Props as ReleaseProps } from "@app/components/Release";

// export const example: ReleaseProps = {
//   catalogNumber: "CLAM013",
//   publishDate: "17/06/2022",
//   releaseTitle: "SUBBO",
//   releaseType: "DIGITAL RELEASE",
//   releaseImage: "/Clam_files/CLAM_Website_IMG-27.png",
//   artistName: "TONY PEREZ",
//   buyLink: "https://clam-pressure.bandcamp.com/album/clam013-subbo",
//   coverImage: "/Clam_files/CLAM_Website_IMG-26.png",
//   tracklist: [
//     {
//       number: "01",
//       title: "ME ON",
//       duration: "03:59",
//     },
//   ],
// };

export const release = {
  name: "release",
  title: "Release",
  type: "document",
  fields: [
    {
      name: "publishDate",
      title: "Publish date",
      type: "string",
    },
    {
      name: "catalogNumber",
      title: "Catalog number",
      type: "string",
    },
    {
      name: "artistName",
      title: "Artist name",
      type: "string",
    },
    {
      name: "releaseTitle",
      title: "Release title",
      type: "string",
    },
    {
      name: "coverImage",
      title: "Cover image",
      type: "image",
      fields: [],
    },
    {
      name: "releaseType",
      title: "Release type",
      type: "string",
      options: {
        list: [
          "DIGITAL RELEASE",
          "VINYL RELEASE",
          "DISK RELEASE",
          "CD RELEASE",
          "CASETTE RELEASE",
        ],
      },
    },
    {
      name: "tracklist",
      title: "Tracklist",
      type: "tracklist",
    },
    {
      name: "buyLink",
      title: "Buy link",
      type: "url",
    },
    {
      name: "releaseImage",
      title: "Release image",
      type: "image",
      fields: [],
    },
  ],
};