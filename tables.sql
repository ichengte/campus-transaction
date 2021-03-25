create table tony_goods(
    gid number(8) primary key not null,
    title varchar2(10),
    publish_time date,
    content varchar2(4000),
    buy_price float(2),
    sell_price float(2),
    picture varchar2(128),
    views number(10),
    status number(1),
    cid number(8),
    uuid number(8)
);
create table tony_user(
    uuid number(8)primary key not null,
    username varchar2(16),
    userpwd varchar2(16),
    name varchar2(10),
    sex varchar2(2) constraint user_check_sex check(sex in('男', '女')),
    academy varchar2(10),
    grade varchar2(10),
    qq varchar2(10),
    phone varchar2(11),
    profile varchar2(128)
);
insert into tony_user values(10000, 'jct', 'jct', 'Tony', '男', '软件学院', '2018级', '52051345', '17607058929', 'jct.jpg');
insert into tony_user values(10001, '1', '1', 'Tony', '男', '软件学院', '2018级', '52051345', '17607058929', 'jct1.jpg');

select * from  tony_user;

create table tony_admin(
    aid number(8) primary key not null,
    adminname varchar2(16),
    adminpwd varchar2(16),
    name varchar2(10),
    phone number(11)
);
create table tony_message(
    mid number(8)primary key not null,
    content varchar2(4000),
    goods_id number(8)
);
create table tony_category(
    cid number(8)primary key not null,
    name varchar2(10)
);
create table tony_collection(
    cid number(8)primary key not null,
    gid number(8),
    uuid number(8)
);
create table tony_wanted(
    id number(8) primary key not null,
    content varchar2(4000),
    uuid number(8),
    cid number(8)
);



-- tonyadmin
create sequence tony_admin_seq 
increment by 1 
start with 1 
nomaxvalue 
nominvalue 
nocache;


create or replace trigger tony_admin_seq  
before insert on TONY_ADMIN for each row 
begin 
	select tony_admin_seq.nextval into :new.aid from dual; 
end;

-- tony_user
create sequence tony_user_seq 
increment by 1 
start with 1 
nomaxvalue 
nominvalue 
nocache;


create or replace trigger tony_user_seq  
before insert on TONY_USER for each row 
begin 
	select tony_user_seq.nextval into :new.uuid from dual; 
end;

-- tony_category
create sequence tony_category_seq 
increment by 1 
start with 1 
nomaxvalue 
nominvalue 
nocache;


create or replace trigger tony_category_seq  
before insert on tony_category for each row 
begin 
	select tony_category_seq.nextval into :new.cid from dual; 
end;

-- tony_collection
create sequence tony_collection_seq 
increment by 1 
start with 1 
nomaxvalue 
nominvalue 
nocache;


create or replace trigger tony_collection_seq  
before insert on tony_collection for each row 
begin 
	select tony_collection_seq.nextval into :new.cid from dual; 
end;


-- tony_goods
create sequence tony_goods_seq 
increment by 1 
start with 1 
nomaxvalue 
nominvalue 
nocache;


create or replace trigger tony_goods_seq  
before insert on tony_goods for each row 
begin 
	select tony_goods_seq.nextval into :new.gid from dual; 
end;

-- tony_message
create sequence tony_message_seq 
increment by 1 
start with 1 
nomaxvalue 
nominvalue 
nocache;


create or replace trigger tony_message_seq  
before insert on tony_message for each row 
begin 
	select tony_message_seq.nextval into :new.mid from dual; 
end;

-- tony_wanted
create sequence tony_wanted_seq 
increment by 1 
start with 1 
nomaxvalue 
nominvalue 
nocache;


create or replace trigger tony_wanted_seq  
before insert on tony_wanted for each row 
begin 
	select tony_wanted_seq.nextval into :new.wid from dual; 
end;



insert into tony_admin(adminname, adminpwd, name, phone) values('jct1', 'jct', 'Tony','17607058929');
insert into tony_admin(adminname, adminpwd, name, phone) values('jct2', 'jct', 'Tony','17607058929');

SELECT * from TONY_ADMIN

alter table tony_admin add constraint adminname_uniq unique (adminname);
alter table tony_user add constraint username_uniq unique (username);






select * from TONY_GOODS;

