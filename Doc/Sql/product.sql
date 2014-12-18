DROP  TABLE IF EXISTS `enroll_admin`;
CREATE TABLE IF NOT EXISTS `enroll_admin` (
  `id` int(4) NOT NULL AUTO_INCREMENT COMMENT 'id标识号',
  `username` varchar(31) NOT NULL COMMENT '用户名',
  `password` varchar(127) NOT NULL,
  `create_time` varchar(16) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='管理员表' AUTO_INCREMENT=1 ;

INSERT INTO `enroll_admin` (`id`, `username`, `password`, `create_time`) VALUES
  (1, 'zjien1', 'e10adc3949ba59abbe56e057f20f883e', '1418475389'),
  (2, 'meizhuo', 'ff63abf3f70e050e64cd4a66a2c6ae44', '1418479236');



DROP  TABLE IF EXISTS `enroll_department`;
CREATE TABLE IF NOT EXISTS `enroll_department` (
  `id` int(4) NOT NULL AUTO_INCREMENT COMMENT '部门id标识号',
  `department` varchar(32) NOT NULL COMMENT '部门名字',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='部门表' AUTO_INCREMENT=1 ;

INSERT INTO `enroll_department` (`id`, `department`) VALUES
  (1, '移动组'),
  (2, 'Web组'),
  (3, '美工组');


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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='报名名单表' AUTO_INCREMENT=1 ;