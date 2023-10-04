package com.quocar.reply.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.quocar.reply.dao.ReplyDao;
import com.quocar.reply.vo.ReplyVo;

@Repository
public class ReplyDaoImpl implements ReplyDao{

	@Autowired
	SqlSession sqlSession;
	
	// 댓글 목록
	@Override
	public List<ReplyVo> list(Integer bno) {
		return sqlSession.selectList("reply.listReply", bno);
	}

	// 댓글 작성
	@Override
	public void create(ReplyVo vo) {
		sqlSession.insert("reply.insertReply", vo);
	}

	// 댓글 수정
	@Override
	public void update(ReplyVo vo) {
		
	}

	// 댓글 삭제
	@Override
	public void delete(Integer rno) {
		
	}

}
