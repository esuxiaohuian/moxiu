SET NAMES UTF8;
DROP DATABASE IF EXISTS moxiu;
CREATE DATABASE moxiu CHARSET=UTF8;
USE moxiu;

/**网站基本信息表**/
CREATE TABLE mx_site_info(
  ino INT PRIMARY KEY AUTO_INCREMENT,   #主键
  logo VARCHAR(64),		        #图片
  siteName VARCHAR(32),			#网站名
  adminMail VARCHAR(64),		#邮箱
  qqgroup VARCHAR(20),			#QQ群
  webchat VARCHAR(32),			#微信
  weibo VARCHAR(32),			#微博
  icpzheng VARCHAR(64),			#京ICP号
  copyright VARCHAR(64),		#版权
  bjpolice VARCHAR(32),			#京公网安备
  bjicp VARCHAR(32),			#备案号
  address VARCHAR(100),			#公司地址
  jingwangwen VARCHAR(32),		#京网文号
  home VARCHAR(32)			#首页网址
);
INSERT INTO mx_site_info VALUES
(null, 'images/index/logo.png', '魔秀网', '1435832077@qq.com', '415160942','liyun1435832077','魔秀网','京ICP证150474号', '©2015 魔秀','京公网安备 11010502027111号','京ICP备14006571号-1','魔秀科技（北京）股份有限公司 北京市朝阳区双营路6号院1号楼 （86-10）64465918','京网文[2012]0007-006号','index.html');

/**导航条栏目表**/
CREATE TABLE mx_navbar(
  nno INT PRIMARY KEY AUTO_INCREMENT,	#主键
  name VARCHAR(64),			#栏目名
  url VARCHAR(64)			#地址
);
INSERT INTO mx_navbar VALUES
(NULL, '首页','index.html'),
(NULL, '精品主题','jingpin_subject.html'),
(NULL, '制作主题','zhizuo_subject.html'),
(NULL, '精彩展示','wonderful_show.html'),
(NULL, '帮助说明','help.html'),
(NULL, '官方微博','#.html'),
(NULL, '登录','login.html'),
(NULL, '注册','register.html');

/**底部导航条栏目表**/
CREATE TABLE mx_foot_navbar(
  fno INT PRIMARY KEY AUTO_INCREMENT,	#主键
  name VARCHAR(64),			#栏目名
  url VARCHAR(64)			#地址
);
INSERT INTO mx_foot_navbar VALUES
(NULL, '关于魔秀','footer_details.html'),
(NULL, '魔秀合作','footer_details.html'),
(NULL, '招贤纳士','footer_details.html'),
(NULL, '联系我们','footer_details.html'),
(NULL, '版权声明','footer_details.html'),
(NULL, '友情链接','footer_details.html');

/**用户注册表**/
CREATE TABLE mx_register_info(
  uid INT PRIMARY KEY AUTO_INCREMENT,	#主键
  uname VARCHAR(64),			#用户名
  upwd VARCHAR(64),			#用户密码
  umail  VARCHAR(64)			#用户邮箱
);
INSERT INTO mx_register_info VALUES
(null,'aaaaaa','123456','142523@sadfads'),
(null,'bbbbbb','123456','854215@sadfads'),
(null,'cccccc','123456','965820@sadfads'),
(null,'dddddd','123456','458127@sadfads');

/*主题信息*/
CREATE TABLE theme(
    cid INT PRIMARY KEY AUTO_INCREMENT,		#主键
    title VARCHAR(32),				#名称
    sitId INT,					#作者ID
    pic VARCHAR(64),				#主图片
    price FLOAT(8,2),				#价格
    description VARCHAR(1024)			#描述
);
INSERT INTO theme VALUES
(NULL,'你好春天','1','images/img-1.jpg','70.00','描绘春天的美好'),
(NULL,'总会有那么一天','32','images/img-2.jpg','80.00','会有那么一天，我也会放下如今的执着和不舍，带着稍许的遗憾，过着没有你的新生活……'),
(NULL,'去郊游','5','images/img-2.jpg','69.00','去郊游~'),
(NULL,'初恋的味道','1','images/img-2.jpg','69.00','初恋般青涩的味道'),
(NULL,'晚安仙人掌','1','images/img-3.jpg','45.00','晚安仙人掌'),
(NULL,'心若向阳 无惧悲伤','5','images/img-5.jpg','99.00','心若向阳 无惧悲伤');