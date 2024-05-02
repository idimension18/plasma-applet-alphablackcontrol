// /usr/share/plasma/plasmoids/org.kde.plasma.taskmanager/contents/ui/Task.qml
import QtQuick 2.0
import QtQuick.Layouts 1.1
import org.kde.plasma.plasmoid
import org.kde.plasma.core as PlasmaCore
import org.kde.plasma.components as PlasmaComponents
import org.kde.kirigami as Kirigami
import org.kde.ksvg as KSvg

MouseArea {
	id: task
	hoverEnabled: true


	property alias imagePath: frame.imagePath
	property alias prefix: frame.prefix
	property alias icon: icon.source
	property alias label: label.text

	KSvg.FrameSvgItem {
		id: frame
		imagePath: "widgets/tasks"
		prefix: task.containsMouse ? "hover" : "normal"
		anchors.fill: parent

		RowLayout {
			id: iconBox
			anchors.fill: parent

			Kirigami.Icon {
				id: icon
				Layout.fillHeight: true
				Layout.preferredWidth: height

				active: task.containsMouse
				enabled: true
				//usesPlasmaTheme: false

				source: "xorg"
			}
			PlasmaComponents.Label {
				id: label
				Layout.fillWidth: true
				Layout.fillHeight: true
				text: i18n("App")
			}
		}
	}
}
