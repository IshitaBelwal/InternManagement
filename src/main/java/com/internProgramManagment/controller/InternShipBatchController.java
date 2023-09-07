package com.internProgramManagment.controller;

import com.internProgramManagment.dao.InternshipBatchDAO;
import com.internProgramManagment.modal.InternshipBatch;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class InternShipBatchController {
    @Autowired
    private InternshipBatchDAO internshipBatchDAO;

    @RequestMapping("/batches")
    public String getAllBatchs(Model model) {
        List<InternshipBatch> allBatch = internshipBatchDAO.getAllBatch();
        model.addAttribute("allBatch", allBatch);
        return "batch_list";
    }

    @RequestMapping("/batch/{id}")
    public String getBatchById(@PathVariable("id") int id, Model model) {
        InternshipBatch batch = internshipBatchDAO.getBatchById(id);
        model.addAttribute("batch", batch);
        return "interns";
    }

    @RequestMapping(value = "/batch/add", method = RequestMethod.POST)
    public String addBatch(@ModelAttribute("batch") InternshipBatch batch) {
        internshipBatchDAO.addBatch(batch);
        return "new_batch";
    }

    @RequestMapping(value = "/batch/delete/{id}", method = RequestMethod.GET)
    public String deleteBatch(@PathVariable("id") int id, Model model) {
        internshipBatchDAO.deleteBatch(id);
      List<InternshipBatch> allBatch = internshipBatchDAO.getAllBatch();
        model.addAttribute("allBatch", allBatch);
        return "batch_list";
    }

    @RequestMapping(value = "/batch/update")
    public String updateBatch(@ModelAttribute("batch") InternshipBatch batch, Model model) {
        internshipBatchDAO.updateBatch(batch);
        List<InternshipBatch> allBatch = internshipBatchDAO.getAllBatch();
        model.addAttribute("allBatch", allBatch);
        return "batch_list";
    }

    @RequestMapping(value = "/batch/edit/{id}")
    public String editBatch(@PathVariable("id") int id, Model model) {
    	InternshipBatch batch = internshipBatchDAO.getBatchById(id) ;
    	System.out.println(batch);
        model.addAttribute("batch", batch);
        return "edit_batch";
    }

    @RequestMapping(value = "/batch")
    public String editBatch() {
        return "new_batch";
    }

}
