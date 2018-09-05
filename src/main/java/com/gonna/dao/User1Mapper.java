package com.gonna.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.gonna.domain.User1;

@Repository
public interface User1Mapper {
	
	List<User1> selectUsers();
	
    int deleteByPrimaryKey(Integer sid);

    int insert(User1 record);

    int insertSelective(User1 record);

    User1 selectByPrimaryKey(Integer sid);

    int updateByPrimaryKeySelective(User1 record);

    int updateByPrimaryKey(User1 record);
}