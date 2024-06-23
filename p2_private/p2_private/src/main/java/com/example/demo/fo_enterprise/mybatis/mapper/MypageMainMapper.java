package com.example.demo.fo_enterprise.mybatis.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface MypageMainMapper {
	
//	회원 정보 중 이름, 전화번호, 이메일, 포지션 제안 수락여부
//	mbr_name, mbr_mp, mbr_eml_adrs, pstn_prpsl_accept_yn
	public Map<String, Object> getMbrInfo(int mbr_sq);
	
//	이력서 중 대표 이력서 이력서 순번, 이력서 제목, 등록일시, 최종 수정일시, 이미지
//	rsm_sq, rsm_tl, insrt_dtm, updt_dtm, rsm_img_file_rul
	public Map<String, Object> getRprsntvRsmInfo(int mbr_sq);

//	대표 이력서 -> 지원 테이블에서 각 상태별 데이터 개수 가지고 오기(미열람:401, 열람:402, 면접대기:405, 면접완료:406, 합격:407, 불합격:408)
	public List<Map<String, Integer>> getEachCndtnApplyCount(int rsm_sq);

//	등록한 이력서 개수(rsm_cnt), 스크랩한 공고 개수(scrap_cnt), 포지션 제안 받은 개수(대가 상태(301)인 제안)(prpsl_cnt), (추후 AI추천 공고 개수)
	public Map<String, Integer> getMyState(@Param("mbr_sq")int mbr_sq,@Param("rsm_sq") int rsm_sq);
	
	
//	월별 스크랩한 공고 마감일자 : S`
//	월별 면접일자 면접대기(405) I
//	웗별 제안 받은 포지션 대기 상태일 때 마감 일자 PP
//	월별 지원 공고 데이터 AC
	public List<Map<String, Object>> getToMakeCalendarData(@Param("mbr_sq")int mbr_sq,@Param("rsm_sq") int rsm_sq,@Param("month") int month);
	
}
