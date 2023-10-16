package com.quocar.chat.service.impl;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.quocar.chat.dao.ChatDoa;
import com.quocar.chat.service.ChatService;
import com.quocar.chat.vo.AnswersVo;
import com.quocar.chat.vo.CmodelVo;
import com.quocar.chat.vo.MechanicVo;

@Service
public class ChatServiceImpl implements ChatService {

	@Autowired
	private ChatDoa  chatDao;

	@Override
	public List<AnswersVo> getAnswersList(AnswersVo vo) {
		List<AnswersVo>  answersList   = chatDao.getAnswersList(vo);
		return answersList;
	}

	@Override
	public List<CmodelVo> getCmodelList(CmodelVo vo) {
		List<CmodelVo>   cmodelList    = chatDao.getCmodelList(vo); 
		return cmodelList;
	}

	@Override
	public List<MechanicVo> MechanicList(MechanicVo vo) {
		List<MechanicVo>  mechanicList = chatDao.getMechanicList(vo); 
		return mechanicList;
	}

	@Override
	public void selectChat(AnswersVo vo) {
		chatDao.selectChat(vo);
		
	}

}
