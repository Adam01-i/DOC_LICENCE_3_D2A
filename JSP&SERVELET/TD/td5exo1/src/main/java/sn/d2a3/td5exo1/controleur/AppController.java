package sn.d2a3.td5exo1.controleur;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import sn.d2a3.td5exo1.user.User;
import sn.d2a3.td5exo1.user.UserService;

/**
 *
 * @author k
 */
@Controller
public class AppController {

    private final UserService userService;

    public AppController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping("/")
    public String accueil() {
        return "accueil";
    }

    @RequestMapping("/annonceForm")
    public String annonceForm() {
        return "annonceForm";
    }

    @RequestMapping("/inscriptionForm")
    public String inscriptionForm() {
        return "inscriptionForm";
    }

    @RequestMapping("/inscrire")
    public String inscrire(@ModelAttribute User user, Model model) {
        user.setProfil("vendeur");
        userService.enregistrerUser(user);
        model.addAttribute("msgOK", "Votre compte est créé avec succès.");
        return "inscriptionForm";
    }

}
