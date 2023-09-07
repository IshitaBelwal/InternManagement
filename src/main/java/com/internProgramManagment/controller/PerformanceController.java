package com.internProgramManagment.controller;

import com.internProgramManagment.dao.InternDAO;
import com.internProgramManagment.dao.InternshipBatchDAO;
import com.internProgramManagment.dao.PerfomanceDAO;
import com.internProgramManagment.modal.Performance;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class PerformanceController{
    @Autowired
    private PerfomanceDAO perfomanceDAO;

    @Autowired
    private InternDAO internDAO;

    @Autowired
    private InternshipBatchDAO internshipBatchDAO;

    @RequestMapping("/performances")
    public String getAllPerformances(Model model) {
        List <Performance> performanceList = perfomanceDAO.getAllPerformance();
        model.addAttribute("performanceList", performanceList);
        return "performance_list";
    }


    @RequestMapping("/performance/getPerformanceData/{id}")
    public String getPerformancesById(@PathVariable("id") int id,Model model) {
    	List <Performance>  performance = perfomanceDAO.getPerformanceByinternid(id);
        model.addAttribute("performance", performance);
        return "intern_performance_list";
    }

    @RequestMapping(value = "/performance/add", method = RequestMethod.POST)
    public String addPerformances(@ModelAttribute("batch") Performance performance) {
        perfomanceDAO.addPerformance(performance);
        return "new_performance";
    }

    @RequestMapping(value = "/performance/delete/{id}", method = RequestMethod.GET)
    public String deletePerformances(@PathVariable("id") int id,Model model) {
        perfomanceDAO.deletePerformance(id);
        List <Performance> performanceList = perfomanceDAO.getAllPerformance();
        model.addAttribute("performanceList", performanceList);
        return "performance_list";
    }

    @RequestMapping(value="/performance/update")
    public String updatePerformances(@ModelAttribute("batch") Performance performance,Model model){
        perfomanceDAO.updatePerformance(performance);
        List <Performance> performanceList = perfomanceDAO.getAllPerformance();
        model.addAttribute("performanceList", performanceList);
        return "performance_list";
    }
    @RequestMapping(value="/performance/getFormData")
    public String getFormData(Model model){
       model.addAttribute("interns",internDAO.getAllInterns());
        model.addAttribute("batches",internshipBatchDAO.getAllBatch());
        return "new_performance";
    }
    @RequestMapping(value="/performance/edit/{id}")
    public String editPerformances(@PathVariable("id") int id,Model model){
        model.addAttribute("performance",perfomanceDAO.getPerformanceById(id));
        return "edit_performance";
    }
    
}
