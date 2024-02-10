-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Tempo de geração: 10/02/2024 às 17:42
-- Versão do servidor: 5.7.44
-- Versão do PHP: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `expanse_manager`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `expenses`
--

CREATE TABLE `expenses` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_date` date DEFAULT NULL,
  `amount` decimal(15,2) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `expense_category_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `expenses`
--

INSERT INTO `expenses` (`id`, `entry_date`, `amount`, `description`, `created_at`, `updated_at`, `deleted_at`, `expense_category_id`, `created_by_id`) VALUES
(1, '2024-01-05', 110.00, 'academia', '2024-02-10 16:42:57', '2024-02-10 16:42:57', NULL, 2, NULL),
(2, '2024-01-05', 70.68, 'seguro residência', '2024-02-10 16:43:38', '2024-02-10 16:43:38', NULL, 5, NULL),
(3, '2024-01-05', 2.72, 'tarifas cheque especial', '2024-02-10 16:45:24', '2024-02-10 16:45:24', NULL, 7, NULL),
(4, '2024-01-08', 273.40, 'Roupas', '2024-02-10 16:46:37', '2024-02-10 16:47:19', NULL, 8, NULL),
(5, '2024-01-10', 886.36, '13/18 empréstimo', '2024-02-10 16:47:48', '2024-02-10 16:47:48', NULL, 3, NULL),
(6, '2024-01-06', 1001.23, 'Nubank', '2024-02-10 16:50:03', '2024-02-10 16:50:03', NULL, 1, NULL),
(7, '2024-01-02', 231.58, 'Iti', '2024-02-10 16:50:44', '2024-02-10 16:50:44', NULL, 1, NULL),
(8, '2024-01-06', 1312.00, 'BB', '2024-02-10 16:51:58', '2024-02-10 16:51:58', NULL, 1, NULL),
(9, '2024-01-05', 25.90, 'Inter', '2024-02-10 16:59:52', '2024-02-10 16:59:52', NULL, 1, NULL),
(10, '2024-01-10', 661.83, 'Unimed', '2024-02-10 17:00:19', '2024-02-10 17:00:19', NULL, 2, NULL),
(11, '2024-01-07', 79.33, 'Água', '2024-02-10 17:01:03', '2024-02-10 17:01:03', NULL, 4, NULL),
(12, '2024-01-10', 172.25, 'Luz enel', '2024-02-10 17:01:48', '2024-02-10 17:01:55', NULL, 4, NULL),
(13, '2024-01-20', 71.00, 'mei', '2024-02-10 17:02:30', '2024-02-10 17:02:30', NULL, 9, NULL),
(14, '2024-01-18', 821.03, 'habitação caixa', '2024-02-10 17:03:25', '2024-02-10 17:03:25', NULL, 4, NULL),
(15, '2024-01-10', 104.82, 'Grão', '2024-02-10 17:04:17', '2024-02-10 17:04:17', NULL, 6, NULL),
(16, '2024-02-07', 57.10, 'Água', '2024-02-10 17:06:55', '2024-02-10 17:06:55', NULL, 4, NULL),
(17, '2024-02-10', 616.78, 'Unimed', '2024-02-10 17:07:27', '2024-02-10 17:07:27', NULL, 2, NULL),
(18, '2024-02-10', 69.90, 'Internet', '2024-02-10 17:07:56', '2024-02-10 17:07:56', NULL, 4, NULL),
(19, '2024-02-08', 140.83, 'Luz enel', '2024-02-10 17:09:04', '2024-02-10 17:09:04', NULL, 4, NULL),
(20, '2024-02-07', 1941.98, 'Nubank', '2024-02-10 17:09:36', '2024-02-10 17:09:36', NULL, 1, NULL),
(21, '2024-02-06', 4395.11, 'BB', '2024-02-10 17:10:02', '2024-02-10 17:10:02', NULL, 1, NULL),
(22, '2024-02-01', 580.74, 'BB Empréstimo', '2024-02-10 17:10:43', '2024-02-10 17:10:43', NULL, 3, NULL),
(23, '2024-02-01', 75.00, 'Itau negativo', '2024-02-10 17:11:24', '2024-02-10 17:11:24', NULL, 7, NULL),
(24, '2024-02-04', 1030.00, 'Conserto Notebook', '2024-02-10 17:11:57', '2024-02-10 17:11:57', NULL, 9, NULL),
(25, '2024-02-03', 95.00, 'Gás', '2024-02-10 17:12:33', '2024-02-10 17:12:33', NULL, 4, NULL),
(26, '2024-02-18', 821.72, 'habitação caixa', '2024-02-10 17:13:08', '2024-02-10 17:13:08', NULL, 4, NULL),
(27, '2024-02-07', 180.06, 'Iti', '2024-02-10 17:13:32', '2024-02-10 17:13:32', NULL, 1, NULL),
(28, '2024-02-20', 71.00, 'mei', '2024-02-10 17:14:04', '2024-02-10 17:14:04', NULL, 9, NULL),
(29, '2024-02-10', 104.82, 'Grão', '2024-02-10 17:14:33', '2024-02-10 17:14:33', NULL, 6, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `expense_categories`
--

INSERT INTO `expense_categories` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`, `created_by_id`) VALUES
(1, 'Cartão', '2024-02-10 16:35:37', '2024-02-10 16:35:37', NULL, NULL),
(2, 'Saúde', '2024-02-10 16:35:53', '2024-02-10 16:35:53', NULL, NULL),
(3, 'Empréstimos', '2024-02-10 16:36:04', '2024-02-10 16:36:12', NULL, NULL),
(4, 'Moradia', '2024-02-10 16:36:51', '2024-02-10 16:36:51', NULL, NULL),
(5, 'Seguros', '2024-02-10 16:37:05', '2024-02-10 16:37:05', NULL, NULL),
(6, 'Investimentos', '2024-02-10 16:37:48', '2024-02-10 16:37:48', NULL, NULL),
(7, 'Bancos tarifas', '2024-02-10 16:44:48', '2024-02-10 16:44:48', NULL, NULL),
(8, 'Roupas', '2024-02-10 16:46:48', '2024-02-10 16:46:48', NULL, NULL),
(9, 'Outros', '2024-02-10 16:46:54', '2024-02-10 16:46:54', NULL, NULL),
(10, 'Lanches fora', '2024-02-10 16:47:07', '2024-02-10 16:47:07', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `incomes`
--

CREATE TABLE `incomes` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_date` date DEFAULT NULL,
  `amount` decimal(15,2) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `income_category_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `incomes`
--

INSERT INTO `incomes` (`id`, `entry_date`, `amount`, `description`, `created_at`, `updated_at`, `deleted_at`, `income_category_id`, `created_by_id`) VALUES
(1, '2024-01-05', 6076.46, 'Salário mais férias', '2024-02-10 16:42:08', '2024-02-10 16:42:08', NULL, 1, NULL),
(2, '2024-02-07', 5026.37, 'Salario Fevereiro', '2024-02-10 16:52:48', '2024-02-10 16:52:48', NULL, 1, NULL),
(3, '2024-02-01', 1999.00, 'saque aniversário empréstimo', '2024-02-10 17:15:18', '2024-02-10 17:15:18', NULL, 3, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `income_categories`
--

CREATE TABLE `income_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `income_categories`
--

INSERT INTO `income_categories` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`, `created_by_id`) VALUES
(1, 'Salário', '2024-02-10 16:38:00', '2024-02-10 16:38:20', NULL, NULL),
(2, 'Extras', '2024-02-10 16:38:09', '2024-02-10 16:38:09', NULL, NULL),
(3, 'fgts Emprestimo', '2024-02-10 17:05:48', '2024-02-10 17:05:48', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(3, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(4, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(5, '2016_06_01_000004_create_oauth_clients_table', 1),
(6, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(7, '2019_09_13_000000_create_permissions_table', 1),
(8, '2019_09_13_000001_create_roles_table', 1),
(9, '2019_09_13_000002_create_users_table', 1),
(10, '2019_09_13_000003_create_expense_categories_table', 1),
(11, '2019_09_13_000004_create_income_categories_table', 1),
(12, '2019_09_13_000005_create_expenses_table', 1),
(13, '2019_09_13_000006_create_incomes_table', 1),
(14, '2019_09_13_000007_create_permission_role_pivot_table', 1),
(15, '2019_09_13_000008_create_role_user_pivot_table', 1),
(16, '2019_09_13_000009_add_relationship_fields_to_expense_categories_table', 1),
(17, '2019_09_13_000010_add_relationship_fields_to_income_categories_table', 1),
(18, '2019_09_13_000011_add_relationship_fields_to_expenses_table', 1),
(19, '2019_09_13_000012_add_relationship_fields_to_incomes_table', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `permissions`
--

INSERT INTO `permissions` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'user_management_access', '2019-09-13 19:21:30', '2019-09-13 19:21:30', NULL),
(2, 'permission_create', '2019-09-13 19:21:30', '2019-09-13 19:21:30', NULL),
(3, 'permission_edit', '2019-09-13 19:21:30', '2019-09-13 19:21:30', NULL),
(4, 'permission_show', '2019-09-13 19:21:30', '2019-09-13 19:21:30', NULL),
(5, 'permission_delete', '2019-09-13 19:21:30', '2019-09-13 19:21:30', NULL),
(6, 'permission_access', '2019-09-13 19:21:30', '2019-09-13 19:21:30', NULL),
(7, 'role_create', '2019-09-13 19:21:30', '2019-09-13 19:21:30', NULL),
(8, 'role_edit', '2019-09-13 19:21:30', '2019-09-13 19:21:30', NULL),
(9, 'role_show', '2019-09-13 19:21:30', '2019-09-13 19:21:30', NULL),
(10, 'role_delete', '2019-09-13 19:21:30', '2019-09-13 19:21:30', NULL),
(11, 'role_access', '2019-09-13 19:21:30', '2019-09-13 19:21:30', NULL),
(12, 'user_create', '2019-09-13 19:21:30', '2019-09-13 19:21:30', NULL),
(13, 'user_edit', '2019-09-13 19:21:30', '2019-09-13 19:21:30', NULL),
(14, 'user_show', '2019-09-13 19:21:30', '2019-09-13 19:21:30', NULL),
(15, 'user_delete', '2019-09-13 19:21:30', '2019-09-13 19:21:30', NULL),
(16, 'user_access', '2019-09-13 19:21:30', '2019-09-13 19:21:30', NULL),
(17, 'expense_management_access', '2019-09-13 19:21:30', '2019-09-13 19:21:30', NULL),
(18, 'expense_category_create', '2019-09-13 19:21:30', '2019-09-13 19:21:30', NULL),
(19, 'expense_category_edit', '2019-09-13 19:21:30', '2019-09-13 19:21:30', NULL),
(20, 'expense_category_show', '2019-09-13 19:21:30', '2019-09-13 19:21:30', NULL),
(21, 'expense_category_delete', '2019-09-13 19:21:30', '2019-09-13 19:21:30', NULL),
(22, 'expense_category_access', '2019-09-13 19:21:30', '2019-09-13 19:21:30', NULL),
(23, 'income_category_create', '2019-09-13 19:21:30', '2019-09-13 19:21:30', NULL),
(24, 'income_category_edit', '2019-09-13 19:21:30', '2019-09-13 19:21:30', NULL),
(25, 'income_category_show', '2019-09-13 19:21:30', '2019-09-13 19:21:30', NULL),
(26, 'income_category_delete', '2019-09-13 19:21:30', '2019-09-13 19:21:30', NULL),
(27, 'income_category_access', '2019-09-13 19:21:30', '2019-09-13 19:21:30', NULL),
(28, 'expense_create', '2019-09-13 19:21:30', '2019-09-13 19:21:30', NULL),
(29, 'expense_edit', '2019-09-13 19:21:30', '2019-09-13 19:21:30', NULL),
(30, 'expense_show', '2019-09-13 19:21:30', '2019-09-13 19:21:30', NULL),
(31, 'expense_delete', '2019-09-13 19:21:30', '2019-09-13 19:21:30', NULL),
(32, 'expense_access', '2019-09-13 19:21:30', '2019-09-13 19:21:30', NULL),
(33, 'income_create', '2019-09-13 19:21:30', '2019-09-13 19:21:30', NULL),
(34, 'income_edit', '2019-09-13 19:21:30', '2019-09-13 19:21:30', NULL),
(35, 'income_show', '2019-09-13 19:21:30', '2019-09-13 19:21:30', NULL),
(36, 'income_delete', '2019-09-13 19:21:30', '2019-09-13 19:21:30', NULL),
(37, 'income_access', '2019-09-13 19:21:30', '2019-09-13 19:21:30', NULL),
(38, 'expense_report_create', '2019-09-13 19:21:30', '2019-09-13 19:21:30', NULL),
(39, 'expense_report_edit', '2019-09-13 19:21:30', '2019-09-13 19:21:30', NULL),
(40, 'expense_report_show', '2019-09-13 19:21:30', '2019-09-13 19:21:30', NULL),
(41, 'expense_report_delete', '2019-09-13 19:21:30', '2019-09-13 19:21:30', NULL),
(42, 'expense_report_access', '2019-09-13 19:21:30', '2019-09-13 19:21:30', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `permission_role`
--

CREATE TABLE `permission_role` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `permission_role`
--

INSERT INTO `permission_role` (`role_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(1, 38),
(1, 39),
(1, 40),
(1, 41),
(1, 42),
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(2, 21),
(2, 22),
(2, 23),
(2, 24),
(2, 25),
(2, 26),
(2, 27),
(2, 28),
(2, 29),
(2, 30),
(2, 31),
(2, 32),
(2, 33),
(2, 34),
(2, 35),
(2, 36),
(2, 37),
(2, 38),
(2, 39),
(2, 40),
(2, 41),
(2, 42);

-- --------------------------------------------------------

--
-- Estrutura para tabela `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', '2019-09-13 19:15:46', '2019-09-13 19:15:46', NULL),
(2, 'User', '2019-09-13 19:15:46', '2019-09-13 19:15:46', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'admin@admin.com', NULL, '$2y$10$iz6WtVj69p/5JonFfuBRVO2LwrEGTJw3I6BqliWCbSmSF.5X9RPcu', NULL, '2019-09-13 19:21:30', '2019-09-13 19:21:30', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expense_category_fk_334989` (`expense_category_id`),
  ADD KEY `created_by_fk_335008` (`created_by_id`);

--
-- Índices de tabela `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by_fk_335006` (`created_by_id`);

--
-- Índices de tabela `incomes`
--
ALTER TABLE `incomes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `income_category_fk_334997` (`income_category_id`),
  ADD KEY `created_by_fk_335009` (`created_by_id`);

--
-- Índices de tabela `income_categories`
--
ALTER TABLE `income_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by_fk_335007` (`created_by_id`);

--
-- Índices de tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Índices de tabela `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Índices de tabela `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Índices de tabela `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Índices de tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Índices de tabela `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `permission_role`
--
ALTER TABLE `permission_role`
  ADD KEY `role_id_fk_334959` (`role_id`),
  ADD KEY `permission_id_fk_334959` (`permission_id`);

--
-- Índices de tabela `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `role_user`
--
ALTER TABLE `role_user`
  ADD KEY `user_id_fk_334968` (`user_id`),
  ADD KEY `role_id_fk_334968` (`role_id`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de tabela `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `incomes`
--
ALTER TABLE `incomes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `income_categories`
--
ALTER TABLE `income_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de tabela `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `created_by_fk_335008` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `expense_category_fk_334989` FOREIGN KEY (`expense_category_id`) REFERENCES `expense_categories` (`id`);

--
-- Restrições para tabelas `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD CONSTRAINT `created_by_fk_335006` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`);

--
-- Restrições para tabelas `incomes`
--
ALTER TABLE `incomes`
  ADD CONSTRAINT `created_by_fk_335009` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `income_category_fk_334997` FOREIGN KEY (`income_category_id`) REFERENCES `income_categories` (`id`);

--
-- Restrições para tabelas `income_categories`
--
ALTER TABLE `income_categories`
  ADD CONSTRAINT `created_by_fk_335007` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`);

--
-- Restrições para tabelas `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_id_fk_334959` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_id_fk_334959` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_id_fk_334968` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_id_fk_334968` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
