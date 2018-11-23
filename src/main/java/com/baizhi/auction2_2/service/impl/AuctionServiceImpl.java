package com.baizhi.auction2_2.service.impl;

import com.baizhi.auction2_2.dao.AuctionDao;
import com.baizhi.auction2_2.entity.Auction;
import com.baizhi.auction2_2.service.AuctionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class AuctionServiceImpl implements AuctionService {
	@Autowired
	private AuctionDao auctionDao;

	public void setAuctionDao(AuctionDao auctionDao) {
		this.auctionDao = auctionDao;
	}
	@Override
	public List<Auction> selectAll(Auction auction) {
		return auctionDao.selectAll(auction);
	}
	@Override
	public Auction selectOne(int id) {
		return auctionDao.selectOne(id);
	}
	@Override
	public Auction selectRecord(int auId) {
		return auctionDao.selectRecord(auId);
	}

	@Override
	public void insert(Auction auction) {
		auctionDao.insert(auction);
	}

	@Override
	public void delete(int id) {
		auctionDao.delete(id);
	}

	@Override
	public void update(Auction auction) {
		auctionDao.update(auction);
	}

}
