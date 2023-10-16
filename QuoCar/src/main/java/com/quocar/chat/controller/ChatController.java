package com.quocar.chat.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.quocar.chat.service.ChatService;
import com.quocar.chat.vo.AnswersVo;
import com.quocar.chat.vo.CmodelVo;
import com.quocar.chat.vo.MechanicVo;

@Controller
@RequestMapping("/Chat")
public class ChatController {
	
	@Autowired
	private ChatService  chatService;
	//답변 목록
	@RequestMapping("/List")
	public ModelAndView list(AnswersVo vo) {
		
	List<AnswersVo> answersList = chatService.getAnswersList(vo);
	
	int model_id    = vo.getModel_id();
	int mechanic_id = vo.getMechanic_id();
	
	ModelAndView  mv = new ModelAndView();
	mv.addObject("model_id", model_id);
	mv.addObject("mechanic_id", mechanic_id);
	mv.addObject("answersList", answersList);
	mv.setViewName("chat/list");
	return mv;
	}
	//차량 목록
	@RequestMapping("/List2")
	public ModelAndView list(CmodelVo vo) {
		
		List<CmodelVo> cmodelList = chatService.getCmodelList(vo);
		
		int    model_id    = vo.getModel_id();
		String car_model = vo.getCar_model();
		
		ModelAndView  mv = new ModelAndView();
		mv.addObject("model_id", model_id);
		mv.addObject("cmodelList", cmodelList);
		mv.setViewName("chat/list2");
		return mv;
	}
	//정비 목록
	@RequestMapping("/List3")
	public ModelAndView list(MechanicVo vo) {
		
		List<MechanicVo> mechanicList = chatService.MechanicList(vo);
		
		int    mechanic_id   = vo.getMechanic_id();
		String mechanic_name = vo.getMechanic_name();
		
		ModelAndView  mv = new ModelAndView();
		mv.addObject("mechanic_id", mechanic_id);
		mv.addObject("mechanicList", mechanicList);
		mv.setViewName("chat/list3");
		return mv;
	}
	
	//답변 선택 form
	
	@RequestMapping("/ViewForm") 
	public ModelAndView view(AnswersVo vo ) {
		chatService.selectChat(vo);
		
		int model_id    = vo.getModel_id();
		int mechanic_id = vo.getMechanic_id();
		
		ModelAndView  mv  = new ModelAndView();
		mv.setViewName("chat/view");
		return mv;
	 }

		}

































