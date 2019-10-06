# NOTICE:
#
# Application name defined in TARGET has a corresponding QML filename.
# If name defined in TARGET is changed, the following needs to be done
# to match new name:
#   - corresponding QML filename must be changed
#   - desktop icon filename must be changed
#   - desktop filename must be changed
#   - icon definition filename in desktop file must be changed
#   - translation filenames have to be changed

# The name of your application
TARGET = Organization_interface

CONFIG += sailfishapp

SOURCES += src/Organization_interface.cpp

DISTFILES += qml/Organization_interface.qml \
    qml/cover/CoverPage.qml \
    qml/pages/Dialog.qml \
    qml/pages/FirstPage.qml \
    qml/pages/SecondPage.qml \
    qml/pages/Task_10.qml \
    qml/pages/Task_2_1.qml \
    qml/pages/Task_2_2.qml \
    qml/pages/Task_3.qml \
    qml/pages/Task_4.qml \
    qml/pages/Task_5.qml \
    qml/pages/Task_6.qml \
    qml/pages/Task_7.qml \
    qml/pages/Task_8.qml \
    qml/pages/Task_9.qml \
    qml/pages/ThirdPage.qml \
    qml/pages/Time_dialog.qml \
    rpm/Organization_interface.changes.in \
    rpm/Organization_interface.changes.run.in \
    rpm/Organization_interface.spec \
    rpm/Organization_interface.yaml \
    translations/*.ts \
    Organization_interface.desktop

SAILFISHAPP_ICONS = 86x86 108x108 128x128 172x172

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n

# German translation is enabled as an example. If you aren't
# planning to localize your app, remember to comment out the
# following TRANSLATIONS line. And also do not forget to
# modify the localized app name in the the .desktop file.
TRANSLATIONS += translations/Organization_interface-de.ts
