package com.jsj.dao;

//mybatis实现了他

import com.jsj.model.Staff;
import com.jsj.po.ClassTable;
import com.jsj.po.StaffTable;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

@Mapper
public interface HandleDao {
    public List<StaffTable> login(Staff user);
    public List<Map<String,Object>> selectAllStaff();
    public List<Map<String ,Object>> selectAllStaffByPage(@Param("startIndex") int startIndex,
                                                          @Param("perPageSize") int perPageSize);
    public Integer updateStaff(StaffTable staffTable);
    public Integer deleteStaff(StaffTable staffTable);
    public int registerStaff(StaffTable staffTable);

    public List<Map<String,Object>> selectAllClass();
    public List<Map<String ,Object>> selectAllClassByPage(@Param("startIndex") int startIndex,
                                                          @Param("perPageSize") int perPageSize);
    public Integer updateClass(ClassTable classTable);

    public int registerClass(ClassTable classTable);
}
