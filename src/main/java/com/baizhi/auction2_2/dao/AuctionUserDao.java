package com.baizhi.auction2_2.dao;

import com.baizhi.auction2_2.entity.AuctionUser;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface AuctionUserDao {
	public AuctionUser selectOne(@Param("userName") String userName, @Param("passWord") String passWord);
	public void insert(AuctionUser au);
	
}
