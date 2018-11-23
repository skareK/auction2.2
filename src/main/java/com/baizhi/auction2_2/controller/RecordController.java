package com.baizhi.auction2_2.controller;

import com.baizhi.auction2_2.entity.Auction;
import com.baizhi.auction2_2.entity.Record;
import com.baizhi.auction2_2.entity.RecordDTO;
import com.baizhi.auction2_2.service.AuctionService;
import com.baizhi.auction2_2.service.RecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller
public class RecordController {

	@Autowired
	private AuctionService auctionService;
	
	@Autowired
	private RecordService recordService;

	/**
	 *  点击主界面的竞拍按钮，进入到这个方法
	 * 	 * 在这个方法中获取到页面传递过来的竞拍品id；根据id获取一个竞拍品对象同时获取这个竞拍品的所有出价记录
	 * 	 * @param auctionId竞拍品id
	 * 	 * @return 竞拍页面
	 */
	@RequestMapping("/selectRecord")
	public String selectRecord(int auctionId,Map map){
		
		Auction auction = auctionService.selectOne(auctionId);
		map.put("auction", auction);
		
		List<RecordDTO> records = recordService.getRecords(auctionId);
		map.put("records", records);
		
		
		
		return "jingpai";
	}
	
	public String record_insert(Record record, HttpSession session){
		
		return "redirect:/selectRecord.do?auctionId="+record.getAuction_id();
	}
}
