package com.gonna.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gonna.dao.User1Mapper;
import com.gonna.domain.User1;
import com.gonna.service.User1Service;

//注：service层要将实现类定义为组件，而不是将接口定义为组件
@Service
public class User1ServiceImpl implements User1Service{

	@Autowired  //自动获得 能自动为我们创建usermapper的对象,我们在后面就可以直接用了,不用new再去创建对象
	private User1Mapper user1mapper;
	
	public List<User1> selectUsers() {
//		System.out.println(user1mapper.selectUsers());
		//这句不要,这样的话不会对return的分页,会对这一句的分页
		//因为pagehelper必须紧跟在查询语句上面   只对紧跟着下面的这一句分页
		return user1mapper.selectUsers();
	}

	@Override
	public void deleteByPrimaryKey(Integer sid) {
		user1mapper.deleteByPrimaryKey(sid);
		
	}

	@Override
	public void insertSelective(User1 user) {
		user1mapper.insertSelective(user);
		
	}

}
