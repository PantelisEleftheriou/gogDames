
package gr.peoplecert.gogdames.repository;

import gr.peoplecert.gogdames.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepositoryInterface extends JpaRepository<User, Integer>  {

    User findByUsername(String username);
}
