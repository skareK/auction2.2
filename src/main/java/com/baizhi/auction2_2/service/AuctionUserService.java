package com.baizhi.auction2_2.service;

import com.baizhi.auction2_2.entity.AuctionUser;

public interface AuctionUserService {

	/**
	 * dffdsfafdsa
	 * @param userName
	 * @param passWord
	 * @return  根据用户名和密码获取的一个用户信息
	 */
	public AuctionUser selectOne(String userName, String passWord);
		
		/**
		 * 业务逻辑中的方法名是跟业务相关的名字；而不是跟操作数据库相关的名字
		 * @param au 要注册的用户信息
		 */
		public void insert(AuctionUser au);
	
}
