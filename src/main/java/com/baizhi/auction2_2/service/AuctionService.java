package com.baizhi.auction2_2.service;

import com.baizhi.auction2_2.entity.Auction;
import java.util.List;

public interface AuctionService {
	public List<Auction>selectAll(Auction auction);
	public Auction selectOne(int id);
	public void insert(Auction auction);
	public void delete(int id);
	public void update(Auction auction);
	public Auction selectRecord(int auId);
	
}
