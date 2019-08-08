import QtQuick 2.0

Item {
    id: leftBarPanel

    property Loader mainScreenLoader: loadMediaScreen

    anchors.left: parent.left

    Component {
        id: appDelegate
        Column {
            id: colComponent
            Button {
                id: appButton
                width: leftBarPanel.width - 10; height: 110

                Image {
                    id: appListButtonIcon
                    source: icon
                    anchors.margins: 10
                    anchors.fill: appButton
                }

                MouseArea {
                    anchors.fill: parent
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
                            // Photos
                            case 3: loadMediaScreen.source = "qrc:/Screens/navigation.qml";
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
        anchors {topMargin: 5; bottomMargin: 5; leftMargin: 5; rightMargin: 5}
        spacing: 10
        model: AppList {
            id: appListElement
        }
        delegate: appDelegate
    }

    Loader {
        id: loadMediaScreen
        anchors.leftMargin: 10
        anchors.left: leftBarPanel.right
        anchors.verticalCenter: parent.verticalCenter
        width: screenWidth - 20; height: screenHeight
    }
}
