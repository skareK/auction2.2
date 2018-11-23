package com.baizhi.auction2_2.dao;

import com.baizhi.auction2_2.entity.Auction;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface AuctionDao {
	/*public List<Auction>selectAll(@Param("auction")Auction auction);*/
	
	public List<Auction> selectAll(Auction auction);
	
	public Auction selectOne(int id);
	public void insert(Auction auction);
	public void delete(int id);
	public void update(Auction auction);
	public Auction selectRecord(int auId);
	
}
