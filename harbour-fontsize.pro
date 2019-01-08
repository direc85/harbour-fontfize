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
TARGET = harbour-fontsize

CONFIG += sailfishapp

HEADERS += \
    src/process.h

SOURCES += src/harbour-fontsize.cpp

DISTFILES += qml/harbour-fontsize.qml \
    qml/cover/CoverPage.qml \
    rpm/harbour-fontsize.spec \
    rpm/harbour-fontsize.yaml \
    harbour-fontsize.desktop \
    qml/pages/MainPage.qml

SAILFISHAPP_ICONS = 86x86 108x108 128x128 172x172
