package com.gonna.dao;

import com.gonna.domain.Parents;

public interface ParentsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Parents record);

    int insertSelective(Parents record);

    Parents selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Parents record);

    int updateByPrimaryKey(Parents record);
}