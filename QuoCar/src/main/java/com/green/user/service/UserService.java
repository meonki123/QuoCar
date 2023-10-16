package com.green.user.service;

import java.util.HashMap;
import com.green.user.vo.UserVo;

public interface UserService {
    // 사용자 관련 서비스
    void saveUser(UserVo user);  // 사용자 저장
    
    void deleteUserById(int id);  // ID로 사용자 삭제
    
    void updateUser(UserVo user);  // 사용자 정보 업데이트
    
    UserVo loginUser(String userid, String password);  // 사용자 로그인
    
    UserVo getLogin(HashMap<String, Object> map);  // 로그인 정보 가져오기
    
    public boolean passChk(UserVo vo) throws Exception; // 패스워드 중복 체크
    
    public boolean idChk(UserVo vo) throws Exception; // 아이디 중복 체크
}