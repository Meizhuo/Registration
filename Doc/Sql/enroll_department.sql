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

