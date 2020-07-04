package com.jsj.controller;

import com.jsj.model.Staff;
import com.jsj.po.CardTable;
import com.jsj.po.ClassTable;
import com.jsj.po.StaffTable;
import com.jsj.service.HandleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/handle")
public class HandleController {

    @Autowired
    private HandleService handleService;

    @RequestMapping("/login")
    public String login(Staff staff, Model model, HttpSession session)
    {
        return handleService.login(staff,model,session);
    }

    @RequestMapping("/menu")
    public String menu()
    {
        return "menu";
    }

    @RequestMapping("/selectAllStaffByPage")
    public String selectAllStaffByPage(Model  model,Integer currentPage)
    {
        return handleService.selectAllStaffByPage(model, currentPage);
    }

    @RequestMapping("/updateStaff")

    public String updateStaff(StaffTable staffTable)
    {
        return handleService.updateStaff(staffTable);
    }

    @RequestMapping("/deleteStaff")

    public String deleteStaff(StaffTable staffTable)
    {
        return handleService.deleteStaff(staffTable);
    }


    @RequestMapping("/registerStaff")

    public String registerStaff(StaffTable staffTable)
    {
        return handleService.registerStaff(staffTable);
    }


    @RequestMapping("/selectAllClassByPage")
    public String selectAllClassByPage(Model  model,Integer currentPage)
    {
        return handleService.selectAllClassByPage(model, currentPage);
    }

    @RequestMapping("/updateClass")
    public String updateClass(ClassTable classTable)
    {

        return handleService.updateClass(classTable);
    }
    @RequestMapping("/registerClass")
    public String registerClass(ClassTable classTable)
    {

        return handleService.registerClass(classTable);
    }

    @RequestMapping("/selectAllCardByPage")
    public String selectAllCardByPage(Model  model,Integer currentPage)
    {
        return handleService.selectAllCardByPage(model, currentPage);
    }

    @RequestMapping("/registerCard")
    public String registerCard(CardTable cardTable)
    {

        return handleService.registerCard(cardTable);
    }
}
