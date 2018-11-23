package com.baizhi.auction2_2.dao;

import com.baizhi.auction2_2.entity.Record;
import com.baizhi.auction2_2.entity.RecordDTO;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RecordDao {

	public void insert(Record re);

	public List<RecordDTO> getRecords(int auctionId);
}	
