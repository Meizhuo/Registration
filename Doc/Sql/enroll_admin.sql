-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2014 年 12 月 15 日 10:08
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
-- 表的结构 `enroll_admin`
--

CREATE TABLE IF NOT EXISTS `enroll_admin` (
  `id` int(4) NOT NULL AUTO_INCREMENT COMMENT 'id标识号',
  `username` varchar(31) NOT NULL COMMENT '用户名',
  `password` varchar(127) NOT NULL,
  `create_time` varchar(16) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='管理员表' AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `enroll_admin`
--

INSERT INTO `enroll_admin` (`id`, `username`, `password`, `create_time`) VALUES
(1, 'zjien1', 'e10adc3949ba59abbe56e057f20f883e', '1418475389'),
(2, 'zjien3', '202cb962ac59075b964b07152d234b70', '1418479236');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
