package com.baizhi.auction2_2.entity;

import java.io.Serializable;

public class AuctionUser implements Serializable {
	private int id;
	private String userName;	
	private String passWord;
	private String idNumber;
	private String tel;
	private String address;
	private String zipCode;
	private int userState;
	private String question;
	private String answer;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassWord() {
		return passWord;
	}
	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
	public String getIdNumber() {
		return idNumber;
	}
	public void setIdNumber(String idNumber) {
		this.idNumber = idNumber;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getZipCode() {
		return zipCode;
	}
	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}
	public int getUserState() {
		return userState;
	}
	public void setUserState(int userState) {
		this.userState = userState;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public AuctionUser() {
		super();
	}
	//全部的构造方法可供查询时使用
	public AuctionUser(int id, String userName, String passWord,
			String idNumber, String tel, String address, String zipCode,
			int userState, String question, String answer) {
		super();
		this.id = id;
		this.userName = userName;
		this.passWord = passWord;
		this.idNumber = idNumber;
		this.tel = tel;
		this.address = address;
		this.zipCode = zipCode;
		this.userState = userState;
		this.question = question;
		this.answer = answer;
	}

	//插入的构造放可供插入时使用 没有 id 和用户状态
	public AuctionUser(String userName, String passWord, String idNumber,
			String tel, String address, String zipCode, String question,
			String answer) {
		super();
		this.userName = userName;
		this.passWord = passWord;
		this.idNumber = idNumber;
		this.tel = tel;
		this.address = address;
		this.zipCode = zipCode;
		this.question = question;
		this.answer = answer;
	}
	
	public AuctionUser(String userName, String passWord, String idNumber,
			String tel, String address, String question, String answer) {
		super();
		this.userName = userName;
		this.passWord = passWord;
		this.idNumber = idNumber;
		this.tel = tel;
		this.address = address;
		this.question = question;
		this.answer = answer;
	}
	@Override
	public String toString() {
		return "AuctionUser [id=" + id + ", userName=" + userName
				+ ", passWord=" + passWord + ", idNumber=" + idNumber
				+ ", tel=" + tel + ", address=" + address + ", zipCode="
				+ zipCode + ", userState=" + userState + ", question="
				+ question + ", answer=" + answer + "]";
	}
	
}
