package gr.peoplecert.gogdames.service;

<<<<<<< HEAD
=======
import gr.peoplecert.gogdames.model.User;
import gr.peoplecert.gogdames.repository.UserRepositoryInterface;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
>>>>>>> 9371aed1ebc3c58445a0173e2d2b75929456ece3
import org.springframework.stereotype.Service;

@Service
public class UserServiceInterfaceImpl  {

<<<<<<< HEAD
   
=======
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

>>>>>>> 9371aed1ebc3c58445a0173e2d2b75929456ece3
}
