package com.oke.app.sample;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Slf4j
@Controller
public class SampleController {

    @Resource(name="SampleService")
    SampleService sampleService;

    @RequestMapping("/sample.do")
    public String sample() {
        sampleService.findAll();
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
