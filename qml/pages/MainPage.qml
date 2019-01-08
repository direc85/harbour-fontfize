import QtQuick 2.0
import Sailfish.Silica 1.0
import Process 1.0

Page {

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    Process {
        id: process
    }

    Flickable {
        id: flick
        anchors.fill: parent
        contentHeight: column.height

        VerticalScrollDecorator { flickable: flick }

        Column {
            id: column
            x: Theme.paddingLarge
            width: parent.width - 2*x
            anchors.margins: Theme.paddingLarge
            spacing: Theme.paddingLarge

            PageHeader {
                title: "Font Size Changer"
            }

            Button {
                id: button
                text: "Click Me!"
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                    fontSizeIndex = (fontSizeIndex + 1) % 3
                    process.start("/usr/bin/dconf", ["write","/desktop/jolla/theme/font/sizeCategory", fontSize[fontSizeIndex]])
                }
            }

            Label {
                text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
                width: parent.width
                wrapMode: Text.Wrap
            }
        }
    }
}
