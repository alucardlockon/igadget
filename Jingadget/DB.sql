drop database if exists jingadget;
create database jingadget;
use jingadget;

drop table if exists t_user;
create table t_user(
id int(8) primary key auto_increment,
name varchar(20) unique,
password varchar(20) not null,
email varchar(30) unique,
isverify int(1) not null,
registdate date not null,
lastlogin date
);

drop table if exists t_news;
create table t_news(
id int(8) primary key auto_increment,
title varchar(100) not null,
image int(8),
minicontent varchar(100),
content varchar(1000),
link varchar(100)
);

drop table if exists t_images;
create table t_images(
id int(8) primary key auto_increment,
uri varchar(100)
);

drop table if exists t_comment;
create table t_comment(
id int(8) primary key auto_increment,
uid int(8) not null,
newsid int(8) not null,
content varchar(300),
rnum int(5) not null,
senddate date
);

#��������
insert into t_user values (1,"jin","123","jin123@126.com",1,20120102,null);
insert into t_user values (null,"jin2","123","jin1232@126.com",0,20120101,null);

insert into t_news values (1,"Windows��KinectSDK����3��18�ŵõ��ش�����������KinectFusion��Interactions",
1,"Microsoft �ո�����վ�� Expand ������� Windows ��� Kinect SDK ����������ʱ��� 3 �� 18 �ŵõ����Ƴ��������ش��������",
"Microsoft �ո�����վ�� Expand ������� Windows ��� Kinect SDK ����������ʱ��� 3 �� 18 �ŵõ����Ƴ��������ش���������������ڽ�̨�ϵ�ʾ���ɼ���������ش�� 1.7 �� SDK �����н������ Kinect Fusion �� Interactions��ǰ�߿�������ʱ�� 3D ģ��ͼ����������������ﶼ���ԣ�Interactions ��Ϊ Kinect SDK �����˺ܶ������Ʋ������ϣ�����������ǰ��Ϊ�������Ķ��������ն������ܹ��������طֱ��λ���ͬʱ���������Ʋ�����Microsoft ����״��� CodePlex ��ԴԴ������վ���� Windows Kinect SDK Դ���뷶��������Ȥ�ľ;������µķ�������",null);
insert into t_news values (null,"Windows��KinectSDK����3��18�ŵõ��ش�����������KinectFusion��Interactions",
1,"Microsoft �ո�����վ�� Expand ������� Windows ��� Kinect SDK ����������ʱ��� 3 �� 18 �ŵõ����Ƴ��������ش��������",
"Microsoft �ո�����վ�� Expand ������� Windows ��� Kinect SDK ����������ʱ��� 3 �� 18 �ŵõ����Ƴ��������ش���������������ڽ�̨�ϵ�ʾ���ɼ���������ش�� 1.7 �� SDK �����н������ Kinect Fusion �� Interactions��ǰ�߿�������ʱ�� 3D ģ��ͼ����������������ﶼ���ԣ�Interactions ��Ϊ Kinect SDK �����˺ܶ������Ʋ������ϣ�����������ǰ��Ϊ�������Ķ��������ն������ܹ��������طֱ��λ���ͬʱ���������Ʋ�����Microsoft ����״��� CodePlex ��ԴԴ������վ���� Windows Kinect SDK Դ���뷶��������Ȥ�ľ;������µķ�������",null);
#ģ��
insert into t_news values (null,
"Windows��KinectSDK����3��18�ŵõ��ش���",
1,
"Microsoft �ո�����վ�� Expand ������� Windows ���",
"Microsoft �ո�����վ�� Expand ������� Windows ��� ",
null);
#������
insert into t_news values (null,
"iOS 6.1.3 ��������Ļ�ֱ�ץ��©����...����Ƶ��",
6,
"iOS 6.1.3 ���£��������˿��������������沢ֱ��ʹ��"�绰"Ӧ�ó���Ĵ��󡹻������ڶ�����ʵ���ÿ���������ֻ��˵��Apple ����ʦ��ϸ�ĳ̶ȣ������ԶԶ���������ѵ�ץ Bug ������������",
"iOS 6.1.3 ���£��������˿��������������沢ֱ��ʹ��"�绰"Ӧ�ó���Ĵ��󡹻������ڶ�����ʵ���ÿ���������ֻ��˵��Apple ����ʦ��ϸ�ĳ̶ȣ������ԶԶ���������ѵ�ץ Bug ����������������С������� iOS �����¸�������Ϊ���������Ѿ���ȫ��ͬʱ��һ������ YouTube ʹ���� VideosdeBarraquito ���ϴ���ӰƬ�����ϴ�����һ�����⡣��֮ǰ�ķ�����ͬ�������͸���������Ʋ��Ų���ץ׼ʱ�����ٵ��˳� SIM ���۵ķ�ʽ���ظ�����֮��iOS ��������ս�ƹ��Ĳ��Žӿڱ��ٶȡ��Ż��󿪡���Ҳ���Խ��ɱ༭�����������˵ķ�ʽ��ȡ���ֻ��������Ƭ��
�� Apple���ٴΡ��������������� Bug ֮ǰ����Ҫ�����״�������ʰ�����Ļ������Կ����ڡ��趨 > һ�㡹�У����������ţ�Voice Dial�����ܹرգ�������ʱ��������ô˷�ʽ�ƹ�������������ȡ�绰����û������ѡ�������Ҳ���û��ţ���������Ʒ�Ӧ���ǳ�����û��֧�� Siri ���ܹ����� iOS 6 �Ļ����ϣ�ӰƬ�е��� iPhone 4 ��ò�� iPhone 3GS Ҳ�б��ƽ�Ļ��᣿��- ���������ʾ���õĲ��� Siri ������ת�Ժ���Թۿ���ϸ��ӰƬʾ����",
null);
insert into t_news values (null,
"Google Keep �ʼǷ�����ҳ���� Android �汾��ʽ���������㡸��ס��ͻ�����������",
5,
"��ʵ���ڼ���ǰ�����Ǳ��Ѿ����� Google �����Ƴ��ʼǷ���������Ϣй¶�������������ֵ��˹ٷ�����ʽ������",
"��ʵ���ڼ���ǰ�����Ǳ��Ѿ����� Google �����Ƴ��ʼǷ���������Ϣй¶�������������ֵ��˹ٷ�����ʽ��������λ�Ѿ������� Google ����ҳ���ҵ��˷��������Լҵ������ж�ϵͳ Android ��ר�� App ��ȻҲ�Ǹ���ͬʱ�Ƴ������� Google Drive �����Ľ��ܣ���θù�˾ϣ�����Խ�˷�����ʹ���߿��Խ�һЩ�뷨���ٵ�ժ�����������ڴ�ŵ��ƶ˿ռ�... ���Ÿ�λӦ�õ�һʱ�����Բµ��˰ɣ�û������ Google Drive��

��Ȼ��Ϊ�ԼҵıʼǷ����廳������������ Google Notebook�������ƶ��豸���û�Ҳ������ Android 4.2.2 �����������ϣ����Ͽ��ٴ�ȡ�����±ʼǵ� Widget С���ߡ�����Ľ��ܿ�������ת֮��Ĺٷ�ӰƬ�п���������������Դֱ�ӵ� Google Keep ���ż�����Դ˷���ͻ���������ĵø��롣С��ո����Ŷ�������һ�£��о������һ���൱��Լ��ɫ�ʣ���ɫ���ḻ�ıʼǷ����أ�������Ŀǰ��ǿ�Ƶ� Evernote �ʼǷ����ܾ����ڹ����ϻ���Ҫ���ļ���࣬Ҳ����������������١���һ�����ʷ��񆪡�",
null);
insert into t_news values (null,
"Gmail ����Ϊ Jelly Bean �û���֪ͨ����ֱ�ӽ��з����ظ�",
4,
"Android �����𣿴� Gmail �Ĳ�����˵��������������ˣ���Ϊ Google ����ո�Ϊ Jelly Bean �汾�� Gmail �ṩ����",
"Android �����𣿴� Gmail �Ĳ�����˵��������������ˣ���Ϊ Google ����ո�Ϊ Jelly Bean �汾�� Gmail �ṩ���£�����������ʽ֪ͨ����ֱ�Ӷ��ʼ����з����ظ��������ܣ����Ƕԡ���������������ʽ�����ʵ�һ�ֻ�Ӧ�����ͬʱ��Ice Cream Sandwich ������ϵͳ���û��������ܸ������Ѱ�ٶȣ��������ѻ���������ϲ����Щ�¹���������ָͷ��ѡ������ͶƱ�ɣ�",
null);
insert into t_news values (null,
"Windows 7 SP1 �Զ����¿�ʼ½�����ͣ��û������Ԥ�Ϳɰ�װ",
3,
"���� 2011 �� 2 �·ݵ�ʱ��΢����Ѿ������� Windows 7 SP1��������ʱ����Ҫ�û��ֶ����¡�",
"���� 2011 �� 2 �·ݵ�ʱ��΢����Ѿ������� Windows 7 SP1��������ʱ����Ҫ�û��ֶ����¡�����Σ�΢��� Windows 7 SP1 �������Զ�ͨ�� Windows Update ��ø��£�����Զ����͹����ڽ���ȥ���ܻ��𲽽��С���װ���̽������û���Ԥ��ʹ�ø��°������ߵ���ҵ�����ܵ�Ӱ�졣�ٷ����� 2013 �� 4 �� 9 ��ֹͣ�� Windows 7 RTM �汾�ṩ����֧�֣������������ SP1���Ϳ���ʹ�����е�ϵͳ�� 2015 �� 1 �� 13 �ա���֪����Ĳ���ϵͳ����ͣ������ʲô�׶Σ����ڼ�� Windows XP ô��",
null);
insert into t_news values (null,
"ST-Ericsson ����ʽ�˳���ʷ��̨��ȫ���Ա 1,600 ��",
2,
"����û�в�ɢ����ϯ����仰���Խ������ ST-Ericsson �������״�������ź��ⷨ�뵼��������˫�����ر��ƶ�оƬ���ʹ�˾�ⷨ-������ ST-Ericsson ������ȫ��Χ�ڲ�Ա��",
"����û�в�ɢ����ϯ����仰���Խ������ ST-Ericsson �������״�������ź��ⷨ�뵼��������˫�����ر��ƶ�оƬ���ʹ�˾�ⷨ-������ ST-Ericsson ������ȫ��Χ�ڲ�Ա�����ʹ�˾�رպ󣬰����Ž����� LTE оƬ������2G��3G �� 4G ��ģ����ơ��з������۷����ҵ��ST ���������в�Ʒ�Լ������װ�Ͳ����豸��ST-Ericsson ʣ��ҵ�񽫻᳹�׹رգ��˳���ʷ��̨��

���⣬���ݹ������ǻ�����ȫ��Χ�ڲ�ԱԼ 1,600 �ˣ�����ŷ�޺�������Ӱ�쵽����Ա�Ƚ϶ࡣ��˾������ 2013 �� 4 �� 1 ���������ⷨ��������ϯ��Ӫ�� Carlo Ferro���ι�˾�ܲü���ϯִ�й١�δ�������̥����֮����¹�˾����ʲô���ı��֣�ֻ����ҵ����˵���ˣ���ͨ�������Ķ��֡�",
null);

insert into t_images values (1,"1.jpg");
insert into t_images values (null,"1.jpg");
insert into t_images values (null,"3.jpg");
insert into t_images values (null,"4.png");
insert into t_images values (null,"6.jpg");

insert into t_comment values (1,1,1,"�Ҳ�1",1,20100112);
insert into t_comment values (null,1,2,"�Ҳ�2",1,20100113);
insert into t_comment values (null,2,1,"�Ҳ�3",1,20100114);
insert into t_comment values (null,1,22,"�Ҳ�4",1,20100113);
insert into t_comment values (null,1,22,"�Ҳ�5",1,20100114);
insert into t_comment values (null,2,22,"�Ҳ�6",1,20100113);
insert into t_comment values (null,2,21,"�Ҳ�7",1,20100114);
insert into t_comment values (null,1,23,"�Ҳ�8",1,20100113);
insert into t_comment values (null,2,23,"�Ҳ�9",2,20100114);
