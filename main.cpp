#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtDebug>
#include "componentmediaui.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.addImportPath("qrc:/");
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    auto listOfRootObjects = engine.rootObjects();
    if (listOfRootObjects.isEmpty()) {
        return -1;
    } else {
        qDebug() << "List of Objects " << listOfRootObjects.count();
        ComponentMediaUI obj(listOfRootObjects[0]);
    }

    return app.exec();
}
