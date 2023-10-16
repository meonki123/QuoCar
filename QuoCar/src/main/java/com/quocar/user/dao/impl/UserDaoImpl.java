package com.quocar.user.dao.impl;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.quocar.user.dao.UserDao;
import com.quocar.user.vo.UserVo;

@Repository
public class UserDaoImpl implements UserDao {

    private final SqlSession sqlSession; // SqlSession 주입

    @Autowired
    public UserDaoImpl(SqlSession sqlSession) {
        this.sqlSession = sqlSession;
    }

    @Override
    public void saveUser(UserVo user) {
        // SqlSession을 사용하여 사용자 데이터를 데이터베이스에 저장하는 로직을 구현합니다.
        sqlSession.insert("com.quocar.user.dao.UserDao.saveUser", user);
    }

    @Override
    public UserVo getLogin(String userid, String password) {
        Map<String, String> params = new HashMap<>();
        params.put("userid", userid);
        params.put("password", password);

        return sqlSession.selectOne("com.quocar.user.dao.UserDao.loginUser", params);
    }

	@Override
	public UserVo getLogin(HashMap<String, Object> map) {
		UserVo  userVo  =  sqlSession.selectOne("User.GetLogin", map); 
		return  userVo;
	}
    // 아이디 중복 체크
	@Override
	public int idCheck(UserVo vo){
		int result = sqlSession.selectOne("User.idCheck", vo);
		return result;
	}
    // 패스워드 중복 체크
	@Override
	public int passChk(UserVo vo) {
		int result = sqlSession.selectOne("User.passChk", vo);
		return result;
	}

}
