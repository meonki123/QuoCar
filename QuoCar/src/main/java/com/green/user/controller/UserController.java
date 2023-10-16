package com.green.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.green.user.service.UserService;
import com.green.user.vo.UserVo;

@Controller
@RequestMapping("/user")
public class UserController {
    private final UserService userService;

    @Autowired
    public UserController(UserService userService) {
        this.userService = userService;
    }

    // 패스워드 체크
    @ResponseBody
    @RequestMapping(value = "/passChk", method = RequestMethod.POST)
    public boolean passChk(UserVo vo) throws Exception {
        return userService.passChk(vo);
    }

    // 아이디 중복 확인
    @ResponseBody
    @RequestMapping(value = "/idChk", method = RequestMethod.POST)
    public boolean idChk(UserVo vo) throws Exception {
        try {
            return userService.idChk(vo);
        } catch (Exception e) {
            System.out.println("아이디 중복 확인 실패: " + e.getMessage());
            throw new RuntimeException(e);
        }
    }

    // 회원가입 post
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String postRegister(UserVo vo) throws Exception {
        // 아이디 중복 여부를 확인합니다.
        boolean isDuplicated = idChk(vo);

        if (isDuplicated) {
            // 아이디가 중복됩니다.
            return "/user/register";
        } else {
            // 회원 정보를 저장합니다.
            userService.saveUser(vo);

            // 성공 메시지를 표시합니다.
            return "redirect:/";
        }
    }
}
