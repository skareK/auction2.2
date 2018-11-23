package com.baizhi.auction2_2.entity;

import java.util.Date;

/**
 * @author Administrator
 *
 */
public class RecordDTO {
	
	private Date time;//竞拍时间
	private double price;//竞拍价格
	private String username;//竞拍人
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public RecordDTO(Date time, double price, String username) {
		super();
		this.time = time;
		this.price = price;
		this.username = username;
	}
	public RecordDTO() {
		super();
	}
	@Override
	public String toString() {
		return "RecordDTO [time=" + time + ", price=" + price + ", username="
				+ username + "]";
	}
	

}
