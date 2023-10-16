package com.quocar.chat.service;

import java.util.List;

import com.quocar.chat.vo.AnswersVo;
import com.quocar.chat.vo.CmodelVo;
import com.quocar.chat.vo.MechanicVo;

public interface ChatService {

	List<AnswersVo> getAnswersList(AnswersVo vo);

	List<CmodelVo> getCmodelList(CmodelVo vo);

	List<MechanicVo> MechanicList(MechanicVo vo);

	void selectChat(AnswersVo vo);

	




}
