package com.jsj.po;

import jdk.nashorn.internal.objects.annotations.Getter;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;


public class CardTable {
    private Integer id;
    private String staff_id;
    @DateTimeFormat(pattern="yyyy-MM-dd hh:mm:ss")
    private Date date_time;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getStaff_id() {
        return staff_id;
    }

    public void setStaff_id(String staff_id) {
        this.staff_id = staff_id;
    }

    public Date getDate_time() {
        return date_time;
    }

    public void setDate_time(Date date_time) {
        this.date_time = date_time;
    }
}
