import QtQuick 2.0
import QtQuick.Layouts 1.2
import Felgo 3.0
import"../common"
Scene {
    id: mainScene
    signal beginGamePressed
    signal closeGamePressed
    signal setGamePressed

    Rectangle {
        id:mainWindow
        anchors.fill: parent.gameWindowAnchorItem
        BackgroundImage{
            source: "../../assets/img/mainScene.jpg"
            fillMode: Image.PreserveAspectCrop
            anchors.fill: parent
        }

        //two functionButton
        MenuButton{
            id:beginButton
            width:70
            height: 30
            x:200
            y:250
            Image{
                id: beginButton_image
                source: "../../assets/img/bottonBackground.jpg"
                fillMode: Image.PreserveAspectCrop
                anchors.fill: parent
                MouseArea{
                    anchors.fill:parent
                    onEntered:{
                        beginButton_image.source = "../../assets/img/buttonBackground2.jpg"
                        beginText.color="#7B0E01"
                    }
                    onExited: {
                        beginButton_image.source ="../../assets/img/bottonBackground.jpg"
                        beginText.color="black"
                    }

                    onPressed: {
                        beginButton.opacity =0.5
                    }
                    onReleased: {
                        beginButton.opacity =1
                    }
                }
                Text {
                    id: beginText
                    text: qsTr("Play")
                    font.bold: true
                    font.pixelSize: 20
                    font.family: "NSimSun"
                    anchors.centerIn: parent
                }
            }
            onClicked: beginGamePressed()
        }

        MenuButton{
            id:closeButton
            width:70
            height: 30
            x:200
            y:300
            Image{
                id:closeButton_image
                source: "../../assets/img/bottonBackground.jpg"
                fillMode: Image.PreserveAspectCrop
                anchors.fill: parent
                MouseArea{
                    anchors.fill:parent
                    onEntered:{
                        closeButton_image.source = "../../assets/img/buttonBackground2.jpg"
                        closeText.color="#7B0E01"

                    }
                    onExited: {
                        closeButton_image.source ="../../assets/img/bottonBackground.jpg"
                        closeText.color="black"
                    }

                    onPressed: {
                        closeButton.opacity =0.5
                    }
                    onReleased: {
                        closeButton.opacity =1
                    }
                }
                Text {
                    id: closeText
                    text: qsTr("Exit")
                    font.bold: true
                    font.pixelSize: 20
                    font.family: "NSimSun"
                    anchors.centerIn: parent
                }
            }
            onClicked: closeGamePressed()
        }

        MenuButton{
            id:setButton
            width:70
            height: 30
            x:200
            y:350
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
