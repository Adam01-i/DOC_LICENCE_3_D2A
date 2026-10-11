
package sn.d2a3.td5exo1.user;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

/**
 *
 * @author k
 */
@Service
public class UserService implements UserDetailsService{
    
    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        User user = userRepository.findByEmail(email);
        if(user!=null)
            return user;
        else
            throw new UsernameNotFoundException("Cet utilisateur n'existe pas!");
    }
    
    public void enregistrerUser(User user){
        userRepository.save(user);
    }
    
    
}
