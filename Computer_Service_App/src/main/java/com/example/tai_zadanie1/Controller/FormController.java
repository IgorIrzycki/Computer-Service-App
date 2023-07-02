package com.example.tai_zadanie1.Controller;

import com.example.tai_zadanie1.Service.ProblemReportService;
import jakarta.annotation.Resource;
import org.springframework.stereotype.Controller;
import com.example.tai_zadanie1.Model.ProblemReportRecord;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class FormController {
    @Resource(name="problemReportServiceImpl")
    ProblemReportService problemReportService;

    @GetMapping("/form")
    public String showForm(){
        return "form";
    }

    @PostMapping("/saveForm")
    public String saveForm(@ModelAttribute ProblemReportRecord problemReportRecord) {
        problemReportService.save(problemReportRecord);
        return "redirect:/success";
    }

    @GetMapping("/success")
    public String showSuccess(){
        return "success";
    }
}
