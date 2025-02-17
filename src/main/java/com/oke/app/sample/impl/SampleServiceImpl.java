package com.oke.app.sample.impl;


import com.oke.app.sample.MemberVo;
import com.oke.app.sample.SampleService;
import com.oke.egov.com.dao.CommonDao;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("SampleService")
public class SampleServiceImpl implements SampleService {

    @Resource(name = "CommonDao")
    CommonDao commonDao;


    @Override
    public List<MemberVo> findAll() {
        return commonDao.selectList("member.memberSelectList");
    }

    @Override
    public MemberVo findMember() {
        return commonDao.selectOne("member.memberSelect");
    }
}
