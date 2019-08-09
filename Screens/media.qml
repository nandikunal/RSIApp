import QtQuick 2.9
import "../Components"

Rectangle {
    id: appMedia
    //width: screenWidth; height: screenHeight
    objectName: "media"
    color: "transparent"
    border.color: "orange"
    border.width: 1

    Column {
        id: colMediaScreen
        anchors.fill: appMedia
        Rectangle {
            id: songInfo
            width: screenWidth; height: screenHeight/2 + screenHeight/4
            color: "transparent"
//            border.color: "yellow"
//            border.width: 1
            AlbumArt {
                id: mediaAlbumArt
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.topMargin: 10
                anchors.leftMargin: 15
            }

            MetaData {
                id: mediaMetaData
                anchors.top: parent.top
                anchors.left: mediaAlbumArt.right
                anchors.topMargin: 10
                anchors.leftMargin: 20
                width: 550
            }
        }

        Rectangle {
            id: songControls
            width: screenWidth; height: screenHeight/4
            anchors.bottom: parent.bottom

            color: "transparent"
//            border.color: "green"
//            border.width: 1

            ProgressInfoBar {
                id: progressBar
                anchors.top: parent.top
                x: 180
            }

            PlayerControls {
                id: playerControls
                anchors.top: progressBar.bottom
                anchors.topMargin: 20
                x: 150
            }
        }
    }
}
