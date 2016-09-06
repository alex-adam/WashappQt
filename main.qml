import QtQuick 2.5
import QtQuick.Window 2.2
import "."

Window {
    id: root
    visible: true

    height: Screen.height
    width: Screen.width

    Rectangle {
        id: _mainScreen

        height: root.height
        width: root.width
        color: "black"

        state: "0"

        ScreenOne {
            id: _screen1
        }

        ScreenTwo {
            id: _screen2

            anchors.left: _screen1.right
        }

        ScreenThree {
            id: _screen3

            anchors.left: _screen2.right
        }

        ScreenFour {
            id: _screen4

            anchors.left: _screen3.right
        }

        states: [
            State {
                name: "1"
                PropertyChanges { target: _screen1; x: -_mainScreen.width}
            },
            State {
                name: "2"
                PropertyChanges { target: _screen1; x: -_mainScreen.width*2}
            },
            State {
                name: "3"
                PropertyChanges { target: _screen1; x: -_mainScreen.width*3}
            },
            State {
                name: "4"
                PropertyChanges { target: _screen1; x: -_mainScreen.width*4}
            }
        ]

        transitions: Transition {
            NumberAnimation { property: "x"; easing.type: Easing.InOutQuad; duration: 750 }
        }
    }

    onSceneGraphInitialized: {
        Style.deviceScreenHeight = Screen.height;
        Style.deviceScreenWidth = Screen.width;
    }
}
