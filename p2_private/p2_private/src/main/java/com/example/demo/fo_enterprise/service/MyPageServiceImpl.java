package com.example.demo.fo_enterprise.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.fo_enterprise.mybatis.mapper.MypageMainMapper;

@Service
public class MyPageServiceImpl implements MyPageService{

	@Autowired
    private MypageMainMapper mypageMainMapper;
	
	@Override
	public Map<String, Object> getMyPageMainData(int mbr_sq, int month) {
		
		Map<String, Object> response = new HashMap<>();

        // 회원 정보
        Map<String, Object> mbrInfo = mypageMainMapper.getMbrInfo(mbr_sq);
        response.put("mbrInfo", mbrInfo);

        // 대표 이력서 정보
        Map<String, Object> rsmInfo = mypageMainMapper.getRprsntvRsmInfo(mbr_sq);
        response.put("rsmInfo", rsmInfo);
        
        int rsm_sq = (int)rsmInfo.get("rsm_sq");

        // 각 상태별 지원 개수
        List<Map<String, Integer>> EachCndtnApplyCount = mypageMainMapper.getEachCndtnApplyCount(rsm_sq);
        response.put("EachCndtnApplyCount", EachCndtnApplyCount);

        // 등록한 이력서, 스크랩한 공고, 포지션 제안 받은 개수
        Map<String, Integer> myState = mypageMainMapper.getMyState(mbr_sq, rsm_sq);
        response.put("myState", myState);

        // 월별 캘린더 데이터
        List<Map<String, Object>> calendarData = mypageMainMapper.getToMakeCalendarData(mbr_sq,rsm_sq, month);
        response.put("calendarData", calendarData);
		
		return response;
	}
	
	
}
