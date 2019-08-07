import QtQuick 2.0

Rectangle {
    id: rectAppListPanel

    property Loader mainScreenLoader: loadMediaScreen

    color: "red"
    anchors.left: parent.left

    Component {
        id: appDelegate
        Column {
            id: colComponent
            Button {
                id: appButton
                width: rectAppListPanel.width; height: 115

                Image {
                    id: appListButtonIcon
                    source: icon
                    width: appButton.width
                    height: appButton.height
//                    anchors.centerIn: appButton
//                    anchors.margins: 10
                    anchors.fill: appButton
                    anchors.margins: 10
                }

                MouseArea {
                    anchors.fill: parent
//                    propagateComposedEvents: true
                    onClicked: {
                        listView.currentIndex = index
                        console.debug(listView.currentIndex)

                        switch(listView.currentIndex) {
                            // Weather
                            case 0: loadMediaScreen.source = "qrc:/Screens/home.qml";
                                    break;
                            // Music
                            case 1: loadMediaScreen.source = "qrc:/Screens/media.qml";
                                    break;                                
                            // Video
                            case 2: loadMediaScreen.source = "qrc:/Screens/video.qml";
                                    break;
                            // Photos
                            case 3: loadMediaScreen.source = "qrc:/Screens/picture.qml";
                                    break;
                            // Settings
                            case 4: loadMediaScreen.source = "qrc:/Screens/settings.qml";
                                    break;
                        }
                    }
                }
            }
        }
    }

    ListView {
        id: listView
        anchors.fill: parent
        anchors.topMargin: 10
        spacing: 10
        model: AppList {
            id: appListElement
        }
        delegate: appDelegate
    }

    Loader {
        id: loadMediaScreen
        anchors.leftMargin: 10
        anchors.left: rectAppListPanel.right
        anchors.verticalCenter: parent.verticalCenter
    }
}
