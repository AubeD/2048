#ifndef COMPTEUR_H
#define COMPTEUR_H

#include <QObject>

class Compteur : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString cptQML READ readCompteur NOTIFY cptChanged)
    Q_PROPERTY(QList<QString> casesQML READ readCases NOTIFY casesChanged)
public:
    explicit Compteur(QObject *parent=nullptr);
    Q_INVOKABLE void increment();
    Q_INVOKABLE void decrement();
    Q_INVOKABLE void nouvelle_case();
    Q_INVOKABLE void up();
    Q_INVOKABLE void down();
    Q_INVOKABLE void right();
    Q_INVOKABLE void left();

    int rand_a_b(int a,int b);

    QString readCompteur();
    QList<QString> readCases();

signals:
    void cptChanged();
    void casesChanged();

public slots:

private:
    int cpt;
    int cases[4][4];
};

#endif // COMPTEUR_H
