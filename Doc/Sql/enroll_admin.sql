
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

