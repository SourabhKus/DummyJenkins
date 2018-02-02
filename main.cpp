#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QDebug>

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

#ifdef VERSION
    QString ver = QString("%1").arg(VERSION);
    app.setApplicationVersion(ver);
    qDebug() <<"Version :"<< ver;
#endif

    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("qApp", qApp);
    engine.load(QUrl(QLatin1String("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;


    return app.exec();
}
