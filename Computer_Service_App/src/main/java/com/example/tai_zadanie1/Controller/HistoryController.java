package com.example.tai_zadanie1.Controller;

import com.example.tai_zadanie1.Model.ProblemReportRecord;
import com.example.tai_zadanie1.Service.ProblemReportService;
import jakarta.annotation.Resource;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Optional;

@Controller
public class HistoryController {
    @Resource(name="problemReportServiceImpl")
    ProblemReportService problemReportService;

    @GetMapping("/history")
    public String showHistory(Model model){
        List<ProblemReportRecord> forms = problemReportService.findProblemReports();
        model.addAttribute("forms", forms);
        return "history";
    }

    @GetMapping("/edit/{formId}")
    public ModelAndView showEditForm(@PathVariable int formId, HttpServletRequest request) {
        Optional<ProblemReportRecord> formOptional = problemReportService.findProblemReport(formId);
        ProblemReportRecord form = formOptional.orElse(null);
        request.setAttribute("form", form);
        return new ModelAndView("edit-form");
    }

    @PostMapping("/update/{id}")
    public ModelAndView updateForm(HttpServletRequest request, @PathVariable String id) {
        Optional<ProblemReportRecord> formOptional = problemReportService.findProblemReport(Integer.parseInt(id));
        ProblemReportRecord form = formOptional.orElse(null);

        String action = request.getParameter("action");

        if (action != null && action.equals("save")) {
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");
            String deviceType = request.getParameter("deviceType");
            String deviceBrand = request.getParameter("deviceBrand");
            String deviceModel = request.getParameter("deviceModel");
            String issue = request.getParameter("issue");
            String phone = request.getParameter("phone");
            String street = request.getParameter("street");
            String postalCode = request.getParameter("postalCode");
            String city = request.getParameter("city");
            String country = request.getParameter("country");

            assert form != null;
            form.setFirstName(firstName);
            form.setLastName(lastName);
            form.setEmail(email);
            form.setDeviceType(deviceType);
            form.setDeviceBrand(deviceBrand);
            form.setDeviceModel(deviceModel);
            form.setIssue(issue);
            form.setPhone(phone);
            form.setStreet(street);
            form.setPostalCode(postalCode);
            form.setCity(city);
            form.setCountry(country);

            problemReportService.update(form);

            return new ModelAndView("redirect:/history");
        }

        assert form != null;
        return new ModelAndView("edit-form", "form", form);
    }

    @GetMapping("/delete/{formId}")
    public String deleteForm(@PathVariable int formId) {
        Optional<ProblemReportRecord> form = problemReportService.findProblemReport(formId);
        form.ifPresent(problemReportRecord -> problemReportService.delete(problemReportRecord));

        return "redirect:/history";
    }
}
