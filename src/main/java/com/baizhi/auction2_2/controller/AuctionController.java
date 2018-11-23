package com.baizhi.auction2_2.controller;

import com.baizhi.auction2_2.entity.Auction;
import com.baizhi.auction2_2.service.AuctionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
public class AuctionController {
	
	@Autowired
	private AuctionService auctionService;
	/**
	 *  加载主页面数据（包括组合查询用都是这一个方法）
	 * @return
	 */
	@RequestMapping("/getAuctions")
	public String getAuctions(Auction auction, Map map){
		List<Auction> list = auctionService.selectAll(auction);
		map.put("list", list);
		return "allAuction";
	}
	
	@RequestMapping("/selectOne")
	public String selectOne(int id,Map map){
		Auction one = auctionService.selectOne(id);
		map.put("auction", one);
		return "update";
	}
	
	@RequestMapping("/update")
	public String update(Auction auction,MultipartFile myPhoto,HttpServletRequest request) throws IllegalStateException, IOException{
		
		/*System.out.println(myPhoto+"(((((((((((((");
		System.out.println(myPhoto.getOriginalFilename()+"**************");*/
		
		if(!"".equals(myPhoto.getOriginalFilename())){
			//处理文件上传的内容
			String realPath=request.getRealPath("/images");
			String newFileName=new Date().getTime()+"_"+myPhoto.getOriginalFilename();
			myPhoto.transferTo(new File(realPath+"/"+newFileName));
			auction.setPic(newFileName);
		}/*else{
			Auction one = auctionService.selectOne(auction.getId());
			auction.setPic(one.getPic());
		}*/


		//数据库的修改操作

		auctionService.update(auction);
		
		return "redirect:/getAuctions.do";
	}

}
