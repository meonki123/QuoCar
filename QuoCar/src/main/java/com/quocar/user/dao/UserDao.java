package com.quocar.user.dao;

import java.util.HashMap;

import com.quocar.user.vo.UserVo;

public interface UserDao {

    // 새로운 사용자 저장
    void saveUser(UserVo user);

    // 사용자 로그인 인증
	UserVo getLogin(HashMap<String, Object> map);

	UserVo getLogin(String userid, String password);
	
	// 패스워드 체크
	public int passChk(UserVo vo) throws Exception;
	
	// 아이디 중복체크
	public int idCheck(UserVo vo) throws Exception;

	
}
