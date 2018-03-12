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
                    stateGroup.state = 'State11'
                    break;
                case Qt.Key_Down:
                    vueObjectCpt.decrement();
                    stateGroup.state = 'State21'
                    monTexte.xAEditer -=10
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

    function createNewCell()
        {
            //Function creates 4 buttons
            var component = Qt.createComponent("Case_active.qml");
            for(var i=0;i<4;i++)
            {
                var buttonY = i*55; //Button height : 50 + 5 unit margin
                var button = component.createObject(root,{"x":0,"y":buttonY,"buttonId":i+1});

                //Connect the clicked signal of the newly created button
                //to the event handler buttonClicked.
                button.clicked.connect(buttonClicked)
            }
        }

    MonTexte {
        id: monTexte
        x: 504
        y: 163
        focus: true
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
