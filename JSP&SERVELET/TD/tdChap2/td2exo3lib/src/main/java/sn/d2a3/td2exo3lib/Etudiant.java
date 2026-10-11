
package sn.d2a3.td2exo3lib;

/**
 *
 * @author aka
 */
public class Etudiant {
    private String id;
    private String prenom;
    private String nom;
    private String dateNais;
    private String filiere;
    private String niveau;
    private String photo;

    public Etudiant() {
    }

    public Etudiant(String prenom, String nom, String dateNais, String filiere, String niveau, String photo) {
        this.prenom = prenom;
        this.nom = nom;
        this.dateNais = dateNais;
        this.filiere = filiere;
        this.niveau = niveau;
        this.photo = photo;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getDateNais() {
        return dateNais;
    }

    public void setDateNais(String dateNais) {
        this.dateNais = dateNais;
    }

    public String getFiliere() {
        return filiere;
    }

    public void setFiliere(String filiere) {
        this.filiere = filiere;
    }

    public String getNiveau() {
        return niveau;
    }

    public void setNiveau(String niveau) {
        this.niveau = niveau;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    @Override
    public String toString() {
        return "Etudiant{" + "id=" + id + ", prenom=" + prenom + ", nom=" + nom + ", dateNais=" + dateNais + ", filiere=" + filiere + ", niveau=" + niveau + ", photo=" + photo + '}';
    }
    
}
