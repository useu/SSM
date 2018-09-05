package com.gonna.dao;

import com.gonna.domain.User1;

public interface User1Mapper {
    int deleteByPrimaryKey(Integer sid);

    int insert(User1 record);

    int insertSelective(User1 record);

    User1 selectByPrimaryKey(Integer sid);

    int updateByPrimaryKeySelective(User1 record);

    int updateByPrimaryKey(User1 record);
}