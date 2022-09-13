import S from "@sanity/desk-tool/structure-builder";

// Go to this link to see available icons
// https://static.pinchos.se/sanity/icon-preview/index.html

const deskStructure = () =>
  S.list()
    .title("Website")
    .items([
      S.listItem()
        .title("Settings")
        .child(
          S.editor()
            .id("settings")
            .schemaType("settings")
            .documentId("settings")
        ),
    ]);

export default deskStructure;
