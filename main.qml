import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.14
import "./"

Window {
    id: root

    visible: true
    width: 640
    height: 480
    title: qsTr("TreeView and ListView example")

    Row {
        anchors.fill: parent
        spacing: -1

        Rectangle {
            width: parent.width / 2
            height: parent.height
            border {
                width: 1
                color: "gray"
            }
            clip: true

            Flickable {
                id: toolbarFlickable

                anchors.fill: parent
                contentHeight: tree.height
                contentWidth: parent.width
                boundsBehavior: Flickable.StopAtBounds
                ScrollBar.vertical: ScrollBar {}

                TreeItem {
                    id: tree

                    anchors {
                        top: parent.top
                        left: parent.left
                        leftMargin: 5
                        topMargin: 5
                    }

                    parentIndex: _treemodel.rootIndex()
                    childCount: _treemodel.rowCount(parentIndex)
                    itemLeftPadding: 0
                }
            }
        }

        Rectangle {
            width: parent.width / 2
            height: parent.height
            border {
                width: 1
                color: "gray"
            }
            clip: true

            ListItem {
                anchors {
                    top: parent.top
                    left: parent.left
                    leftMargin: 5
                    topMargin: 5
                }

                itemLeftPadding: 0
            }
        }
    }
}
