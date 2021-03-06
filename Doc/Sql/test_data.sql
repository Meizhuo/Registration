-- MySQL dump 10.13  Distrib 5.5.40, for debian-linux-gnu (x86_64)
--
-- Host: 10.9.1.188    Database: cf_649cd643_5ce5_4641_8542_80485ce1fe52
-- ------------------------------------------------------
-- Server version	5.6.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `enroll_admin`
--

DROP TABLE IF EXISTS `enroll_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enroll_admin` (
  `id` int(4) NOT NULL AUTO_INCREMENT COMMENT 'id标识号',
  `username` varchar(31) NOT NULL COMMENT '用户名',
  `password` varchar(127) NOT NULL,
  `create_time` varchar(16) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='管理员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enroll_admin`
--

LOCK TABLES `enroll_admin` WRITE;
/*!40000 ALTER TABLE `enroll_admin` DISABLE KEYS */;
INSERT INTO `enroll_admin` VALUES (1,'zjien1','e10adc3949ba59abbe56e057f20f883e','1418475389'),(2,'meizhuo','ff63abf3f70e050e64cd4a66a2c6ae44','1418479236');
/*!40000 ALTER TABLE `enroll_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enroll_department`
--

DROP TABLE IF EXISTS `enroll_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enroll_department` (
  `id` int(4) NOT NULL AUTO_INCREMENT COMMENT '部门id标识号',
  `department` varchar(32) NOT NULL COMMENT '部门名字',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='部门表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enroll_department`
--

LOCK TABLES `enroll_department` WRITE;
/*!40000 ALTER TABLE `enroll_department` DISABLE KEYS */;
INSERT INTO `enroll_department` VALUES (1,'移动组'),(2,'Web组'),(3,'美工组');
/*!40000 ALTER TABLE `enroll_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enroll_roster`
--

DROP TABLE IF EXISTS `enroll_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enroll_roster` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id标识号',
  `student_id` varchar(16) NOT NULL COMMENT '学号',
  `name` varchar(32) NOT NULL COMMENT '姓名',
  `major` varchar(128) NOT NULL COMMENT '专业',
  `grade` varchar(8) NOT NULL COMMENT '年级',
  `phone` varchar(32) NOT NULL COMMENT '电话',
  `department` int(4) NOT NULL COMMENT '意向部门',
  `intro` text COMMENT '简介',
  `status` int(4) NOT NULL DEFAULT '1' COMMENT '审核状态(1等待2通过3不通过)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COMMENT='报名名单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enroll_roster`
--

LOCK TABLES `enroll_roster` WRITE;
/*!40000 ALTER TABLE `enroll_roster` DISABLE KEYS */;
INSERT INTO `enroll_roster` VALUES (1,'3112002722','唐杰英','计算科学','大一','662354',2,'我要代码狗！！！！',3),(2,'3112002855','黄振炼','网络工程','大一','15088132444/672444',2,'哈哈~',2),(3,'是的飞洒的','是的飞洒发',' 的飞洒','大一',' 十大法师',1,'啊是的飞洒的撒地方收到的规范',3),(4,'3114002642','陈岳峰','通信工程（计算机通信网络）','大一','18219111549/681549',2,'开学初师兄有介绍给我W3C，了解了下颇有兴趣。目前再努力学C，希望能做网页方面的或者软件，当然能学多点更好。勤奋上进是最重要的。',1),(5,'3114002531','简坚维','计算机科学与技术','大一','18520190497',1,'有C语言基础，有PS基础，想向安卓开发方向发展，',1),(6,'3114002500','于金鹏','计算机科学与基础','大一','18219111693 6716933',1,'作为一名计算机学院的学生，我对这个专业有极大的兴趣，虽然现在只是学习了C，但是我相信进入的袂卓之后我会学习到更多专业知识，让自己的大学生活更加有意义。',3),(7,'3114002524','冯健伟','计算机科学与技术','大一','13066243042',1,'我是一名计算机学院的学生，对C语言有一定的了解，希望能加入到袂卓工作室，学到更多的专业知识。',1),(8,'3114002483','廖高强','计算机科学与技术','大一','661710',3,'性别男，没有什么特别牛逼的技术。我认为一个漂亮的外观是吸引用户的一大因素。所以做好外观非常重要，所以美工必不可少[微笑]',1),(9,'3114002483','廖高强','计算机科学与技术','大一','661710',3,'性别男，没有什么特别牛逼的技术。我认为一个漂亮的外观是吸引用户的一大因素。所以做好外观非常重要，所以美工必不可少[微笑]',1),(10,'3114002500','于金鹏','计算机科学与技术','大一','18219111693 671693',1,'作为一名计算机学院的学生，我对这个专业有很大的兴趣，虽然现在才只学了C，但是我相信加入袂卓工作室会让我学到更多专业知识，能让我的大学生活更有意义。',2),(11,'3214001376','赖佩雯','电子商务','大一','672835',3,'跟着小邹邹混，有饭吃~~~其实我很想去移动客户端那边的，不过不懂那块，还是乖乖学ps，ai，cd吧。。。。',1),(12,'3114004308','王磊','电子信息工程（信息安全）','大一','18219114373/684373',1,'  我来自山西大同，现在就读于计算机学院，现状在学习c语言，自己也看了一些关于html的知识。但是技术不行，但是我在学，有信心成为一个大神似得人物，袂卓工作室是五邑大学的佼佼者，也是一个得力的平台，我希望有机会和大家共同学习，共同进步。',1),(13,'3114002429','郑永金','电子信息工程（信息安全）','大一','661764',1,'  我是零基础进入计算机学院，但通过这阵子对c语言的学习，我已充分感受到编程的魅力，我喜欢成功敲出每一道题目的感觉，我喜欢豁然开朗的感觉，但我知这远远不够，通过过对软件设计大赛观看，我想能有更多机会学习，我想能开发出属于我的软件，我想进入魅卓工作室学习，接受师兄师姐们的指点，我承诺我的学习热情不会只是三分钟，因为我是一个具有责任心，极度认真的人。所以，我来了。',1),(14,'3114002491','莫威均','计算机科学与技术','大一','18219111702/691702',1,'我叫莫威均，来自广东肇庆。在软件设计大赛上看着袂卓拿奖，我深深领略到袂卓的实力，当初选择计算机专业就是想做一个出色的编程人员，都说编程好无聊，其实当我真正投入进去的时候，发现真的不是这样，对于目前所学的C语言，我享受每一道被我成功编程后的题，我喜欢那种通过自己努力而获得的成就感，然而，我时常会遇到困难，因为我真的不是天才，但我相信勤能补拙。袂卓浓厚的学习气氛令我向往，她能提供我一个独特的发展道路，但是，编程不是一个人的编程，它需要一个团队，一些灵感碰撞的火花，所以我选择加入袂卓',1),(15,'3114001437','吴嘉乐','电子商务','大一','13726182275/672275',1,'从进入大学，听闻袂卓工作室的存在开始，我就梦想自己能成为其中的一员。可以说我对意向的三个部门都非常感兴趣，ps、网站建设我都接触过，但没有深入的研究。相比前面俩，我更喜欢Android的开发，对这方面有更大的兴趣。虽然目前还没有这方面的技术，但我觉凭借我的兴趣，好学，聪明才智这些都难不倒我，即使不能进入工作室，我也希望结识几个高手，一起交流学习。',1),(16,'3114002521','陈君武','计算机科学与技术','大一','18219111672/661672',1,'对于数学的热爱，我选择了这个专业，其实我本身对于计算机没有太多深入了解，而且我更倾向于想要了解计算机科学家在理论领域的突破。或许你会问我，既然热爱数学为什么不选择数学系，可以说其实高中我们就接触到算法思想熏陶，我那时就觉得很神奇，强悍的逻辑思维让人折服，还有就是我比较喜欢逻辑这东西，于是我想见识一下计算机领域的世界，我知道这个领域人都想要寻求人工智能的算法，可以让计算机进行深度学习，对于这个我也是很好奇如何建立数学模型去模拟一个人的思维。回归实际，对于只是从事计算机应用开发方面，专业知识理解甚少，但我相信有一样东西大家都知道但也容易被忽略——理念。理念，依我之见即是想法，开发我觉得一个应用需要的是想法，技术方面的层面其实都不用过于担心，有技术的人大有人在，可是想法却不是人人都有，只有好的想法才能开发出好的应用，毕竟用户体验到的不是你的技术，而是应用的实用性，这些都源于你的想法。所以，从事开发应用，我觉得要捕捉到市场需求，即用户的需求，来进行开发，不然再牛B的技术用错了地方也是无用功。',1),(17,'3214000737','吕岸红','商务英语','大一','673854/13431753854/13242483165',3,'我很少接触电脑，不是很懂电脑知识！想要学习美工！',1),(18,'3114004049','蔡鸿宇','信息管理与信息系统','大一','18219114634/664634',2,'你想了解什么？我私聊给你',1),(19,'3214000903','梁紫娟','产品设计','大一','613315',3,'我很喜欢画画和设计，对于诀卓工作室，我想加入创意美工小组，感觉跟自己的专业有所相符，同时想训练一下自己的能力。对于设计我很感兴趣。要是今后能进入到诀卓这个大家庭，我一定会认真，负责对待每一次锻炼，力求做到最好。',1),(20,'3114002643','邓伟恒','计算机通信网络公程','大一','671548',1,'虽然我现在只会一些基本的c语言语法和简单的编程，但我数学功底比较好(高中时曾获得国家数学竞赛广东省一等奖)逻辑推理和空间想象能力较强，有无限的灵感和创意。我相信，凭着我的努力、潜力和毅力，我一定能在IT行业里有所作为的！\n在此，我恳切的希望学长们能收师弟我为徒，给予我一个提高和展现自我的平台，师弟不胜感激！！！',1),(21,'3114002486','刘邦兴','计算机科学与技术','大一','18219111707/661707',1,'个人性格有点宅，喜欢电脑及有关的一切，对之很有热情。暑假开始接触C语言，到现在上课所学的C，不是太有技术，只会一点点，但我想学习，希望袂卓工作室能给我一个机会。',1),(22,'3114003797','芮建新','电子商务','大一','664889',1,'可能我并不太了解袂卓工作室，但当我第一次听到它时，就已经深深被它所吸引，想到我能在这里跟大家一起学习关于软件开发，网站建设的事情，心中不免有一些激动，这或许是因为我本身就对软件开发有着浓厚的兴趣吧，一直想探索在那些强大的软件后面的秘密。记得刚来时，我还是一个比较腼腆的男生，但现在我已经很放的开了，相信现在的我能为它贡献出一份自己的力量，也或许，我懂得不是太多，但我会用心做好。',1),(23,'3114002636','蔡广鹏','通信工程（计算机网络通信）','大一','18219111556/671556',2,'零基础，刚接触c语言',1),(24,'3214001416','郑静','电子商务','大一','18219112795/682795',3,'作为电商的娃没有去面试电商协会现在已经后悔莫及了，我真的很希望能进到袂桌工作室，能学到各方面的知识，并能认识一个有着同样想法以及目标的团队。',1),(25,'3114001436','谭耀龙','电子商务','大一','15815735915/675915',1,'虽然来自电子商务专业，但自小想成为一名程序员，对这方面很有兴趣。现为电协技术部的一员，正在学习html,css,javascript，但希望向软件开发方面发展，希望能与一群志同道合的人共同学习成长。不过个人认为自己有点懒惰，需要一个良好的学习氛围来约束自己。',1),(26,'3114004066','贺光耀','通信工程（计算机通信方向）','大一','18816739717/669717',2,'大学之前没机会学编程，但是真心喜欢学习计算机方面的知识，所以选专业选的全是这方面的专业。以前一直做班干，学会了维护团队的稳定和谐。能用心做好自己的事情。做事积极，好学新东西。非常非常的想加入你们。给个机会我吧。亲！',1),(27,'3214001385','林锦銮','电子商务','大一','692826',1,'我对电脑软件这类很感兴趣，不过我没什么基础。以前只是学过一点简单的PS知识。我是一个比较有耐心，肯努力，肯学习的人。我对喜欢的事情总是会坚持下去。我的部门没有很多事情，有比较多的时间。我很渴望学习有关软件之类的知识，希望能给我一个机会去学习。谢谢～',1),(28,'3124001376','赖佩雯','电子商务','大一','672835',1,'其实我擅长的是ps，不过对app的制作很有想法，也有意愿加入移动组~',1),(29,'3114002467','邓竣升','计算机科学与技术','大一','691726',1,'在初三的时候，我拥有了我的第一步智能手机，一部单核500mhz运行安卓2.1的手机。那时我还不知道流量是什么，wifi也不知道是用来干什么的，十分困惑飞行模式为什么可以飞。也只是在拿到手机之后也才知道，这部手机没有键盘，触屏不是用尖尖的东西去戳，只要用手指轻轻一点。里面可以免费的下载一大堆的软件，能做各种各样的事情，玩到很多很多的游戏。后来，我才知道，原来这是一部智能手机，那时iphone 4刚刚兴起。接着，我把手机设置里的各种东西都试了个遍，知道设置里面有应用管理，有账户管理，可以设置语言，铃声……也终于知道每次连接电脑360手机助手要求打开的usb调试在哪里，无意中，我还发现了隐藏在安卓版本的彩蛋。这时，我开始疯狂的下载应用，游戏，几乎把榜单上的每个应用都试了个遍，认识了uc，认识了一直用到现在的天天动听，玩过愤怒的小鸟，水果忍者，发现了有趣的谷歌星空，让我惊讶的gps测速软件，强大的es文件管理器……\n慢慢地，下载应用软件已经不再能满足我的好奇心了，我便想开始刷机，接着我就遇到了刷机精灵，开始了我的刷机旅途。我把我的2.1系统升级到了2.2。在2.2系统中，我发现我能够把安装在手机内存的软件移到sd卡中。接着，我又刷了2.3.7系统。后来，出了4.0，我又升到了4.0。这时，安卓系统开始了质的飞跃，不管从界面的变化还是从众多新功能的加入来看，可是只可惜我128m的ram实在跑不起，没到2分钟就死机重启，我才不得已换回了2.3.7。再后来，我买了一部新手机，预装的是MIUI 4 基于安卓4.1jellybean系统，才发现4.1比4.0又改善了许多。接着4.2，4.3，4.4 kitkat，直到现在在用的5.0 lollipop还有许多第三方定制的rom，像V5，乐蛙，百度云，锤子，阿里云，colorOS，IUNI OS，cm，魔趣，MIUI 6……一直让我惊喜不断。\n在此期间，我发现了翻墙软件fq……2，他帮助开启了墙外的世界，让我有机会了解到伟大的谷歌，体验到了强大的谷歌NOW，简洁完美的google map，高效的google calendar，当然，最让我着迷的还是google camera中的photo sphere。当然，开始的时候网速还是可以的，能流畅的看youtube，不过随着近来几年的翻墙知识的普及，速度渐渐就不行了。为了更好的体验墙外的世界，我开始研究新的翻墙方法，接着，我就发现了goagent~虽然，翻墙出去大部分是英文的内容，可是也让我体验了极多的应用，极大的开阔了我的视野。\n近些日子，我开始上知乎。在此之前，因为高考要积累素材的原因，我不得不每天抽点时间看新闻。然后，我看到了网易，接着彻底被里面的犀利的评论征服。积累素材已经不再是我看新闻的理由。在网易新闻里，我看到了每天世界上发生的大事小事，也多多少少的知道最近各大科技公司的一点点动向。也正是在网易里面，我逐步逐步的看清了世事，体味到了人情事故，世事沧桑还有权势。原本我是每天必定用一个小时左右泡在网易评论里面的，只可惜近来政府管得越来越严格，删帖超严重，以至评论区里只剩下威武，有希望……所以我就把阵地转移到了知乎，希望知乎能给我带来更多的思想，更多的知识，填补我无知的脑袋，赶走宿舍里那些唉声叹气和打游戏发出愚昧的傻叫和fuck在我头脑徘徊！\n好吧，先写这么多了，12:00了，真的很希望能进入工作室，带我飞，谢谢',1),(30,'3114002489','罗珠宝','计算机科学与技术','大一','671704',1,'马虎，大意，希望能一丝不苟（目前失败进行时）。急功近利，希望事情能马上做出效果。情绪太正常没有热情抱歉。基础零。以上，完毕。',1),(31,'1','1','1','大一','1',2,'1',3),(32,'3114002633','郑俊杰','网络工程','大一','18219111559    661559',2,'真心喜欢编程，一直希望能将程序玩弄于股掌之间',1),(33,'3114002505','张继城','计算机科学与技术','大一','13059317550',1,'我，没太多技术，没太多出众的能力，毕竟是应试出来的。但，即使是这样，我并不认为我没有特长，我的特长就是自己有一个积极的心。不知你们可否想过，一个宿舍3个人都天天打游戏，天天沉沦，甚至整个周围宿舍都这样…觉得自己受够了，自己真的需要能够鞭策自己的那些人或者组织，我想，那可能就是你们。在大学期间，我都是和大专的同届某同学联系很近，他能够给我危机感，鞭策我，当我听到他在这个星期向腾讯提交一个中危漏洞，并有可能有效利用开发新的攻击方式…当我听到他还打算寒假前到广州考CCNA，思科认证网络工程师，并且补回专业英语后去考CCIP ，思科认证资深互联网专业人士…我觉得我得真心加把劲，我的心一直在燃烧，希望在有你们的环境里我能够收回浮躁的心，专心于自己的专业，逐渐成长，能够为工作室作出贡献。',1),(34,'3114002454','伍俊健','电子信息（信息安全）','大一','681739',2,'啊加入web组是因为很多重大的安全隐患都与网站方面的技术有关，想做些关于网站之类的东西。现在只想学多点关于电脑的东西，那个因为我被骗过，所以想加入网站建设这队，个人爱好运动，电脑起步得慢，我是高考后才接触电脑的，是没什么会的，也不懂，此次是抱着试一下的心态来面试的，想拥有个机会让自己更快成长，如果没录用的话，也没关系，等下一年吧，工作室嘛还是会进的【表情】那个，我需要学会团队合作【表情】',1),(35,'3114003814','王祥','电子商务','大一','18219114871 / 664871',2,'您好~我叫王祥，专业是电子商务，本人性格开朗爱笑，虽然眼睛有点小，但是可以时时给身边的人传播正能量，平时的爱好是打篮球、听音乐、看书；希望大学的生活充实美满，虽然现在还没有掌握技术，但我的热情和吃苦耐劳、有团队合作的精神会让我慢慢成长。憧憬和期待能加入袂卓工作室，站上实现梦想的舞台！',1),(36,'3214000164','陈慧敏','视觉传达设计','大一','672253',3,'希望可以通过实践跟专业结合来累积自己的经验，我会好好努力的！',1),(37,'3214000167','吴颖斯','视觉传达设计','大一','13620187292/667292',3,'热爱设计。宣传方面的工作做过很多。做过喷画海报入场卷等。从上学至此一直担当宣传委员，部门也是宣传部的。有ps技能，勤奋好学。',1),(38,'3114002528','黄杰锋','计算机科学与技术','大一','15718211149/671149',1,'我初接触C语言，对编程的使用还停留在开始阶段，但想在袂卓工作室自我提升，通过完成工作组分配的各项任务，得到更好的锻炼。',1),(39,'3114002631','吴荣辉','网络工程','大一','691561',1,'我是个有点内向的，没加入什么社团活动，但对计算机也很有热情的人，但我想进入工作室，跟师兄，老师学习，虽然现在还没什么技术，但我会努力学习技术的',1),(40,'3114002466','陈卓','计算机科学与技术','大一','661727',1,' 我在编程方面还是处于积累中，但我懂得学习的重要性，很渴望与你们一起学习，一起成长，一起工作，在这信息时代共同寻找创业机遇！！！',1),(41,'3114001414','张露宇','电子商务','大一','682797',1,'我热爱电脑技术，特别是软件编程。为此，我现在仍自学网站设计，本来想先学完网站设计再学编程的，可是袂卓工作室的突然招新让我有了另外一种想法就是可以自学网站设计的同时还可以学习电脑编程。我平时不玩游戏不煲剧，时间充裕，而且我做一件自己喜欢的事情不会觉得枯燥，兴趣往往是最好的老师，这是我的优势，谢谢。',1),(42,'3114002651','黎荣照','通信工程（计算机通信网络）','大一','661540',1,'我是一个有好胜心的人，在什么情况都不会放弃，我有时会安静地一个人待着，有时又很好动。在生活上，我的要求简单，（不怎么吃零食，不打扮……），学习上，我有志向，有理想，想发展自己，但一直都是3分钟热度，因为我比较容易受别人的影响，大学生活比较懒散，我知道我不能这样，想改变却又坚持不了，真的很矛盾。所以我想加入一个充满奋斗的，有人和我一起努力的大家庭，高三的时候，我做了一件我自豪的事，我坚持每天早上5点多去读英语（因为我英语很差），可能是有人陪伴着我，也可能是我下了很大决心，不管怎样，我做到了。我想加入你们，我真的下了很大决心，我会努力。我感觉我的逻辑思维比较好，因为我数学一直比较好，也不用做很多题目或者复习，我也说不太清楚。我觉得我对软件这方面很感兴趣，开始有手机的时候，我就想这些软件是怎样设计出来的呢，我有种想自己做出一款很厉害的软件！我是一个渴望为自己奋斗的人，我想为未来疯狂，我想和你们一起疯狂。请给一次机会吧！',1),(43,'3114001425','胡尚锦','电子商务','大一','18219112786/692786',2,'现在暂时没有进部门或社团，现在有时间就自学代码html，希望能加入工作室能够学习更多网页制作的知识，谢谢',1),(44,'3114001411','叶宇鹏','电子商务','大一','18219112800/662800',2,'对于网站建设方面的知识为零，想通过部门来学习到关于网站建设的知识，在暑假里自学过PPT,WORD,EXCEL的应用。',1),(45,'3113002583','李铭淋','计算机通信网络','大二','18814182578\\672578',1,'我知道本次是面向大一报名，本人大二，之前也在面向大二的时候面试过美工组，但是没通过，我经过思考自身问题之后，决定在本次招新再报名一下，希望能够进入到一个新的学习环境中，为工作组的发展出力，为自身发展出力。',1),(46,'3214002623','冯予琼','网络工程','大一','18219111569/681569',2,'本人虽然平时大大咧咧，但是做事认真谨慎，虽然悟性不是很高，但对事物有敏锐的洞察力，有较强的自学能力，特别是感兴趣的领域和注重实践能力的提升。\n掌握一点编程的基本能力和ps等软件的基本操作。\n高中曾与同学在老师的指导下做过班级的网页，甚是享受将idea通过设计用网页呈现出来的过程，虽然接触不多，但是对此比较感兴趣。',1),(47,'3114002506','张俊薪','计算机科学与技术','大一','18219111687 / 671687',1,'正因为是0基础，才想要去学多点，觉得仅仅学课本的东西不能满足现代发展需要，因而我需要借助你的舞台。',1),(48,'3114002625','黄轩华','网络工程','大一','13226461152/693063',1,'本人对工作认真负责，对承诺过的事情竭尽全力，学习能力强，15天学c语言（初中用过易语言些外挂）并花两天时间编写（纯打）贪食蛇代码（在qq空间和博客），.最近在学习JAVA，望大神带我飞。没错，这就是我，我喂自己袋盐。',1),(49,'no','林锦强','计科','大一','15976459774',1,'Jayin帮手录入的。',1),(50,'3214001372','黄敏霞','电子商务','大一','672839',3,'电子商务与美工有着密不可分的关系，而且我对美工也有兴趣，希望美工组能让我更好的锻炼自己。',1);
/*!40000 ALTER TABLE `enroll_roster` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-23 20:50:46
