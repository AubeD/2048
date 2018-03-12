#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "compteur.h"
#include <QtQml>

int main(int argc, char *argv[])
{
#if defined(Q_OS_WIN)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif

    QGuiApplication app(argc, argv);
    Compteur compteur;

    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("vueObjectCpt",&compteur);
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
