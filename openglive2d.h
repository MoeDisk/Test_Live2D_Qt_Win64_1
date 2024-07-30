#ifndef OPENGLIVE2D_H
#define OPENGLIVE2D_H

#include <QObject>
#include <QOpenGLWidget>
#include <QMouseEvent>

class openglive2d : public QOpenGLWidget
{
    Q_OBJECT

public:
    explicit openglive2d(QWidget *parent=nullptr);
    void modelUpdate();

protected:
    void initializeGL();
    void resizeGL(int w, int h);
    void paintGL();
    void mouseMoveEvent(QMouseEvent *e);
    void mousePressEvent(QMouseEvent * e);
    void mouseReleaseEvent(QMouseEvent * e);
};

#endif // OPENGLIVE2D_H
