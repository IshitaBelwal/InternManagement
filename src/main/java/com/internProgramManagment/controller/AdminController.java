package com.internProgramManagment.controller;

import com.internProgramManagment.dao.AdminDAO;
import com.internProgramManagment.dao.InternshipBatchDAO;
import com.internProgramManagment.modal.Admin;
import com.internProgramManagment.modal.Intern;
import com.internProgramManagment.modal.InternshipBatch;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class AdminController{
    @Autowired
    private AdminDAO AdminDAO;

    @Autowired
    private InternshipBatchDAO internshipBatchDAO;


    
    @RequestMapping("/")
    public String getInternFormData(Model model) {
        List <InternshipBatch> allBatch = internshipBatchDAO.getAllBatch();
        model.addAttribute("errorMessage", "");
        return "admin";
    }


    @PostMapping("admin/verify")
    public String verifyAdmin(@RequestParam("username") String username,
                              @RequestParam("password") String password,
                              Model model) {
        // Call the AdminDAO to verify admin credentials
        boolean isValidAdmin = AdminDAO.verifyAdminCredentials(username, password);
        
        if (isValidAdmin) {
            // Admin verified, redirect to admin dashboard
            return "redirect:/dashboard/count";
        } else {
            // Admin not verified, show error message
            model.addAttribute("errorMessage", "Invalid credentials");
            return "admin"; // Return to the login form with an error message
        }
    }
  
}
