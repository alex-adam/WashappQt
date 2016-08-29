import QtQuick 2.0

Rectangle {
    id: _screen2

    height: _style.screenHeight
    width: _style.screenWidth

    color: "black"

    clip: true

    BigLetter {
        text: "W"

        anchors.top: parent.top
        anchors.left: parent.left
        anchors.leftMargin: -_style.dp(178)
    }

    BigLetter {
        text: "A"

        anchors.top: parent.top
        anchors.left: parent.left
        anchors.leftMargin: _style.dp(208)
    }

    LinkTextLabel {
        id: _screen2LinkText1
        anchors.bottom: _screen2LinkText2.top
        anchors.bottomMargin: _style.dp(15)
        anchors.right: parent.right
        anchors.rightMargin: _style.dp(30)

        text: "WHITE"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                _screen3.chosenColor = parent.text;
                _mainScreen.state = 2;
            }
        }
    }

    LinkTextLabel {
        id: _screen2LinkText2
        anchors.bottom: _screen2LinkText3.top
        anchors.bottomMargin: _style.dp(15)
        anchors.right: parent.right
        anchors.rightMargin: _style.dp(30)

        text: "COLORED"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                _screen3.chosenColor = parent.text;
                _mainScreen.state = 2;
            }
        }
    }

    LinkTextLabel {
        id: _screen2LinkText3
        anchors.bottom: parent.bottom
        anchors.bottomMargin: _style.dp(44)
        anchors.right: parent.right
        anchors.rightMargin: _style.dp(30)

        text: "DARK"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                _screen3.chosenColor = parent.text;
                _mainScreen.state = 2;
            }
        }
    }


    GuideTextLabel {
        id: _screen2GuideTextLineOne

        anchors.top: parent.top
        anchors.topMargin: _style.dp(74)
        anchors.left: parent.left
        anchors.leftMargin: _style.dp(27)

        text: "SORT"
    }

    GuideSelectedLabel {
        id: _screen2GuideTextLineOneDetail

        anchors.top: parent.top
        anchors.topMargin: _style.dp(74)
        anchors.left: _screen2GuideTextLineOne.right
        anchors.leftMargin: _style.dp(7)

        text: "LAUNDRY"
    }

    GuideTextLabel {
        id: _screen2GuideTextLineTwo
        anchors.top: _screen2GuideTextLineOne.bottom
        anchors.topMargin: _style.dp(10)
        anchors.left: parent.left
        anchors.leftMargin: _style.dp(27)

        text: "BY"
    }

    GuideDescriptionLabel {
        id: _screen2GuideTextLineTwoDetail
        anchors.top: _screen2GuideTextLineOne.bottom
        anchors.topMargin: _style.dp(10)
        anchors.left: _screen2GuideTextLineTwo.right
        anchors.leftMargin: _style.dp(7)

        text: "[ C O L O R ]"
    }

    Style {
        id: _style
    }
}
