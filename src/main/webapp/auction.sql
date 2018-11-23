--1:创建表空间
CREATE TABLESPACE tbs_auction
DATAFILE 'e:\auctiondb.dbf'
SIZE 100m;
--2:创建用户
CREATE USER auction IDENTIFIED BY zpark
DEFAULT TABLESPACE tbs_auction;
--3:授予权限
GRANT CONNECT,RESOURCE TO auction;

---



--4:创建表
create table auction  (
   auction_id            number(6)                       not null,
   auction_name          nvarchar2(50)                   not null,
   auction_start_price    number(9,2)                     not null,
   auction_upset         number(9,2)                     not null,
   auction_start_time     TIMESTAMP                       not null,
   auction_end_time       TIMESTAMP                       not null,
   auction_pic           varchar2(200)                    not null,
   auction_desc          nvarchar2(500),
   constraint PK_AUCTION primary key (auction_id)
);

comment on table auction is '拍卖品';

comment on column auction.auction_id is '拍卖品编号';

comment on column auction.auction_name is
'拍卖品名称';

comment on column auction.auction_start_price is
'拍卖品起拍价';

comment on column auction.auction_upset is
'拍卖品底价';

comment on column auction.auction_start_time is
'拍卖品拍卖开始时间';

comment on column auction.auction_end_time is
'拍卖品拍卖结束时间';

comment on column auction.auction_pic is
'拍卖品图片';

comment on column auction.auction_desc is
'拍卖品描述';

create table auction_user  (
   user_id                number(6)                      not null,
   user_name             nvarchar2(20)                   not null,
   user_password         nvarchar2(20)                   not null,
   user_card_no           nvarchar2(20),
   user_tel               nvarchar2(20),
   user_address          nvarchar2(200),
   user_post_number       nvarchar2(6),
   user_is_admin          number(1)                      default 0,
   user_question         nvarchar2(100),
   user_answer           nvarchar2(100),
   constraint PK_auction_user primary key (user_id)
);
	
comment on table auction_user is
'用户表';

comment on column auction_user.user_id is
'用户编号';

comment on column auction_user.user_name is
'用户名';

comment on column auction_user.user_password is
'用户密码';

comment on column auction_user.user_card_no is
'用户身份证号';

comment on column auction_user.user_tel is
'用户电话';

comment on column auction_user.user_address is
'用户地址';

comment on column auction_user.user_post_number is
'用户邮政编号';

comment on column auction_user.user_is_admin is
'用户是否是管理员，0是竞拍者，1是管理员，默认值是0';

comment on column auction_user.user_question is
'用户找回密码的问题';

comment on column auction_user.user_answer is
'用户找回密码答案';

create table auction_record  (
   id                   number(9)                       not null,
   user_id                number(6),
   auction_id            number(6)                       not null,
   auction_time          TIMESTAMP                      default SYSDATE not null,
   auction_price         number(9,2)                     not null,
   constraint PK_auction_record primary key (id),
   constraint FK_rec_REF_user foreign key (user_id)
   references auction_user (user_id),
   constraint FK_rec_REF_AUC foreign key (auction_id)
   references auction (auction_id)
);

comment on table auction_record is
'竞拍记录';

comment on column auction_record.id is
'竞拍记录编号';

comment on column auction_record.user_id is
'竞拍者编号';

comment on column auction_record.auction_id is
'拍卖品编号';

comment on column auction_record.auction_time is
'竞价时间';

comment on column auction_record.auction_price is
'竞拍价格';


alter user hr account unlock;


select * from auction_user;
select * from auction;

update auction_user set user_is_ADMIN=1
insert into auction values(3,1,1,1,sysdate,sysdate,1,1)

