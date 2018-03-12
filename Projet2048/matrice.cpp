#include "matrice.h"
#include <iostream>
using namespace std;
Matrice::Matrice()
{

}
void Matrice::Init(int value){
    for(int i=0; i<4; i++)
        for(int j=0; j<4; j++)
            tableau[i][j]=value;
}


void Matrice::Print(){
    for(int i=0; i<4; i++) {
        cout << endl;
        for(int j=0; j<4; j++){
            cout << tableau[i][j] << ", ";
        }
    }
}

void Matrice::Set(int x, int y, int value) {
    if (x>=4||x<0||y>=4||y<0){
        throw("indice hors bornes");
    }
    tableau[x][y]=value;
}

