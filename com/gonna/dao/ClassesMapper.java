package com.gonna.dao;

import com.gonna.domain.Classes;

public interface ClassesMapper {
    int insert(Classes record);

    int insertSelective(Classes record);
}