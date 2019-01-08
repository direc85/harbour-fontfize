import QtQuick 2.0
import Sailfish.Silica 1.0
import Process 1.0

CoverBackground {

    Label {
        id: label
        anchors.centerIn: parent
        horizontalAlignment: Text.AlignHCenter
        text: "Font\nSize\nChanger"
    }

    Process {
        id: process
    }

    CoverActionList {
        id: coverAction

        CoverAction {
            iconSource: "image://theme/icon-cover-next"
            onTriggered: {
                fontSizeIndex = (fontSizeIndex + 1) % 3
                process.start("/usr/bin/dconf", ["write","/desktop/jolla/theme/font/sizeCategory", fontSize[fontSizeIndex]])
            }
        }
    }
}
