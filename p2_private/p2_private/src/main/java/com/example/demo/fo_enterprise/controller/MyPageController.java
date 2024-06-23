package com.example.demo.fo_enterprise.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.fo_enterprise.service.MyPageService;


@RestController
@RequestMapping("/mypage")
public class MyPageController {
	
	@Autowired
	private MyPageService myPageService;
	
	//jwt 구현 전 까지 클라에서 mbr_sq 같이 넘겨주는 걸로!
	@GetMapping("/main")
	public ResponseEntity<Map<String, Object>> getMainData(@RequestParam("mbr_sq") int mbr_sq, @RequestParam("month") Integer month) {
		
		return ResponseEntity.ok(myPageService.getMyPageMainData(mbr_sq, month));
	}
	
	
}
