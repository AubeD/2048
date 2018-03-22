#ifndef MATRICE_H
#define MATRICE_H

#include <QObject>

class Matrice
{
public:
    Matrice();
    void Init(int value);
    void Set(int x, int y, int value);
    void Print();
private:
    int tableau[4][4];

};

#endif // MATRICE_H
