import QtQuick 2.9
import QtQuick.Window 2.2
Window {
    visible: true
    width: 640
    height: 500
    title: qsTr("Hello World")
    Rectangle {
        id: page
        width: 320; height: 500
        color: "lightgray"
        Text {
            id: text1
            property var etat11:0
            property var etat12:0
            property var etat13:0
            property var etat14:0
            property var etat21:0
            property var etat22:0
            property var etat23:0
            property var etat24:0
            property var etat31:0
            property var etat32:0
            property var etat33:0
            property var etat34:0
            property var etat41:0
            property var etat42:0
            property var etat43:0
            property var etat44:0
            text: vueObjectCpt.cptQML
            y: 30
            anchors.horizontalCenter: page.horizontalCenter
            font.pointSize: 24; font.bold: true
            focus: true
            Keys.onPressed: {
                switch(event.key){
                case Qt.Key_Up:
                    vueObjectCpt.increment();
                    if (case_active.colonne == 1){
                        if (text1.etat11==0){
                        stateGroup.state = 'State11'
                        case_active.ligne=1
                        }
                        else {
                            if (text1.etat21==0){
                            stateGroup.state = 'State21'
                            case_active.ligne=2
                            }else {
                                if (text1.etat31==0)
                                stateGroup.state = 'State31'
                                case_active.ligne=3
                    }}} else if ((case_active.colonne == 2)) {
                        if (text1.etat12==0){
                        stateGroup.state = 'State12'
                        case_active.ligne=1
                        }
                        else {
                            if (text1.etat22==0){
                            stateGroup.state = 'State22'
                            case_active.ligne=2
                            }else {
                                if (text1.etat32==0)
                                stateGroup.state = 'State32'
                                case_active.ligne=3
                    }}} else if ((case_active.colonne == 3)) {
                        if (text1.etat13==0){
                        stateGroup.state = 'State13'
                        case_active.ligne=1
                        }
                        else {
                            if (text1.etat23==0){
                            stateGroup.state = 'State23'
                            case_active.ligne=2
                            }else {
                                if (text1.etat33==0)
                                stateGroup.state = 'State33'
                                case_active.ligne=3
                    }}}else if ((case_active.colonne == 4)) {
                        if (text1.etat14==0){
                        stateGroup.state = 'State14'
                        case_active.ligne=1
                        }
                        else {
                            if (text1.etat24==0){
                            stateGroup.state = 'State24'
                            case_active.ligne=2
                            }else {
                                if (text1.etat34==0)
                                stateGroup.state = 'State34'
                                case_active.ligne=3}}}
                    break;
                case Qt.Key_Down:
                    if (case_active.colonne == 1){
                        if (text1.etat41==0){
                        stateGroup.state = 'State41'
                        case_active.ligne=4
                        }
                        else {
                            if (text1.etat31==0){
                            stateGroup.state = 'State31'
                            case_active.ligne=3
                            }else {
                                if (text1.etat21==0)
                                stateGroup.state = 'State21'
                                case_active.ligne=2
                    }}} else if ((case_active.colonne == 2)) {
                        if (text1.etat42==0){
                        stateGroup.state = 'State42'
                        case_active.ligne=4
                        }
                        else {
                            if (text1.etat32==0){
                            stateGroup.state = 'State32'
                            case_active.ligne=3
                            }else {
                                if (text1.etat22==0)
                                stateGroup.state = 'State22'
                                case_active.ligne=2
                    }}} else if ((case_active.colonne == 3)) {
                        if (text1.etat43==0){
                        stateGroup.state = 'State43'
                        case_active.ligne=4
                        }
                        else {
                            if (text1.etat33==0){
                            stateGroup.state = 'State33'
                            case_active.ligne=3
                            }else {
                                if (text1.etat23==0)
                                stateGroup.state = 'State23'
                                case_active.ligne=2
                    }}}else if ((case_active.colonne == 4)) {
                        if (text1.etat44==0){
                        stateGroup.state = 'State44'
                        case_active.ligne=4
                        }
                        else {
                            if (text1.etat34==0){
                            stateGroup.state = 'State34'
                            case_active.ligne=3
                            }else {
                                if (text1.etat24==0)
                                stateGroup.state = 'State24'
                                case_active.ligne=2}}}
                    break;
                case Qt.Key_Right:
                    if (case_active.ligne == 1){
                        if (text1.etat14==0){
                        stateGroup.state = 'State14'
                        case_active.colonne=4
                        }
                        else {
                            if (text1.etat13==0){
                            stateGroup.state = 'State13'
                            case_active.colonne=3
                            }else {
                                if (text1.etat12==0)
                                stateGroup.state = 'State12'
                                case_active.colonne=2
                    }}} else if ((case_active.ligne == 2)) {
                        if (text1.etat24==0){
                        stateGroup.state = 'State24'
                        case_active.colonne=4
                        }
                        else {
                            if (text1.etat23==0){
                            stateGroup.state = 'State23'
                            case_active.colonne=3
                            }else {
                                if (text1.etat22==0)
                                stateGroup.state = 'State22'
                                case_active.colonne=2
                    }}} else if ((case_active.ligne == 3)) {
                        if (text1.etat34==0){
                        stateGroup.state = 'State34'
                        case_active.colonne=4
                        }
                        else {
                            if (text1.etat33==0){
                            stateGroup.state = 'State33'
                            case_active.colonne=3
                            }else {
                                if (text1.etat32==0)
                                stateGroup.state = 'State32'
                                case_active.colonne=2
                    }}}else if ((case_active.ligne == 4)) {
                        if (text1.etat44==0){
                        stateGroup.state = 'State44'
                        case_active.colonne=4
                        }
                        else {
                            if (text1.etat43==0){
                            stateGroup.state = 'State43'
                            case_active.colonne=3
                            }else {
                                if (text1.etat42==0)
                                stateGroup.state = 'State42'
                                case_active.colonne=2}}}
                    break;
                case Qt.Key_Left:
                    if (case_active.ligne == 1){
                        if (text1.etat11==0){
                        stateGroup.state = 'State11'
                        case_active.colonne=1
                        }
                        else {
                            if (text1.etat12==0){
                            stateGroup.state = 'State12'
                            case_active.colonne=2
                            }else {
                                if (text1.etat13==0)
                                stateGroup.state = 'State13'
                                case_active.colonne=3
                    }}} else if ((case_active.ligne == 2)) {
                        if (text1.etat21==0){
                        stateGroup.state = 'State21'
                        case_active.colonne=1
                        }
                        else {
                            if (text1.etat22==0){
                            stateGroup.state = 'State22'
                            case_active.colonne=2
                            }else {
                                if (text1.etat23==0)
                                stateGroup.state = 'State23'
                                case_active.colonne=3
                    }}} else if ((case_active.ligne == 3)) {
                        if (text1.etat31==0){
                        stateGroup.state = 'State31'
                        case_active.colonne=1
                        }
                        else {
                            if (text1.etat32==0){
                            stateGroup.state = 'State32'
                            case_active.colonne=2
                            }else {
                                if (text1.etat33==0)
                                stateGroup.state = 'State33'
                                case_active.colonne=3
                    }}}else if ((case_active.colonne == 4)) {
                        if (text1.etat41==0){
                        stateGroup.state = 'State41'
                        case_active.colonne=1
                        }
                        else {
                            if (text1.etat42==0){
                            stateGroup.state = 'State42'
                            case_active.colonne=2
                            }else {
                                if (text1.etat43==0)
                                stateGroup.state = 'State43'
                                case_active.colonne=3}}}
                    break;
                case Qt.Key_A:
                    monTexte.texteAEditer=qsTr("touche A");
                    break;
                }
            }
        }


        Grid {
            id: colorPicker
            x: 25; y: 170;            rows: 4; columns: 4; spacing: 0

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
    StateGroup {
        id: stateGroup
        states: [
            State {
                name: "State11"

                PropertyChanges {
                    target: case_active
                    x: 25
                    y: 170
                }
            },
            State {
                name: "State12"

                PropertyChanges {
                    target: case_active
                    x: 100
                    y: 170
                }
            },
            State {
                name: "State13"

                PropertyChanges {
                    target: case_active
                    x: 175
                    y: 170
                }
            },
            State {
                name: "State14"

                PropertyChanges {
                    target: case_active
                    x: 250
                    y: 170
                }
            },
            State {
                name: "State21"

                PropertyChanges {
                    target: case_active
                    x: 25
                    y: 245
                }
            },
            State {
                name: "State22"

                PropertyChanges {
                    target: case_active
                    x: 100
                    y: 245
                }
            },
            State {
                name: "State23"

                PropertyChanges {
                    target: case_active
                    x: 175
                    y: 245
                }
            },
            State {
                name: "State24"

                PropertyChanges {
                    target: case_active
                    x: 250
                    y: 245
                }
            },
            State {
                name: "State31"

                PropertyChanges {
                    target: case_active
                    x: 25
                    y: 320
                }
            },
            State {
                name: "State32"

                PropertyChanges {
                    target: case_active
                    x: 100
                    y: 320
                }
            },
            State {
                name: "State33"

                PropertyChanges {
                    target: case_active
                    x: 175
                    y: 320
                }
            },
            State {
                name: "State34"

                PropertyChanges {
                    target: case_active
                    x: 250
                    y: 320
                }
            },
            State {
                name: "State41"

                PropertyChanges {
                    target: case_active
                    x: 25
                    y: 395
                }
            },
            State {
                name: "State42"

                PropertyChanges {
                    target: case_active
                    x: 100
                    y: 395
                }
            },
            State {
                name: "State43"

                PropertyChanges {
                    target: case_active
                    x: 175
                    y: 395
                }
            },
            State {
                name: "State44"

                PropertyChanges {
                    target: case_active
                    x: 250
                    y: 395
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

Case_active {
    id: case_active
    x: 421
    y: 246
}
}
