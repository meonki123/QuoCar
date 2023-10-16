package com.quocar.user.service.impl;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quocar.user.dao.UserDao;
import com.quocar.user.service.UserService;
import com.quocar.user.vo.UserVo;
@Service
public class UserServiceImpl implements UserService {

    private final UserDao userDao;

    @Autowired
    public UserServiceImpl(UserDao userDao) {
        this.userDao = userDao;
    }

    @Override
    public void saveUser(UserVo user) {
        // UserDao를 사용하여 사용자 데이터를 데이터베이스에 저장하는 로직을 구현합니다.
        userDao.saveUser(user);
    }

    @Override
    public UserVo loginUser(String userid, String password) {
        // UserDao를 사용하여 사용자 로그인을 인증하는 로직을 구현합니다.
        return userDao.getLogin(userid, password);
    }

	@Override
	public UserVo getLogin(HashMap<String, Object> map) {
		
		UserVo  userVo  =  userDao.getLogin( map );  
		return  userVo;
	}
	// 패스워드 체크
	@Override
	public int passChk(UserVo vo) throws Exception {
	    int result = userDao.passChk(vo);
	    return result;
	}
	// 아이디 중복 확인
	@Override
	public int idChk(UserVo vo) throws Exception {
	    int result = userDao.idChk(vo);
	    return result;
	}

		
}
