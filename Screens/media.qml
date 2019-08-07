import QtQuick 2.9
import "../Components"

Rectangle {
    id: appMedia
    width: screenWidth; height: screenHeight
    objectName: "media"
    color: "transparent"
    border.color: "orange"
    border.width: 1

    AlbumArt {
        id: mediaAlbumArt
    }
}
