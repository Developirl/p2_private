package com.example.demo.fo_enterprise.service;

import java.util.List;
import java.util.Map;

public interface MyPageService {
	
	public Map<String, Object> getMyPageMainData(int mbr_sq, int month);

	public List<Map<String, Object>> getToMakeCalendarData(int mbr_sq, int rsm_sq, int month);

	public Map<String, Object> getPosionProposalData(int mbr_sq);

	public List<Map<String, Object>> getAreaCodes();

	public List<Map<String, Object>> getJobCodes();

	public int updatePstnPrpslAcceptYN(int mbr_sq, char pstn_prpsl_accept_yn);

	public int insertSelectAreasAndJobs(int mbr_sq, List<Integer> areaList, List<Integer> jobList);

}
