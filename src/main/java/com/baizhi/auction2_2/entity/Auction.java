package com.baizhi.auction2_2.entity;

import org.springframework.stereotype.Component;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class Auction implements Serializable {
	private int id;
	private String name;
	private Double startPrice;
	private Double upset;
	private Date startTime;
	private Date endTime;
	private String pic;
	private String desc;
	private List<Record>reList;
	
	public Auction() {
		super();
	}
	public Auction(int id, String name, Double startPrice, Double upset,
			Date startTime, Date endTime, String pic, String desc) {
		super();
		this.id = id;
		this.name = name;
		this.startPrice = startPrice;
		this.upset = upset;
		this.startTime = startTime;
		this.endTime = endTime;
		this.pic = pic;
		this.desc = desc;
	}
	public Auction(String name, Double startPrice, Double upset,
			Date startTime, Date endTime, String pic, String desc) {
		super();
		this.name = name;
		this.startPrice = startPrice;
		this.upset = upset;
		this.startTime = startTime;
		this.endTime = endTime;
		this.pic = pic;
		this.desc = desc;
	}
	public Auction(String name, Double startPrice, Date startTime,
			Date endTime, String desc) {
		super();
		this.name = name;
		this.startPrice = startPrice;
		this.startTime = startTime;
		this.endTime = endTime;
		this.desc = desc;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Double getStartPrice() {
		return startPrice;
	}
	public void setStartPrice(Double startPrice) {
		this.startPrice = startPrice;
	}
	public Double getUpset() {
		return upset;
	}
	public void setUpset(Double upset) {
		this.upset = upset;
	}
	public Date getStartTime() {
		return startTime;
	}
	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}
	public Date getEndTime() {
		return endTime;
	}
	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public List<Record> getReList() {
		return reList;
	}
	public void setReList(List<Record> reList) {
		this.reList = reList;
	}
	@Override
	public String toString() {
		return "Auction [id=" + id + ", name=" + name + ", startPrice="
				+ startPrice + ", upset=" + upset + ", startTime=" + startTime
				+ ", endTime=" + endTime + ", pic=" + pic + ", desc=" + desc
				+ "]";
	}
	
	
	
	
	
	
	
	
}
