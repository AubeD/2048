import QtQuick 2.0

Item {
    property alias texteAEditer: text1.text
    id: monTexte
    width: 30
    height: 60

    Rectangle {
        id: rectangle
        x: 0
        y: 0
        width: 30
        height: 60
        color: "#da2929"
    }

    Text {
        id: text1
        x: 4
        y: 18
        text: qsTr("Text")
        font.pixelSize: 12
    }


}
