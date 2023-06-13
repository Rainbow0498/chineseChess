import QtQuick 2.0
import Felgo 3.0
import "../common"

Scene {
    id: menuScene

    // signal indicating that the creditsScene should be displayed
    signal singleFightPressed
    // signal indicating that the settingsScene should be displayed
    signal doubleFightPressed

    // background
    Rectangle {
        border.color: "red"
        anchors.fill: parent.gameWindowAnchorItem
        Image{
            source: "../../assets/img/backgroundImage.jpg"
            fillMode: Image.PreserveAspectCrop
            anchors.fill: parent
        }
    }

    // the "logo"
    Text {
        anchors.horizontalCenter: parent.horizontalCenter
        y: 70
        font.pixelSize: 30
        color: "brown"
        font.bold: true
       // font.pixelSize:
        text: "Menu Scene" //zhucaidan
    }

    // TODO replace the buttons with your custom styled buttons
    Column {
        anchors.centerIn: parent
        spacing: 20
        MenuButton {
            text: "single"
            onClicked: singleFightPressed()
        }
        MenuButton {
            text: "Credits"
            onClicked: doubleFightPressed()
        }
        MenuButton{
            id:setButton
            width:70
            height: 30
            Image{
                id:setButton_image
                source: "../../assets/img/bottonBackground.jpg"
                fillMode: Image.PreserveAspectCrop
                anchors.fill: parent
                MouseArea{
                    anchors.fill:parent
                    onEntered:{
                        setButton_image.source = "../../assets/img/buttonBackground2.jpg"
                        setText.color="#7B0E01"
                    }
                    onExited: {
                        setButton_image.source ="../../assets/img/bottonBackground.jpg"
                        setText.color="black"
                    }

                    onPressed: {
                        setButton.opacity =0.5
                    }
                    onReleased: {
                        setButton.opacity =1
                    }
                }
                Text {
                    id: setText
                    text: qsTr("Set")
                    font.bold: true
                    font.pixelSize: 20
                    font.family: "NSimSun"
                    anchors.centerIn: parent
                }
            }
            onClicked: setGamePressed()
        }
    }
}
