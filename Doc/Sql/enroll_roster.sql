-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2014 年 12 月 15 日 10:07
-- 服务器版本: 5.5.28
-- PHP 版本: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `enroll`
--

-- --------------------------------------------------------

--
-- 表的结构 `enroll_roster`
--

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
