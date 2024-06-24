package com.example.demo.fo_enterprise.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.fo_enterprise.mybatis.mapper.MypageMapper;

@Service
public class MyPageServiceImpl implements MyPageService{

	@Autowired
    private MypageMapper mypageMapper;
	
    //마이페이지 매인화면에 필요한 전체 데이터 가져오기
	@Override
	public Map<String, Object> getMyPageMainData(int mbr_sq, int month) {
		
		Map<String, Object> response = new HashMap<>();

        // 회원 정보
        Map<String, Object> mbrInfo = mypageMapper.getMbrInfo(mbr_sq);
        response.put("mbrInfo", mbrInfo);

        // 대표 이력서 정보
        Map<String, Object> rsmInfo = mypageMapper.getRprsntvRsmInfo(mbr_sq);
        response.put("rsmInfo", rsmInfo);
        
        int rsm_sq = (int)rsmInfo.get("rsm_sq");

        // 각 상태별 지원 개수
        Map<String, Integer> EachCndtnApplyCount = mypageMapper.getEachCndtnApplyCount(rsm_sq);
        response.put("EachCndtnApplyCount", EachCndtnApplyCount);

        // 등록한 이력서, 스크랩한 공고, 포지션 제안 받은 개수
        Map<String, Integer> myState = mypageMapper.getMyState(mbr_sq, rsm_sq);
        response.put("myState", myState);

        // 월별 캘린더 데이터
        List<Map<String, Object>> calendarData = mypageMapper.getToMakeCalendarData(mbr_sq,rsm_sq, month);
        response.put("calendarData", calendarData);
		
		return response;
	}

    //마이페이지 메인 화면 캘린더 데이터(월 이동시)
    @Override
    public List<Map<String, Object>> getToMakeCalendarData(int mbr_sq, int rsm_sq, int month) {
        return mypageMapper.getToMakeCalendarData(mbr_sq,rsm_sq, month);
    }


//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@


    @Override
    public Map<String, Object> getPosionProposalData(int mbr_sq) {

        Map<String, Object> response = new HashMap<>();

        response.put("ppAcceptYN", mypageMapper.getPstnPrpslAcceptYN(mbr_sq));
        response.put("rsmInfo", mypageMapper.getRprsntvRsmInfo(mbr_sq));
        response.put("selectedAreas", mypageMapper.getSelectedAreas(mbr_sq));
        response.put("selectedJobs", mypageMapper.getSelectedJobs(mbr_sq));

        return response;
    }
    
    @Override
    public List<Map<String, Object>> getAreaCodes() {
        return mypageMapper.getAreaCodes();
    }
    
    @Override
    public List<Map<String, Object>> getJobCodes() {
        return mypageMapper.getJobCodes();
    }

    @Override
    public int updatePstnPrpslAcceptYN(int mbr_sq, char pstn_prpsl_accept_yn) {
        return mypageMapper.updatePstnPrpslAcceptYN(mbr_sq, pstn_prpsl_accept_yn);
    }

    @Override
    public int insertSelectAreasAndJobs(int mbr_sq, List<Integer> areaList, List<Integer> jobList) {
        int result = 0;

        mypageMapper.resetSelectedAreas(mbr_sq);
        mypageMapper.resetSelectedJobs(mbr_sq);
        result += mypageMapper.insertSelectAreas(mbr_sq, areaList);
        result += mypageMapper.insertSelectJobs(mbr_sq, jobList);

        return result;
    }

}
