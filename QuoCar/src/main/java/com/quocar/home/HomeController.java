package com.quocar.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    @RequestMapping("/")
    public String home() {
        return "home"; // .jsp 확장자 없음
    }

    // 로그인
    @RequestMapping("/login")
    public String login() {
        return "login"; // .jsp 확장자 없음
    }
}
