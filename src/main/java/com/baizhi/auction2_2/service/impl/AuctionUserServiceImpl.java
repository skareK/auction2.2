package com.baizhi.auction2_2.service.impl;

import com.baizhi.auction2_2.dao.AuctionUserDao;
import com.baizhi.auction2_2.entity.AuctionUser;
import com.baizhi.auction2_2.service.AuctionUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class AuctionUserServiceImpl implements AuctionUserService {
	
	@Autowired
	private AuctionUserDao aud;
	public void setAud(AuctionUserDao aud) {
		this.aud = aud;
	}

	@Override
	public AuctionUser selectOne(String userName, String passWord) {
		return aud.selectOne(userName, passWord);
	}

	@Override
	public void insert(AuctionUser au) {
			aud.insert(au);
		 
	}

}
