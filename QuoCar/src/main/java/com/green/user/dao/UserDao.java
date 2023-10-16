package com.green.user.dao;

import java.util.HashMap;

import com.green.user.vo.UserVo;

public interface UserDao {

    // 새로운 사용자 저장
    void saveUser(UserVo user);

    // ID로 사용자 삭제
    void deleteUserById(int id);

    // 사용자 정보 업데이트
    void updateUser(UserVo user);

    // 사용자 로그인 인증
	UserVo getLogin(HashMap<String, Object> map);

	UserVo getLogin(String userid, String password);
	
	// 패스워드 체크
	public boolean passChk(UserVo vo) throws Exception;
	
	// 아이디 중복체크
	public boolean idChk(UserVo vo) throws Exception;

	
}
