package com.quocar.reply.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quocar.reply.dao.ReplyDao;
import com.quocar.reply.service.ReplyService;
import com.quocar.reply.vo.ReplyVo;

@Service
public class ReplyServiceImpl implements ReplyService{

	@Autowired
	public ReplyDao replyDao;
	
	// 댓글 목록
	@Override
	public List<ReplyVo> list(Integer bno) {
		return replyDao.list(bno);
	}

	// 댓글 작성
	@Override
	public void create(ReplyVo vo) {
		replyDao.create(vo);
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
