-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 30 jan. 2023 à 19:25
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mini_market`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `tele` int(11) NOT NULL,
  `adresse` varchar(30) NOT NULL,
  `mission` varchar(50) NOT NULL,
  `activite` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id_categorie` int(11) NOT NULL,
  `style` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `popular` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_descrip` varchar(255) NOT NULL,
  `meta_keywords` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id_client` int(11) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `tele` int(11) NOT NULL,
  `adress` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id_commande` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `titre` date NOT NULL,
  `num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `description`
--

CREATE TABLE `description` (
  `id_description` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_25_171811_create_categories_table', 2),
(6, '2023_01_26_151704_create_products_table', 2);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('elyahyaouyimane9@gmail.com', '$2y$10$9eM32qzjz0OeHmVmVFdQKuvZ2U.boiMOrfivt8Let2ptjcqTzqJea', '2023-01-26 02:42:13'),
('firdaousselyhy@gmail.com', '$2y$10$WU4uEnrFd8ZKU8p9HsGbAOqb8sAgDMGGx8IIUBwbg2qSL2p6Iugri', '2023-01-26 05:34:47');

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `libelle` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `description` text NOT NULL,
  `qnt` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `libelle`, `price`, `description`, `qnt`, `created_at`, `updated_at`) VALUES
(1, 'djfghfjh', 77, 'lllllllllllllllll11', 11, '2023-01-30 13:54:38', '2023-01-30 13:54:38');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id_produit` varchar(40) NOT NULL,
  `prix` int(11) NOT NULL,
  `quatite` int(11) NOT NULL,
  `nom` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `table`
--

CREATE TABLE `table` (
  `hgkkgh` int(11) NOT NULL,
  `dsvvsd` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `tele` int(11) NOT NULL,
  `adresse` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role_as` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role_as`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'imane', 'elyahyaouyimane9@gmail.com', NULL, '$2y$10$jt6Ih80rGAjNAosG0f3DH.aG5mWvNlm5sBqu1nDrmarp4HwyQpJx.', 1, '', '2023-01-25 14:35:22', '2023-01-25 14:35:22'),
(2, 'alae', 'firdaousselyhy@gmail.com', NULL, '$2y$10$ASh4nCW5K297Z9Spj50t4.cUDwcnjy9SWA2e31St.ivfp/UrtlpAO', 0, '', '2023-01-25 14:52:25', '2023-01-25 14:52:25'),
(3, 'sanae', 'adashg@gmail.com', NULL, '$2y$10$b7B/Z4JLoN4xDKiZNVd04exsI4eVynYbsRo9JUknZ8vSyV7WineOm', 0, '', '2023-01-25 22:41:41', '2023-01-25 22:41:41'),
(4, 'douae', 'example@gmail.com', NULL, '$2y$10$htTT8VW8ZTMSRF/0wUrnrOp/PfuUcJas2Bt1PhwNWy/4Y9PeOnWTW', 0, '', '2023-01-26 11:01:20', '2023-01-26 11:01:20'),
(5, 'douae', 'siham@gmail.com', NULL, '$2y$10$qKHhnnQDM/JnpPSuaE121O.KkE2daRIiIFgn.8Gm1XGtKSm0XRsuy', 0, '', '2023-01-26 11:03:42', '2023-01-26 11:03:42'),
(6, 'salma', 'salma@gmail.com', NULL, '$2y$10$zvKpJenEkruj4hZlS5Me8uILm9vOAQIkL.EcBeNiScTbL7qdSaFWi', 0, '', '2023-01-27 22:21:20', '2023-01-27 22:21:20'),
(7, 'hanae', 'hanae@gmail.com', NULL, '$2y$10$WYbfArJpeAneyN9JtXqVwux5UnrqYsCtCcq01BxZ3.d2P0CXpTCO6', 0, '', '2023-01-27 22:25:42', '2023-01-27 22:25:42'),
(8, 'badr', 'badr@gmail.com', NULL, '$2y$10$QqAXdVVVNn094y1212kJF.UucXceU8vd4HpmpLIIijSALZn7dhRge', 0, '', '2023-01-27 22:29:54', '2023-01-27 22:29:54'),
(9, 'zakariya', 'zakariya@gmail.com', NULL, '$2y$10$GZs5jv4Rmze9Y15c4PElt.VVHGEOXeA1FdCGDTJXkUjgkef5v2MgC', 0, '', '2023-01-27 22:31:43', '2023-01-27 22:31:43'),
(10, 'monsef', 'monsef@gmail.com', NULL, '$2y$10$44EbnVOQ2BCC7jxevBHdC.TFK4OUu3fEAn13nlp94KHsQD2mNcKVS', 0, '', '2023-01-27 22:33:42', '2023-01-27 22:33:42'),
(11, 'hiba', 'hiba@gmail.com', NULL, '$2y$10$lE/.9VnJnc2sg3lAFiWQG.Q538jPlmCN.4XTHnd536vW4txwrZ.Te', 0, '', '2023-01-27 22:36:51', '2023-01-27 22:36:51'),
(12, 'nada', 'nada@gmail.com', NULL, '$2y$10$f6HlxRxRpiesOrzpx9JvceP96cLTaMhTX4c9ZbnCaJMdrXdBBc3Ne', 0, '', '2023-01-27 22:46:54', '2023-01-27 22:46:54'),
(13, 'jangsgf', 'dgsfhsg@gmail.com', NULL, '$2y$10$r2RwpPWEZPmafcj0osNRs.zFrEHB98rsHVaNXZY5OMi.serSqLFDC', 0, '', '2023-01-27 22:56:13', '2023-01-27 22:56:13'),
(14, 'sdgfh', 'sxgz@gmail.com', NULL, '$2y$10$mPOQhTEyxjMj4bKUtzy.Gehbasg281GbIx6gJaEub.6/yAHqeKwda', 0, '', '2023-01-27 23:08:13', '2023-01-27 23:08:13'),
(15, 'aya', 'aya@gmail.com', NULL, '$2y$10$NoCVoytb4QKxxvFAxKz66u1w9wdLJPxJNomI/UnuWXwm7zNSOfMN6', 0, '', '2023-01-27 23:47:10', '2023-01-27 23:47:10'),
(16, 'assfdfa', 'ssaff@gmail.com', NULL, '$2y$10$86qz9oxaXB2PS/cdWXvzIOVdnmIgAE8JMCUSS8cvxupyyXSaUHoSK', 0, '', '2023-01-28 00:10:27', '2023-01-28 00:10:27'),
(17, 'firdaouss', 'firdaouss@gmail.com', NULL, '$2y$10$0qrdTWQCDYNXOwqrSVVQ2.eqbP8fLbLFfl3V0a6yugeD3RWD6ibTS', 0, '', '2023-01-28 09:20:05', '2023-01-28 09:20:05'),
(18, 'imane', 'imane@gmail.com', NULL, '$2y$10$OOGyT.FUBgkmrMTs3VP52uULrdWRTEL/X9u.r1.ahQrEXVxcXnIai', 0, '', '2023-01-28 09:56:55', '2023-01-28 09:56:55'),
(19, 'hafsa', 'akzounh@gmail.com', NULL, '$2y$10$PLSb5oS9Z/IjS09R1GwMtOR/sezUmyPYrGfMBN6WErV9wXhBjYwtO', 0, '', '2023-01-28 10:31:54', '2023-01-28 10:31:54'),
(20, 'didi', 'didi@gmail.com', NULL, '$2y$10$qTFZ1TE1JL.n.bIRpFDs0OIiSltDfYj.E.P1cKPIu4gekBYRipeZu', 0, '', '2023-01-28 14:56:30', '2023-01-28 14:56:30'),
(21, 'haa', 'ggf@gmail.com', NULL, '$2y$10$qoJaxWgL7mk0DvgWpneaf.3ZJs3T6mP0WRO5AP06K3L7tyJx1cBGy', 0, '', '2023-01-28 20:15:55', '2023-01-28 20:15:55'),
(22, 'hsalhg', 'dsfgsg@gmal.com', NULL, '$2y$10$E9U6WIwOLkGP1TVy3Ls2Puxal80KduFcBnFSwbXEWW1Ub037ydGSq', 0, '', '2023-01-28 20:41:26', '2023-01-28 20:41:26'),
(23, 'jhgd,gfasgf', 'gdfgd@gmail.com', NULL, '$2y$10$.vyijFvDMez.LZgi1oKms.yGbLVXMsFEa3Lik.DPf2P2XkB7N94K.', 0, '', '2023-01-28 21:34:06', '2023-01-28 21:34:06'),
(24, 'hgkgd', 'fdfdss@gmail.com', NULL, '$2y$10$Q9QaQIw93ylunNqody6NkO/q9OW28n0.Y.w306GmEQdDIFo3wJwKG', 0, '', '2023-01-28 21:58:26', '2023-01-28 21:58:26'),
(25, 'aziza', 'aziza@gmail.com', NULL, '$2y$10$N32Y2b9fa5i4SzCEKNktrex15vq2wYb7B3aMjMmj1iVPvPTbmG3hG', 0, '', '2023-01-28 21:59:12', '2023-01-28 21:59:12'),
(26, 'fjdgfdgf', 'dddd@gmail.com', NULL, '$2y$10$h5kNd2DqOrGC4mxtNY31a.20Y97zqZesXuhgeuS0adK7WRy0JLDgm', 0, '', '2023-01-28 22:24:51', '2023-01-28 22:24:51'),
(27, 'bbbdfbbb', 'bbbbbb@gmail.com', NULL, '$2y$10$P/Hnl2g5FBRHs12ixluPVe1TWGK/DE.sX14o4JXWN27V.WOYAqY6K', 0, '', '2023-01-28 23:25:06', '2023-01-28 23:25:06'),
(28, 'jaat', 'janat@gmail.com', NULL, '$2y$10$s.lgPqWc/3pYsd9pJHIwO.CIfqLbajx.XJHVZ1QS0xYNyTvCJU/NO', 0, '', '2023-01-29 00:42:13', '2023-01-29 00:42:13'),
(29, 'imane', 'aweretswa@gmail.com', NULL, '$2y$10$lWWro7HaxOzhEpJGpKGK7uBZ5UNyeq8KliVfkyWJxbBntapxS95KS', 0, '0', '2023-01-29 22:25:38', '2023-01-29 22:25:38'),
(30, 'hoda', 'hoda@gmail.com', NULL, '$2y$10$3ZXzfxA7YCmyIh8eOCHzh.8dc87KXDCjkvIbxaIRZ5hKMrfIBAGKS', 0, '0', '2023-01-29 22:35:13', '2023-01-29 22:35:13'),
(31, 'dstrdjhfgfj', 'jcfdgsdrthjkl@gmail.com', NULL, '$2y$10$Y7N3RqpIilXI9DgPPIUMWOY.Jvavfm2n.EcprfYegRAR5X4vepu6G', 0, '0', '2023-01-30 10:38:10', '2023-01-30 10:38:10');

-- --------------------------------------------------------

--
-- Structure de la table `user_inforrmation`
--

CREATE TABLE `user_inforrmation` (
  `UserName` varchar(60) NOT NULL,
  `email` varchar(70) NOT NULL,
  `pasword` char(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `user_inforrmation`
--

INSERT INTO `user_inforrmation` (`UserName`, `email`, `pasword`) VALUES
('firdaouss', 'firdaousselyhy@gmail.com', 'asdfghjk'),
('hafsa', 'sihamelyahyaouy0@gmail.com', 'hgfewd'),
('hfgdsh', 'firdaousselyhy@gmail.com', 'hdfbdf'),
('im', 'safdasffs@gmail.com', 'dsfs'),
('imane', 'elyahyaouyimane9@gmail.com', 'asdfghjk'),
('yfsdygh', 'firdaousselyhy@gmail.com', 'wefew'),
('ytrhgre', 'elyahyaouyimane9@gmail.com', 'rweq');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id_categorie`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id_commande`);

--
-- Index pour la table `description`
--
ALTER TABLE `description`
  ADD PRIMARY KEY (`id_description`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id_produit`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Index pour la table `user_inforrmation`
--
ALTER TABLE `user_inforrmation`
  ADD PRIMARY KEY (`UserName`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
