package com.quocar.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.quocar.user.service.UserService;
import com.quocar.user.vo.UserVo;

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
    public int passChk(UserVo vo) throws Exception {
        return userService.passChk(vo);
    }

    // 아이디 중복 확인
    @ResponseBody
    @RequestMapping(value = "/idCheck", method = RequestMethod.POST)
    public int idCheck(UserVo vo) {
        try {
            return userService.idCheck(vo);
        } catch (Exception e) {
            System.out.println("아이디 중복 확인 실패: " + e.getMessage());
            throw new RuntimeException(e);
        }
    }
}
