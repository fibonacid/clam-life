import S from "@sanity/desk-tool/structure-builder";
import { CogIcon, SquareIcon } from "@sanity/icons";
// Go to this link to see available icons
// https://static.pinchos.se/sanity/icon-preview/index.html

const deskStructure = () =>
  S.list()
    .title("Website")
    .items([
      S.listItem()
        .title("Settings")
        .icon(CogIcon)
        .child(
          S.editor()
            .id("settings")
            .schemaType("settings")
            .documentId("settings")
        ),
      S.listItem()
        .title("Releases")
        .icon(SquareIcon)
        .child(S.documentTypeList("release")),
    ]);

export default deskStructure;
