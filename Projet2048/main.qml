import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.1

Window {
    visible: true
    width: 320
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
                    vueObjectCpt.up();
                    vueObjectCpt.nouvelle_case();
                    break;
                case Qt.Key_Down:
                    vueObjectCpt.down();
                    vueObjectCpt.nouvelle_case();
                    break;
                case Qt.Key_Left:
                    vueObjectCpt.left();
                    vueObjectCpt.nouvelle_case();
                    break;
                case Qt.Key_Right:
                    vueObjectCpt.right();
                    vueObjectCpt.nouvelle_case();
                    break;
                case Qt.Key_P:
                    vueObjectCpt.nouvelle_case();
                    break;
                }
            }
        }

        MessageDialog {
            id: messageDialog
            title: "Game over"
            text: "Vous avez perdu."
            onAccepted: {
                vueObjectCpt.nouvelle_partie();
            }
            visible: vueObjectCpt.dialog_visibleQML
        }


        Grid {
            id: colorPicker
            x: 4; y: 170; anchors.bottom: page.bottom; anchors.bottomMargin: 4
            rows: 4; columns: 4; spacing: 4

            Case { name: "11" ; cellColor: vueObjectCpt.couleurQML[0] ; valeur : vueObjectCpt.casesQML[0] }
            Case { name: "12" ; cellColor: vueObjectCpt.couleurQML[1]; valeur : vueObjectCpt.casesQML[1] }
            Case { name: "13" ; cellColor: vueObjectCpt.couleurQML[2]; valeur : vueObjectCpt.casesQML[2] }
            Case { name: "14" ; cellColor: vueObjectCpt.couleurQML[3]; valeur : vueObjectCpt.casesQML[3] }
            Case { name: "21" ; cellColor: vueObjectCpt.couleurQML[4]; valeur : vueObjectCpt.casesQML[4] }
            Case { name: "22" ; cellColor: vueObjectCpt.couleurQML[5]; valeur : vueObjectCpt.casesQML[5] }
            Case { name: "23" ; cellColor: vueObjectCpt.couleurQML[6]; valeur : vueObjectCpt.casesQML[6] }
            Case { name: "24" ; cellColor: vueObjectCpt.couleurQML[7]; valeur : vueObjectCpt.casesQML[7] }
            Case { name: "31" ; cellColor: vueObjectCpt.couleurQML[8]; valeur : vueObjectCpt.casesQML[8] }
            Case { name: "32" ; cellColor: vueObjectCpt.couleurQML[9]; valeur : vueObjectCpt.casesQML[9] }
            Case { name: "33" ; cellColor: vueObjectCpt.couleurQML[10]; valeur : vueObjectCpt.casesQML[10] }
            Case { name: "34" ; cellColor: vueObjectCpt.couleurQML[11]; valeur : vueObjectCpt.casesQML[11] }
            Case { name: "41" ; cellColor: vueObjectCpt.couleurQML[12]; valeur : vueObjectCpt.casesQML[12] }
            Case { name: "42" ; cellColor: vueObjectCpt.couleurQML[13]; valeur : vueObjectCpt.casesQML[13] }
            Case { name: "43" ; cellColor: vueObjectCpt.couleurQML[14]; valeur : vueObjectCpt.casesQML[14] }
            Case { name: "44" ; cellColor: vueObjectCpt.couleurQML[15]; valeur : vueObjectCpt.casesQML[15] }
        }
    }

    function createNewCell()
        {

            var component = Qt.createComponent("Case_active.qml");
            var buttonY = 55; //Button height : 50 + 5 unit margin
            var button = component.createObject(root,{"x":0,"y":buttonY,"buttonId":1});
                //Connect the clicked signal of the newly created button
                //to the event handler buttonClicked.
            button.clicked.connect(buttonClicked)

        }
    StateGroup {
        id: stateGroup
        states: [
            State {
                name: "State11"

                PropertyChanges {
                    target: monTexte
                    x: 25
                    y: 170
                }
            },
            State {
                name: "State12"

                PropertyChanges {
                    target: monTexte
                    x: 100
                    y: 170
                }
            },
            State {
                name: "State13"

                PropertyChanges {
                    target: monTexte
                    x: 175
                    y: 170
                }
            },
            State {
                name: "State14"

                PropertyChanges {
                    target: monTexte
                    x: 250
                    y: 170
                }
            },
            State {
                name: "State21"

                PropertyChanges {
                    target: monTexte
                    x: 25
                    y: 245
                }
            },
            State {
                name: "State22"

                PropertyChanges {
                    target: monTexte
                    x: 100
                    y: 245
                }
            },
            State {
                name: "State23"

                PropertyChanges {
                    target: monTexte
                    x: 175
                    y: 245
                }
            },
            State {
                name: "State24"

                PropertyChanges {
                    target: monTexte
                    x: 250
                    y: 245
                }
            },
            State {
                name: "State31"

                PropertyChanges {
                    target: monTexte
                    x: 25
                    y: 320
                }
            },
            State {
                name: "State32"

                PropertyChanges {
                    target: monTexte
                    x: 100
                    y: 320
                }
            },
            State {
                name: "State33"

                PropertyChanges {
                    target: monTexte
                    x: 175
                    y: 320
                }
            },
            State {
                name: "State34"

                PropertyChanges {
                    target: monTexte
                    x: 250
                    y: 320
                }
            },
            State {
                name: "State41"

                PropertyChanges {
                    target: monTexte
                    x: 25
                    y: 495
                }
            },
            State {
                name: "State42"

                PropertyChanges {
                    target: monTexte
                    x: 100
                    y: 495
                }
            },
            State {
                name: "State43"

                PropertyChanges {
                    target: monTexte
                    x: 175
                    y: 495
                }
            },
            State {
                name: "State44"

                PropertyChanges {
                    target: monTexte
                    x: 250
                    y: 495
                }
            }
        ]
    transitions: [
        Transition {
            from: "*"; to: "State11"
            NumberAnimation {
                easing.type: Easing.InOutQuad
                properties: "x,y";
                duration: 1000
            }
        },
        Transition {
            from: "*"; to: "State12"
            NumberAnimation {
                    properties: "x,y";
                    easing.type: Easing.InOutQuad;
                    duration: 1000
            }
        },
        Transition {
            from: "*"; to: "State13"
            NumberAnimation {
                    properties: "x,y";
                    easing.type: Easing.InOutQuad;
                    duration: 1000
            }
        },
        Transition {
            from: "*"; to: "State14"
            NumberAnimation {
                    properties: "x,y";
                    easing.type: Easing.InOutQuad;
                    duration: 1000
            }
        },
        Transition {
            from: "*"; to: "State21"
            NumberAnimation {
                    properties: "x,y";
                    easing.type: Easing.InOutQuad;
                    duration: 1000
            }
        },
        Transition {
            from: "*"; to: "State22"
            NumberAnimation {
                    properties: "x,y";
                    easing.type: Easing.InOutQuad;
                    duration: 1000
            }
        },
        Transition {
            from: "*"; to: "State23"
            NumberAnimation {
                    properties: "x,y";
                    easing.type: Easing.InOutQuad;
                    duration: 1000
            }
        },
        Transition {
            from: "*"; to: "State24"
            NumberAnimation {
                    properties: "x,y";
                    easing.type: Easing.InOutQuad;
                    duration: 1000
            }
        },
        Transition {
            from: "*"; to: "State31"
            NumberAnimation {
                    properties: "x,y";
                    easing.type: Easing.InOutQuad;
                    duration: 1000
            }
        },
        Transition {
            from: "*"; to: "State32"
            NumberAnimation {
                    properties: "x,y";
                    easing.type: Easing.InOutQuad;
                    duration: 1000
            }
        },
        Transition {
            from: "*"; to: "State33"
            NumberAnimation {
                    properties: "x,y";
                    easing.type: Easing.InOutQuad;
                    duration: 1000
            }
        },
        Transition {
            from: "*"; to: "State34"
            NumberAnimation {
                    properties: "x,y";
                    easing.type: Easing.InOutQuad;
                    duration: 1000
            }
        },
        Transition {
            from: "*"; to: "State41"
            NumberAnimation {
                    properties: "x,y";
                    easing.type: Easing.InOutQuad;
                    duration: 1000
            }
        },
        Transition {
            from: "*"; to: "State42"
            NumberAnimation {
                    properties: "x,y";
                    easing.type: Easing.InOutQuad;
                    duration: 1000
            }
        },
        Transition {
            from: "*"; to: "State43"
            NumberAnimation {
                    properties: "x,y";
                    easing.type: Easing.InOutQuad;
                    duration: 1000
            }
        },
        Transition {
            from: "*"; to: "State44"
            NumberAnimation {
                    properties: "x,y";
                    easing.type: Easing.InOutQuad;
                    duration: 1000
            }
        },
        Transition {
                 NumberAnimation {
                     properties: "x,y";
                     duration: 200
                 }
        }
    ]
}

}
