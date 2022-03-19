-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : sam. 19 mars 2022 à 08:27
-- Version du serveur :  5.7.32
-- Version de PHP : 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `db_eCommerce`
--

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220312174332', '2022-03-12 17:43:41', 127),
('DoctrineMigrations\\Version20220315175441', '2022-03-15 17:54:49', 190);

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `product_category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `picture`, `description`, `stock`, `product_category_id`) VALUES
(201, 'Chaise', 336, NULL, 'Super Produit', 546, 31),
(202, 'Chaise', 126, NULL, 'Super Produit', 348, 31),
(203, 'Chaise', 478, NULL, 'Super Produit', 145, 31),
(204, 'Chaise', 883, NULL, 'Super Produit', 122, 31),
(205, 'Chaise', 735, NULL, 'Super Produit', 216, 31),
(206, 'Chaise', 791, NULL, 'Super Produit', 553, 31),
(207, 'Chaise', 883, NULL, 'Super Produit', 236, 31),
(208, 'Chaise', 493, NULL, 'Super Produit', 314, 31),
(209, 'Chaise', 520, NULL, 'Super Produit', 839, 31),
(210, 'Chaise', 844, NULL, 'Super Produit', 159, 31),
(211, 'Chaise', 770, NULL, 'Super Produit', 605, 31),
(212, 'Chaise', 460, NULL, 'Super Produit', 713, 31),
(213, 'Chaise', 268, NULL, 'Super Produit', 148, 31),
(214, 'Chaise', 260, NULL, 'Super Produit', 222, 31),
(215, 'Chaise', 328, NULL, 'Super Produit', 661, 31),
(216, 'Chaise', 418, NULL, 'Super Produit', 517, 31),
(217, 'Chaise', 309, NULL, 'Super Produit', 144, 31),
(218, 'Chaise', 954, NULL, 'Super Produit', 421, 31),
(219, 'Chaise', 363, NULL, 'Super Produit', 826, 31),
(220, 'Chaise', 894, NULL, 'Super Produit', 648, 31),
(221, 'Lit', 874, NULL, 'Super Produit', 418, 32),
(222, 'Lit', 672, NULL, 'Super Produit', 290, 32),
(223, 'Lit', 339, NULL, 'Super Produit', 497, 32),
(224, 'Lit', 219, NULL, 'Super Produit', 585, 32),
(225, 'Lit', 431, NULL, 'Super Produit', 129, 32),
(226, 'Lit', 546, NULL, 'Super Produit', 882, 32),
(227, 'Lit', 941, NULL, 'Super Produit', 996, 32),
(228, 'Lit', 563, NULL, 'Super Produit', 143, 32),
(229, 'Lit', 639, NULL, 'Super Produit', 586, 32),
(230, 'Lit', 127, NULL, 'Super Produit', 299, 32),
(231, 'Lit', 733, NULL, 'Super Produit', 720, 32),
(232, 'Lit', 712, NULL, 'Super Produit', 799, 32),
(233, 'Lit', 928, NULL, 'Super Produit', 502, 32),
(234, 'Lit', 702, NULL, 'Super Produit', 186, 32),
(235, 'Lit', 640, NULL, 'Super Produit', 444, 32),
(236, 'Lit', 338, NULL, 'Super Produit', 881, 32),
(237, 'Lit', 493, NULL, 'Super Produit', 473, 32),
(238, 'Lit', 964, NULL, 'Super Produit', 940, 32),
(239, 'Lit', 409, NULL, 'Super Produit', 415, 32),
(240, 'Lit', 952, NULL, 'Super Produit', 892, 32),
(241, 'Table', 467, NULL, 'Super Produit', 759, 33),
(242, 'Table', 673, NULL, 'Super Produit', 190, 33),
(243, 'Table', 551, NULL, 'Super Produit', 232, 33),
(244, 'Table', 672, NULL, 'Super Produit', 602, 33),
(245, 'Table', 291, NULL, 'Super Produit', 977, 33),
(246, 'Table', 488, NULL, 'Super Produit', 524, 33),
(247, 'Table', 260, NULL, 'Super Produit', 295, 33),
(248, 'Table', 581, NULL, 'Super Produit', 204, 33),
(249, 'Table', 840, NULL, 'Super Produit', 142, 33),
(250, 'Table', 977, NULL, 'Super Produit', 896, 33),
(251, 'Table', 332, NULL, 'Super Produit', 613, 33),
(252, 'Table', 710, NULL, 'Super Produit', 577, 33),
(253, 'Table', 468, NULL, 'Super Produit', 498, 33),
(254, 'Table', 441, NULL, 'Super Produit', 873, 33),
(255, 'Table', 681, NULL, 'Super Produit', 736, 33),
(256, 'Table', 849, NULL, 'Super Produit', 429, 33),
(257, 'Table', 917, NULL, 'Super Produit', 405, 33),
(258, 'Table', 948, NULL, 'Super Produit', 245, 33),
(259, 'Table', 611, NULL, 'Super Produit', 714, 33),
(260, 'Table', 905, NULL, 'Super Produit', 399, 33),
(261, 'Lampe', 984, NULL, 'Super Produit', 645, 34),
(262, 'Lampe', 919, NULL, 'Super Produit', 253, 34),
(263, 'Lampe', 598, NULL, 'Super Produit', 305, 34),
(264, 'Lampe', 210, NULL, 'Super Produit', 368, 34),
(265, 'Lampe', 522, NULL, 'Super Produit', 918, 34),
(266, 'Lampe', 356, NULL, 'Super Produit', 904, 34),
(267, 'Lampe', 600, NULL, 'Super Produit', 550, 34),
(268, 'Lampe', 864, NULL, 'Super Produit', 853, 34),
(269, 'Lampe', 615, NULL, 'Super Produit', 706, 34),
(270, 'Lampe', 421, NULL, 'Super Produit', 806, 34),
(271, 'Lampe', 250, NULL, 'Super Produit', 247, 34),
(272, 'Lampe', 676, NULL, 'Super Produit', 187, 34),
(273, 'Lampe', 583, NULL, 'Super Produit', 823, 34),
(274, 'Lampe', 365, NULL, 'Super Produit', 582, 34),
(275, 'Lampe', 568, NULL, 'Super Produit', 564, 34),
(276, 'Lampe', 846, NULL, 'Super Produit', 923, 34),
(277, 'Lampe', 160, NULL, 'Super Produit', 745, 34),
(278, 'Lampe', 218, NULL, 'Super Produit', 766, 34),
(279, 'Lampe', 247, NULL, 'Super Produit', 638, 34),
(280, 'Lampe', 984, NULL, 'Super Produit', 856, 34),
(281, 'Armoire', 673, NULL, 'Super Produit', 298, 35),
(282, 'Armoire', 743, NULL, 'Super Produit', 212, 35),
(283, 'Armoire', 398, NULL, 'Super Produit', 444, 35),
(284, 'Armoire', 602, NULL, 'Super Produit', 985, 35),
(285, 'Armoire', 559, NULL, 'Super Produit', 250, 35),
(286, 'Armoire', 301, NULL, 'Super Produit', 952, 35),
(287, 'Armoire', 492, NULL, 'Super Produit', 236, 35),
(288, 'Armoire', 235, NULL, 'Super Produit', 710, 35),
(289, 'Armoire', 585, NULL, 'Super Produit', 142, 35),
(290, 'Armoire', 652, NULL, 'Super Produit', 589, 35),
(291, 'Armoire', 128, NULL, 'Super Produit', 304, 35),
(292, 'Armoire', 782, NULL, 'Super Produit', 665, 35),
(293, 'Armoire', 366, NULL, 'Super Produit', 688, 35),
(294, 'Armoire', 709, NULL, 'Super Produit', 722, 35),
(295, 'Armoire', 716, NULL, 'Super Produit', 850, 35),
(296, 'Armoire', 469, NULL, 'Super Produit', 815, 35),
(297, 'Armoire', 828, NULL, 'Super Produit', 871, 35),
(298, 'Armoire', 541, NULL, 'Super Produit', 577, 35),
(299, 'Armoire', 341, NULL, 'Super Produit', 548, 35),
(300, 'Armoire', 858, NULL, 'Super Produit', 358, 35),
(301, 'Placard', 231, NULL, 'Super Produit', 938, 36),
(302, 'Placard', 252, NULL, 'Super Produit', 688, 36),
(303, 'Placard', 470, NULL, 'Super Produit', 956, 36),
(304, 'Placard', 976, NULL, 'Super Produit', 201, 36),
(305, 'Placard', 829, NULL, 'Super Produit', 598, 36),
(306, 'Placard', 205, NULL, 'Super Produit', 448, 36),
(307, 'Placard', 123, NULL, 'Super Produit', 775, 36),
(308, 'Placard', 394, NULL, 'Super Produit', 415, 36),
(309, 'Placard', 286, NULL, 'Super Produit', 930, 36),
(310, 'Placard', 849, NULL, 'Super Produit', 796, 36),
(311, 'Placard', 588, NULL, 'Super Produit', 567, 36),
(312, 'Placard', 424, NULL, 'Super Produit', 852, 36),
(313, 'Placard', 751, NULL, 'Super Produit', 365, 36),
(314, 'Placard', 236, NULL, 'Super Produit', 704, 36),
(315, 'Placard', 105, NULL, 'Super Produit', 242, 36),
(316, 'Placard', 866, NULL, 'Super Produit', 762, 36),
(317, 'Placard', 877, NULL, 'Super Produit', 870, 36),
(318, 'Placard', 964, NULL, 'Super Produit', 145, 36),
(319, 'Placard', 413, NULL, 'Super Produit', 453, 36),
(320, 'Placard', 976, NULL, 'Super Produit', 424, 36),
(321, 'Tapis', 970, NULL, 'Super Produit', 549, 37),
(322, 'Tapis', 610, NULL, 'Super Produit', 902, 37),
(323, 'Tapis', 750, NULL, 'Super Produit', 996, 37),
(324, 'Tapis', 236, NULL, 'Super Produit', 333, 37),
(325, 'Tapis', 654, NULL, 'Super Produit', 798, 37),
(326, 'Tapis', 821, NULL, 'Super Produit', 838, 37),
(327, 'Tapis', 718, NULL, 'Super Produit', 954, 37),
(328, 'Tapis', 309, NULL, 'Super Produit', 686, 37),
(329, 'Tapis', 794, NULL, 'Super Produit', 895, 37),
(330, 'Tapis', 615, NULL, 'Super Produit', 830, 37),
(331, 'Tapis', 882, NULL, 'Super Produit', 323, 37),
(332, 'Tapis', 956, NULL, 'Super Produit', 477, 37),
(333, 'Tapis', 805, NULL, 'Super Produit', 874, 37),
(334, 'Tapis', 756, NULL, 'Super Produit', 439, 37),
(335, 'Tapis', 972, NULL, 'Super Produit', 701, 37),
(336, 'Tapis', 974, NULL, 'Super Produit', 403, 37),
(337, 'Tapis', 623, NULL, 'Super Produit', 333, 37),
(338, 'Tapis', 577, NULL, 'Super Produit', 404, 37),
(339, 'Tapis', 305, NULL, 'Super Produit', 607, 37),
(340, 'Tapis', 458, NULL, 'Super Produit', 205, 37),
(341, 'Bureau', 330, NULL, 'Super Produit', 700, 38),
(342, 'Bureau', 415, NULL, 'Super Produit', 886, 38),
(343, 'Bureau', 581, NULL, 'Super Produit', 557, 38),
(344, 'Bureau', 962, NULL, 'Super Produit', 386, 38),
(345, 'Bureau', 904, NULL, 'Super Produit', 891, 38),
(346, 'Bureau', 196, NULL, 'Super Produit', 902, 38),
(347, 'Bureau', 530, NULL, 'Super Produit', 438, 38),
(348, 'Bureau', 109, NULL, 'Super Produit', 952, 38),
(349, 'Bureau', 220, NULL, 'Super Produit', 314, 38),
(350, 'Bureau', 240, NULL, 'Super Produit', 566, 38),
(351, 'Bureau', 885, NULL, 'Super Produit', 283, 38),
(352, 'Bureau', 751, NULL, 'Super Produit', 828, 38),
(353, 'Bureau', 394, NULL, 'Super Produit', 717, 38),
(354, 'Bureau', 887, NULL, 'Super Produit', 694, 38),
(355, 'Bureau', 377, NULL, 'Super Produit', 706, 38),
(356, 'Bureau', 143, NULL, 'Super Produit', 528, 38),
(357, 'Bureau', 473, NULL, 'Super Produit', 866, 38),
(358, 'Bureau', 509, NULL, 'Super Produit', 737, 38),
(359, 'Bureau', 564, NULL, 'Super Produit', 373, 38),
(360, 'Bureau', 936, NULL, 'Super Produit', 266, 38),
(361, 'Commode', 320, NULL, 'Super Produit', 704, 39),
(362, 'Commode', 242, NULL, 'Super Produit', 485, 39),
(363, 'Commode', 425, NULL, 'Super Produit', 659, 39),
(364, 'Commode', 514, NULL, 'Super Produit', 705, 39),
(365, 'Commode', 922, NULL, 'Super Produit', 851, 39),
(366, 'Commode', 249, NULL, 'Super Produit', 823, 39),
(367, 'Commode', 583, NULL, 'Super Produit', 661, 39),
(368, 'Commode', 693, NULL, 'Super Produit', 703, 39),
(369, 'Commode', 839, NULL, 'Super Produit', 492, 39),
(370, 'Commode', 663, NULL, 'Super Produit', 572, 39),
(371, 'Commode', 981, NULL, 'Super Produit', 210, 39),
(372, 'Commode', 649, NULL, 'Super Produit', 264, 39),
(373, 'Commode', 850, NULL, 'Super Produit', 227, 39),
(374, 'Commode', 726, NULL, 'Super Produit', 276, 39),
(375, 'Commode', 615, NULL, 'Super Produit', 634, 39),
(376, 'Commode', 337, NULL, 'Super Produit', 986, 39),
(377, 'Commode', 361, NULL, 'Super Produit', 470, 39),
(378, 'Commode', 490, NULL, 'Super Produit', 316, 39),
(379, 'Commode', 307, NULL, 'Super Produit', 182, 39),
(380, 'Commode', 733, NULL, 'Super Produit', 636, 39),
(381, 'Accessoires', 120, NULL, 'Super Produit', 525, 40),
(382, 'Accessoires', 902, NULL, 'Super Produit', 197, 40),
(383, 'Accessoires', 597, NULL, 'Super Produit', 666, 40),
(384, 'Accessoires', 968, NULL, 'Super Produit', 788, 40),
(385, 'Accessoires', 479, NULL, 'Super Produit', 692, 40),
(386, 'Accessoires', 541, NULL, 'Super Produit', 188, 40),
(387, 'Accessoires', 214, NULL, 'Super Produit', 360, 40),
(388, 'Accessoires', 564, NULL, 'Super Produit', 600, 40),
(389, 'Accessoires', 535, NULL, 'Super Produit', 195, 40),
(390, 'Accessoires', 662, NULL, 'Super Produit', 926, 40),
(391, 'Accessoires', 373, NULL, 'Super Produit', 867, 40),
(392, 'Accessoires', 434, NULL, 'Super Produit', 814, 40),
(393, 'Accessoires', 945, NULL, 'Super Produit', 313, 40),
(394, 'Accessoires', 116, NULL, 'Super Produit', 330, 40),
(395, 'Accessoires', 671, NULL, 'Super Produit', 500, 40),
(396, 'Accessoires', 729, NULL, 'Super Produit', 279, 40),
(397, 'Accessoires', 707, NULL, 'Super Produit', 558, 40),
(398, 'Accessoires', 386, NULL, 'Super Produit', 600, 40),
(399, 'Accessoires', 292, NULL, 'Super Produit', 103, 40),
(400, 'Accessoires', 982, NULL, 'Super Produit', 609, 40);

-- --------------------------------------------------------

--
-- Structure de la table `product_category`
--

CREATE TABLE `product_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `product_category`
--

INSERT INTO `product_category` (`id`, `name`, `picture`) VALUES
(31, 'Chaise', NULL),
(32, 'Lit', NULL),
(33, 'Table', NULL),
(34, 'Lampe', NULL),
(35, 'Armoire', NULL),
(36, 'Placard', NULL),
(37, 'Tapis', NULL),
(38, 'Bureau', NULL),
(39, 'Commode', NULL),
(40, 'Accessoires', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `roles`, `password`, `picture`) VALUES
(151, 'mail.1@ikea.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$imJa6KqqIlkwKz7PepYXEuJaUdHTp5HMyqDFzhkM0IHth7dmj87Qi', NULL),
(152, 'mail.2@ikea.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$2SxCQzsIrcCd1EzseVLPXuZlx9H9rjHYyWYawBM0ueC7PUqK97gxm', NULL),
(153, 'mail.3@ikea.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$bxNM6CsmOFm.riEN/untxupqYbeAafECJdo3xSHv6Iwf9zPPxo5OW', NULL),
(154, 'mail.4@ikea.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$Z7Yn548trbFnCKrBVJA68eyD5pavzQ3hsZmI3C4NmJWAcVY7/SDaG', NULL),
(155, 'mail.5@ikea.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$6LCG.1Nnebm3hT8VLCFrouxnttMhBUiS0hnbaQCu0tVKJEdLmbelG', NULL),
(156, 'mail.6@ikea.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$MR.XWFdfmqq8dYOzXOJCM.RZZvTeKBj8rG78d4b6Nkuq3t5m28x26', NULL),
(157, 'mail.7@ikea.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$xx46crk467r1pztsI288be4HmmUoFC4qOxMuTpdqywk41ev6KM7B.', NULL),
(158, 'mail.8@ikea.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$Y65pPTkKv.Os3RCiQ7TXge7XpTE.BZHD80BjxaDMRX5k9r1LFDUmO', NULL),
(159, 'mail.9@ikea.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$yEex4PC6sjh0nRDoyPODh.lMSA44CHgnQDtSQfEjZ1QBm29ctusty', NULL),
(160, 'mail.10@ikea.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$KvjNsap/IoEQdz5FKlf86uCfEy08sklBAAqlkCZQNzBW/MWVkkp4O', NULL),
(161, 'mail.11@ikea.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$XsBSOHeQ0dFdtaPfxYyNU.kXNGfmHtoCiuZFnXUUaq1lg0NMSDQbC', NULL),
(162, 'mail.12@ikea.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$dVUOsNokZaTe6GFFaRJteeWOT8ynDzg8xU4HaRzbaiZ/AhDRx1sqG', NULL),
(163, 'mail.13@ikea.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$a36B7JG1.1efM/eqQrTGZe2nTKO4m4F./u9oe8fHXSVSsjECu9Al6', NULL),
(164, 'mail.14@ikea.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$b2.Nw4FfpfAPJb59TgyKSOcCO8D4eMUxx4b8q4jTrfX5uH7i07aG2', NULL),
(165, 'mail.15@ikea.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$uttiQQLzPYumoSYVj3yBxeVfB3ScOfyvvss/i9Id3TWblUl.hpgN2', NULL),
(166, 'mail.16@ikea.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$hI07oaZsSG49DMtnjy3/weW/M79zdagMv6ripdUd9nJ.78vwAsnAW', NULL),
(167, 'mail.17@ikea.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$/KIoTJQU4zF6dOBMLGCdI.xBC9Y.jSeqL2QcKILHOV1hLsJT.HQrK', NULL),
(168, 'mail.18@ikea.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$luYwM5mpdsNSxUPCp//ou.KjmYvMd1qVG3BSwhbo9EsEci8HP9RxW', NULL),
(169, 'mail.19@ikea.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$w3pbNwCc0jaTZhQVlKlku.GG4Ds3y1n5BC/uVPpUS73BuYXIlLydW', NULL),
(170, 'mail.20@ikea.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$tZWkMBnyPQidpYs.4adKJuYaEqwF5T7glMGBdVG2L5Iw71fRx.ZSS', NULL),
(171, 'mail.21@ikea.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$q7RWfvHMOm/hgWdE6gl2lehofCNwClvkYxwitBHKaKotrlQjGnS1O', NULL),
(172, 'mail.22@ikea.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$cwnyybFnl3JV3tPods90yOKa26PcEQ0NEVHFt/cE0Tv.UA13yRfA.', NULL),
(173, 'mail.23@ikea.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$n71/cnEffB3HQrkp4ZmqEOA2nCcYxqbtvJjAtrnYLoJdoS2sLFCoe', NULL),
(174, 'mail.24@ikea.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$PekuThYmutDQxhuFK4Zg0.CBNg3mbySWM3hL2YmyNTwN1iS5dchaG', NULL),
(175, 'mail.25@ikea.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$9eIoRd3a5fIIjlsVwqOfS.YWtTD/e75KNuE8fwjOMEeUmR4ZR5MpO', NULL),
(176, 'mail.26@ikea.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$Us9VPJpAhNsAk/kiN0m/Uu1cIzsoaZEbnvOwx2ELKaLrYD.TIf35.', NULL),
(177, 'mail.27@ikea.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$FngzUbA93KjNc7w3NK6w/.AM/sjoT1K5d7Qk94XN/gl9DkNCYCT0a', NULL),
(178, 'mail.28@ikea.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$6ptss3.lc4dhctXyTLyhC.OtjcsR298r9rc7xM/Em9MAYWGbW1tkS', NULL),
(179, 'mail.29@ikea.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$bZ8MZf92P5Ne9pgOtpm6wee4If5C0uGVwCZtM2A4LwwDi4snQTVuK', NULL),
(180, 'mail.30@ikea.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$UN.UCgZOHjzQiNpED5gm7uL1sNv4wpkuMFru3xcn8nySS9peX4oEm', NULL),
(181, 'mail.31@ikea.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$VrhxHDz0cGkVwoZcmWoz8ekXaKsYsbpWbjK0P0Ct9NC/Sv5g/0LJm', NULL),
(182, 'mail.32@ikea.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$SNtSXWE8Pf3nvRb22QDYguBh1JWEDVxcMLkq/x7QH.URzcw6D/K/6', NULL),
(183, 'mail.33@ikea.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$MUgk6zwh/c1WgEZJeerKwuUwLEgzaTCmLW9vP8kGFjLwjJEWl2wAW', NULL),
(184, 'mail.34@ikea.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$UNiT4vVcEUZMQEzwMOTgaeD0QL5Y0yRfTSr1qS6Sqjh/bjCJujuhe', NULL),
(185, 'mail.35@ikea.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$qj3KktSG8OG7h2/vLSLPUubawdOimcAOFZnjIHi/bnQSaGtnd76gu', NULL),
(186, 'mail.36@ikea.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$DslZFLAaytirjYaK3FNNsO0dAnMtw6Mdr4CiYshSxddYRyJb/lQ3m', NULL),
(187, 'mail.37@ikea.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$WzZDUAO5Bs9mgx.O8iJFEutsy9OvzdzgPcpPYXW1goPqAF1b2SMt.', NULL),
(188, 'mail.38@ikea.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$HoxHv1BXk3egKW5F/f7/geQ9MkjloBxGioJvHyJ9yc3kFQYhEeiYe', NULL),
(189, 'mail.39@ikea.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$LnnA/uh9lsl22eXl2vsl1.GCTnSMYdodwJYwEKrfePyMmYflIWDqi', NULL),
(190, 'mail.40@ikea.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$5TATGMQZY6ykrG7UbeKzPuXuaTs5R7HNVaXbGlg4UXX/tIbrn5qIK', NULL),
(191, 'mail.41@ikea.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$mi753yKG2CVoErIYcESno.xed6.wDrMJXLi062jxo3z6LPc5EPwEW', NULL),
(192, 'mail.42@ikea.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$uHRhtMsxZjskLEN5gVXMreuwxEQrewsRd6jLUtT/WBEJMuVbrffxy', NULL),
(193, 'mail.43@ikea.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$aMrb86BaYYTXXbj/.exBNOx/R7hn98YgjyB5BSwog292gbn6Oaor6', NULL),
(194, 'mail.44@ikea.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$uhAhXag7zSowWCAI4e.9guBbcAR7o3GEqdfXZIk53DvHC9fgesuDW', NULL),
(195, 'mail.45@ikea.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$prdYEgxcbmkRm6piyhNSZu8AYWHGH1nqnKiGSxzrScHqA1gvI0IcK', NULL),
(196, 'mail.46@ikea.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$GV9M7C09DifhdLe7U09jjeY9egwFjeqpdOte0cW9myz9cxKIZw1wm', NULL),
(197, 'mail.47@ikea.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$5JLKVIvdBr4.RHqpR9nOHeKn5y7uuwFrS6BjJa1SgbMiGlYJw38DG', NULL),
(198, 'mail.48@ikea.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$Zm9MfPeEu5bWFZRK8j1Yp.cahlG2leI3Y61NlxggMYQfCxDmuC6lG', NULL),
(199, 'mail.49@ikea.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$xMAobLFELDPhKooulQa0g.kk5oH9Z.GGbOlU4ZsZVTGEmqA9xykc.', NULL),
(200, 'mail.50@ikea.com', '[\"ROLE_ADMIN\", \"ROLE_USER\"]', '$2y$13$I.6D0UCJBQa0WieW.Ghs.e8kWOG60LbEjzTMK8IN59bVJd.W022hG', NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_B3BA5A5ABE6903FD` (`product_category_id`);

--
-- Index pour la table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=401;

--
-- AUTO_INCREMENT pour la table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FK_B3BA5A5ABE6903FD` FOREIGN KEY (`product_category_id`) REFERENCES `product_category` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
