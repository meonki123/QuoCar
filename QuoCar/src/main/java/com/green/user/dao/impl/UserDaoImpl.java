package com.green.user.dao.impl;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.user.dao.UserDao;
import com.green.user.vo.UserVo;

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
    public void deleteUserById(int id) {
        // SqlSession을 사용하여 지정된 ID를 가진 사용자 데이터를 삭제하는 로직을 구현합니다.
        sqlSession.delete("com.quocar.user.dao.UserDao.deleteUserById", id);
    }

    @Override
    public void updateUser(UserVo user) {
        // SqlSession을 사용하여 사용자 데이터를 업데이트하는 로직을 구현합니다.
        sqlSession.update("com.quocar.user.dao.UserDao.updateUser", user);
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
	public boolean idChk(UserVo vo) throws Exception {
		boolean result = sqlSession.selectOne("userMapper.idChk", vo);
		return result;
	}
    // 패스워드 중복 체크
	@Override
	public boolean passChk(UserVo vo) throws Exception {
		boolean result = sqlSession.selectOne("userMapper.passChk", vo);
		return result;
	}

}
