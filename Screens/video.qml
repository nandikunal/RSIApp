import QtQuick 2.0
import QtMultimedia 5.9
import "../Components"

Rectangle {
    id: appHome
    //width: screenWidth; height: screenHeight
    objectName: "video"
    color: "transparent"
    border.color: "dark red"
    border.width: 1

    MediaPlayer {
        id: player
        source: "qrc:/assets/videoplayback.mp4";
        autoPlay: true
    }

    VideoOutput {
        id: videoOutput
        source: player
        anchors.fill: parent
        x: 0; y: 0
        width: mainWidth; height: mainHeight
    }
}
