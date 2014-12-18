
DROP  TABLE IF EXISTS `enroll_admin`;
CREATE TABLE IF NOT EXISTS `enroll_admin` (
  `id` int(4) NOT NULL AUTO_INCREMENT COMMENT 'id标识号',
  `username` varchar(31) NOT NULL COMMENT '用户名',
  `password` varchar(127) NOT NULL,
  `create_time` varchar(16) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='管理员表' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `enroll_admin`
--

INSERT INTO `enroll_admin` (`id`, `username`, `password`, `create_time`) VALUES
  (1, 'zjien1', 'e10adc3949ba59abbe56e057f20f883e', '1418475389'),
  (2, 'meizhuo', 'ff63abf3f70e050e64cd4a66a2c6ae44', '1418479236');



--
-- 表的结构 `enroll_department`
--
DROP  TABLE IF EXISTS `enroll_department`;
CREATE TABLE IF NOT EXISTS `enroll_department` (
  `id` int(4) NOT NULL AUTO_INCREMENT COMMENT '部门id标识号',
  `department` varchar(32) NOT NULL COMMENT '部门名字',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='部门表' AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `enroll_department`
--

INSERT INTO `enroll_department` (`id`, `department`) VALUES
  (1, '移动组'),
  (2, 'Web组'),
  (3, '美工组');

--
-- 表的结构 `enroll_roster`
--
DROP  TABLE IF EXISTS `enroll_roster`;
CREATE TABLE IF NOT EXISTS `enroll_roster` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id标识号',
  `student_id` varchar(16) NOT NULL COMMENT '学号',
  `name` varchar(32) NOT NULL COMMENT '姓名',
  `major` varchar(128) NOT NULL COMMENT '专业',
  `grade` varchar(8) NOT NULL COMMENT '年级',
  `phone` varchar(32) NOT NULL COMMENT '电话',
  `department` int(4) NOT NULL COMMENT '意向部门',
  `intro` text COMMENT '简介',
  `status` int(4) NOT NULL DEFAULT 1 COMMENT '审核状态(1等待2通过3不通过)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='报名名单表' AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `enroll_roster`
--

INSERT INTO `enroll_roster` (`id`, `student_id`, `name`, `major`, `grade`, `phone`, `department`, `intro`, `status`) VALUES
  (1, '3113002369', '甄景恩', '计算机科学', '大二', '13168521390', 0, 'adv        			\r\n        		', 1),
  (2, '3113002366', '小明', '计算机', '大一', '12345678911', 0, 'adfadsfas', 1),
  (3, '3113002311', '小小', '计算机', '2', '123456781010', 2, '你好，我是', 2),
  (4, '312152', '小李', '物理', '大一', '123', 1, 'afasd	', 1),
  (5, '123', '小小李', '计算机', '大二', '123456', 2, 'abc		        		\r\n		        		', 1),
  (6, '123456', '黄炼', '专业装B', '大二', '123', 3, 'anc		        		\r\n		        		', 1),
  (7, '123', '小英', '数学', '大二', '233233', 2, 'and		        		\r\n		        		', 3),
  (8, '23333', '13123', '233333', '大一', '33333', 1, '		        		\r\n	33333	        		', 3),
  (9, '3113001234', '金正恩', '挑粪专业', '大五', '7093941230', 1, '你好，我是金正恩思密达，我是挑粪专业大五的学生，我想学习互联网技术，我要去黑奥巴马的电脑，他也会编程了我也要写，欢迎关注我的github你好，我是金正恩思密达，我是挑粪专业大五的学生，我想学习互联网技术，我要去黑奥巴马的电脑，他也会编程了我也要写，欢迎关注我的github你好，我是金正恩思密达，我是挑粪专业大五的学生，我想学习互联网技术，我要去黑奥巴马的电脑，他也会编程了我也要写，欢迎关注我的github', 3);


