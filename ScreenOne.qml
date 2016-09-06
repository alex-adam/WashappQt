import QtQuick 2.0
import "."

Rectangle {
    id: _screen1

    height: Style.deviceScreenHeight
    width: Style.deviceScreenWidth

    color: "black"

    BigLetter {
        text: "W"

        anchors.top: parent.top
        anchors.left: parent.left
        anchors.leftMargin: Style.dp(198)
    }

    LinkTextLabel {
        id: _screen1LinkText
        anchors.bottom: _screen1LinkText2.top
        anchors.bottomMargin: Style.dp(15)
        anchors.right: parent.right
        anchors.rightMargin: Style.dp(30)

        text: "GET"
    }

    LinkTextLabel {
        id: _screen1LinkText2
        anchors.bottom: parent.bottom
        anchors.bottomMargin: Style.dp(40)
        anchors.right: parent.right
        anchors.rightMargin: Style.dp(30)

        text: "STARTED"
    }

    GuideTextLabel {
        id: _screen1GuideTextLineOne

        anchors.top: parent.top
        anchors.topMargin: Style.dp(74)
        anchors.left: parent.left
        anchors.leftMargin: Style.dp(27)

        text: "SHOW ME YOUR"
    }

    GuideTextLabel {
        id: _screen1GuideTextLineTwo
        anchors.top: _screen1GuideTextLineOne.bottom
        anchors.topMargin: Style.dp(10)
        anchors.left: parent.left
        anchors.leftMargin: Style.dp(27)

        text: "DIRTY"
    }

    GuideDescriptionLabel {
        id: _screen1GuideTextLineTwoDetail
        anchors.top: _screen1GuideTextLineOne.bottom
        anchors.topMargin: Style.dp(10)
        anchors.left: _screen1GuideTextLineTwo.right
        anchors.leftMargin: Style.dp(8)

        text: "[ L A U N D R Y ]"
    }

    MouseArea {
        anchors.fill: parent

        onClicked: {
            _mainScreen.state = "1"
        }
    }
}
