import QtQuick 2.12
import QtQuick.Window 2.12
import QtCharts 2.0
import QtMultimedia 5.0

Item {
    visible: true
    width: 640
    height: 480


    //    title: qsTr("Hello World")
    VideoOutput {
        anchors.fill: parent
        source: camera

        fillMode: VideoOutput.Stretch
        Camera {
            id: camera
            imageProcessing {
                //                whiteBalanceMode: Camera.WhiteBalanceTungsten
                //                contrast: 0.66
                //                saturation: -0.5
                sharpeningLevel: 1
                colorFilter: CameraImageProcessing.ColorFilterGrayscale
            }
        }

        AudioChartView {
            width: parent.width / 4
            height: parent.height / 3
            anchors {
                bottom: parent.bottom
                left: parent.left
                leftMargin: 5
                bottomMargin: 5
            }
        }
    }
}
