package com.quocar.register.controller; // 패키지 이름을 com.quocar.register.controller로 변경

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RegisterController {

    // 회원 가입 화면 요청
    @RequestMapping("/register")
    public String member(HttpSession session) {
        session.setAttribute("category", "join");
        return "user/register"; // "user" 폴더에서 register.jsp 파일을 로드합니다.
    }
    
	
}

