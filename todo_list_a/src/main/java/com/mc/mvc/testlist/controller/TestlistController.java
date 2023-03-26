package com.mc.mvc.testlist.controller;

import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.io.BufferedReader;
import java.io.IOException;

@Controller
public class TestlistController {
	
	@GetMapping("testlist")
    public String testList(Model model) throws MalformedURLException {
    	
        StringBuilder urlBuilder = new StringBuilder("http://apis.data.go.kr/B490007/qualExamSchd/getQualExamSchdList"); /*URL*/
        try {
			urlBuilder.append("?" + URLEncoder.encode("serviceKey","UTF-8") + "=2gdHPByJoYzIr0nZZuBhnkWKUISsq%2FTRJKIPCVOwR%2BxIfTiFEse7Xg%2FUaV2TCXi7yU2cRRVDgShIiZOpiqHjcA%3D%3D");
			urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("10", "UTF-8")); /*한 페이지 결과 수*/
			urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*페이지번호*/
			urlBuilder.append("&" + URLEncoder.encode("dataFormat","UTF-8") + "=" + URLEncoder.encode("xml", "UTF-8")); /*응답 데이터 표준 형식 - xml / json (대소문자 구분 없음)*/
			urlBuilder.append("&" + URLEncoder.encode("implYy","UTF-8") + "=" + URLEncoder.encode("2023", "UTF-8")); /*시행년도*/
			urlBuilder.append("&" + URLEncoder.encode("qualgbCd","UTF-8") + "=" + URLEncoder.encode("T", "UTF-8")); /*자격구분코드 - T : 국가기술자격 - C : 과정평가형자격 - W : 일학습병행자격 - S : 국가전문자격*/
			urlBuilder.append("&" + URLEncoder.encode("jmCd","UTF-8") + "=" + URLEncoder.encode("7910", "UTF-8")); /*종목코드 값 (예) 7910 : 한식조리 기능사(검정형)*/
			URL url = new URL(urlBuilder.toString());
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Content-type", "application/json");
			System.out.println("Response code: " + conn.getResponseCode());
			BufferedReader rd;
			if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
				rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			} else {
				rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
			}
			StringBuilder sb = new StringBuilder();
			String line;
			while ((line = rd.readLine()) != null) {
				sb.append(line);
			}
			rd.close();
			conn.disconnect();
		//System.out.println(sb);
		
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} /*Service Key*/
		return "/test-list";
      
    }
}