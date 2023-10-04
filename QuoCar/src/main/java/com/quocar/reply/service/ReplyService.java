package com.quocar.reply.service;

import java.util.List;

import com.quocar.reply.vo.ReplyVo;

public interface ReplyService {

	// 댓글 목록
	public List<ReplyVo> list(Integer bno);
	
	// 댓글 입력
	public void create(ReplyVo vo);
	
	// 댓글 수정
	public void update(ReplyVo vo);
	
	// 댓글 삭제
	public void delete(Integer rno);
}
