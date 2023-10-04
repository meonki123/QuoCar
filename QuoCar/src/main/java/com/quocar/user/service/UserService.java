package com.quocar.user.service;

import java.util.HashMap;
import java.util.List;

import com.quocar.user.vo.UserVo;

public interface UserService {

	void insertUser(UserVo user);

	List getUserList();

	UserVo getUser(String userid);

	void deleteUser(String userid);

	void updateUser(UserVo vo);

	UserVo getLogin(HashMap<String, Object> map);

}
