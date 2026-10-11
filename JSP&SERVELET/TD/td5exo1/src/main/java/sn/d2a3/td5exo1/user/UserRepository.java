
package sn.d2a3.td5exo1.user;

import org.springframework.data.jpa.repository.JpaRepository;

/**
 *
 * @author k
 */
public interface UserRepository extends JpaRepository<User, Long> {
    User findByEmail(String email);
}
