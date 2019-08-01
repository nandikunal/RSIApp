import QtQuick 2.9
import QtQuick.Window 2.2
import QtMultimedia 5.0
import "./Components"
import "./Screens"

Window {
//    property int mainWidth: 1280;
//    property int mainHeight: 720;

    property int mainWidth: 1024;
    property int mainHeight: 560;

    property int screenWidth: mainWidth - mainWidth/4;
    property int screenHeight: mainHeight - mainHeight/3;

    property alias bgImage: mainBGImage

    id: windowMain
    objectName: "MainScreen"
    visible: true
    width: mainWidth; height: mainHeight

    // Hide maximize button
    maximumWidth: width
    maximumHeight: height
    minimumWidth: width
    minimumHeight: height

    // Start window at Center of Screen
    //x: Screen.width/2 - width/2
    //y: Screen.height/2 - height/2

    // Window without title Bar
    //flags: "Popup"

    title: qsTr("Infotainment Application")

    FullScrenBG {
        id: mainBGImage
        bgImageWidth: mainWidth
        bgImageHeight: mainHeight
        anchors.fill: parent
        MouseArea {
            anchors.fill: parent
            onClicked: console.debug(mainBGImage.width + " x " + mainBGImage.height)
        }

        Rectangle {
            //border.color: "red"
            color: "transparent"
            //border.width: 5
            width: screenWidth
            height: screenHeight
            //anchors.margins: 5
            anchors.centerIn: mainBGImage
        }
    }

    TopBar {
        color: "transparent"
        width: mainWidth; height: mainHeight/6
        //border.color: "blue"
        //border.width: 2
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
    }

    LeftSidePanel {
        color: "transparent"
        width: mainWidth/8; height: mainHeight
        //border.color: "blue"
        //border.width: 2
        anchors.top: parent.top
        anchors.left: parent.left
    }

    RightSidePanel {
        color: "transparent"
        width: mainWidth/8; height: mainHeight
        //border.color: "blue"
        //border.width: 2
        anchors.top: parent.top
        anchors.right: parent.right
    }

    BottomBar {
        color: "transparent"
        width: mainWidth; height: mainHeight/6
        //border.color: "blue"
        //border.width: 2
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.right
    }
}
