package com.oke.app.sample;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Slf4j
@Controller
public class SampleController {

    @Resource(name="SampleService")
    SampleService sampleService;

    @RequestMapping("/sample.do")
    public String sample(HttpServletRequest request, Model model) {

        List<MemberVo> memberList = sampleService.findAll();
        model.addAttribute("memberList", memberList);

        MemberVo member = sampleService.findMember();
        model.addAttribute("member", member);

        return "sample/sample";
    }

    @RequestMapping("/")
    public String index() {
        return "main";
    }

    @RequestMapping("/main.do")
    public String main() {
        return "main";
    }

    @RequestMapping("/create.do")
    public String create() {
        return "create";
    }


}
