import releases from "./data/releases.json";
import sanityClient from "part:@sanity/base/client";
import { resolve, join } from "path";
import fs from "fs";

const client = sanityClient.withConfig({
  apiVersion: "2022-06-16",
});

const transaction = client.transaction();

const ImageMap = new Map();

const publicFolder = resolve("../public/");

const uploadImage = async (path) => {
  if (ImageMap.has(path)) {
    return ImageMap.get(path);
  } else {
    const doc = await client.assets.upload(
      "image",
      fs.createReadStream(join(publicFolder, path)),
      {
        preserveOriginalFilename: true,
      }
    );
    console.log(doc);
    ImageMap.set(path, doc);
    return doc;
  }
};

const getImage = (path) => {
  return ImageMap.get(path);
};

(async function main() {
  for await (const release of releases) {
    await uploadImage(release.releaseImage);
    await uploadImage(release.coverImage);
  }

  //////////////////////////
  releases.forEach((release) => {
    const id = "release-" + release.catalogNumber;
    const releaseImageRef = getImage(release.releaseImage)._id;
    const coverImageRef = getImage(release.coverImage)._id;

    transaction.createOrReplace(
      {
        _id: id,
        _type: "release",
        publishDate: release.publishDate,
        catalogNumber: release.catalogNumber,
        releaseTitle: release.releaseTitle,
        artistName: release.artistName,
        releaseType: release.releaseType,
        buyLink: release.buyLink,
        coverImage: {
          asset: {
            _type: "image",
            _ref: coverImageRef,
          },
        },
        releaseImage: {
          asset: {
            _type: "image",
            _ref: releaseImageRef,
          },
        },
        // coverImage: null,
        tracklist: {
          _type: "tracklist",
          items: release.tracklist.map((item) => ({
            _type: "track",
            _key: item.name,
            name: item.name,
            duration: item.duration,
            number: item.number,
          })),
        },
      },
      {}
    );
  });

  const result = await transaction.commit();
  console.log(result);
})();
