package com.jsj.po;

public class StaffTable {
    private Integer id;
    private String logname;
    private String logpass;
    private Integer staff_age;
    private Integer staff_class;
    private String staff_salary;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getLogname() {
        return logname;
    }

    public void setLogname(String logname) {
        this.logname = logname;
    }

    public String getLogpass() {
        return logpass;
    }

    public void setLogpass(String logpass) {
        this.logpass = logpass;
    }

    public Integer getStaff_age() {
        return staff_age;
    }

    public void setStaff_age(Integer staff_age) {
        this.staff_age = staff_age;
    }

    public Integer getStaff_class() {
        return staff_class;
    }

    public void setStaff_class(Integer staff_class) {
        this.staff_class = staff_class;
    }

    public String getStaff_salary() {
        return staff_salary;
    }

    public void setStaff_salary(String staff_salary) {
        this.staff_salary = staff_salary;
    }
}
