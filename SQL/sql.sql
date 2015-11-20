##########################mysql5.0############################

#ע�����йؼ��־�ʹ��Сд
#�������ݿ�express
create database express
	character set 'utf8'
	collate 'utf8_general_ci';
use express;

###�����û���###
create table users (
	id bigint primary key, #�û�ID��ѧ��
	username varchar(50),#�û���
	password varchar(20) not null,#����
	id_card varchar(20) not null,#�����֤����
	department varchar(20) not null,#����
	tel bigint, #���ֻ�����
	email varchar(50), #������
	honor varchar(20), #���ü���
	get_times int, #ȡ������
	permission int default 0 #�û�Ȩ�ޣ�0������ͨ�û���1�������Ա
);

###������ݱ�###
create table express_items (
	id int auto_increment primary key,#������������
	p_id bigint not null, #�û�ID��ѧ��
	g_id bigint, #�ӵ�ID,ѧ��
	express_id varchar(20), #��ݵ���
	express_name varchar(20) not null, #��ݹ�˾����
	get_address varchar(50), #ȡ����ַ
	tel bigint not null, #Ԥ���绰����
	get_number int not null, #ȡ������
	send_address varchar(50), #������ַ
	remark varchar(50) not null, #��ע����д��Ʒ��Ϣ��������ϸ��
	money int, #���þ�ȷ��1Ԫ
	get_time date, #�ӵ��߽ӵ�ʱ��
	isfinished int default 0, #�Ƿ����
	isfailed int default 0, #�õ��Ƿ�����
	foreign key(p_id) references users(id),
	foreign key(g_id) references users(id)
);

###��ݹ�˾�����ֵ�###
create table express_names (
	express_name varchar(20)
);

###���������ֵ�####
create table departments (
	department_name varchar(50) #���ң�����ʮ��
);
###�������###
create table express_outlets (
	outlets_name varchar(50) #�����������
);

##�������ݣ�����Ա
insert into users (id,username,password,id_card,department,tel,email,honor,get_times,permission) 
values (1571038, '����', 'xzk', '21102219920513511X', 'ʮ��', 13234040959, 'xuzhenkang@hotmail.com', '��˵', 0, 1);
insert into users (id,username,password,id_card,department,tel,email,honor,get_times,permission) 
values (1571036, '������', 'xbz', '211022199205135113', 'ʮ��', 13234040958, 'xinbingzhe@hotmail.com', '��˵', 0, 1);
insert into users (id,username,password,id_card,department,tel,email,honor,get_times,permission) 
values (1571032, '������', 'wzz', '211022199205135110', 'ʮ��', 18842564379, 'wangzezhong@hotmail.com', '��˵', 0, 1);
##�������ݣ�ѧ��
insert into users (id,username,password,id_card,department,tel,email,honor,get_times,permission) 
values (1571034, 'ɧ����', 'sbl', '211022199205135116', 'ʮ��', 18842564379, 'saobiliang@hotmail.com', 'ɧ��', 0, 0);


##�������������ֵ�����##
insert into departments(department_name) values ('һ��');
insert into departments(department_name) values ('����');
insert into departments(department_name) values ('����');
insert into departments(department_name) values ('����');
insert into departments(department_name) values ('����');
insert into departments(department_name) values ('����');
insert into departments(department_name) values ('����');
insert into departments(department_name) values ('����');
insert into departments(department_name) values ('����');
insert into departments(department_name) values ('ʮ��');

##��������������
insert into express_outlets(outlets_name) values ('���ݵ꣨���ţ�');
insert into express_outlets(outlets_name) values ('֪��¥��');
insert into express_outlets(outlets_name) values ('С����');
insert into express_outlets(outlets_name) values ('����¥���¾�����');
insert into express_outlets(outlets_name) values ('С����');
