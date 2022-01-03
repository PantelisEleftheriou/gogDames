
package gr.peoplecert.gogdames.service;

import gr.peoplecert.gogdames.model.User;

import javax.mail.MessagingException;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Optional;



public interface UserServiceInterface {

    User addUser(User user);

    User getByUsername(String username, String password);

    void addUser1(User user);

    Optional<User> getUserById(int id);

    User registerUser(User user);

    void sendVerificationEmail(User user, String siteUrl) throws MessagingException, UnsupportedEncodingException;

    List<User> findAll();

    void deleteUser(int userId);
    void updateUser (User newUser, int userId);
}
