package com.baizhi.auction2_2.service.impl;

import com.baizhi.auction2_2.dao.RecordDao;
import com.baizhi.auction2_2.entity.Record;
import com.baizhi.auction2_2.entity.RecordDTO;
import com.baizhi.auction2_2.service.RecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class RecordServiceImpl implements RecordService {
	@Autowired
	private RecordDao recordDao;
	public void setRecordDao(RecordDao recordDao) {
		this.recordDao = recordDao;
	}

	@Override
	@Transactional
	public void insert(Record re) {
		System.out.println("业务层参数的值"+re);
		recordDao.insert(re);
	}




	@Override
	public List<RecordDTO> getRecords(int auctionId) {
		return recordDao.getRecords(auctionId);
	}

}
