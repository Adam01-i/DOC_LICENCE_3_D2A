package sn.d2a3.td2exo3lib;

import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.Properties;
import java.util.StringTokenizer;
import java.util.UUID;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author aka
 */
public class Utile {

    private String repertoire;
    private final String fichierPrp;

    /**
     * 
     * @param repertoire le répertoire où sont enregistrer les photos et le fichier des étudiants.
     * <groupId>sn.d2a3</groupId>
     * <artifactId>td2exo3lib</artifactId>
     * <version>1.0-SNAPSHOT</version>
     */
    public Utile(String repertoire) {
        this.repertoire = repertoire + "/";
        fichierPrp = repertoire + "/db.txt";
    }

    /**
     * Cette méthode permet d'enregistrer un étudiant.
     *
     * @param e l'objet etudiant à enregistrer.
     */
    public void enregistrerEtudiant(Etudiant e) {
        try {

            Properties prp = new Properties();
            prp.load(new FileReader(fichierPrp));

            UUID uuid = UUID.randomUUID();
            e.setId(uuid.toString());

            String value = e.getPrenom() + "$"
                    + e.getNom() + "$"
                    + e.getDateNais() + "$"
                    + e.getFiliere() + "$"
                    + e.getNiveau() + "$"
                    + e.getPhoto();

            prp.setProperty(e.getId(), value);

            prp.store(new FileWriter(fichierPrp), "Liste des étudiants");

        } catch (IOException ex) {
            Logger.getLogger(Utile.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Cette méthode retourne l'ensemble des étudiants.
     *
     * @return une liste contenant l'ensemble des étudiants.
     */
    public List<Etudiant> getEtudiants() {

        List<Etudiant> listEtudiants = new ArrayList<>();
        try {

            Properties prp = new Properties();
            prp.load(new FileReader(fichierPrp));

            Enumeration<String> ids = (Enumeration<String>) prp.propertyNames();
            while (ids.hasMoreElements()) {
                String id = ids.nextElement();
                StringTokenizer st = new StringTokenizer(prp.getProperty(id), "$");

                Etudiant e = new Etudiant();
                e.setId(id);
                e.setPrenom(st.nextToken());
                e.setNom(st.nextToken());
                e.setDateNais(st.nextToken());
                e.setFiliere(st.nextToken());
                e.setNiveau(st.nextToken());
                e.setPhoto(st.nextToken());
                listEtudiants.add(e);
            }

        } catch (IOException ex) {
            Logger.getLogger(Utile.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listEtudiants;
    }

    /**
     * Cette retourne l'étudiant ayant dont l'id est spécifié.
     *
     * @param id l'id de l'étudiant à retourner.
     * @return l'étudiant ayant l'id id.
     */
    public Etudiant getEtudiant(String id) {
        try {

            Properties prp = new Properties();
            prp.load(new FileReader(fichierPrp));

            StringTokenizer st = new StringTokenizer(prp.getProperty(id), "$");

            Etudiant e = new Etudiant();
            e.setId(id);
            e.setPrenom(st.nextToken());
            e.setNom(st.nextToken());
            e.setDateNais(st.nextToken());
            e.setFiliere(st.nextToken());
            e.setNiveau(st.nextToken());
            e.setPhoto(st.nextToken());

            return e;

        } catch (IOException ex) {
            Logger.getLogger(Utile.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    /**
     * Cette méthode permet d'enregistrer la photo uploadée.
     *
     * @param is l'objet InputStream associé à la photo uploadée.
     * @param nomPhoto
     * @throws IOException
     */
    public void enregistrerPhoto(InputStream is, String nomPhoto) throws IOException {
        try ( FileOutputStream fos = new FileOutputStream(repertoire + nomPhoto)) {
            int len;
            byte[] buffer = new byte[1024];
            while ((len = is.read(buffer)) > 0) {
                fos.write(buffer, 0, len);
            }
        }finally{
            is.close();
        }
    }

    /**
     * Cette méthode permet de rechercher un étudiant.
     *
     * @param pn prénom et nom de l'étudiant à rechercher.
     * @return retourne l'étudiant dont le prénom et le nom sont spécifiés ou
     * null.
     */
    public Etudiant rechercher(String pn) {
        String[] npTab = pn.toLowerCase().split(" ");
        try {

            Properties prp = new Properties();
            prp.load(new FileReader(fichierPrp));

            Enumeration<String> ids = (Enumeration<String>) prp.propertyNames();
            while (ids.hasMoreElements()) {
                String id = ids.nextElement();
                StringTokenizer st = new StringTokenizer(prp.getProperty(id), "$");

                String prenom = st.nextToken();
                String nom = st.nextToken();
                if (prenom.equalsIgnoreCase(npTab[0]) && nom.equalsIgnoreCase(npTab[1])) {
                    return getEtudiant(id);
                }
            }

        } catch (IOException ex) {
            Logger.getLogger(Utile.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public String getRepertoire() {
        return repertoire;
    }

    public void setRepertoire(String repertoire) {
        this.repertoire = repertoire + "/";
    }

}
