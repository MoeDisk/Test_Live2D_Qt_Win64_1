#include "live2d/LAppDelegate.hpp"
#include "live2d/LAppView.hpp"
#include "live2d/LAppPal.hpp"
#include "live2d/LAppLive2DManager.hpp"
#include "live2d/LAppDefine.hpp"

#include <QDebug>
#include <QTimer>

#include "openglive2d.h"

openglive2d::openglive2d(QWidget *parent)
    : QOpenGLWidget(parent) {
    QTimer * t = new QTimer();
    connect(t,&QTimer::timeout,this,&openglive2d::modelUpdate);
    t->start((1.0/60)*1000);
    this->setMouseTracking(true);
}

void openglive2d::initializeGL(){
    LAppDelegate::GetInstance()->Initialize(this);
}

void openglive2d::resizeGL(int w, int h){
    LAppDelegate::GetInstance()->resize(w,h);
}

void openglive2d::paintGL(){
    LAppDelegate::GetInstance()->update();
}

void openglive2d::modelUpdate(){

   this->update();
}

void openglive2d::mouseMoveEvent(QMouseEvent *e){
     LAppDelegate::GetInstance()->GetView()->OnTouchesMoved(e->x(),e->y());
     update();
     e->ignore();
}

void openglive2d::mousePressEvent(QMouseEvent * e){
     LAppDelegate::GetInstance()->GetView()->OnTouchesBegan(e->x(),e->y());
}

void openglive2d::mouseReleaseEvent(QMouseEvent * e){
      LAppDelegate::GetInstance()->GetView()->OnTouchesEnded(e->x(),e->y());
}
