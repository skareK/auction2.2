package com.baizhi.auction2_2.utils;

import org.springframework.core.convert.converter.Converter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 自己定义的类型转换器
 * @author Carry
 *
 */
public class MyDateConverter implements Converter<String, Date> {

	private final String[] patterns=new String[]{"yyyy-MM-dd","yyyy/MM/dd","yyyy.MM.dd","yyyy年MM月dd日","yyyy-MM-dd HH:mm:ss","yyyy/MM/dd HH:mm:ss","yyyy.MM.dd HH:mm:ss","yyyy年MM月dd日 HH:mm:ss"};
	
	@Override
	public Date convert(String arg0) {
		for (int i = 0; i < patterns.length; i++) {
			System.out.println("dateConverterrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr");
			SimpleDateFormat sdf = new SimpleDateFormat(patterns[i]);
			try {
				System.out.println(arg0+"*******************");
				Date date=sdf.parse(arg0);
				System.out.println(date+"dateeeeeeeeeeeeeeeeeeeeeeeee");
				return date;
			} catch (ParseException e) {
				//e.printStackTrace();
			}
			
		}
		
		//throw new RuntimeException("输入的日期格式的字符串不对");
		return null;
	}
	/*private String pattern="yyyy-MM-dd HH:mm:ss";
	public void setPattern(String pattern) {
		this.pattern = pattern;
	}


	@Override
	public Date convert(String arg0) {
		//2018-10-24===>Date
		SimpleDateFormat sdf = new SimpleDateFormat(pattern);
		try {
			Date date = sdf.parse(arg0);
			return date;
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		return null;
	}*/

}
