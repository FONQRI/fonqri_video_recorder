import QtQuick 2.9
import QtCharts 2.2

ChartView {
    id: chart_view
    //    title: "Two Series, Common Axes"
    //    anchors.fill: parent
    property int pi: 0
    legend.visible: false
    antialiasing: true
    objectName: "chart_view"

    signal init_chart(var x_axis, var y_axis, var sries)
    signal save(var wind, string fileName)
    backgroundColor: "transparent"
    Rectangle {
        color: "#000080"
        opacity: .2
        anchors.fill: parent
        border.color: "#0080FF"
    }

    //    opacity: 0.3
    Timer {
        interval: 100
        running: true
        repeat: false
        onTriggered: {

            chart_view.init_chart(axisX, axisY, series)
            //C:/Users/haris/Desktop/output.png
        }
    }

    //    Timer {
    //        interval: 1000 / 30
    //        running: true
    //        repeat: true
    //        onTriggered: {

    //            chart_view.save(chart_view, pi++ + ".png")
    //        }
    //    }
    ValueAxis {
        id: axisX
        min: 0
        max: 10
        tickCount: 5
        labelsVisible: false
        gridVisible: false
    }

    ValueAxis {
        id: axisY
        min: -0.5
        max: 1.5
        labelsVisible: false
        gridVisible: false
    }

    LineSeries {
        id: series
        axisX: axisX
        axisY: axisY
        color: "#0080FF"
    }
}
