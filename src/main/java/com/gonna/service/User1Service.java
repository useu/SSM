package com.gonna.service;

import java.util.List;

import com.gonna.domain.User1;

public interface User1Service {
	List<User1> selectUsers();

	void deleteByPrimaryKey(Integer sid);

	void insertSelective(User1 user);

}
