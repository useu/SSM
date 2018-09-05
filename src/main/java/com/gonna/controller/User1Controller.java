package com.gonna.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.gonna.domain.User1;
import com.gonna.domain.UserInfo;
import com.gonna.service.User1Service;
import com.gonna.util.PageUtil;

@Controller

public class User1Controller {
	
	@Autowired  //spring依赖注入
	private User1Service user1service;
	
	@RequestMapping("list1")
	@ResponseBody
	//pc当前页 ,即页码
	public UserInfo selectUsers(@RequestParam(value="pc",defaultValue="1") Integer pc){ 
		//分页   param1:页码     
		//param2:每页显示数量  
		//必须紧跟在查询语句上面   只对紧跟着下面的这一句分页  只分第一个sql语句
		PageHelper.startPage(pc, PageUtil.PAGESIZE);
		
		
		//通过user1service的selectUsers()方法获取数据
		List<User1> list = user1service.selectUsers();
		
		//要在页面的位置显示三页,这里加上值为3,将3封装到PageUtil
		PageInfo<User1> pageInfo = new PageInfo(list,PageUtil.NAVIGATEPAGE);
		
		//要放到页面,加ModelMap
//		map.addAttribute("pageInfo", pageInfo);
		
//		System.out.println("当前页:"+pageInfo.getPageNum());
//		System.out.println("每页数量"+pageInfo.getPageSize());
//		System.out.println("总记录数"+pageInfo.getTotal());
//		System.out.println("结果集"+pageInfo.getList());
		
//		System.out.println(list.get(0));
//		return "list";
		return UserInfo.add("pageInfo", pageInfo);
	}
	
	
	//restful风格---springmvc第一章 第16页   这里的 RequestMethod用的枚举,带有E的
	@RequestMapping(value="deleteUser/{sid}",method=RequestMethod.DELETE)
	@ResponseBody
	public UserInfo deleteUser(@PathVariable("sid") Integer sid){
		user1service.deleteByPrimaryKey(sid);
		return UserInfo.add("", null);
	}

	
	@RequestMapping(value="insertUser",method=RequestMethod.POST)
	@ResponseBody
	public UserInfo insertUser(User1 user){
		user1service.insertSelective(user);
		return UserInfo.add("", null);
	}

}
