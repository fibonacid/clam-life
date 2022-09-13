import releases from "./data/releases.json";
import sanityClient from "part:@sanity/base/client";

const client = sanityClient.withConfig({
  apiVersion: "2022-06-16",
});

const transaction = client.transaction();

(async function main() {
  //////////////////////////
  releases.forEach((release) => {
    const id = "release-" + release.catalogNumber;
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
        // releaseImage: null,
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
