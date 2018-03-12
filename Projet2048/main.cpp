#include <iostream>

using namespace std;

#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "compteur.h"
#include <QtQml>
#include <matrice.h>

// On suppose a<b
int rand_a_b(int a, int b){
    return rand()%(b-a) +a;
}

string nouvelle_case(){
    string Etats[]={"State11","State12","State13","State14","State21","State22","State23","State24","State31","State32","State33","State34","State41","State42","State43","State44"};
    int R=rand_a_b(0,16);
    string etat_d=Etats[R];
    return etat_d;
}

int main(int argc, char *argv[])
{
#if defined(Q_OS_WIN)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
Matrice etat;
etat.Init(0);

    QGuiApplication app(argc, argv);
    Compteur compteur;



    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("vueObjectCpt",&compteur);
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}


