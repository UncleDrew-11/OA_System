package com.jsj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController {

    @RequestMapping("/")
    public String login() {
        return "login";
    }

    @RequestMapping("/toStaffList")
    public String toStaffList() {
        return "slist";
    }

    @RequestMapping("/updateStaff")
    public String updateStaff() {
        return "updateStaff";
    }

    @RequestMapping("/erro")
    public String erro() {
        return "erro";
    }


    @RequestMapping("/deleteStaff")
    public String deleteStaff() {
        return "deleteStaff";
    }

    @RequestMapping("/registerStaff")
    public String registerStaff() {
        return "registerStaff";
    }


    @RequestMapping("/updateClass")
    public String updateClass() {
        return "updateClass";
    }


    @RequestMapping("/registerClass")
    public String registerClass() {
        return "registerClass";
    }

    @RequestMapping("/registerCard")
    public String registerCard() {
        return "registerCard";
    }

}
