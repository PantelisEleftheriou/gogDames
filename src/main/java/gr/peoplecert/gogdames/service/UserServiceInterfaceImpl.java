
package gr.peoplecert.gogdames.service;

import gr.peoplecert.gogdames.domain.User;
import java.util.Date;
import org.springframework.stereotype.Service;

@Service
public class UserServiceInterfaceImpl implements UserServiceInterface {

    @Override
    public User registerUser(String userName, String password, String email, String firstName, String lastName, Date dateOfBirth) {
       User user = new User();
       
       return user;
    }
    
}
