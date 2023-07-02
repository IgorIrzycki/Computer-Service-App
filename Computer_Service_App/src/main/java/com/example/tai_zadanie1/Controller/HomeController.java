package com.example.tai_zadanie1.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
public class HomeController {
    @GetMapping("/")
    public String showHome() {
        return "home";
    }
}
