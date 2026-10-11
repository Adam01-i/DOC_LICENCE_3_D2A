
package sn.d2a3.td4exo1grp3.domain;

import java.io.Serializable;

public class Article implements Serializable{
    private int id;
    private String nom;
    private int prix;
    private String desc;
    private String photoUrl;
    private int vendeurId;
    private int categorieId;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public int getPrix() {
        return prix;
    }

    public void setPrix(int prix) {
        this.prix = prix;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public String getPhotoUrl() {
        return photoUrl;
    }

    public void setPhotoUrl(String photoUrl) {
        this.photoUrl = photoUrl;
    }

    public int getVendeurId() {
        return vendeurId;
    }

    public void setVendeurId(int vendeurId) {
        this.vendeurId = vendeurId;
    }

    public int getCategorieId() {
        return categorieId;
    }

    public void setCategorieId(int categorieId) {
        this.categorieId = categorieId;
    }
    
}
