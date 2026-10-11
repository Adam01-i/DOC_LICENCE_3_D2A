
package sn.d2a3.td4exo1grp3.domain;

import java.io.Serializable;

public class Categorie implements Serializable{
    private int id;
    private String libelle;

    public Categorie() {
    }

    public Categorie(String libelle) {
        this.libelle = libelle;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getLibelle() {
        return libelle;
    }

    public void setLibelle(String libelle) {
        this.libelle = libelle;
    }
    
}
