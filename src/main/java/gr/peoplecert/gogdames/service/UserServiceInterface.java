
package gr.peoplecert.gogdames.service;

import gr.peoplecert.gogdames.model.User;
import java.util.Date;
import java.util.Optional;


public interface UserServiceInterface  {
    
    User addUser(User user);
    Optional<User> getUserById(int id);
}
