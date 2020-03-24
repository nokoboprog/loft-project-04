-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 24 2020 г., 12:13
-- Версия сервера: 5.6.43
-- Версия PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `games_market`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Sports games', 'Моделирование классических видов спортивных игр.', '2020-03-24 05:48:11', '2020-03-24 05:48:11'),
(2, 'Race games', 'Гонки на различных болидах.', '2020-03-24 05:48:31', '2020-03-24 05:48:31'),
(3, 'Maze games', 'Игры-лабиринты на выживание.', '2020-03-24 05:48:53', '2020-03-24 05:48:53'),
(4, 'Combat games', 'Игры с прямой конфронтацией на нанесение и избегание урона.', '2020-03-24 05:49:13', '2020-03-24 05:49:13'),
(5, 'War games', 'Фокус на активном противостоянии с противником.', '2020-03-24 05:49:35', '2020-03-24 05:49:35'),
(6, 'Adventure', 'Акцент на прохождении сложных заданий, накоплении инструментов и достижении цели.', '2020-03-24 05:49:57', '2020-03-24 05:49:57'),
(7, 'Inretpersonal games', 'Фокус на отношениях между несколькими игроками.', '2020-03-24 05:50:51', '2020-03-24 05:50:51'),
(8, 'Miscellaneous game', 'Игры не вошедшие в другие категории.', '2020-03-24 05:51:47', '2020-03-24 05:51:47');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `mails`
--

CREATE TABLE `mails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `mails`
--

INSERT INTO `mails` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'forswiftmailer2020@mail.ru', '2020-03-24 05:57:11', '2020-03-24 05:57:11');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_03_18_082105_create_categories_table', 1),
(4, '2020_03_18_101551_roles_field_users', 1),
(5, '2020_03_18_151502_create_products_table', 1),
(6, '2020_03_18_235843_foreign_key_categories', 1),
(7, '2020_03_21_101851_create_orders_table', 1),
(8, '2020_03_21_163440_create_mails_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 2, 9, '2020-03-24 06:06:58', '2020-03-24 06:06:58'),
(2, 2, 5, '2020-03-24 06:07:05', '2020-03-24 06:07:05'),
(3, 3, 7, '2020-03-24 06:07:51', '2020-03-24 06:07:51'),
(4, 4, 6, '2020-03-24 06:08:16', '2020-03-24 06:08:16'),
(5, 4, 7, '2020-03-24 06:08:17', '2020-03-24 06:08:17'),
(6, 4, 8, '2020-03-24 06:08:18', '2020-03-24 06:08:18');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) UNSIGNED NOT NULL,
  `img` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `price`, `img`, `created_at`, `updated_at`) VALUES
(1, 6, 'Assassin\'s Creed 2', 'Assassin\'s Creed II – это приключенческий экшен от третьего лица. Действие игры происходит в средние века в Италии. Современный потомок величайших убийц в истории Дезмонд оказывается в теле Эцио Аудиторе де ла Фиренце, мастерски владеющего хашшашинскими навыками. Разработчики предлагают игрокам улучшенную и обновленную геймплейную систему из первой части серии - Эцио все так же может перемещаться как по земле, так и по крышам, научился плавать, и обновил свой арсенал навыков и приспособлений.', '350.00', '86024a95eb4a0ac416270522926ddc88.jpg', '2020-03-24 05:54:37', '2020-03-24 05:54:37'),
(2, 5, 'Call of Duty: Modern Warfare 2', 'Call of Duty: Modern Warfare 2 - продолжение одной из самых популярных игр в серии Call of Duty. Сюжетная кампания продолжает историю оригинальной игры, в которой игроки останавливали ультраправого националиста, грозившего уничтожить США ядерной ракетой. Во второй части игроку предстоит побывать среди лачуг на шумных улочках Рио-де-Жанейро, в заснеженных горах России, на пыльных афганских дорогах и в других неожиданных и экстраординарных местах. Многие огрехи прошлой части устранены: враги теперь не \"рождаются\" бесконечно, на экране всегда присутствует значок, показывающий, куда и за кем идти.', '290.00', 'ca59ac7ed20c4327af4ed2ef3c3bb715.jpg', '2020-03-24 05:55:48', '2020-03-24 05:55:48'),
(3, 5, 'Warcraft 3: The Frozen Throne', 'Warcraft 3: The Frozen Throne - это прямое продолжение ролевой стратегии Warcraft III: The Reign of Chaos, в котором игроки возвращаются в мир Азерота, в котором прошло буквально несколько месяцев со времен окончания предыдущей игры. Армия Пылающего Легиона была разбита, и жизнь всех рас начала налаживаться. Ночные эльфы вернулись в чащу Ашенвальского леса, потрепанная в битвах Орда обосновалась в холмах на востоке Калимдора, как и остатки людей. Артас же, ведомый зовом Ледяного Трона, намеревается бросить вызов всему миру, став Королем-Личем и обрушив всю свою ярость на остальные народы.', '330.00', 'aaa561f3ff9253db669fc21d9b753860.jpg', '2020-03-24 05:58:52', '2020-03-24 05:58:52'),
(4, 6, 'Batman: Arkham City', 'Batman: Arkham City - сиквел одной из популярнейших игр 2009 года выпуска. В продолжении истории противостояния Бэтмена и Джокера игрокам предстоит отправиться в \"пригород\" Аркхемской лечебницы, которую в свои руки захватил Джокер, чтобы навести там порядок. Новая часть похождений человека в костюме летучей мыши стала куда масштабнее и разнообразнее - на откуп Бэтмену выдают не несколько рядом стоящих зданий лечебницы, а целый район Готэма, по которому можно свободно перемещаться в любых направлениях.', '240.00', 'e3e8c3fc9f655ed191f0c324ccfec789.jpg', '2020-03-24 06:00:01', '2020-03-24 06:00:01'),
(5, 7, 'This War of Mine: The Little Ones', 'This War of Mine: The Little Ones - это дополненная версия This War of Mine, в которой игрокам придется провести сквозь разрушенный войной город группу беженцев, среди которых теперь есть и дети.', '330.00', '07ef30a19d7c4d33c64ff610d4717cb7.jpg', '2020-03-24 06:00:55', '2020-03-24 06:00:55'),
(6, 3, 'Overwatch 2', 'Overwatch 2 - это продолжение командного многопользовательского шутера от Blizzard, в котором авторы добавили сюжетную кампанию, особые героические миссии, кастомизацию навыков и предметы. Все это - для нового PvE-режима, который предназначен для развития вселенной Overwatch. PvP-режимы при этом никуда не делись, более того - все игроки в первую часть будут играть на тех же картах и теми же героями, что и владельцы сиквела', '380.00', 'f4caaa764b549219c412b05a487e1166.jpg', '2020-03-24 06:01:48', '2020-03-24 06:01:48'),
(7, 6, 'Deus Ex: Human Revolution', 'Deus Ex: Human Revolution - это приключенческая ролевая игра, выполненная в стилистике киберпанк, разработанная компанией Eidos Montreal и выпущенная компанией Square Enix в 2011 году на платформах Windows, Xbox 360 и PlayStation 3. Это третья по счёту игра во вселенной Deus Ex, являющаяся косвенным приквелом оригинальных двух игр, ибо события Human Revolution разворачиваются за четверть века до оригинальной дилогии.', '325.00', '1f35bcfd84181d7569444f82d2ac4f67.jpg', '2020-03-24 06:02:35', '2020-03-24 06:02:35'),
(8, 1, 'Rocket League', 'Rocket League - это аркадный проект, который сочетает в себе элементы футбола и боевых гонок на мощных автомобилях. Является логическим продолжением игры Supersonic Acrobatic Rocket-Powered Battle-Cars, в которой игроки занимались примерно тем же - то есть играли в футбол на машинах.', '240.00', '07e11c05df82cd9fda554f14f90b69dd.jpg', '2020-03-24 06:03:24', '2020-03-24 06:03:24'),
(9, 6, 'Dishonored: The Knife of Dunwall', 'Dishonored: The Knife of Dunwall - масштабное дополнение каноничными миссиями, связанные единым повествованием. Сюжет Knife of Dunwall развивается параллельно с событиями основной игры. Игрок снова возвращается к тому судьбоносному дню, когда Корво приплыл в Дануолл. Убив Императрицу и навсегда изменив судьбу города, Дауд жаждет искупления. На помощь приходит Аутсайдер, то ли ангел, то ли демон, сыгравший важную роль в оригинале. Вместе с Даудом и его бандой китобоев будем исследовать новые районы города и драться с невиданными врагами.', '360.00', 'b46e6c3604a1c8520ad3482d82c4b7a8.jpg', '2020-03-24 06:04:10', '2020-03-24 06:04:10');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'Lesha', 'lesha@mail.ru', NULL, '$2y$10$slqrn84WgES0b.I7aHqy..nUmZ/J5edLrI97XqL.UZgw2FyzYf9IC', NULL, '2020-03-24 05:47:11', '2020-03-24 05:47:11', 1),
(2, 'Lesha2', 'lesha2@mail.ru', NULL, '$2y$10$EAs7/xN1df8OslSykcjw9OQBvNUoT2xYnn7ddGUQG6sQGWreIh7oG', NULL, '2020-03-24 06:06:53', '2020-03-24 06:06:53', 0),
(3, 'Lesha3', 'lesha3@mail.ru', NULL, '$2y$10$hi.QYHVRBl9jORV4I6t8KesUTfDCQ2PN8OmIgOu6VBM9F5RSoSFWu', NULL, '2020-03-24 06:07:47', '2020-03-24 06:07:47', 0),
(4, 'Lesha4', 'lesha4@mail.ru', NULL, '$2y$10$r8a3bx8wZCbHGPtf3Z.fw.54ioJb2iJj8wkE6YqaNXAIa.u9T1oO2', NULL, '2020-03-24 06:08:12', '2020-03-24 06:08:12', 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `mails`
--
ALTER TABLE `mails`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mails_email_unique` (`email`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_product_id_foreign` (`product_id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `mails`
--
ALTER TABLE `mails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
