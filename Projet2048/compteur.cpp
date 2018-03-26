#include "compteur.h"
#include <QtWidgets/QMessageBox>
#include <QQuickView>


Compteur::Compteur(QObject *parent): QObject(parent) {
    cpt=0;
    emit cptChanged();
    for(int i=0; i<4; i++)
        for(int j=0; j<4; j++)
            cases[i][j]=0;
    dialog_visible=false;
    emit dialogChanged();
    emit casesChanged();
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

bool Compteur::readDialog_visible(){
    return dialog_visible;

}

QList<QString> Compteur::readColor(){
    QList<QString> list;
    for (int i=0;i<4;i++){
        for (int j=0;j<4;j++){
            switch (cases[i][j]) {
            case 2:
                couleur[i][j]="#476FEC";
                list.append(couleur[i][j]);
                break;
            case 4:
                couleur[i][j]="#47C1EC";
                list.append(couleur[i][j]);
                break;
            case 8:
                couleur[i][j]="#47ECDA";
                list.append(couleur[i][j]);
                break;
            case 16:
                couleur[i][j]="#47EC98";
                list.append(couleur[i][j]);
                break;
            case 32:
                couleur[i][j]="#6AEC47";
                list.append(couleur[i][j]);
                break;
            case 64:
                couleur[i][j]="#E2EC47";
                list.append(couleur[i][j]);
                break;
            case 128:
                couleur[i][j]="#ECC947";
                list.append(couleur[i][j]);
                break;
            case 256:
                couleur[i][j]="#ECA847";
                list.append(couleur[i][j]);
                break;
            case 512:
                couleur[i][j]="#EC7747";
                list.append(couleur[i][j]);
                break;
            case 1024:
                couleur[i][j]="#EC4B47";
                list.append(couleur[i][j]);
                break;
            case 2048:
                couleur[i][j]="#EC4765";
                list.append(couleur[i][j]);
                break;
            default:
                couleur[i][j]="gray";
                list.append(couleur[i][j]);
                break;
            }

        }
    }
    return list;

}

void Compteur::nouvelle_partie(){
    cpt=0;
    emit cptChanged();
    for(int i=0; i<4; i++)
        for(int j=0; j<4; j++)
            cases[i][j]=0;
    dialog_visible=false;
    emit dialogChanged();
    emit casesChanged();
}

QList<QString> Compteur::readCases(){
    QList<QString> list;
    for (int i=0;i<4;i++){
        for (int j=0;j<4;j++){
            if (cases[i][j]==0){
                list.append("");
            }
            else{
                list.append(QString::number(cases[i][j]));
            }

        }
    }
    score();
    return list;


}

void Compteur::score(){
    int somme=0;
    for (int i=0;i<4;i++){
        for (int j=0;j<4;j++){
            somme=somme+cases[i][j];
        }
    }
    cpt=somme;
    emit cptChanged();
    emit colorChanged();
}

void Compteur::nouvelle_case(){
    int compteur=0;
    for (int i=0;i<4;i++){
        for (int j=0;j<4;j++){
            if (cases[i][j]==0){
                compteur++;
            }
        }
    }
    if (compteur!=0){
        int Rligne=rand_a_b(0,4);
        int Rcolonne=rand_a_b(0,4);
        while (cases[Rligne][Rcolonne]!=0){
            Rligne=rand_a_b(0,4);
            Rcolonne=rand_a_b(0,4);
        }
        cases[Rligne][Rcolonne]=2;
        emit casesChanged();
    }
    else{
        dialog_visible=true;
        emit dialogChanged();
    }
}



void Compteur::up(){
    //Copie du tableau:
    int copy[4][4];
    for (int i=0;i<4;i++){
        for (int j=0;j<4;j++){
            copy[i][j]=cases[i][j];
        }
    }
    // déplacement:
    for (int i=0;i<3;i++){
        for (int j=0;j<4;j++){
            if (cases[i][j]==cases[i+1][j]){
                cases[i][j]=cases[i][j]+cases[i+1][j];
                cases[i+1][j]=0;
            }
            if (cases[i][j]==0){
                cases[i][j]=cases[i+1][j];
                cases[i+1][j]=0;
            }
        }
    }
    // Vérification
    for (int i=0;i<4;i++){
        for (int j=0;j<4;j++){
            if (cases[i][j]!=copy[i][j]){
                up();
                break;
            }
        }
    }
    emit casesChanged();
}




void Compteur::down(){
    //Copie du tableau:
    int copy[4][4];
    for (int i=0;i<4;i++){
        for (int j=0;j<4;j++){
            copy[i][j]=cases[i][j];
        }
    }
    // déplacement:
    for (int i=3;i>0;i--){
        for (int j=0;j<4;j++){
            if (cases[i][j]==cases[i-1][j]){
                cases[i][j]=cases[i][j]+cases[i-1][j];
                cases[i-1][j]=0;
            }
            if (cases[i][j]==0){
                cases[i][j]=cases[i-1][j];
                cases[i-1][j]=0;
            }
        }
    }
    // Vérification
    for (int i=0;i<4;i++){
        for (int j=0;j<4;j++){
            if (cases[i][j]!=copy[i][j]){
                down();
                break;
            }
        }
    }
    emit casesChanged();
}

void Compteur::left(){
    //Copie du tableau:
    int copy[4][4];
    for (int i=0;i<4;i++){
        for (int j=0;j<4;j++){
            copy[i][j]=cases[i][j];
        }
    }
    // déplacement:
    for (int i=0;i<3;i++){
        for (int j=0;j<4;j++){
            if (cases[j][i]==cases[j][i+1]){
                cases[j][i]=cases[j][i]+cases[j][i+1];
                cases[j][i+1]=0;
            }
            if (cases[j][i]==0){
                cases[j][i]=cases[j][i+1];
                cases[j][i+1]=0;
            }
        }
    }
    // Vérification
    for (int i=0;i<4;i++){
        for (int j=0;j<4;j++){
            if (cases[i][j]!=copy[i][j]){
                left();
                break;
            }
        }
    }
    emit casesChanged();
}

void Compteur::right(){
    //Copie du tableau:
    int copy[4][4];
    for (int i=0;i<4;i++){
        for (int j=0;j<4;j++){
            copy[i][j]=cases[i][j];
        }
    }
    // déplacement:
    for (int i=3;i>0;i--){
        for (int j=0;j<4;j++){
            if (cases[j][i]==cases[j][i-1]){
                cases[j][i]=cases[j][i]+cases[j][i-1];
                cases[j][i-1]=0;
            }
            if (cases[j][i]==0){
                cases[j][i]=cases[j][i-1];
                cases[j][i-1]=0;
            }
        }
    }
    // Vérification
    for (int i=0;i<4;i++){
        for (int j=0;j<4;j++){
            if (cases[i][j]!=copy[i][j]){
                right();
                break;
            }
        }
    }
    emit casesChanged();
}
void Compteur::retour(){
    for (int i=0;i<4;i++){
        for (int j=0;j<4;j++){
            cases[i][j]=precedent[i][j];
        }
    }
    emit casesChanged();
}

void Compteur::savePrecedent(){
    for (int i=0;i<4;i++){
        for (int j=0;j<4;j++){
            precedent[i][j]=cases[i][j];
        }
    }
}

// On suppose a<b
int Compteur::rand_a_b(int a, int b){
    return rand()%(b-a) +a;
}
