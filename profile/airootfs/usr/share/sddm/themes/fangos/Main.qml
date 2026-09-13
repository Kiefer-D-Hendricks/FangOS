import QtQuick
import QtQuick.Controls
import SddmComponents 2.0

Rectangle {
    width: 1920
    height: 1080
    color: "#0B1712"

    Image {
        anchors.fill: parent
        source: "background.png"
        fillMode: Image.PreserveAspectCrop
    }

    Rectangle {
        width: 420
        height: 300
        anchors.centerIn: parent
        radius: 18
        color: "#CC0B1712"
        border.width: 1
        border.color: "#2E7D5B"

        Column {
            anchors.centerIn: parent
            width: 340
            spacing: 18

            Text {
                width: parent.width
                text: "FangOS"
                color: "white"
                font.pixelSize: 32
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
            }

            TextField {
                id: username
                width: parent.width
                placeholderText: "Username"
            }

            TextField {
                id: password
                width: parent.width
                placeholderText: "Password"
                echoMode: TextInput.Password

                Keys.onReturnPressed: {
                    sddm.login(username.text, password.text, session.index)
                }
            }

            ComboBox {
                id: session
                width: parent.width
                model: sessionModel
                textRole: "name"
            }

            Button {
                width: parent.width
                text: "Log In"

                onClicked: {
                    sddm.login(username.text, password.text, session.index)
                }
            }

            Text {
                width: parent.width
                text: "Keep on keeping on."
                color: "#AFC7BC"
                font.pixelSize: 13
                horizontalAlignment: Text.AlignHCenter
            }
        }
    }
}
