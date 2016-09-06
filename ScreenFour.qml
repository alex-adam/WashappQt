import QtQuick 2.0
import "."

Rectangle {
    id: _screen4

    height: Style.deviceScreenHeight
    width: Style.deviceScreenWidth

    color: "black"
    clip: true

    property string chosenType: "<type>"
    property string resultWashingType: "<washing>"

    property alias resultTemperatureCold: _screen4ResultText1
    property alias resultTemperatureWarm: _screen4ResultText2
    property alias resultTemperatureHot: _screen4ResultText3

    BigLetter {
        text: "S"

        anchors.top: parent.top
        anchors.left: parent.left
        anchors.leftMargin: Style.dp(-148)
    }

    BigLetter {
        text: "H"

        anchors.top: parent.top
        anchors.left: parent.left
        anchors.leftMargin: Style.dp(238)
    }

    ResultLabel {
        id: _screen4ResultText1
        anchors.bottom: _screen4ResultText2.top
        anchors.bottomMargin: Style.dp(18)
        anchors.right: parent.right
        anchors.rightMargin: Style.dp(30)

        text: "COLD"
    }

    ResultLabel {
        id: _screen4ResultText2
        anchors.bottom: _screen4ResultText3.top
        anchors.bottomMargin: Style.dp(18)
        anchors.right: parent.right
        anchors.rightMargin: Style.dp(30)

        text: "WARM"
    }

    ResultLabel {
        id: _screen4ResultText3
        anchors.bottom: parent.bottom
        anchors.bottomMargin: Style.dp(242)
        anchors.right: parent.right
        anchors.rightMargin: Style.dp(30)

        text: "HOT"
    }

    ResultLabel {
        id: _screen4ResultText4
        anchors.bottom: parent.bottom
        anchors.bottomMargin: Style.dp(45)
        anchors.right: parent.right
        anchors.rightMargin: Style.dp(30)
        active: true

        text: resultWashingType
    }

    GuideTextLabel {
        id: _screen4GuideTextLineOne

        anchors.top: parent.top
        anchors.topMargin: Style.dp(74)
        anchors.left: parent.left
        anchors.leftMargin: Style.dp(27)

        text: "WASH"
    }

    GuideSelectedLabel {
        id: _screen4GuideTextLineOneDetail

        anchors.top: parent.top
        anchors.topMargin: Style.dp(74)
        anchors.left: _screen4GuideTextLineOne.right
        anchors.leftMargin: Style.dp(7)

        text: _screen3.chosenColor

        MouseArea {
            anchors.fill: parent
            onClicked: {
                _mainScreen.state -= 1;
            }
        }
    }

    GuideSelectedLabel {
        id: _screen4GuideTextLineTwo
        anchors.top: _screen4GuideTextLineOne.bottom
        anchors.topMargin: Style.dp(10)
        anchors.left: parent.left
        anchors.leftMargin: Style.dp(27)

        text: _screen4.chosenType

        MouseArea {
            anchors.fill: parent
            onClicked: {
                _mainScreen.state -= 1;
            }
        }
    }

    GuideTextLabel {
        id: _screen4GuideTextLineTwoDetail
        anchors.top: _screen4GuideTextLineOne.bottom
        anchors.topMargin: Style.dp(10)
        anchors.left: _screen4GuideTextLineTwo.right
        anchors.leftMargin: Style.dp(7)

        text: "WITH"
    }
}
