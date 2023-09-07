package com.internProgramManagment.controller;

import com.internProgramManagment.dao.InternDAO;
import com.internProgramManagment.dao.InternshipBatchDAO;
import com.internProgramManagment.modal.Intern;
import com.internProgramManagment.modal.InternshipBatch;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class InternController{
    @Autowired
    private InternDAO internDAO;

    @Autowired
    private InternshipBatchDAO internshipBatchDAO;


    @RequestMapping("/interns")
    public String getAllInterns(Model model) {
        List <Intern> allInterns = internDAO.getAllInterns();
        model.addAttribute("allInterns", allInterns);
        return "intern_list";
    }

    @RequestMapping("/intern/{id}")
    public String getInternById(@PathVariable("id") int id,Model model) {
        Intern intern = internDAO.getInternById(id);
        model.addAttribute("intern", intern);
        return "interns";
    }

    @RequestMapping(value = "/intern/add", method = RequestMethod.POST)
    public String addIntern(@ModelAttribute("intern") Intern intern) {
        internDAO.addIntern(intern);
        return "new_intern";
    }

    @RequestMapping("/intern/ByBatchId/{batchid}")
    public String getInternByBatchId(@PathVariable("batchid") int id,Model model) {
        List <Intern> allBatchInterns = internDAO.getInternByBatchId(id);
        model.addAttribute("allBatchInterns", allBatchInterns);
        return "new_intern";
    }

    @RequestMapping(value = "/intern/delete/{id}", method = RequestMethod.GET)
    public String deleteIntern(@PathVariable("id") int id,Model model) {
        internDAO.deleteIntern(id);
        model.addAttribute("allInterns", internDAO.getAllInterns());
        return "intern_list";
    }

    @RequestMapping(value="/intern/update")
    public String update(@ModelAttribute("intern") Intern intern,Model model){
       internDAO.updateIntern(intern);
        model.addAttribute("allInterns", internDAO.getAllInterns());
        return "intern_list";
    }

    @RequestMapping(value="/intern/edit/{id}")
    public String edit(@PathVariable("id") int id,Model model){
        model.addAttribute("intern",internDAO.getInternById(id));
        return "edit_intern";
    }

    @RequestMapping("/intern/getInternByBatchName/{batchName}")
    public String getInternByBatchName(@PathVariable("batchName") String batchName,Model model) {
        List <Intern> allBatchInterns = internDAO.getInternByBatchName(batchName);
        model.addAttribute("allBatchInterns", allBatchInterns);
        return "batch_intern_list";
    }

    @RequestMapping("interns/getInternFormData")
    public String getInternFormData(Model model) {
        List <InternshipBatch> allBatch = internshipBatchDAO.getAllBatch();
        model.addAttribute("allBatch", allBatch);
        return "new_intern";
    }
    @RequestMapping("/dashboard/count")
    public String getDashboardCount(Model model) {
        model.addAttribute("batchCount", internshipBatchDAO.allBatchCount());
        model.addAttribute("internCount",  internDAO.allInternCount());
        return "dashboard";
    }
    
}
