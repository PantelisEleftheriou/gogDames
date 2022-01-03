package gr.peoplecert.gogdames.service;

import gr.peoplecert.gogdames.model.User;
import gr.peoplecert.gogdames.repository.UserRepositoryInterface;

import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Optional;

import net.bytebuddy.utility.RandomString;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

@Service
public class UserServiceInterfaceImpl implements UserServiceInterface {

    @Autowired
    UserRepositoryInterface userRepositoryInterface;

    @Autowired
    private JavaMailSender mailSender;

    @Override
    public void addUser(User user) {
        user.setRegistered(Boolean.TRUE);
        userRepositoryInterface.save(user);
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

    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Override
    public User registerUser(User user) {
        passwordEncoder();
        user.setRegistered(false);

        String randomCode = RandomString.make(64);
        user.setVerificationCode(randomCode);

        return userRepositoryInterface.save(user);
    }

    @Override
    public void sendVerificationEmail(User user, String siteUrl) throws MessagingException, UnsupportedEncodingException {
        String subject = "Please Verify your Registration";
        String senderName = "gogDames games";
        String mailContent = "<p>Dear" + user.getUsername() + ",</p>";
        mailContent += "<p>Please click the link below to verify your registration:</p>";

        String verifyUrl = siteUrl + "/verify?code=" + user.getVerificationCode();
        mailContent += "<a href=\"" + verifyUrl + "\">VERIFY</a>";

        mailContent += "<p>Thank you</p>";

        MimeMessage message = mailSender.createMimeMessage();
        MimeMessageHelper helper = new MimeMessageHelper(message);

        helper.setFrom("proj.avengers@gmail.com", senderName);
        helper.setTo(user.getEmail());
        helper.setSubject(subject);
        helper.setText(mailContent, true);
        mailSender.send(message);
    }


    @Override
    public List<User> findAll() {
        return userRepositoryInterface.findAll();
    }

    @Override
    public void deleteUser(int userId) {
        userRepositoryInterface.deleteById(userId);
    }

    @Override
    public void updateUser(User newUser, int userId) {
        User oldUser=userRepositoryInterface.findById(userId).get();
        oldUser.setFirstName(newUser.getFirstName());
        oldUser.setLastName(newUser.getLastName());
        oldUser.setDateOfBirth(newUser.getDateOfBirth());
        oldUser.setEmail(newUser.getEmail());
        oldUser.setPassword(newUser.getPassword());
        oldUser.setUsername(newUser.getUsername());
        userRepositoryInterface.save(newUser);
    }

}
