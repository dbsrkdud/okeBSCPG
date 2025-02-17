package com.oke.app.sample;

import java.util.List;

public interface SampleService {

    List<MemberVo> findAll();

    MemberVo findMember();

}
