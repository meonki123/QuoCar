package com.quocar.chat.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.quocar.chat.dao.ChatDoa;
import com.quocar.chat.vo.AnswersVo;
import com.quocar.chat.vo.CmodelVo;
import com.quocar.chat.vo.MechanicVo;

@Repository("chatDao")
public class ChatDaoImpl implements ChatDoa {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<AnswersVo> getAnswersList(AnswersVo vo) {
		List<AnswersVo>  answersList  = sqlSession.selectList("Chat.AnswersList", vo);
		return answersList;
	}

	@Override
	public List<CmodelVo> getCmodelList(CmodelVo vo) {
		List<CmodelVo>   cmodelList   = sqlSession.selectList("Chat.CmodelList", vo);  
		return cmodelList;
	}

	@Override
	public List<MechanicVo> getMechanicList(MechanicVo vo) {
		List<MechanicVo> mechanicList = sqlSession.selectList("Chat.MechanicList", vo);  
		return mechanicList;
	}

	@Override
	public void selectChat(AnswersVo vo) {
		AnswersVo  answersVo  = sqlSession.selectOne("Chat.AnswerGet", vo); 
	}

}
