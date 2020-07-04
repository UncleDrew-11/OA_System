package com.jsj.po;

import java.sql.Timestamp;

public class CardTable {
    private int id;
    private String staff_id;
    private Timestamp date_time;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }


    public String getStaff_id() {
        return staff_id;
    }

    public void setStaff_id(String staff_id) {
        this.staff_id = staff_id;
    }


    public void setDate_time(Timestamp date_time) {
        this.date_time = date_time;
    }
}
