#include "compteur.h"

Compteur::Compteur(QObject *parent): QObject(parent) {
    cpt=10;
    emit cptChanged();
    for(int i=0; i<4; i++)
        for(int j=0; j<4; j++)
            cases[i][j]=0;
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
    return list;

}

void Compteur::nouvelle_case(){
    int Rligne=rand_a_b(0,4);
    int Rcolonne=rand_a_b(0,4);
    while (cases[Rligne][Rcolonne]!=0){
        Rligne=rand_a_b(0,4);
        Rcolonne=rand_a_b(0,4);
    }
    cases[Rligne][Rcolonne]=2;
    emit casesChanged();


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

// On suppose a<b
int Compteur::rand_a_b(int a, int b){
    return rand()%(b-a) +a;
}
