#include "componentmediaui.h"
#include <QtDebug>

ComponentMediaUI::ComponentMediaUI(QObject *parent) : QObject(parent)
{
    if(parent)
    {
        qDebug() << "Object name is " << parent->objectName() << " & is Created!";
    }
}
