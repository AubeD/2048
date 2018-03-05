import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle {
        id: page
        width: 320; height: 480
        color: "lightgray"

        Text {
                id: helloText
                text: "Hello world!"
                y: 30
                anchors.horizontalCenter: page.horizontalCenter
                font.pointSize: 24; font.bold: true

                MouseArea { id: mouseArea; anchors.fill: parent }

                        states: State {
                            name: "down"; when: mouseArea.pressed == true
                            PropertyChanges { target: helloText; y: 160; rotation: 180; color: "red" }
                        }

                        transitions: Transition {
                            from: ""; to: "down"; reversible: true
                            ParallelAnimation {
                                NumberAnimation { properties: "y,rotation"; duration: 500; easing.type: Easing.InOutQuad }
                                ColorAnimation { duration: 500 }
                            }
                        }
            }

        Grid {
                id: colorPicker
                x: 4; anchors.bottom: page.bottom; anchors.bottomMargin: 4
                rows: 2; columns: 3; spacing: 3

                Case { cellColor: "red"; onClicked: helloText.color = cellColor }
                Case { cellColor: "green"; onClicked: helloText.color = cellColor }
                Case { cellColor: "blue"; onClicked: helloText.color = cellColor }
                Case { cellColor: "yellow"; onClicked: helloText.color = cellColor }
                Case { cellColor: "steelblue"; onClicked: helloText.color = cellColor }
                Case { cellColor: "black"; onClicked: helloText.color = cellColor }
            }
    }

}
