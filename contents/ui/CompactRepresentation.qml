/*
    SPDX-License-Identifier: LGPL-2.0-or-later
*/

import QtQuick 2.9 
import QtQuick.Layouts 1.1 

import org.kde.kirigami 2.8 as Kirigami

import org.kde.ksysguard.sensors 1.0 as Sensors
import org.kde.ksysguard.faces 1.0 as Faces
import QtQuick.Controls 2.2 as QQC2

import org.kde.quickcharts 1.0 as Charts
import org.kde.quickcharts.controls 1.0 as ChartControls
import org.kde.plasma.core 2.0 as PlasmaCore

Representation {
    id: root
    contentItem: ColumnLayout  {
        LittleTemp {
            visible : !root.levelMode
            actualColor : root.actualColor
            sensorValue : root.sensorValue
            mix : root.mix
        }
        PieChart {
            visible : root.levelMode
            Layout.maximumHeight: Math.max(root.width, Layout.minimumHeight)
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.alignment: Qt.AlignCenter
            updateRateLimit: root.controller.updateRateLimit
            actualColor: root.actualColor
        }
    }
}
