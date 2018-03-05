import QtQuick 2.0

Item {
    id: container
    property alias cellColor: rectangle.color
    signal clicked(color cellColor)

    width: 75; height: 75

    Rectangle {
        id: rectangle
        border.color: "white"
        anchors.fill: parent

        Text {
                id: helloText
                text: "Hello world!"
                y: 5
                anchors.horizontalCenter: page.horizontalCenter
                font.pointSize: 24; font.bold: true
    }

    MouseArea {
        anchors.fill: parent
        onClicked: container.clicked(container.cellColor)
    }

}
