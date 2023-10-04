package com.quocar.home.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.quocar.user.service.UserService;
import com.quocar.user.vo.UserVo;

@Controller
public class HomeController {

	 @Autowired
	   private  UserService  userService;
	 
    @RequestMapping("/")
    public String home() {
        return "home"; // .jsp 확장자 없음
    }

    // 로그인
    @RequestMapping("/login")
    public  String   login() {
       return  "user/login";
    }
    
    // 로그인체크
    @RequestMapping("/loginprocess")
    public  String   loginprocess(
       HttpSession    session,   
       @RequestParam  HashMap<String, Object>  map   
          ) {
       
       String  returnURL = "";
       
       // 기존의 로그인정보가 존재한다면 기존정보를 제거
       if( session.getAttribute("login") != null  ) {
          session.removeAttribute("login");
       }
       
       // 로그인 체크
       UserVo    vo  =  userService.getLogin( map );
       if( vo  !=  null  ) {
          session.setAttribute("login", vo);
          returnURL = "redirect:/";        //  Home 으로 보낸다   
       } else {
          returnURL = "redirect:/login";   //  /Login 으로 보낸다
       }
       
       return  returnURL;
       
    }
    
    //  로그아웃
    @RequestMapping("/logout")
    public  String   logout( HttpSession  session   ) {
             
       session.invalidate();
       return  "redirect:/login";
    }
    

 }
