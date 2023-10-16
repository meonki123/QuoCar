package com.green.user.service.impl;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.user.dao.UserDao;
import com.green.user.service.UserService;
import com.green.user.vo.UserVo;
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
    public void deleteUserById(int id) {
        // UserDao를 사용하여 지정된 ID를 가진 사용자 데이터를 삭제하는 로직을 구현합니다.
        userDao.deleteUserById(id);
    }

    @Override
    public void updateUser(UserVo user) {
        // UserDao를 사용하여 사용자 데이터를 업데이트하는 로직을 구현합니다.
        userDao.updateUser(user);
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
	public boolean passChk(UserVo vo) throws Exception {
		boolean result = userDao.passChk(vo);
		return result;
	}
    // 아이디 중복 확인
	@Override
	public boolean idChk(UserVo vo) throws Exception {
		boolean result = userDao.idChk(vo);
		return result;
	}
		
}
