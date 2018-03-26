#ifndef COMPTEUR_H
#define COMPTEUR_H

#include <QObject>

class Compteur : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString cptQML READ readCompteur NOTIFY cptChanged)
    Q_PROPERTY(QList<QString> casesQML READ readCases NOTIFY casesChanged)
    Q_PROPERTY(QList<QString> couleurQML READ readColor NOTIFY colorChanged)
    Q_PROPERTY(bool dialog_visibleQML READ readDialog_visible NOTIFY dialogChanged)
public:
    explicit Compteur(QObject *parent=nullptr);
    Q_INVOKABLE void increment();
    Q_INVOKABLE void decrement();
    Q_INVOKABLE void nouvelle_case();
    Q_INVOKABLE void up();
    Q_INVOKABLE void down();
    Q_INVOKABLE void right();
    Q_INVOKABLE void left();
    Q_INVOKABLE void nouvelle_partie();
    Q_INVOKABLE void retour();
    Q_INVOKABLE void savePrecedent();

    int rand_a_b(int a,int b);

    QString readCompteur();
    bool readDialog_visible();
    void score();
    QList<QString> readCases();
    QList<QString> readColor();

signals:
    void cptChanged();
    void casesChanged();
    void colorChanged();
    void dialogChanged();

public slots:

private:
    QString couleur[4][4];
    int cpt;
    int cases[4][4];
    bool dialog_visible;
    int precedent[4][4];
};

#endif // COMPTEUR_H
