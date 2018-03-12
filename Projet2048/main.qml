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
            id: text1
            text: vueObjectCpt.cptQML
            y: 30
            anchors.horizontalCenter: page.horizontalCenter
            font.pointSize: 24; font.bold: true
            focus: true
            Keys.onPressed: {
                switch(event.key){
                case Qt.Key_Up:
                    vueObjectCpt.increment();
                    break;
                case Qt.Key_Down:
                    vueObjectCpt.decrement();
                    break;
                case Qt.Key_A:
                    monTexte.texteAEditer=qsTr("touche A");
                    break;
                }
            }
        }


        Grid {
            id: colorPicker
            x: 4; anchors.bottom: page.bottom; anchors.bottomMargin: 4
            rows: 4; columns: 4; spacing: 4

            Case { cellColor: "gray"; onClicked: helloText.color = cellColor }
            Case { cellColor: "gray"; onClicked: helloText.color = cellColor }
            Case { cellColor: "gray"; onClicked: helloText.color = cellColor }
            Case { cellColor: "gray"; onClicked: helloText.color = cellColor }
            Case { cellColor: "gray"; onClicked: helloText.color = cellColor }
            Case { cellColor: "gray"; onClicked: helloText.color = cellColor }
            Case { cellColor: "gray"; onClicked: helloText.color = cellColor }
            Case { cellColor: "gray"; onClicked: helloText.color = cellColor }
            Case { cellColor: "gray"; onClicked: helloText.color = cellColor }
            Case { cellColor: "gray"; onClicked: helloText.color = cellColor }
            Case { cellColor: "gray"; onClicked: helloText.color = cellColor }
            Case { cellColor: "gray"; onClicked: helloText.color = cellColor }
            Case { cellColor: "gray"; onClicked: helloText.color = cellColor }
            Case { cellColor: "gray"; onClicked: helloText.color = cellColor }
            Case { cellColor: "gray"; onClicked: helloText.color = cellColor }
            Case { cellColor: "gray"; onClicked: helloText.color = cellColor }
        }
    }

    MonTexte {
        id: monTexte
        x: 504
        y: 163
    }


}
