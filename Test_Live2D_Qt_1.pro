QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    live2d/LAppAllocator.cpp \
    live2d/LAppDefine.cpp \
    live2d/LAppDelegate.cpp \
    live2d/LAppLive2DManager.cpp \
    live2d/LAppModel.cpp \
    live2d/LAppPal.cpp \
    live2d/LAppSprite.cpp \
    live2d/LAppTextureManager.cpp \
    live2d/LAppView.cpp \
    live2d/LAppWavFileHandler.cpp \
    live2d/TouchManager.cpp \
    main.cpp \
    mainwindow.cpp \
    openglive2d.cpp

HEADERS += \
    live2d/LAppAllocator.hpp \
    live2d/LAppDefine.hpp \
    live2d/LAppDelegate.hpp \
    live2d/LAppLive2DManager.hpp \
    live2d/LAppModel.hpp \
    live2d/LAppPal.hpp \
    live2d/LAppSprite.hpp \
    live2d/LAppTextureManager.hpp \
    live2d/LAppView.hpp \
    live2d/LAppWavFileHandler.hpp \
    live2d/TouchManager.hpp \
    mainwindow.h \
    openglive2d.h

FORMS += \
    mainwindow.ui

INCLUDEPATH += $$PWD/heads
INCLUDEPATH += $$PWD/heads/Core
INCLUDEPATH += $$PWD/heads/GL
INCLUDEPATH += $$PWD/heads/GLFW
INCLUDEPATH += $$PWD/heads/Framework
INCLUDEPATH += $$PWD/heads/stb
INCLUDEPATH += $$PWD/live2d

LIBS += $$PWD/libs/Core/lib/windows/x86_64/142/Live2DCubismCore_MD.lib
LIBS += $$PWD/libs/Framework/lib/Framework.lib
LIBS += $$PWD/libs/glfw/lib/glfw3.lib
LIBS += $$PWD/libs/glew/lib/libglew32.lib

DEFINES += CSM_TARGET_WIN_GL

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
