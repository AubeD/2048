#include "compteur.h"

Compteur::Compteur(QObject *parent): QObject(parent) {
    cpt=10;
    emit cptChanged();
}

void Compteur::increment(){
    cpt++;
    emit cptChanged();
}

void Compteur::decrement(){
    cpt--;
    emit cptChanged();
}

QString Compteur::readCompteur(){
    return QString::number(cpt);

}
