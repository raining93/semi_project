package com.mc.mvc.todo;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Scanner;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mc.mvc.todo.ddayVo;

/**
 * D day 계산 프로그램.
 * 
 * 입력 : 목표 날짜) 20180814
 */

public class dday {
	@RequestMapping("/dday")
	public String ddayResult(ddayVo vo) {
		String result ="";
		int target = vo.getTarget();
		int dDay;

		// 날짜포멧
		SimpleDateFormat yyyyMMdd = new SimpleDateFormat("yyyyMMdd");
		Date today = new Date();
		String todayDay = yyyyMMdd.format(today);
		
		dDay = target - Integer.parseInt(todayDay);
		
		if(dDay == 0) {
			result = "D-Day";
		} else if(dDay > 0) {
			result = "D-" + dDay;
		} else {
			result = "D+" + dDay;
		}
		
		return result;
	}
	
//    public static void main(String[] args) throws Exception {
//
//        System.out.print("디데이를 입력하세요 \n ex) 20230206 = ");
//        Scanner scanner = new Scanner(System.in);
//        final String targetDay = scanner.nextLine();
//        scanner.close();
//
//        // 목표 날짜
//        SimpleDateFormat yyyyMMdd = new SimpleDateFormat("yyyyMMdd");
//
//        // 현재 날짜
//        final Date todayDate = new Date();
//        final String todayDay = yyyyMMdd.format(todayDate);
//                
//        int dDay = Integer.parseInt(targetDay) - Integer.parseInt(todayDay);
//        
//
//        
//        if(dDay >0){
//            System.out.println("D-"+dDay);
//            
//        } else if(dDay == 0){
//        	System.out.println("D-day");
//        	
//        } else {
//        	System.out.println("D+"+dDay *(-1));
//        }
//        
//    }
}