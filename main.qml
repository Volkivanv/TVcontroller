import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

Window {
    width: 240
    height: 680
    color: "#2F4F4F"
    visible: true
    title: qsTr("Hello World")

    Button{
        id: one
        width: five.width
        height: five.height
        text: "1"
        font.pointSize: five.font.pointSize
        anchors.right: five.left
        anchors.rightMargin: 3
        anchors.bottom: five.top
        anchors.bottomMargin: 3
        onClicked: {
            channel.value = 1
            textInfo.text="channel "+ channel.value.toString()
        }
        visible:true
    }
    Button{
        id: two
        width: five.width
        height: five.height
        text: "2"
        font.pointSize: five.font.pointSize
        anchors.left: five.left
        anchors.bottom: five.top
        anchors.bottomMargin: 3
        onClicked: {
            channel.value = 2
            textInfo.text="channel "+ channel.value.toString()
        }
        visible:true
    }
    Button{
        id: three
        width: five.width
        height: five.height
        text: "3"
        font.pointSize: five.font.pointSize
        anchors.left: five.right
        anchors.leftMargin: 3
        anchors.bottom: five.top
        anchors.bottomMargin: 3
        onClicked: {
            channel.value = 3
            textInfo.text="channel "+ channel.value.toString()
        }
        visible:true
    }
    Button{
        id: four
        width: five.width
        height: five.height
        text: "4"
        font.pointSize: five.font.pointSize
        anchors.right: five.left
        anchors.rightMargin: 3
        anchors.top: five.top
        onClicked: {
            channel.value = 4
            textInfo.text="channel "+ channel.value.toString()
        }
        visible:true
    }
    Button{
        id: five
        width: parent.width/4
        height: parent.height/10
        text: "5"
        font.pointSize: 30
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: parent.height/4;
        onClicked: {
            channel.value = 5
            textInfo.text="channel "+ channel.value.toString()
        }
        visible:true
    }
    Button{
        id: six
        width: five.width
        height: five.height
        text: "6"
        font.pointSize: five.font.pointSize
        anchors.left: five.right
        anchors.leftMargin: 3
        anchors.top: five.top
        onClicked: {
            channel.value = 6
            textInfo.text="channel "+ channel.value.toString()
        }
        visible:true
    }
    Button{
        id: seven
        width: five.width
        height: five.height
        text: "7"
        font.pointSize: five.font.pointSize
        anchors.right: five.left
        anchors.rightMargin: 3
        anchors.top: five.bottom
        anchors.topMargin: 3
        onClicked: {
            channel.value = 7
            textInfo.text="channel "+ channel.value.toString()
        }
        visible:true
    }
    Button{
        id: eight
        width: five.width
        height: five.height
        text: "8"
        font.pointSize: five.font.pointSize
        anchors.left: five.left
        anchors.top: five.bottom
        anchors.topMargin: 3
        onClicked: {
            channel.value = 8
            textInfo.text="channel "+ channel.value.toString()
        }
        visible:true
    }
    Button{
        id: nine
        width: five.width
        height: five.height
        text: "9"
        font.pointSize: five.font.pointSize
        anchors.left: five.right
        anchors.leftMargin: 3
        anchors.top: five.bottom
        anchors.topMargin: 3
        onClicked: {
            channel.value = 9
            textInfo.text="channel "+ channel.value.toString()
        }
        visible:true
    }
    Button{
        id: zero
      //  width: five.width
      //  height: five.height
        text: "0"
        font.pointSize: five.font.pointSize
        anchors.left: seven.left
        anchors.right: nine.right
       // anchors.leftMargin: 3
        anchors.top: seven.bottom
        anchors.topMargin: 3
        visible:true
        onClicked: {
            channel.value = 0
            textInfo.text="channel "+ channel.value.toString()
        }
    }
    Button{
        id:volplus
        text:"+"
        width: five.width
        height:five.height*3/5
        font.pointSize: five.font.pointSize
        anchors.left: zero.left
        anchors.top: zero.bottom
        anchors.topMargin: 10
        onClicked: {
            volume.value += 10
            textvolume.text = "volume  " + volume.value.toString()
        }
        visible:true
    }
    Button{
        id:volminus
        text:"-"
        width: volplus.width
        height:volplus.height
        font.pointSize: volplus.font.pointSize
        anchors.left: volplus.left
        anchors.top: volplus.bottom
        anchors.topMargin: 5
        onClicked: {
            volume.value -= 10
            textvolume.text = "volume  " + volume.value.toString()
        }

        visible:true
    }
    Button{
        id:channelplus
        text:"^"
        width: five.width
        height:five.height*3/5
        font.pointSize: five.font.pointSize
        anchors.right: zero.right
        anchors.top: zero.bottom
        anchors.topMargin: 10
        onClicked: {
            channel.value += 1
            textInfo.text="channel "+ channel.value.toString()
        }
        visible:true
    }
    Button{
        id:channelminus
        text:"v"
        width: channelplus.width
        height:channelplus.height
        font.pointSize: channelplus.font.pointSize
        anchors.right: channelplus.right
        anchors.top: channelplus.bottom
        anchors.topMargin: 5
        onClicked: {
            channel.value -= 1
            textInfo.text="channel "+ channel.value.toString()
        }
        visible:true
    }
    Rectangle{
          // width: parent.width
           height: parent.height/10


        color:"skyblue"
        anchors.top: volminus.bottom
        anchors.topMargin: 5
        anchors.left: volminus.left
        anchors.right: channelminus.right

       Text{
           id:textInfo

           text: "channel 0"

           font.pointSize: parent.height*2/8
           font.preferShaping: true
           font.styleName: "italic"

           fontSizeMode: Text.Fit
           minimumPixelSize: 10;

           color: "#2F4F4F"
           anchors.horizontalCenter: parent.horizontalcenter
           //anchors.verticalCenter: parent.verticalCenter
           anchors.left: parent.left
           anchors.right: parent.right
           anchors.leftMargin: 10
           anchors.rightMargin: 5
           visible: true


       }
       Text{
           id:textvolume

           text: "volume  "+volume.value.toString()

           font.pointSize: parent.height*2/8
           font.preferShaping: true
           font.styleName: "italic"

           fontSizeMode: Text.Fit
           minimumPixelSize: 10;

           color: "#FF4F4F"
           anchors.horizontalCenter: parent.horizontalcenter
           //anchors.verticalCenter: parent.verticalCenter
           anchors.left: textInfo.left
           anchors.top: textInfo.bottom
           anchors.topMargin: 3
           anchors.rightMargin: 5
           visible: true


       }


       }
    SpinBox{
        id:channel
        value: 0;
        from: 0
        to: 100
        visible: false

    }
    SpinBox{
        id:volume
        value: 50;
        from: 0
        to: 100
        visible: false

    }



}


