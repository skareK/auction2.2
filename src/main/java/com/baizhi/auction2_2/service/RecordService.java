package com.baizhi.auction2_2.service;

import com.baizhi.auction2_2.entity.Record;
import com.baizhi.auction2_2.entity.RecordDTO;
import java.util.List;

public interface RecordService {
	public void insert(Record re);
	
	/**
	 *根据竞拍品id获取到这个竞拍品的所有出价记录
	 * @param auctionId
	 * @return
	 */
	public List<RecordDTO> getRecords(int auctionId);
}
