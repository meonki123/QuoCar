package com.quocar.chat.dao;

import java.util.List;

import com.quocar.chat.vo.AnswersVo;
import com.quocar.chat.vo.CmodelVo;
import com.quocar.chat.vo.MechanicVo;

public interface ChatDoa {

	List<AnswersVo> getAnswersList(AnswersVo vo);

	List<CmodelVo> getCmodelList(CmodelVo vo);

	List<MechanicVo> getMechanicList(MechanicVo vo);

	void selectChat(AnswersVo vo);

}
