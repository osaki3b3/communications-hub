/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : v2.livecomm

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2023-08-01 23:04:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `chat_message`
-- ----------------------------
DROP TABLE IF EXISTS `chat_message`;
CREATE TABLE `chat_message` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `chatid` bigint(20) NOT NULL,
  `message` varchar(5000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_replied` datetime DEFAULT NULL,
  `by_admin` tinyint(4) NOT NULL DEFAULT 0,
  `initial_plugin_message` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `chat_message_chatid_index` (`chatid`),
  KEY `chat_message_message_index` (`message`(768)),
  KEY `chat_message_date_replied_index` (`date_replied`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of chat_message
-- ----------------------------

-- ----------------------------
-- Table structure for `chat_number`
-- ----------------------------
DROP TABLE IF EXISTS `chat_number`;
CREATE TABLE `chat_number` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL,
  `number` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lc_number` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `sent_from` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `chat_number_number_index` (`number`),
  KEY `chat_number_uid_index` (`uid`),
  KEY `chat_number_lc_number_index` (`lc_number`),
  KEY `chat_number_is_read_index` (`is_read`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of chat_number
-- ----------------------------

-- ----------------------------
-- Table structure for `directory`
-- ----------------------------
DROP TABLE IF EXISTS `directory`;
CREATE TABLE `directory` (
  `did` bigint(20) NOT NULL AUTO_INCREMENT,
  `_uid` bigint(20) DEFAULT NULL,
  `old_did` bigint(20) DEFAULT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `sms_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mms_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_processed` datetime DEFAULT NULL,
  `disabled` tinyint(4) NOT NULL DEFAULT 0,
  `skipped_lookup` tinyint(4) NOT NULL DEFAULT 0,
  `_gid` bigint(20) DEFAULT NULL,
  `created_at_legacy` datetime DEFAULT NULL,
  `optout_sent` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`did`),
  KEY `directory_number_index` (`number`),
  KEY `directory_name_last_name_index` (`name`,`last_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of directory
-- ----------------------------

-- ----------------------------
-- Table structure for `failed_jobs`
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2019_08_19_000000_create_failed_jobs_table', '1');
INSERT INTO `migrations` VALUES ('4', '2019_12_14_000001_create_personal_access_tokens_table', '1');
INSERT INTO `migrations` VALUES ('6', '2023_06_30_214653_add_user_fields_to_users_table', '2');
INSERT INTO `migrations` VALUES ('7', '2023_07_03_041134_directory_initial', '3');
INSERT INTO `migrations` VALUES ('8', '2023_07_03_050405_user_settings_google_initial', '4');
INSERT INTO `migrations` VALUES ('9', '2023_07_03_185817_chat_message', '5');
INSERT INTO `migrations` VALUES ('10', '2023_07_03_201300_chat_number', '5');
INSERT INTO `migrations` VALUES ('11', '2023_07_03_205538_twilio_costs_per_phone', '6');
INSERT INTO `migrations` VALUES ('12', '2023_07_03_212404_twilio_usage_invoices', '7');
INSERT INTO `migrations` VALUES ('13', '2023_07_03_214247_user_contacts', '8');
INSERT INTO `migrations` VALUES ('14', '2023_07_03_214321_user_groups', '8');

-- ----------------------------
-- Table structure for `password_resets`
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for `personal_access_tokens`
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for `twilio_costs_per_phone`
-- ----------------------------
DROP TABLE IF EXISTS `twilio_costs_per_phone`;
CREATE TABLE `twilio_costs_per_phone` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `twid` bigint(20) NOT NULL,
  `uid` bigint(20) NOT NULL,
  `gvid` bigint(20) NOT NULL,
  `price` decimal(11,2) NOT NULL,
  `charged` tinyint(4) NOT NULL DEFAULT 0,
  `last_period_start` datetime DEFAULT NULL,
  `last_period_stop` datetime DEFAULT NULL,
  `period_day` int(11) DEFAULT NULL,
  `period_month` int(11) DEFAULT NULL,
  `period_year` int(11) DEFAULT NULL,
  `last_processed` datetime DEFAULT NULL,
  `cred_id` int(11) NOT NULL DEFAULT 0,
  `duration` int(11) DEFAULT NULL,
  `invoice_id` int(11) NOT NULL DEFAULT 0,
  `messages_sent` bigint(20) DEFAULT NULL,
  `messaging_cost` decimal(11,2) DEFAULT NULL,
  `duration_outbound` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of twilio_costs_per_phone
-- ----------------------------

-- ----------------------------
-- Table structure for `twilio_usage_invoices`
-- ----------------------------
DROP TABLE IF EXISTS `twilio_usage_invoices`;
CREATE TABLE `twilio_usage_invoices` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL,
  `period_start` datetime NOT NULL,
  `period_end` datetime NOT NULL,
  `amount` decimal(11,2) NOT NULL DEFAULT 0.00,
  `minutes_used` int(11) NOT NULL,
  `message_count` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 = blank, 1 = unpaid, 2 = paid',
  `entry_date` datetime NOT NULL,
  `paid_date` datetime DEFAULT NULL,
  `billing_transaction_id` int(11) NOT NULL DEFAULT 0,
  `disputed` tinyint(4) NOT NULL DEFAULT 0,
  `recordings_amount` decimal(11,2) DEFAULT NULL,
  `storage_amount` decimal(11,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of twilio_usage_invoices
-- ----------------------------

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `uid` bigint(20) NOT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lfname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `package` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `legacy_created` datetime DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `adminlevel` tinyint(4) NOT NULL DEFAULT 0,
  `stripe_billing_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sms_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mms_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_processed` datetime DEFAULT NULL,
  `additional_phones` int(11) NOT NULL DEFAULT 1,
  `account_setup_notes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `test_stripe` tinyint(4) NOT NULL DEFAULT 0,
  `isConfigured` tinyint(4) NOT NULL DEFAULT 0,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `affid` tinyint(4) NOT NULL DEFAULT 1,
  `stripe_status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_uid` int(11) NOT NULL DEFAULT 0,
  `terms_agreed` tinyint(4) NOT NULL DEFAULT 0,
  `card_declined` tinyint(4) NOT NULL DEFAULT 0,
  `declined_date` datetime DEFAULT NULL,
  `ip_address_plan_upgrade` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address_customer_creation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_api` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_api` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `directory_processed` tinyint(4) NOT NULL DEFAULT 0,
  `promo_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a2p_charged` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'ebe', 'ebe@livecomm.com', null, '$2y$10$EB1upX7UHW4ib0SwLU04set7MihxBXLkaWvCjzIx6t2xKHbEctjem', null, '2023-06-29 17:26:12', '2023-06-29 17:26:12', '0', '', '', '', '', null, '1', '0', '', '', '', '', null, '1', '', '0', '0', '', '1', '', '', '', '', '', '0', '0', '0', null, '', '', '', '', '0', '', '0');

-- ----------------------------
-- Table structure for `user_contacts`
-- ----------------------------
DROP TABLE IF EXISTS `user_contacts`;
CREATE TABLE `user_contacts` (
  `did` bigint(20) NOT NULL,
  `uid` bigint(20) NOT NULL,
  `_number` bigint(20) DEFAULT NULL,
  `gid` bigint(20) NOT NULL,
  `date_added` datetime DEFAULT NULL,
  `trashed` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `user_contacts_did_gid_uid_unique` (`did`,`gid`,`uid`),
  KEY `user_contacts_did_index` (`did`),
  KEY `user_contacts_gid_index` (`gid`),
  KEY `user_contacts_uid_index` (`uid`),
  KEY `user_contacts_trashed_index` (`trashed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_contacts
-- ----------------------------

-- ----------------------------
-- Table structure for `user_groups`
-- ----------------------------
DROP TABLE IF EXISTS `user_groups`;
CREATE TABLE `user_groups` (
  `gid` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `custom` tinyint(4) NOT NULL DEFAULT 0,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`gid`),
  KEY `user_groups_uid_index` (`uid`),
  KEY `user_groups_name_index` (`name`),
  KEY `user_groups_is_default_index` (`is_default`),
  KEY `user_groups_custom_index` (`custom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for `user_settings_numbers`
-- ----------------------------
DROP TABLE IF EXISTS `user_settings_numbers`;
CREATE TABLE `user_settings_numbers` (
  `gvid` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL,
  `g_account_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `g_account_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `g_original_g` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nickname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_join_message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_sms_message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_sync` datetime DEFAULT NULL,
  `disabled` tinyint(4) NOT NULL DEFAULT 0,
  `gid` bigint(20) DEFAULT NULL,
  `send_join_message` tinyint(4) NOT NULL DEFAULT 1,
  `send_sms_message` tinyint(4) NOT NULL DEFAULT 0,
  `gv_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `account_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 = google voice, 1 = twilio',
  `twid` bigint(20) NOT NULL DEFAULT 0,
  `greeting_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 = text-to-speech, 1 = recorded greeting',
  `text_to_speech` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` tinyint(4) NOT NULL DEFAULT 0,
  `recorded_url` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forward_to` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_job_history_run` datetime DEFAULT NULL,
  `last_job_history_date_processed` datetime DEFAULT NULL,
  `entry_date` datetime DEFAULT NULL,
  `show_from_livecomm` bigint(20) NOT NULL DEFAULT 0,
  `call_enqueue_type` tinyint(4) DEFAULT 0,
  `phone_sid` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recordings_active` tinyint(4) DEFAULT 0,
  `transcriptions_active` tinyint(4) DEFAULT 0,
  `purge_recordings` tinyint(4) DEFAULT 0,
  `sms_forwarding_active` tinyint(4) DEFAULT NULL,
  `sms_forwarding_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_forwarding_otp_verified` tinyint(4) DEFAULT NULL,
  `sms_forwarding_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_forwarding_active` tinyint(4) DEFAULT 0,
  `email_forwarding_email` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gv_number_name` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twilio_url_updated` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`gvid`),
  KEY `user_settings_numbers_gv_number_index` (`gv_number`),
  KEY `user_settings_numbers_uid_index` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_settings_numbers
-- ----------------------------
