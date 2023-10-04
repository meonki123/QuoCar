package com.quocar.register.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class RegisterController {

    @GetMapping("/register") // Change path to "/register"
    public String showRegistrationPage(Model model) {
        // Add the data needed for the model here and write the logic to go to the membership registration page.
        // For example, you can add a list of manufacturers and image paths to your model.
        // model.addAttribute("manufacturers", manufacturerList);
        // model.addAttribute("manufacturerImagePaths", manufacturerImagePaths);

        return "user/register"; // Returns the name of the JSP template for the sign-up page.
    }

    // Membership registration processing logic can be added here.
}

