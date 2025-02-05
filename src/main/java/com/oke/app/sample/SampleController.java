package com.oke.app.sample;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Slf4j
@Controller
public class SampleController {

    @RequestMapping("/sample.do")
    public String sample() {
        return "sample/sample";
    }

    @RequestMapping("/index.do")
    public String index() {
        return "index";
    }

    @RequestMapping("/create.do")
    public String create() {
        return "create";
    }


}
