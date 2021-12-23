package gr.peoplecert.gogdames.utils;

import java.time.format.DateTimeFormatter;
import java.util.Scanner;

public class Validations {

    public String dateValidation(String date, Scanner input) {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");

        boolean vd = true;
        while (vd) {
            try {
                formatter.parse(date);
                vd = false;
            } catch (Exception e) {
                System.out.println("Please enter a valid date:");
                date = input.nextLine();
            }
        }
        return date;
    }

}
