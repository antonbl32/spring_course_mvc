package by.anton.spring.mvc;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

@Controller
public class MyController {

    @RequestMapping("/")
    public String showFirstView() {
        return "first-view";
    }

//    @RequestMapping("/askDetails")
//    public String AskEmployeeDetails() {
//        return "ask-emp-details-view";
//    }
    @RequestMapping("/askDetails")
    public String AskEmployeeDetails(Model model) {

        model.addAttribute("employee", new Employee());


        return "myView";
    }

//    @RequestMapping("/showDetails")
//    public String ShowEmployeeDetails() {
//        return "show-emp-details-view";
//    }
//    @RequestMapping("/showDetails")
//    public String ShowEmployeeDetails(HttpServletRequest request, Model model) {
//        String empName=request.getParameter("employeeName");
//        empName="Mr. "+empName;
//        model.addAttribute("nameAttribute",empName);
//
//    return "show-emp-details-view";
//    }
    @RequestMapping("/showDetails")
    public String ShowEmployeeDetails(@Valid @ModelAttribute("employee") Employee emp, BindingResult bindingResult) {
        if(bindingResult.hasErrors())
            return "myView";

        return "show-emp-details-view";
}

}
