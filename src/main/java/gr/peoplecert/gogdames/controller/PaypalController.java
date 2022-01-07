/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gr.peoplecert.gogdames.controller;

import DTOS.CustomersDTO;
import com.paypal.api.payments.Links;
import com.paypal.api.payments.PayerInfo;
import com.paypal.api.payments.Payment;
import com.paypal.api.payments.Transaction;
import com.paypal.base.rest.PayPalRESTException;
import gr.peoplecert.gogdames.model.User;
import gr.peoplecert.gogdames.service.PaypalService;
import gr.peoplecert.gogdames.service.UserServiceInterfaceImpl;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Pantelis
 */
@Controller
@RequestMapping("/payment")
public class PaypalController {

    @Autowired
    PaypalService service;

    @Autowired
    UserServiceInterfaceImpl userServiceInterface;

    @GetMapping("/{customerId}")
    public String checkout(@PathVariable("customerId") int id, Model model, HttpServletRequest request) {
        User user = userServiceInterface.getUserById(id).get();
        CustomersDTO customers = new CustomersDTO();
        customers.setFirstName(user.getFirstName());
        customers.setLastName(user.getLastName());
        customers.setEmail(user.getEmail());
        customers.setPrice(9.99);
        request.getSession().setAttribute("customersDTO", customers);
        return "checkout";
    }

    @PostMapping("/pay")
    public String payment(HttpServletRequest request) {    // parses the approved Payment object returned from PayPal to find the approval URL
        try {
            CustomersDTO customers = (CustomersDTO) request.getSession().getAttribute("customersDTO");
            Payment payment = service.createPayment(customers.getPrice(), customers.getLastName(), "http://localhost:8080/payment/pay/cancel",
                    "http://localhost:8080/payment/pay/success");
            for (Links link : payment.getLinks()) {
                if (link.getRel().equals("approval_url")) {
                    return "redirect:" + link.getHref();
                }
            }
        } catch (PayPalRESTException e) {
            e.printStackTrace();
        }
        return "redirect:/payment";
    }

    @GetMapping("/pay/cancel")
    public String cancelPay(HttpServletRequest request) {
        request.getSession().removeAttribute("customersDTO");
        return "cancel";
    }

    @GetMapping("/pay/success")  //captures Payers info and booking details and displays success jsp
    public String successPay(@RequestParam("paymentId") String paymentId, @RequestParam("PayerID") String payerId, Model model, HttpServletRequest request) {   //, 
        try {
            Payment payment = service.executePayment(paymentId, payerId);
            System.out.println(payment.toJSON());
            if (payment.getState().equals("approved")) {
                Transaction transaction = payment.getTransactions().get(0);
                PayerInfo payer = payment.getPayer().getPayerInfo();
                model.addAttribute("payer", payer);
                model.addAttribute("transaction", transaction);
                return "success";
            }
        } catch (PayPalRESTException e) {
            System.out.println(e.getMessage());
        }
        return "redirect:/";

    }
}
