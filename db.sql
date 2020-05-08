-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Июл 27 2019 г., 21:36
-- Версия сервера: 5.7.21-20-beget-5.7.21-20-1-log
-- Версия PHP: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `w902469x_1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `ajax_chat_bans`
--
-- Создание: Июл 19 2019 г., 09:43
-- Последнее обновление: Июл 19 2019 г., 09:43
--

DROP TABLE IF EXISTS `ajax_chat_bans`;
CREATE TABLE `ajax_chat_bans` (
  `userID` int(11) NOT NULL,
  `userName` varchar(200) NOT NULL,
  `dateTime` datetime NOT NULL,
  `ip` varbinary(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ajax_chat_invitations`
--
-- Создание: Июл 19 2019 г., 09:43
-- Последнее обновление: Июл 19 2019 г., 09:43
--

DROP TABLE IF EXISTS `ajax_chat_invitations`;
CREATE TABLE `ajax_chat_invitations` (
  `userID` int(11) NOT NULL,
  `channel` int(11) NOT NULL,
  `dateTime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ajax_chat_messages`
--
-- Создание: Июл 19 2019 г., 09:43
-- Последнее обновление: Июл 27 2019 г., 18:10
--

DROP TABLE IF EXISTS `ajax_chat_messages`;
CREATE TABLE `ajax_chat_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `userID` int(11) NOT NULL,
  `userName` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `userRole` int(1) NOT NULL,
  `channel` int(11) NOT NULL,
  `dateTime` datetime NOT NULL,
  `ip` varbinary(16) NOT NULL,
  `text` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ajax_chat_online`
--
-- Создание: Июл 19 2019 г., 09:43
-- Последнее обновление: Июл 27 2019 г., 17:14
--

DROP TABLE IF EXISTS `ajax_chat_online`;
CREATE TABLE `ajax_chat_online` (
  `userID` int(11) NOT NULL,
  `userName` varchar(200) NOT NULL,
  `userRole` int(1) NOT NULL,
  `channel` int(11) NOT NULL,
  `dateTime` datetime NOT NULL,
  `ip` varbinary(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bans`
--
-- Создание: Июл 19 2019 г., 09:43
-- Последнее обновление: Июл 19 2019 г., 09:43
-- Последняя проверка: Июл 19 2019 г., 09:43
--

DROP TABLE IF EXISTS `bans`;
CREATE TABLE `bans` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(200) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `expire` int(10) UNSIGNED DEFAULT NULL,
  `ban_creator` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--
-- Создание: Июл 19 2019 г., 09:43
-- Последнее обновление: Июл 19 2019 г., 09:47
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `cat_name` varchar(80) NOT NULL DEFAULT 'New Category',
  `disp_position` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `cat_name`, `disp_position`) VALUES
(1, 'General', 0),
(2, 'Premium', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `censoring`
--
-- Создание: Июл 19 2019 г., 09:43
-- Последнее обновление: Июл 19 2019 г., 09:43
--

DROP TABLE IF EXISTS `censoring`;
CREATE TABLE `censoring` (
  `id` int(10) UNSIGNED NOT NULL,
  `search_for` varchar(60) NOT NULL DEFAULT '',
  `replace_with` varchar(60) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `codes`
--
-- Создание: Июл 19 2019 г., 09:43
-- Последнее обновление: Июл 27 2019 г., 18:11
--

DROP TABLE IF EXISTS `codes`;
CREATE TABLE `codes` (
  `id` int(11) NOT NULL,
  `code` varchar(48) DEFAULT NULL,
  `by` int(11) DEFAULT NULL,
  `used` int(11) NOT NULL DEFAULT '0',
  `admin` int(11) DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `usedat` datetime DEFAULT NULL,
  `beta` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `codes`
--

INSERT INTO `codes` (`id`, `code`, `by`, `used`, `admin`, `user`, `date`, `usedat`, `beta`) VALUES
(14, 'pJBy588SPituEITOr2qBo8FEz3LFaN67EvzMiM5FtAFt4Fe5', 1, 0, 2, NULL, '2019-07-27 20:14:58', NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `config`
--
-- Создание: Июл 19 2019 г., 09:43
-- Последнее обновление: Июл 27 2019 г., 18:11
--

DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `conf_name` varchar(255) NOT NULL DEFAULT '',
  `conf_value` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `config`
--

INSERT INTO `config` (`conf_name`, `conf_value`) VALUES
('o_cur_version', '1.5.10'),
('o_database_revision', '21'),
('o_searchindex_revision', '2'),
('o_parser_revision', '2'),
('o_board_title', 'FullChill'),
('o_board_desc', '<p><span></span></p>'),
('o_default_timezone', '4'),
('o_time_format', 'H:i:s'),
('o_date_format', 'd-m-Y'),
('o_timeout_visit', '1800'),
('o_timeout_online', '300'),
('o_redirect_delay', '3'),
('o_show_version', '0'),
('o_show_user_info', '1'),
('o_show_post_count', '1'),
('o_signatures', '1'),
('o_smilies', '1'),
('o_smilies_sig', '1'),
('o_make_links', '1'),
('o_default_lang', 'English'),
('o_default_style', 'Cobalt'),
('o_default_user_group', '4'),
('o_topic_review', '15'),
('o_disp_topics_default', '30'),
('o_disp_posts_default', '25'),
('o_indent_num_spaces', '4'),
('o_quote_depth', '3'),
('o_quickpost', '1'),
('o_users_online', '1'),
('o_censoring', '0'),
('o_show_dot', '0'),
('o_topic_views', '1'),
('o_quickjump', '1'),
('o_gzip', '0'),
('o_additional_navlinks', ''),
('o_report_method', '0'),
('o_regs_report', '0'),
('o_default_email_setting', '1'),
('o_mailing_list', 'admin@afkboost.space'),
('o_avatars', '1'),
('o_avatars_dir', 'img/avatars'),
('o_avatars_width', '120'),
('o_avatars_height', '120'),
('o_avatars_size', '50240'),
('o_search_all_forums', '1'),
('o_base_url', 'http://w902469x.beget.tech/forums'),
('o_admin_email', 'admin@afkboost.space'),
('o_webmaster_email', 'admin@afkboost.space'),
('o_forum_subscriptions', '0'),
('o_topic_subscriptions', '0'),
('o_smtp_host', 'smtp.yandex.ru'),
('o_smtp_user', 'admin@afkboost.space'),
('o_smtp_pass', 'bBy8oDA1'),
('o_smtp_ssl', '1'),
('o_regs_allow', '1'),
('o_regs_verify', '0'),
('o_announcement', '0'),
('o_announcement_message', 'Enter your announcement here.'),
('o_rules', '0'),
('o_rules_message', 'Enter your rules here'),
('o_maintenance', '0'),
('o_maintenance_message', 'The forums are temporarily down for maintenance. Please try again in a few minutes.'),
('o_default_dst', '0'),
('o_feed_type', '0'),
('o_feed_ttl', '0'),
('p_message_bbcode', '1'),
('p_message_img_tag', '1'),
('p_message_all_caps', '1'),
('p_subject_all_caps', '1'),
('p_sig_all_caps', '1'),
('p_sig_bbcode', '1'),
('p_sig_img_tag', '0'),
('p_sig_length', '400'),
('p_sig_lines', '4'),
('p_allow_banned_email', '1'),
('p_allow_dupe_email', '0'),
('p_force_guest_email', '1'),
('o_poll_enabled', '1'),
('o_poll_max_ques', '3'),
('o_poll_max_field', '20'),
('o_poll_time', '60'),
('o_poll_term', '3'),
('o_poll_guest', '3'),
('o_pms_enabled', '1'),
('o_pms_min_kolvo', '0'),
('o_pms_flasher', '1'),
('o_crypto_pas', 'HJdNBzC6BgLP2TZraKqDdCkRI'),
('recaptcha_site_key', '6Lfhca4UAAAAAEYkbQ7-VqsEWOD6sXs8tDwWw9eC'),
('recaptcha_secret_key', '6Lfhca4UAAAAAH4A0bn9Msr2NrAmuFRaiJEfmupg');

-- --------------------------------------------------------

--
-- Структура таблицы `forums`
--
-- Создание: Июл 19 2019 г., 09:43
-- Последнее обновление: Июл 19 2019 г., 15:49
--

DROP TABLE IF EXISTS `forums`;
CREATE TABLE `forums` (
  `id` int(10) UNSIGNED NOT NULL,
  `forum_name` varchar(80) NOT NULL DEFAULT 'New forum',
  `forum_desc` text,
  `redirect_url` varchar(100) DEFAULT NULL,
  `moderators` text,
  `num_topics` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `num_posts` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `last_post` int(10) UNSIGNED DEFAULT NULL,
  `last_post_id` int(10) UNSIGNED DEFAULT NULL,
  `last_poster` varchar(200) DEFAULT NULL,
  `sort_by` tinyint(1) NOT NULL DEFAULT '0',
  `disp_position` int(10) NOT NULL DEFAULT '0',
  `cat_id` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `forums`
--

INSERT INTO `forums` (`id`, `forum_name`, `forum_desc`, `redirect_url`, `moderators`, `num_topics`, `num_posts`, `last_post`, `last_post_id`, `last_poster`, `sort_by`, `disp_position`, `cat_id`) VALUES
(15, 'Lua sharing', 'Here you can share your best lua scripts', NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 2),
(14, 'Feedback', 'Write here if you find a bug or exploit', NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 2, 1),
(13, 'Beta talk', 'All beta users can communicate here', NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 2, 2),
(12, 'Premium talk', 'All premium users can communicate here', NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 1, 2),
(11, 'General talk', 'All registered users can communicate here', NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 1, 1),
(10, 'Announcements', 'Important information', NULL, NULL, 2, 3, 1563551346, 41, 'Alpha', 0, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `forum_perms`
--
-- Создание: Июл 19 2019 г., 09:43
-- Последнее обновление: Июл 19 2019 г., 16:04
--

DROP TABLE IF EXISTS `forum_perms`;
CREATE TABLE `forum_perms` (
  `group_id` int(10) NOT NULL DEFAULT '0',
  `forum_id` int(10) NOT NULL DEFAULT '0',
  `read_forum` tinyint(1) NOT NULL DEFAULT '1',
  `post_replies` tinyint(1) NOT NULL DEFAULT '1',
  `post_topics` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `forum_perms`
--

INSERT INTO `forum_perms` (`group_id`, `forum_id`, `read_forum`, `post_replies`, `post_topics`) VALUES
(4, 12, 0, 0, 0),
(6, 10, 1, 1, 0),
(5, 10, 1, 1, 0),
(4, 10, 1, 1, 0),
(3, 10, 1, 1, 0),
(4, 13, 0, 0, 0),
(5, 13, 1, 0, 0),
(4, 15, 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `forum_subscriptions`
--
-- Создание: Июл 19 2019 г., 09:43
-- Последнее обновление: Июл 19 2019 г., 09:43
--

DROP TABLE IF EXISTS `forum_subscriptions`;
CREATE TABLE `forum_subscriptions` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `forum_id` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `groups`
--
-- Создание: Июл 19 2019 г., 09:43
-- Последнее обновление: Июл 19 2019 г., 16:00
--

DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `g_id` int(10) UNSIGNED NOT NULL,
  `g_title` varchar(50) NOT NULL DEFAULT '',
  `g_user_title` varchar(50) DEFAULT NULL,
  `g_promote_min_posts` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `g_promote_next_group` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `g_moderator` tinyint(1) NOT NULL DEFAULT '0',
  `g_mod_edit_users` tinyint(1) NOT NULL DEFAULT '0',
  `g_mod_rename_users` tinyint(1) NOT NULL DEFAULT '0',
  `g_mod_change_passwords` tinyint(1) NOT NULL DEFAULT '0',
  `g_mod_ban_users` tinyint(1) NOT NULL DEFAULT '0',
  `g_mod_promote_users` tinyint(1) NOT NULL DEFAULT '0',
  `g_read_board` tinyint(1) NOT NULL DEFAULT '1',
  `g_view_users` tinyint(1) NOT NULL DEFAULT '1',
  `g_post_replies` tinyint(1) NOT NULL DEFAULT '1',
  `g_post_topics` tinyint(1) NOT NULL DEFAULT '1',
  `g_edit_posts` tinyint(1) NOT NULL DEFAULT '1',
  `g_delete_posts` tinyint(1) NOT NULL DEFAULT '1',
  `g_delete_topics` tinyint(1) NOT NULL DEFAULT '1',
  `g_post_links` tinyint(1) NOT NULL DEFAULT '1',
  `g_set_title` tinyint(1) NOT NULL DEFAULT '1',
  `g_search` tinyint(1) NOT NULL DEFAULT '1',
  `g_search_users` tinyint(1) NOT NULL DEFAULT '1',
  `g_send_email` tinyint(1) NOT NULL DEFAULT '1',
  `g_post_flood` smallint(6) NOT NULL DEFAULT '30',
  `g_search_flood` smallint(6) NOT NULL DEFAULT '30',
  `g_email_flood` smallint(6) NOT NULL DEFAULT '60',
  `g_report_flood` smallint(6) NOT NULL DEFAULT '60',
  `g_pm` tinyint(1) NOT NULL DEFAULT '1',
  `g_pm_limit` int(10) UNSIGNED NOT NULL DEFAULT '100',
  `g_color` varchar(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `groups`
--

INSERT INTO `groups` (`g_id`, `g_title`, `g_user_title`, `g_promote_min_posts`, `g_promote_next_group`, `g_moderator`, `g_mod_edit_users`, `g_mod_rename_users`, `g_mod_change_passwords`, `g_mod_ban_users`, `g_mod_promote_users`, `g_read_board`, `g_view_users`, `g_post_replies`, `g_post_topics`, `g_edit_posts`, `g_delete_posts`, `g_delete_topics`, `g_post_links`, `g_set_title`, `g_search`, `g_search_users`, `g_send_email`, `g_post_flood`, `g_search_flood`, `g_email_flood`, `g_report_flood`, `g_pm`, `g_pm_limit`, `g_color`) VALUES
(1, 'Administrators', 'Administrator', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, '#00BFFF'),
(7, 'Moderators', 'Moderator', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 100, '#ff9933'),
(2, 'Guests', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(4, 'Members', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 60, 30, 60, 60, 1, 100, ''),
(5, 'Premium user', 'Premium user', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 60, 30, 60, 60, 1, 100, '#e61515'),
(6, 'Beta user', 'Premium user', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 60, 30, 60, 60, 1, 100, '#e61515');

-- --------------------------------------------------------

--
-- Структура таблицы `online`
--
-- Создание: Июл 19 2019 г., 09:43
-- Последнее обновление: Июл 27 2019 г., 18:12
--

DROP TABLE IF EXISTS `online`;
CREATE TABLE `online` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `ident` varchar(200) NOT NULL DEFAULT '',
  `logged` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `idle` tinyint(1) NOT NULL DEFAULT '0',
  `last_post` int(10) UNSIGNED DEFAULT NULL,
  `last_search` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `payments`
--
-- Создание: Июл 19 2019 г., 09:43
--

DROP TABLE IF EXISTS `payments`;
CREATE TABLE `payments` (
  `id` int(10) NOT NULL,
  `goods` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `inv` varchar(255) NOT NULL,
  `code` text NOT NULL,
  `info` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `pms_new_block`
--
-- Создание: Июл 19 2019 г., 09:43
-- Последнее обновление: Июл 19 2019 г., 09:43
-- Последняя проверка: Июл 19 2019 г., 09:43
--

DROP TABLE IF EXISTS `pms_new_block`;
CREATE TABLE `pms_new_block` (
  `bl_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `bl_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `pms_new_posts`
--
-- Создание: Июл 19 2019 г., 09:43
-- Последнее обновление: Июл 19 2019 г., 09:43
-- Последняя проверка: Июл 19 2019 г., 09:43
--

DROP TABLE IF EXISTS `pms_new_posts`;
CREATE TABLE `pms_new_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `poster` varchar(200) NOT NULL DEFAULT '',
  `poster_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `poster_ip` varchar(39) DEFAULT NULL,
  `message` text,
  `hide_smilies` tinyint(1) NOT NULL DEFAULT '0',
  `posted` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `edited` int(10) UNSIGNED DEFAULT NULL,
  `edited_by` varchar(200) DEFAULT NULL,
  `post_new` tinyint(1) NOT NULL DEFAULT '1',
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `pms_new_topics`
--
-- Создание: Июл 19 2019 г., 09:43
-- Последнее обновление: Июл 19 2019 г., 09:43
-- Последняя проверка: Июл 19 2019 г., 09:43
--

DROP TABLE IF EXISTS `pms_new_topics`;
CREATE TABLE `pms_new_topics` (
  `id` int(10) UNSIGNED NOT NULL,
  `topic` varchar(255) NOT NULL DEFAULT '',
  `starter` varchar(200) NOT NULL DEFAULT '',
  `starter_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `to_user` varchar(200) NOT NULL DEFAULT '',
  `to_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `replies` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `last_posted` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `last_poster` tinyint(1) NOT NULL DEFAULT '0',
  `see_st` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `see_to` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topic_st` tinyint(4) NOT NULL DEFAULT '0',
  `topic_to` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `poll`
--
-- Создание: Июл 19 2019 г., 09:43
-- Последнее обновление: Июл 19 2019 г., 09:43
--

DROP TABLE IF EXISTS `poll`;
CREATE TABLE `poll` (
  `tid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `question` tinyint(4) NOT NULL DEFAULT '0',
  `field` tinyint(4) NOT NULL DEFAULT '0',
  `choice` varchar(255) NOT NULL DEFAULT '',
  `votes` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `poll`
--

INSERT INTO `poll` (`tid`, `question`, `field`, `choice`, `votes`) VALUES
(26, 1, 0, 'Add vk send message from events?', 1),
(26, 1, 1, 'Usefull', 2),
(26, 1, 2, 'Useless', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `poll_voted`
--
-- Создание: Июл 19 2019 г., 09:43
-- Последнее обновление: Июл 19 2019 г., 09:43
--

DROP TABLE IF EXISTS `poll_voted`;
CREATE TABLE `poll_voted` (
  `tid` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL,
  `rez` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `poll_voted`
--

INSERT INTO `poll_voted` (`tid`, `uid`, `rez`) VALUES
(26, 2, 'a:1:{i:1;a:1:{i:0;s:1:\"1\";}}'),
(26, 5, 'a:1:{i:1;a:1:{i:0;s:1:\"2\";}}'),
(26, 4, 'a:1:{i:1;a:1:{i:0;s:1:\"1\";}}');

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--
-- Создание: Июл 19 2019 г., 09:43
-- Последнее обновление: Июл 27 2019 г., 18:13
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `poster` varchar(200) NOT NULL DEFAULT '',
  `poster_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `poster_ip` varchar(39) DEFAULT NULL,
  `poster_email` varchar(80) DEFAULT NULL,
  `message` mediumtext,
  `hide_smilies` tinyint(1) NOT NULL DEFAULT '0',
  `posted` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `edited` int(10) UNSIGNED DEFAULT NULL,
  `edited_by` varchar(200) DEFAULT NULL,
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `likes` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `reports`
--
-- Создание: Июл 19 2019 г., 09:43
-- Последнее обновление: Июл 19 2019 г., 09:43
-- Последняя проверка: Июл 19 2019 г., 09:43
--

DROP TABLE IF EXISTS `reports`;
CREATE TABLE `reports` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `forum_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `reported_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `message` text,
  `zapped` int(10) UNSIGNED DEFAULT NULL,
  `zapped_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `search_cache`
--
-- Создание: Июл 19 2019 г., 09:43
-- Последнее обновление: Июл 27 2019 г., 18:13
--

DROP TABLE IF EXISTS `search_cache`;
CREATE TABLE `search_cache` (
  `id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ident` varchar(200) NOT NULL DEFAULT '',
  `search_data` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `search_matches`
--
-- Создание: Июл 19 2019 г., 09:43
-- Последнее обновление: Июл 19 2019 г., 12:44
-- Последняя проверка: Июл 19 2019 г., 11:55
--

DROP TABLE IF EXISTS `search_matches`;
CREATE TABLE `search_matches` (
  `post_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `word_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subject_match` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `search_matches`
--

INSERT INTO `search_matches` (`post_id`, `word_id`, `subject_match`) VALUES
(40, 924, 0),
(40, 925, 0),
(40, 926, 0),
(40, 927, 0),
(40, 928, 0),
(40, 929, 0),
(40, 930, 0),
(40, 931, 0),
(40, 932, 0),
(40, 933, 0),
(40, 934, 0),
(40, 935, 0),
(40, 936, 0),
(40, 937, 0),
(40, 938, 0),
(40, 939, 0),
(40, 940, 0),
(40, 941, 0),
(40, 942, 0),
(40, 943, 0),
(40, 944, 0),
(40, 945, 0),
(40, 946, 0),
(40, 947, 0),
(40, 948, 0),
(40, 949, 0),
(40, 950, 0),
(40, 951, 0),
(40, 952, 0),
(40, 953, 0),
(40, 954, 0),
(40, 955, 0),
(40, 956, 0),
(40, 957, 0),
(40, 958, 0),
(40, 959, 0),
(40, 922, 0),
(40, 921, 0),
(40, 919, 0),
(40, 915, 0),
(40, 923, 0),
(40, 920, 0),
(40, 21, 0),
(39, 912, 1),
(39, 900, 1),
(39, 906, 0),
(39, 910, 0),
(39, 901, 0),
(39, 908, 0),
(39, 903, 0),
(39, 905, 0),
(39, 899, 0),
(39, 902, 0),
(39, 68, 0),
(39, 911, 0),
(39, 909, 0),
(39, 900, 0),
(39, 898, 0),
(39, 335, 0),
(39, 904, 0),
(39, 907, 0),
(40, 960, 0),
(40, 961, 0),
(40, 962, 0),
(40, 963, 0),
(40, 964, 0),
(40, 965, 0),
(40, 966, 0),
(40, 967, 0),
(40, 909, 0),
(40, 68, 0),
(40, 64, 0),
(40, 44, 0),
(40, 39, 0),
(40, 920, 1),
(40, 916, 0),
(40, 914, 0),
(40, 35, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `search_words`
--
-- Создание: Июл 19 2019 г., 09:43
-- Последнее обновление: Июл 19 2019 г., 12:44
--

DROP TABLE IF EXISTS `search_words`;
CREATE TABLE `search_words` (
  `id` int(10) UNSIGNED NOT NULL,
  `word` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `search_words`
--

INSERT INTO `search_words` (`id`, `word`) VALUES
(923, 'refund'),
(2, 'guess'),
(4, 'fluxbb'),
(5, 'appears'),
(6, 'worked'),
(8, 'head'),
(9, 'administration'),
(10, 'control'),
(11, 'panel'),
(14, 'test'),
(922, 'banned'),
(921, 'permanently'),
(919, 'ddos'),
(920, 'rules'),
(21, 'account'),
(35, 'someone'),
(918, 'attempt'),
(39, 'first'),
(917, 'hacking'),
(44, 'second'),
(915, 'ban'),
(916, 'sharing'),
(64, 'discord'),
(68, 'post'),
(84, 'bitcoin'),
(105, 'new'),
(107, 'added'),
(113, 'due'),
(114, 'price'),
(120, 'need'),
(914, 'permanent'),
(186, 'byte'),
(187, 'example'),
(199, 'works'),
(913, 'give'),
(209, 'choose'),
(912, 'release'),
(230, 'change'),
(233, 'delay'),
(251, '2018'),
(252, 'plans'),
(261, 'join'),
(271, 'creditcard'),
(272, 'qiwi'),
(276, 'invite'),
(279, 'premium'),
(283, 'codes'),
(911, 'php'),
(910, 'viewforum'),
(302, 'tab'),
(309, 'authentication'),
(313, 'lose'),
(317, 'antivirus'),
(318, 'vendors'),
(319, 'perform'),
(320, 'intensive'),
(321, 'real-time'),
(322, 'monitoring'),
(323, 'sandboxing'),
(324, 'interfere'),
(326, 'disable'),
(328, 'defender'),
(329, 'whitelisting'),
(330, 'closed'),
(331, 'drivers'),
(332, 'unloaded'),
(333, 're-open'),
(334, 'loading'),
(335, 'cheat'),
(336, 'known'),
(337, 'incompatible'),
(338, 'trend'),
(339, 'micro'),
(340, 'f-secure'),
(341, 'malwarebytes'),
(342, 'error'),
(343, 'produced'),
(344, 'd0001600'),
(345, 'd0002001'),
(346, 'c0000022'),
(347, 'unsupported'),
(349, 'newer'),
(350, 'older'),
(351, 'versions'),
(352, 'update'),
(354, '14393'),
(355, 'restart'),
(356, 'computer'),
(358, 'c0000077'),
(359, 'd0002103'),
(360, 'anti-cheat'),
(361, 'particularly'),
(362, 'battleye'),
(363, 'protect'),
(364, 'game'),
(366, 'processes'),
(367, 'lead'),
(368, 'problems'),
(369, 'd0001418'),
(370, 'overlays'),
(371, 'party'),
(372, 'tools'),
(374, 'interferes'),
(375, 'rendering'),
(376, 'cause'),
(377, 'issues'),
(378, 'software'),
(379, 'fraps'),
(380, 'sweetfx'),
(381, 'overlay'),
(382, 'nzxt'),
(383, 'cam'),
(385, 'virtual'),
(386, 'machine'),
(387, 'supported'),
(388, 'poweronplatforms'),
(389, 'hyper-v'),
(390, 'opening'),
(391, 'happens'),
(394, 'uac'),
(395, 'restarting'),
(397, 'setting'),
(398, 'notch'),
(399, 'top'),
(400, 'menu'),
(401, 'shows'),
(402, 'solid'),
(403, 'black'),
(404, 'rectangle'),
(405, 'settings'),
(407, 'multi'),
(408, 'core'),
(409, 'displaying'),
(410, 'flickering'),
(412, 'check'),
(413, 'both'),
(414, 'places'),
(415, 'preferences'),
(416, 'in-game'),
(418, 'while'),
(419, 'right-click'),
(420, 'library'),
(421, 'select'),
(422, 'properties'),
(424, 'nvidia'),
(425, 'manage'),
(427, 'options'),
(430, 'antialiasing'),
(431, 'fxaa'),
(433, 'multi-frame'),
(434, 'sampled'),
(435, 'mfaa'),
(436, 'shader'),
(437, 'cache'),
(438, 'texture'),
(439, 'filtering'),
(440, 'anisotropic'),
(441, 'sample'),
(442, 'optimization'),
(443, 'negative'),
(444, 'lod'),
(445, 'bias'),
(446, 'allow'),
(447, 'quality'),
(448, 'trilinear'),
(449, 'threaded'),
(450, 'auto'),
(451, 'triple'),
(452, 'buffering'),
(453, 'vertical'),
(454, 'sync'),
(455, 'application'),
(456, 'conflicting'),
(458, 'common'),
(460, 'feature'),
(463, 'bug'),
(464, 'happened'),
(465, 'information'),
(466, 'help'),
(467, 'reproduce'),
(468, 'type'),
(469, 'server'),
(474, 'report'),
(476, 'thread'),
(477, 'reports'),
(478, 'format'),
(501, 'own'),
(503, 'suggestions'),
(505, 'admin'),
(909, 'forums'),
(908, 'tech'),
(907, 'beget'),
(906, 'w902469x'),
(905, 'spot'),
(904, 'bugs'),
(903, 'still'),
(902, 'ready'),
(901, 'unfortunately'),
(900, 'forum'),
(899, 'released'),
(898, 'finally'),
(529, 'strive'),
(530, 'maintain'),
(531, 'fps'),
(532, '64-tick'),
(533, '128'),
(534, '128-tick'),
(535, 'performance'),
(536, 'resource'),
(537, 'listed'),
(538, 'causes'),
(539, 'drops'),
(540, 'accuracy'),
(541, 'boost'),
(542, 'avoid'),
(543, 'maximum'),
(544, 'targeting'),
(545, 'hitbox'),
(546, 'selection'),
(547, 'unnecessary'),
(548, 'hitboxes'),
(549, 'arms'),
(550, 'legs'),
(551, 'maybe'),
(552, 'chest'),
(553, 'biggest'),
(554, 'impact'),
(555, 'best'),
(556, 'hit'),
(557, 'chance'),
(558, 'cost'),
(559, 'lot'),
(560, 'cycle'),
(561, 'multi-point'),
(562, 'multipoint'),
(563, 'low'),
(564, 'non-aimbot'),
(565, 'tips'),
(566, 'player'),
(567, 'models'),
(568, 'expensive'),
(569, 'terms'),
(570, 'model'),
(571, 'culling'),
(572, 'disables'),
(573, 'occlusion'),
(574, 'noticeable'),
(576, 'playing'),
(577, 'person'),
(578, 'launch'),
(581, 'variables'),
(583, 'foot'),
(584, 'shadows'),
(585, 'contact'),
(588, 'systems'),
(599, '2019'),
(600, 'a9231e2b3a694f06'),
(601, '7ccc6df2e2a34851'),
(602, '5194f64c28034de2'),
(603, 'e9e0d062bf7a41d6'),
(604, '60ac5ae245bc4156'),
(629, 'sandixie'),
(634, 'value'),
(967, 'messages'),
(966, 'private'),
(965, 'via'),
(964, 'invites'),
(963, 'soliciting'),
(962, 'insult'),
(961, 'purpose'),
(960, 'racism'),
(959, 'includes'),
(958, 'tolerated'),
(957, 'harassing'),
(956, 'behavior'),
(955, 'inexcusable'),
(954, 'part'),
(654, 'afk'),
(953, 'taking'),
(952, 'code'),
(951, 'invitation'),
(950, 'promises'),
(949, 'others'),
(948, 'misleading'),
(947, 'result'),
(946, 'strike'),
(945, 'third'),
(944, 'temporary'),
(943, 'warning'),
(942, 'receive'),
(941, 'offenders'),
(674, 'changes'),
(675, 'events'),
(677, 'win'),
(678, 'lobby'),
(679, 'link'),
(680, 'event'),
(681, 'logs'),
(684, 'improved'),
(940, 'time'),
(687, 'exaple'),
(939, 'cases'),
(938, 'already'),
(937, 'inviting'),
(936, 'exploiting'),
(935, 'engineering'),
(934, 'reverse'),
(933, 'dumping'),
(932, 'limited'),
(696, 'july'),
(697, 'topmost'),
(700, 'accounts'),
(701, 'except'),
(702, 'leaders'),
(703, 'selected'),
(704, 'checkbox'),
(705, 'single'),
(706, 'checkboxes'),
(707, 'issue'),
(708, 'reported'),
(711, 'accept'),
(712, 'disconnects'),
(714, 'extra'),
(715, 'fix'),
(724, 'php-mysql'),
(736, 'local'),
(751, 'token'),
(752, 'null'),
(755, 'google'),
(756, 'view'),
(757, 'usp'),
(759, 'arcive'),
(931, 'including'),
(761, '2ocwkquo'),
(762, 'viewtopic'),
(772, 'button'),
(774, 'wingman'),
(776, 'prime'),
(780, 'myweb'),
(781, 'features'),
(782, 'explain'),
(784, 'seconds'),
(788, 'milliseconds'),
(790, 'press'),
(794, 'pid'),
(795, 'p23'),
(796, 'info'),
(801, 'leader'),
(803, 'checking'),
(807, 'rank'),
(809, 'count'),
(810, 'ranks'),
(820, 'manager'),
(830, 'updates'),
(837, '12000'),
(838, 'username'),
(930, 'fullchill'),
(929, 'undermine'),
(928, 'intent'),
(927, 'activity'),
(926, 'malicious'),
(925, 'fraud'),
(924, 'payment'),
(857, '200ms'),
(858, '800'),
(860, 'panorama'),
(862, 'links'),
(867, 'updated'),
(880, 'signle'),
(882, 'answer'),
(885, 'argument');

-- --------------------------------------------------------

--
-- Структура таблицы `topics`
--
-- Создание: Июл 19 2019 г., 09:43
-- Последнее обновление: Июл 27 2019 г., 18:13
--

DROP TABLE IF EXISTS `topics`;
CREATE TABLE `topics` (
  `id` int(10) UNSIGNED NOT NULL,
  `poster` varchar(200) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `posted` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `first_post_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `last_post` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `last_post_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `last_poster` varchar(200) DEFAULT NULL,
  `num_views` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `num_replies` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `closed` tinyint(1) NOT NULL DEFAULT '0',
  `sticky` tinyint(1) NOT NULL DEFAULT '0',
  `moved_to` int(10) UNSIGNED DEFAULT NULL,
  `forum_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `poll_type` tinyint(4) NOT NULL DEFAULT '0',
  `poll_time` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `poll_term` tinyint(4) NOT NULL DEFAULT '0',
  `poll_kol` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `topic_subscriptions`
--
-- Создание: Июл 19 2019 г., 09:43
-- Последнее обновление: Июл 19 2019 г., 09:43
--

DROP TABLE IF EXISTS `topic_subscriptions`;
CREATE TABLE `topic_subscriptions` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `updates`
--
-- Создание: Июл 19 2019 г., 09:43
--

DROP TABLE IF EXISTS `updates`;
CREATE TABLE `updates` (
  `id` int(11) NOT NULL,
  `game` varchar(255) DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `updates`
--

INSERT INTO `updates` (`id`, `game`, `updated`) VALUES
(1, 'csgo', '2018-06-21 16:47:54'),
(2, 'csgo_beta', '2018-07-09 09:42:49');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--
-- Создание: Июл 19 2019 г., 09:43
-- Последнее обновление: Июл 27 2019 г., 18:15
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '3',
  `username` varchar(200) NOT NULL DEFAULT '',
  `password` varchar(40) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `title` varchar(50) DEFAULT NULL,
  `realname` varchar(40) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `jabber` varchar(80) DEFAULT NULL,
  `icq` varchar(12) DEFAULT NULL,
  `msn` varchar(80) DEFAULT NULL,
  `aim` varchar(30) DEFAULT NULL,
  `yahoo` varchar(30) DEFAULT NULL,
  `location` varchar(30) DEFAULT NULL,
  `signature` text,
  `disp_topics` tinyint(3) UNSIGNED DEFAULT NULL,
  `disp_posts` tinyint(3) UNSIGNED DEFAULT NULL,
  `email_setting` tinyint(1) NOT NULL DEFAULT '1',
  `notify_with_post` tinyint(1) NOT NULL DEFAULT '0',
  `auto_notify` tinyint(1) NOT NULL DEFAULT '0',
  `show_smilies` tinyint(1) NOT NULL DEFAULT '1',
  `show_img` tinyint(1) NOT NULL DEFAULT '1',
  `show_img_sig` tinyint(1) NOT NULL DEFAULT '1',
  `show_avatars` tinyint(1) NOT NULL DEFAULT '1',
  `show_sig` tinyint(1) NOT NULL DEFAULT '1',
  `timezone` float NOT NULL DEFAULT '0',
  `dst` tinyint(1) NOT NULL DEFAULT '0',
  `time_format` tinyint(1) NOT NULL DEFAULT '0',
  `date_format` tinyint(1) NOT NULL DEFAULT '0',
  `language` varchar(25) NOT NULL DEFAULT 'English',
  `style` varchar(25) NOT NULL DEFAULT 'Cobalt',
  `num_posts` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `last_post` int(10) UNSIGNED DEFAULT NULL,
  `last_search` int(10) UNSIGNED DEFAULT NULL,
  `last_email_sent` int(10) UNSIGNED DEFAULT NULL,
  `last_report_sent` int(10) UNSIGNED DEFAULT NULL,
  `registered` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `registration_ip` varchar(39) NOT NULL DEFAULT '0.0.0.0',
  `last_visit` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `admin_note` varchar(30) DEFAULT NULL,
  `activate_string` varchar(80) DEFAULT NULL,
  `activate_key` varchar(8) DEFAULT NULL,
  `messages_enable` tinyint(1) NOT NULL DEFAULT '1',
  `messages_email` tinyint(1) NOT NULL DEFAULT '0',
  `messages_flag` tinyint(1) NOT NULL DEFAULT '0',
  `messages_new` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `messages_all` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pmsn_last_post` int(10) UNSIGNED DEFAULT NULL,
  `csgo` datetime DEFAULT NULL,
  `discord` text,
  `hwid` text,
  `discord_reason` text,
  `hwid_reason` text,
  `hwid_ip` text,
  `hwid_ip_new` text,
  `discord_ip` text,
  `discord_ip_new` text,
  `discord_new` text,
  `hwid_new` text,
  `img_key` text,
  `ga` text,
  `ga_enabled` varchar(1) NOT NULL DEFAULT '0',
  `by` int(11) DEFAULT NULL,
  `used_version` decimal(10,1) DEFAULT NULL,
  `nopass` varchar(255) DEFAULT NULL,
  `nopass_new` varchar(255) DEFAULT NULL,
  `win` varchar(32) DEFAULT NULL,
  `lose` varchar(32) DEFAULT NULL,
  `lastauth` datetime DEFAULT NULL,
  `token` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `group_id`, `username`, `password`, `email`, `title`, `realname`, `url`, `jabber`, `icq`, `msn`, `aim`, `yahoo`, `location`, `signature`, `disp_topics`, `disp_posts`, `email_setting`, `notify_with_post`, `auto_notify`, `show_smilies`, `show_img`, `show_img_sig`, `show_avatars`, `show_sig`, `timezone`, `dst`, `time_format`, `date_format`, `language`, `style`, `num_posts`, `last_post`, `last_search`, `last_email_sent`, `last_report_sent`, `registered`, `registration_ip`, `last_visit`, `admin_note`, `activate_string`, `activate_key`, `messages_enable`, `messages_email`, `messages_flag`, `messages_new`, `messages_all`, `pmsn_last_post`, `csgo`, `discord`, `hwid`, `discord_reason`, `hwid_reason`, `hwid_ip`, `hwid_ip_new`, `discord_ip`, `discord_ip_new`, `discord_new`, `hwid_new`, `img_key`, `ga`, `ga_enabled`, `by`, `used_version`, `nopass`, `nopass_new`, `win`, `lose`, `lastauth`, `token`) VALUES
(1, 2, 'NotWork', 'eto_fix', 'skeet@mail.ru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 'English', 'Cobalt', 0, NULL, NULL, NULL, NULL, 0, '0.0.0.0', 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `versions`
--
-- Создание: Июл 19 2019 г., 09:43
--

DROP TABLE IF EXISTS `versions`;
CREATE TABLE `versions` (
  `id` int(11) NOT NULL,
  `name` text,
  `version` decimal(10,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `versions`
--

INSERT INTO `versions` (`id`, `name`, `version`) VALUES
(1, 'loader', '1.0'),
(2, 'csgo', '0.1');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `ajax_chat_messages`
--
ALTER TABLE `ajax_chat_messages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bans`
--
ALTER TABLE `bans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bans_username_idx` (`username`(25));

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `censoring`
--
ALTER TABLE `censoring`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `codes`
--
ALTER TABLE `codes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Индексы таблицы `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`conf_name`);

--
-- Индексы таблицы `forums`
--
ALTER TABLE `forums`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `forum_perms`
--
ALTER TABLE `forum_perms`
  ADD PRIMARY KEY (`group_id`,`forum_id`);

--
-- Индексы таблицы `forum_subscriptions`
--
ALTER TABLE `forum_subscriptions`
  ADD PRIMARY KEY (`user_id`,`forum_id`);

--
-- Индексы таблицы `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`g_id`);

--
-- Индексы таблицы `online`
--
ALTER TABLE `online`
  ADD UNIQUE KEY `online_user_id_ident_idx` (`user_id`,`ident`(25)),
  ADD KEY `online_ident_idx` (`ident`(25)),
  ADD KEY `online_logged_idx` (`logged`);

--
-- Индексы таблицы `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pms_new_block`
--
ALTER TABLE `pms_new_block`
  ADD KEY `pms_new_block_bl_id_idx` (`bl_id`),
  ADD KEY `pms_new_block_bl_user_id_idx` (`bl_user_id`);

--
-- Индексы таблицы `pms_new_posts`
--
ALTER TABLE `pms_new_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pms_new_posts_topic_id_idx` (`topic_id`),
  ADD KEY `pms_new_posts_multi_idx` (`poster_id`,`topic_id`);

--
-- Индексы таблицы `pms_new_topics`
--
ALTER TABLE `pms_new_topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pms_new_topics_multi_idx_st` (`starter_id`,`topic_st`),
  ADD KEY `pms_new_topics_multi_idx_to` (`to_id`,`topic_to`);

--
-- Индексы таблицы `poll`
--
ALTER TABLE `poll`
  ADD PRIMARY KEY (`tid`,`question`,`field`);

--
-- Индексы таблицы `poll_voted`
--
ALTER TABLE `poll_voted`
  ADD PRIMARY KEY (`tid`,`uid`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_topic_id_idx` (`topic_id`),
  ADD KEY `posts_multi_idx` (`poster_id`,`topic_id`);

--
-- Индексы таблицы `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reports_zapped_idx` (`zapped`);

--
-- Индексы таблицы `search_cache`
--
ALTER TABLE `search_cache`
  ADD PRIMARY KEY (`id`),
  ADD KEY `search_cache_ident_idx` (`ident`(8));

--
-- Индексы таблицы `search_matches`
--
ALTER TABLE `search_matches`
  ADD KEY `search_matches_word_id_idx` (`word_id`),
  ADD KEY `search_matches_post_id_idx` (`post_id`);

--
-- Индексы таблицы `search_words`
--
ALTER TABLE `search_words`
  ADD PRIMARY KEY (`word`),
  ADD KEY `search_words_id_idx` (`id`);

--
-- Индексы таблицы `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topics_forum_id_idx` (`forum_id`),
  ADD KEY `topics_moved_to_idx` (`moved_to`),
  ADD KEY `topics_last_post_idx` (`last_post`),
  ADD KEY `topics_first_post_id_idx` (`first_post_id`);

--
-- Индексы таблицы `topic_subscriptions`
--
ALTER TABLE `topic_subscriptions`
  ADD PRIMARY KEY (`user_id`,`topic_id`);

--
-- Индексы таблицы `updates`
--
ALTER TABLE `updates`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_idx` (`username`(25)),
  ADD KEY `users_registered_idx` (`registered`);

--
-- Индексы таблицы `versions`
--
ALTER TABLE `versions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `ajax_chat_messages`
--
ALTER TABLE `ajax_chat_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `bans`
--
ALTER TABLE `bans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `censoring`
--
ALTER TABLE `censoring`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `codes`
--
ALTER TABLE `codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `forums`
--
ALTER TABLE `forums`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `groups`
--
ALTER TABLE `groups`
  MODIFY `g_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `pms_new_posts`
--
ALTER TABLE `pms_new_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `pms_new_topics`
--
ALTER TABLE `pms_new_topics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT для таблицы `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `search_words`
--
ALTER TABLE `search_words`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=968;

--
-- AUTO_INCREMENT для таблицы `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT для таблицы `updates`
--
ALTER TABLE `updates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `versions`
--
ALTER TABLE `versions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
