package com.jsj.service;

import com.jsj.model.Staff;
import com.jsj.po.CardTable;
import com.jsj.po.ClassTable;
import com.jsj.po.StaffTable;
import org.springframework.ui.Model;

import javax.servlet.http.HttpSession;

public interface HandleService {
    public String login(Staff staff, Model model, HttpSession session);
    public String selectAllStaffByPage(Model modle ,Integer currentPage);
    public String updateStaff(StaffTable staffTable);
    public String deleteStaff(StaffTable staffTable);
    public String registerStaff(StaffTable staffTable);
    public String selectAllClassByPage(Model modle ,Integer currentPage);
    public String updateClass(ClassTable classTable);
    public String registerClass(ClassTable classTable);
    public String selectAllCardByPage(Model modle ,Integer currentPage);

    public String registerCard(CardTable cardTable);
}
