package gr.peoplecert.gogdames.service;

import gr.peoplecert.gogdames.model.User;
import gr.peoplecert.gogdames.repository.UserRepositoryInterface;
import java.util.Date;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceInterfaceImpl implements UserServiceInterface {

    @Autowired
    UserRepositoryInterface userRepositoryInterface;

    @Override
    public User addUser(User user) {
        userRepositoryInterface.save(user);
        return user;
    }

    @Override
    public Optional<User> getUserById(int id) {      
        try {
            Optional<User> optionalUser = userRepositoryInterface.findById(id);
            return Optional.of(optionalUser.get());

        } catch (RuntimeException exception) {
            exception.printStackTrace();
            return Optional.empty();
        }
    }

}
