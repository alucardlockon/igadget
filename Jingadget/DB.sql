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

#测试数据
insert into t_user values (1,"jin","123","jin123@126.com",1,20120102,null);
insert into t_user values (null,"jin2","123","jin1232@126.com",0,20120101,null);

insert into t_news values (1,"Windows版KinectSDK将在3月18号得到重大升级，加入KinectFusion和Interactions",
1,"Microsoft 刚刚在主站的 Expand 活动上宣布 Windows 版的 Kinect SDK 将会在美国时间的 3 月 18 号得到自推出以来最重大的升级。",
"Microsoft 刚刚在主站的 Expand 活动上宣布 Windows 版的 Kinect SDK 将会在美国时间的 3 月 18 号得到自推出以来最重大的升级。据他们在讲台上的示范可见，在这个重大的 1.7 版 SDK 升级中将会加入 Kinect Fusion 和 Interactions，前者可制作即时的 3D 模拟图像，无论是人物和死物都可以；Interactions 则为 Kinect SDK 加入了很多新手势操作辨认，包括以手推前作为「按」的动作、手握东西和能够更聪明地分辨多位玩家同时做出的手势操作。Microsoft 亦会首次在 CodePlex 开源源代码网站加入 Windows Kinect SDK 源代码范本。有兴趣的就静待更新的发布啦。",null);
insert into t_news values (null,"Windows版KinectSDK将在3月18号得到重大升级，加入KinectFusion和Interactions",
1,"Microsoft 刚刚在主站的 Expand 活动上宣布 Windows 版的 Kinect SDK 将会在美国时间的 3 月 18 号得到自推出以来最重大的升级。",
"Microsoft 刚刚在主站的 Expand 活动上宣布 Windows 版的 Kinect SDK 将会在美国时间的 3 月 18 号得到自推出以来最重大的升级。据他们在讲台上的示范可见，在这个重大的 1.7 版 SDK 升级中将会加入 Kinect Fusion 和 Interactions，前者可制作即时的 3D 模拟图像，无论是人物和死物都可以；Interactions 则为 Kinect SDK 加入了很多新手势操作辨认，包括以手推前作为「按」的动作、手握东西和能够更聪明地分辨多位玩家同时做出的手势操作。Microsoft 亦会首次在 CodePlex 开源源代码网站加入 Windows Kinect SDK 源代码范本。有兴趣的就静待更新的发布啦。",null);
#模版
insert into t_news values (null,
"Windows版KinectSDK将在3月18号得到重大升",
1,
"Microsoft 刚刚在主站的 Expand 活动上宣布 Windows 版的",
"Microsoft 刚刚在主站的 Expand 活动上宣布 Windows 版的 ",
null);
#新数据
insert into t_news values (null,
"iOS 6.1.3 的锁定屏幕又被抓到漏洞了...（视频）",
6,
"iOS 6.1.3 更新：「修正了可跳过密码锁画面并直接使用"电话"应用程序的错误」还犹言在耳（其实是用看的啦），只能说，Apple 工程师的细心程度，真的是远远不敌众网友的抓 Bug 能力啊啊啊。",
"iOS 6.1.3 更新：「修正了可跳过密码锁画面并直接使用"电话"应用程序的错误」还犹言在耳（其实是用看的啦），只能说，Apple 工程师的细心程度，真的是远远不敌众网友的抓 Bug 能力啊啊啊。就在小编更新完 iOS 的最新更新自以为锁定画面已经安全的同时，一个来自 YouTube 使用者 VideosdeBarraquito 所上传的影片，马上打了我一个耳光。与之前的方法不同，这次他透过语音控制播号并且抓准时机快速地退出 SIM 卡槽的方式，重复几次之后，iOS 常常被挑战绕过的播号接口便再度「门户大开」，也可以藉由编辑或新增联络人的方式存取到手机里面的照片。
在 Apple「再次」提出更新修正这个 Bug 之前，想要避免此状况引发资安问题的话，可以考虑在「设定 > 一般」中，将语音拨号（Voice Dial）功能关闭，便能暂时避免别人用此方式绕过你的锁定画面存取电话簿。没看到此选项的朋友也不用慌张，看来这个绕法应该是出现在没有支持 Siri 又能够升到 iOS 6 的机型上（影片中的是 iPhone 4 但貌似 iPhone 3GS 也有被破解的机会？）- 至少这里的示范用的不是 Siri 啦。跳转以后可以观看详细的影片示范。",
null);
insert into t_news values (null,
"Google Keep 笔记服务网页版与 Android 版本正式发布，帮你「留住」突如其来的灵感",
5,
"其实早在几天前，我们便已经看到 Google 打算推出笔记服务的相关消息泄露，而今天则是轮到了官方的正式发布。",
"其实早在几天前，我们便已经看到 Google 打算推出笔记服务的相关消息泄露，而今天则是轮到了官方的正式发布。各位已经可以在 Google 的网页上找到此服务，至于自家的招牌行动系统 Android 的专属 App 自然也是跟着同时推出。根据 Google Drive 部落格的介绍，这次该公司希望可以藉此服务，让使用者可以将一些想法快速地摘记下来，至于存放的云端空间... 相信各位应该第一时间便可以猜到了吧？没错，就是 Google Drive。

既然身为自家的笔记服务（缅怀当初被砍掉的 Google Notebook），在移动设备的用户也可以在 Android 4.2.2 的锁定画面上，加上快速存取创建新笔记的 Widget 小工具。更多的介绍可以在跳转之后的官方影片中看到，或点击引用来源直接到 Google Keep 试着记下你对此服务突如其来的心得感想。小编刚刚试着动手玩了一下，感觉真的是一个相当简约且色彩（底色）丰富的笔记服务呢！但比起目前最强势的 Evernote 笔记服务，总觉得在功能上还是要来的简单许多，也许真的是主攻「快速」的一套新鲜服务啰。",
null);
insert into t_news values (null,
"Gmail 更新为 Jelly Bean 用户在通知栏上直接进行封存与回复",
4,
"Android 好用吗？从 Gmail 的层面来说真的愈来愈好用了！因为 Google 大神刚刚为 Jelly Bean 版本的 Gmail 提供更新",
"Android 好用吗？从 Gmail 的层面来说真的愈来愈好用了！因为 Google 大神刚刚为 Jelly Bean 版本的 Gmail 提供更新，让你在下拉式通知栏上直接对邮件进行封存与回复这两大功能，算是对「无眼睇」或「聊天式」电邮的一种回应。与此同时，Ice Cream Sandwich 或以上系统的用户将能享受更快的搜寻速度（在线与脱机），你有喜欢这些新功能吗？用手指头点选更新来投票吧！",
null);
insert into t_news values (null,
"Windows 7 SP1 自动更新开始陆续推送，用户无需干预就可安装",
3,
"早在 2011 年 2 月份的时候，微软就已经发布了 Windows 7 SP1，不过那时候都需要用户手动更新。",
"早在 2011 年 2 月份的时候，微软就已经发布了 Windows 7 SP1，不过那时候都需要用户手动更新。而这次，微软的 Windows 7 SP1 将可以自动通过 Windows Update 获得更新，这个自动推送工作在接下去几周会逐步进行。安装过程将无须用户干预，使用更新包管理工具的企业不会受到影响。官方会在 2013 年 4 月 9 日停止对 Windows 7 RTM 版本提供技术支持，如果你升级到 SP1，就可以使用现有的系统到 2015 年 1 月 13 日。不知道你的操作系统现在停留在了什么阶段，还在坚持 Windows XP 么？",
null);
insert into t_news values (null,
"ST-Ericsson 将正式退出历史舞台，全球裁员 1,600 人",
2,
"天下没有不散的宴席，这句话可以借来描绘 ST-Ericsson 今天的现状。爱立信和意法半导体宣布，双方将关闭移动芯片合资公司意法-爱立信 ST-Ericsson ，并在全球范围内裁员。",
"天下没有不散的宴席，这句话可以借来描绘 ST-Ericsson 今天的现状。爱立信和意法半导体宣布，双方将关闭移动芯片合资公司意法-爱立信 ST-Ericsson ，并在全球范围内裁员。合资公司关闭后，爱立信将接手 LTE 芯片（包括2G、3G 和 4G 多模）设计、研发和销售方面的业务，ST 则会接手现有产品以及相关组装和测试设备，ST-Ericsson 剩余业务将会彻底关闭，退出历史舞台。

另外，根据公告他们还会在全球范围内裁员约 1,600 人，其中欧洲和瑞典地区影响到的人员比较多。公司宣布自 2013 年 4 月 1 日起，现任意法爱立信首席运营官 Carlo Ferro出任公司总裁兼首席执行官。未来这个脱胎换骨之后的新公司会有什么样的表现，只能用业绩来说话了，高通是其最大的对手。",
null);

insert into t_images values (1,"1.jpg");
insert into t_images values (null,"1.jpg");
insert into t_images values (null,"3.jpg");
insert into t_images values (null,"4.png");
insert into t_images values (null,"6.jpg");

insert into t_comment values (1,1,1,"我擦1",1,20100112);
insert into t_comment values (null,1,2,"我擦2",1,20100113);
insert into t_comment values (null,2,1,"我擦3",1,20100114);
insert into t_comment values (null,1,22,"我擦4",1,20100113);
insert into t_comment values (null,1,22,"我擦5",1,20100114);
insert into t_comment values (null,2,22,"我擦6",1,20100113);
insert into t_comment values (null,2,21,"我擦7",1,20100114);
insert into t_comment values (null,1,23,"我擦8",1,20100113);
insert into t_comment values (null,2,23,"我擦9",2,20100114);
