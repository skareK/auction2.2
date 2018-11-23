--1:������ռ�
CREATE TABLESPACE tbs_auction
DATAFILE 'e:\auctiondb.dbf'
SIZE 100m;
--2:�����û�
CREATE USER auction IDENTIFIED BY zpark
DEFAULT TABLESPACE tbs_auction;
--3:����Ȩ��
GRANT CONNECT,RESOURCE TO auction;

---



--4:������
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

comment on table auction is '����Ʒ';

comment on column auction.auction_id is '����Ʒ���';

comment on column auction.auction_name is
'����Ʒ����';

comment on column auction.auction_start_price is
'����Ʒ���ļ�';

comment on column auction.auction_upset is
'����Ʒ�׼�';

comment on column auction.auction_start_time is
'����Ʒ������ʼʱ��';

comment on column auction.auction_end_time is
'����Ʒ��������ʱ��';

comment on column auction.auction_pic is
'����ƷͼƬ';

comment on column auction.auction_desc is
'����Ʒ����';

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
'�û���';

comment on column auction_user.user_id is
'�û����';

comment on column auction_user.user_name is
'�û���';

comment on column auction_user.user_password is
'�û�����';

comment on column auction_user.user_card_no is
'�û����֤��';

comment on column auction_user.user_tel is
'�û��绰';

comment on column auction_user.user_address is
'�û���ַ';

comment on column auction_user.user_post_number is
'�û��������';

comment on column auction_user.user_is_admin is
'�û��Ƿ��ǹ���Ա��0�Ǿ����ߣ�1�ǹ���Ա��Ĭ��ֵ��0';

comment on column auction_user.user_question is
'�û��һ����������';

comment on column auction_user.user_answer is
'�û��һ������';

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
'���ļ�¼';

comment on column auction_record.id is
'���ļ�¼���';

comment on column auction_record.user_id is
'�����߱��';

comment on column auction_record.auction_id is
'����Ʒ���';

comment on column auction_record.auction_time is
'����ʱ��';

comment on column auction_record.auction_price is
'���ļ۸�';


alter user hr account unlock;


select * from auction_user;
select * from auction;

update auction_user set user_is_ADMIN=1
insert into auction values(3,1,1,1,sysdate,sysdate,1,1)

