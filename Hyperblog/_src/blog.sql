-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : dim. 07 jan. 2024 à 14:30
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(250) NOT NULL,
  `content` longtext NOT NULL,
  `picture` varchar(250) DEFAULT NULL,
  `active` tinyint(3) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `title`, `content`, `picture`, `active`) VALUES
(1, 'L&#039;hiver est &agrave; nos portes', '&lt;p&gt;L&amp;rsquo;&amp;eacute;t&amp;eacute; nous apporte ses journ&amp;eacute;es ensoleill&amp;eacute;es et ses soir&amp;eacute;es dor&amp;eacute;es ; l&amp;rsquo;automne, le mouvement du vent et la coloration glorieuse du feuillage. Mais l&amp;rsquo;hiver ? Son doux manteau de neige, uniforme et &amp;eacute;pur&amp;eacute;, recouvre les asp&amp;eacute;rit&amp;eacute;s des paysages, leur permettant de prendre une pause pour mieux rena&amp;icirc;tre au printemps.&lt;/p&gt;', NULL, 1),
(2, 'Le soleil', 'Le Soleil est l’étoile autour de laquelle tournoient tous les objets qui constituent notre système solaire, à savoir les planètes, les comètes et autres astéroïdes.', NULL, 1),
(3, 'L\'intelligence artificielle', 'Souvent classée dans le groupe des mathématiques et des sciences cognitives, elle fait appel à la neurobiologie computationnelle (particulièrement aux réseaux neuronaux) et à la logique mathématique (partie des mathématiques et de la philosophie). ', NULL, 1),
(15, 'Article non publi&eacute;', '&lt;p&gt;...&lt;/p&gt;', NULL, 0),
(21, 'Lorem Ipsum', '&lt;h4&gt;&quot;Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...&quot;&lt;/h4&gt;<br />\r\n&lt;h5&gt;&quot;There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...&quot;&lt;/h5&gt;<br />\r\n&lt;hr&gt;<br />\r\n&lt;div id=&quot;Content&quot;&gt;<br />\r\n&lt;div id=&quot;bannerL&quot;&gt;&lt;/div&gt;<br />\r\n&lt;div id=&quot;bannerR&quot;&gt;&lt;/div&gt;<br />\r\n&lt;div class=&quot;boxed&quot;&gt;<br />\r\n&lt;div id=&quot;lipsum&quot;&gt;<br />\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent dictum mauris vitae justo scelerisque, in hendrerit libero placerat. Fusce laoreet egestas tellus scelerisque maximus. Donec eu tincidunt dolor. Donec ut nunc interdum, pulvinar nisi eget, dictum felis. Nulla sapien tortor, auctor non quam eu, finibus lobortis nisi. Nullam tempus neque nec dui pellentesque vehicula. Sed commodo ipsum quis nulla semper blandit. Vestibulum condimentum, risus at pellentesque fermentum, dolor ex volutpat libero, sed tempor lectus quam eu sapien. Quisque dictum rhoncus augue, ac interdum mi placerat ut. Mauris finibus imperdiet posuere. Duis hendrerit lorem nec nisl vestibulum aliquam. Donec euismod, erat non pulvinar rutrum, dui leo pharetra ante, sed tincidunt dolor augue ac turpis.&lt;/p&gt;<br />\r\n&lt;p&gt;Ut efficitur tellus at purus vulputate interdum. Cras odio elit, porta sed laoreet sed, cursus vel tellus. Integer at libero porta, convallis est quis, maximus elit. Quisque sed dictum dolor, quis fermentum libero. Praesent mollis vel ligula a molestie. Quisque fringilla maximus magna, eu viverra nulla varius in. Nulla ante nulla, porta viverra ornare quis, ullamcorper ut purus.&lt;/p&gt;<br />\r\n&lt;/div&gt;<br />\r\n&lt;/div&gt;<br />\r\n&lt;/div&gt;', NULL, 1),
(23, 'D&eacute;couverte de JavaScript : Le Langage de Programmation Front-End', '&lt;h2&gt;Introduction&lt;/h2&gt;<br />\r\n&lt;p&gt;JavaScript, souvent abr&amp;eacute;g&amp;eacute; en JS, est un langage de programmation polyvalent, principalement utilis&amp;eacute; pour d&amp;eacute;velopper des fonctionnalit&amp;eacute;s interactives sur les sites web. C&#039;est l&#039;un des trois piliers fondamentaux du d&amp;eacute;veloppement web, aux c&amp;ocirc;t&amp;eacute;s de HTML (Hypertext Markup Language) pour la structure et CSS (Cascading Style Sheets) pour la pr&amp;eacute;sentation. JavaScript permet aux d&amp;eacute;veloppeurs de cr&amp;eacute;er des pages web dynamiques et r&amp;eacute;actives, offrant une exp&amp;eacute;rience utilisateur interactive et fluide.&lt;/p&gt;<br />\r\n&lt;h2&gt;Origines de JavaScript&lt;/h2&gt;<br />\r\n&lt;p&gt;JavaScript a &amp;eacute;t&amp;eacute; cr&amp;eacute;&amp;eacute; par Brendan Eich en 1995 lorsqu&#039;il travaillait chez Netscape Communications Corporation. &amp;Agrave; l&#039;origine, il a &amp;eacute;t&amp;eacute; d&amp;eacute;velopp&amp;eacute; sous le nom de &quot;Mocha&quot;, qui a &amp;eacute;t&amp;eacute; renomm&amp;eacute; rapidement en &quot;LiveScript&quot;, puis finalement en &quot;JavaScript&quot;. Bien que son nom puisse sugg&amp;eacute;rer des liens &amp;eacute;troits avec le langage Java, JavaScript et Java sont des langages distincts avec des objectifs et des fonctionnalit&amp;eacute;s diff&amp;eacute;rents.&lt;/p&gt;<br />\r\n&lt;h2&gt;Caract&amp;eacute;ristiques Principales&lt;/h2&gt;<br />\r\n&lt;h3&gt;1. Langage Interpr&amp;eacute;t&amp;eacute;&lt;/h3&gt;<br />\r\n&lt;p&gt;JavaScript est un langage interpr&amp;eacute;t&amp;eacute;, ce qui signifie que le code source est ex&amp;eacute;cut&amp;eacute; sans n&amp;eacute;cessiter de compilation pr&amp;eacute;alable. Les navigateurs web, tels que Chrome, Firefox et Safari, disposent d&#039;un moteur JavaScript int&amp;eacute;gr&amp;eacute; qui interpr&amp;egrave;te et ex&amp;eacute;cute le code directement dans l&#039;environnement du navigateur.&lt;/p&gt;<br />\r\n&lt;h3&gt;2. Orient&amp;eacute; Objet&lt;/h3&gt;<br />\r\n&lt;p&gt;JavaScript est un langage orient&amp;eacute; objet, ce qui signifie qu&#039;il utilise le concept d&#039;objets pour structurer le code. Les objets en JavaScript peuvent &amp;ecirc;tre des entit&amp;eacute;s autonomes contenant des propri&amp;eacute;t&amp;eacute;s et des m&amp;eacute;thodes, offrant une flexibilit&amp;eacute; dans la programmation.&lt;/p&gt;<br />\r\n&lt;h3&gt;3. Dynamique et Faiblement Typ&amp;eacute;&lt;/h3&gt;<br />\r\n&lt;p&gt;JavaScript est dynamiquement typ&amp;eacute;, ce qui signifie que le type d&#039;une variable peut &amp;ecirc;tre modifi&amp;eacute; &amp;agrave; tout moment pendant l&#039;ex&amp;eacute;cution du programme. De plus, il est faiblement typ&amp;eacute;, ce qui permet une flexibilit&amp;eacute; accrue lors de la manipulation des donn&amp;eacute;es.&lt;/p&gt;<br />\r\n&lt;h3&gt;4. &amp;Eacute;v&amp;eacute;nement-Driven&lt;/h3&gt;<br />\r\n&lt;p&gt;JavaScript excelle dans la gestion des &amp;eacute;v&amp;eacute;nements. Les actions de l&#039;utilisateur, telles que les clics de souris, les pressions de touches, etc., peuvent d&amp;eacute;clencher des &amp;eacute;v&amp;eacute;nements, auxquels le code JavaScript peut r&amp;eacute;agir en cons&amp;eacute;quence. Cela permet la cr&amp;eacute;ation d&#039;interfaces utilisateur r&amp;eacute;actives et interactives.&lt;/p&gt;<br />\r\n&lt;h2&gt;Utilisations Courantes&lt;/h2&gt;<br />\r\n&lt;h3&gt;1. Manipulation du DOM&lt;/h3&gt;<br />\r\n&lt;p&gt;Le Document Object Model (DOM) repr&amp;eacute;sente la structure hi&amp;eacute;rarchique d&#039;une page web. JavaScript est couramment utilis&amp;eacute; pour interagir avec le DOM, permettant aux d&amp;eacute;veloppeurs de modifier dynamiquement le contenu, la structure et le style des pages web.&lt;/p&gt;<br />\r\n&lt;h3&gt;2. AJAX&lt;/h3&gt;<br />\r\n&lt;p&gt;Asynchronous JavaScript and XML (AJAX) est une technique qui permet de mettre &amp;agrave; jour une page web sans recharger toute la page. JavaScript, en combinaison avec XMLHttpRequest, est souvent utilis&amp;eacute; pour cr&amp;eacute;er des applications web asynchrones offrant une exp&amp;eacute;rience utilisateur fluide.&lt;/p&gt;<br />\r\n&lt;h3&gt;3. D&amp;eacute;veloppement Front-End&lt;/h3&gt;<br />\r\n&lt;p&gt;JavaScript est essentiel dans le d&amp;eacute;veloppement front-end pour cr&amp;eacute;er des fonctionnalit&amp;eacute;s interactives telles que des sliders, des carrousels, des formulaires dynamiques, etc. Il est &amp;eacute;galement utilis&amp;eacute; dans le d&amp;eacute;veloppement de frameworks front-end populaires tels que React, Angular et Vue.js.&lt;/p&gt;<br />\r\n&lt;h2&gt;Conclusion&lt;/h2&gt;<br />\r\n&lt;p&gt;JavaScript joue un r&amp;ocirc;le essentiel dans le d&amp;eacute;veloppement web moderne, apportant interactivit&amp;eacute; et dynamisme aux pages web. Son &amp;eacute;volution constante et son adoption g&amp;eacute;n&amp;eacute;ralis&amp;eacute;e en font un langage incontournable pour les d&amp;eacute;veloppeurs cherchant &amp;agrave; cr&amp;eacute;er des exp&amp;eacute;riences web exceptionnelles.&lt;/p&gt;', NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(150) NOT NULL,
  `passwd` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `passwd`) VALUES
(1, 'john@mail.com', '1234'),
(2, 'alain@mail.com', '1234');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
