package com.jsj.service;

import com.jsj.dao.HandleDao;
import com.jsj.model.Staff;
import com.jsj.po.CardTable;
import com.jsj.po.ClassTable;
import com.jsj.po.StaffTable;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Service
public class HandleServiceIm implements HandleService {

    @Autowired
    private HandleDao handlDao ;
    @Override
    public String login(Staff staff, Model model, HttpSession session) {


        if(handlDao.login(staff).size() >0)
        {
            session.setAttribute("staff", staff);
            //重定向到控制器某个方法，实现用户查询
            return "redirect:/handle/menu";
        }
        model.addAttribute("erroMessage","用户名或密码错误！！");

        return "login";
    }

    @Override
    public String selectAllStaffByPage(Model modle, Integer currentPage) {

        List<Map<String,Object>> allStaff = handlDao.selectAllStaff();

        //共多少个用户
        int totalCount = allStaff.size();
        //计算共多少页
        int pageSize = 5;
        int totalPage = (int) Math.ceil(totalCount*1.0/pageSize);

        List<Map<String,Object>> userByPage = handlDao.selectAllStaffByPage((currentPage-1)*pageSize, pageSize);
        modle.addAttribute("allStaff",userByPage);
        modle.addAttribute("totalPage",totalPage);
        modle.addAttribute("currentPage",currentPage);

        return "stlist";
    }

    @Override
    public String updateStaff(StaffTable staffTable) {
         if (handlDao.updateStaff(staffTable) > 0) {
             return "redirect:/handle/selectAllStaffByPage?currentPage=1";
         }
         return "erro";
    }

    @Override
    public String deleteStaff(StaffTable staffTable) {
        if (handlDao.deleteStaff(staffTable) > 0) {
            return "redirect:/handle/selectAllStaffByPage?currentPage=1";
        }
        return "erro";
    }

    @Override
    public String registerStaff(StaffTable staffTable) {
        handlDao.registerStaff(staffTable);
        return "redirect:/handle/selectAllStaffByPage?currentPage=1";

    }

    @Override
    public String selectAllClassByPage(Model modle, Integer currentPage) {

        List<Map<String,Object>> allClass = handlDao.selectAllClass();

        //共多少个用户
        int totalCount = allClass.size();
        //计算共多少页
        int pageSize = 5;
        int totalPage = (int) Math.ceil(totalCount*1.0/pageSize);

        List<Map<String,Object>> userByPage = handlDao.selectAllClassByPage((currentPage-1)*pageSize, pageSize);
        modle.addAttribute("allClass",userByPage);
        modle.addAttribute("totalPage",totalPage);
        modle.addAttribute("currentPage",currentPage);

        return "clist";
    }

    @Override
    public String updateClass(ClassTable classTable) {
        if (handlDao.updateClass(classTable) > 0) {
            return "redirect:/handle/selectAllClassByPage?currentPage=1";
        }
        return "erro";
    }

    @Override
    public String registerClass(ClassTable classTable) {
        handlDao.registerClass(classTable);
        return "redirect:/handle/selectAllClassByPage?currentPage=1";
    }

    @Override
    public String selectAllCardByPage(Model modle, Integer currentPage) {

        List<Map<String,Object>> allCard = handlDao.selectAllCard();

        //共多少个用户
        int totalCount = allCard.size();
        //计算共多少页
        int pageSize = 5;
        int totalPage = (int) Math.ceil(totalCount*1.0/pageSize);

        List<Map<String,Object>> userByPage = handlDao.selectAllCardByPage((currentPage-1)*pageSize, pageSize);
        modle.addAttribute("allCard",userByPage);
        modle.addAttribute("totalPage",totalPage);
        modle.addAttribute("currentPage",currentPage);

        return "cardlist";
    }

    @Override
    public String registerCard(CardTable cardTable) {
        handlDao.registerCard(cardTable);
        return "redirect:/handle/selectAllClassByPage?currentPage=1";
    }

}
