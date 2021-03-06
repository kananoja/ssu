TARGET = ssu
include(../ssulibrary.pri)

# TODO: which headers are public? i.e. to be installed
public_headers = \
        ssu.h \
        ssudeviceinfo.h \
        ssulog.h \
        ssurepomanager.h \
        ssusettings.h \
        ssuvariables.h

HEADERS = \
        $${public_headers} \
        sandbox_p.h \
        ssucoreconfig.h \
        ssufeaturemanager.h

SOURCES = \
        sandbox.cpp \
        ssu.cpp \
        ssucoreconfig.cpp \
        ssudeviceinfo.cpp \
        ssulog.cpp \
        ssufeaturemanager.cpp \
        ssuvariables.cpp \
        ssurepomanager.cpp \
        ssusettings.cpp

CONFIG += link_pkgconfig
QT += network xml dbus
PKGCONFIG += libsystemd-journal libshadowutils

install_headers.files = $${public_headers}

ssuconfhack {
    DEFINES += SSUCONFHACK
}
