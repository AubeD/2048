import QtQuick 2.0

Item {
    width: 75
    height: 75
    property var ligne: 2
    property var colonne: 2


    Rectangle {
        id: rectangle
        color: "#a20a0a"
        border.color: "#ffffff"
        anchors.fill: parent
    }

    Text {
        id: text_case
        color: "#ffffff"
        text: qsTr("Text")
        anchors.fill: parent
        font.pixelSize: 28
    }

}
