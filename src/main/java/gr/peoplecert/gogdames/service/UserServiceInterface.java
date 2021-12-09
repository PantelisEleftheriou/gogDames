
package gr.peoplecert.gogdames.service;

import gr.peoplecert.gogdames.model.User;
import java.util.Date;


public interface UserServiceInterface  {
    
    User registerUser(String userName, String password, String email,String firstName, String lastName, Date dateOfBirth);
}
