-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-11-2023 a las 15:03:05
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyectolv`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chats`
--

CREATE TABLE `chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chat_user`
--

CREATE TABLE `chat_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `chat_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `telefono` varchar(255) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `sexo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `apellido`, `telefono`, `direccion`, `sexo`, `created_at`, `updated_at`) VALUES
(1, 'Sit recusandae Cor', 'Pariatur Maiores pe', '87', 'Perspiciatis accusa', 'femenino', NULL, '2023-10-15 18:43:23'),
(2, 'Est quisquam maiore', 'Unde veniam pariatu', '65', 'Aliquip rerum simili', 'masculino', NULL, NULL),
(3, 'Aut adipisci rem err', 'Et consectetur aliqu', '86', 'Illo harum corporis', 'masculino', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `telefono` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `nombre`, `apellido`, `correo`, `telefono`, `foto`, `created_at`, `updated_at`) VALUES
(1, 'raul', 'rocha l.', 'raul7@gmail.com', '7452166', 'uploads/WOUTFnovE13zC55aZqukYF9jLgoXZQXclU2DtaqT.jpg', NULL, '2023-10-10 04:49:22'),
(2, 'lucas', 'renan', 'lucas@gmail.com', '7458169', 'uploads/nNLm4SjbSszXGhujLdzSK3QoEg21NTLfXzR5UpoS.jpg', NULL, NULL),
(15, 'Velit sed nesciunt', 'Dolor dolore molesti', 'gybakiviq@mailinator.com', '522323', 'uploads/nPPg0wezE7aGvOVGWpZ7DoBFQdzEzIPowMkHwwVN.webp', NULL, '2023-10-15 16:13:00'),
(20, 'Aut enim quo earum a', 'Veniam et et sunt', 'wamy@mailinator.com', '8523232332', 'uploads/AaHnKLwXmFxCXCxEceJRwXkhnhJh5B3p3sG8wPhv.jpg', NULL, '2023-10-15 16:12:54'),
(23, 'Consequat Asperiore', 'Magni ipsa eiusmod', 'cyfuj@mailinator.com', '78', 'uploads/eCyCCERfllOSNXsjx9usZ5rEoF1p7MkzHZV71epU.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `chat_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(13, '2014_10_12_000000_create_users_table', 1),
(14, '2014_10_12_100000_create_password_resets_table', 1),
(15, '2019_08_19_000000_create_failed_jobs_table', 1),
(16, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(17, '2023_10_04_172226_create_empleados_table', 1),
(18, '2023_10_09_130157_create_productos_table', 1),
(19, '2023_10_12_222748_create_clientes_table', 2),
(20, '2023_10_15_123105_create_clientes_table', 3),
(21, '2023_10_15_142649_create_clientes_table', 4),
(22, '0000_00_00_000000_create_websockets_statistics_entries_table', 5),
(23, '2023_11_04_160723_create_chats_table', 6),
(24, '2023_11_04_160907_create_chat_user_table', 6),
(25, '2023_11_04_163300_create_messages_table', 7),
(26, '2023_11_15_215602_create_points_table', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
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
-- Estructura de tabla para la tabla `points`
--

CREATE TABLE `points` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Comentario` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `points`
--

INSERT INTO `points` (`id`, `Nombre`, `Comentario`, `created_at`, `updated_at`) VALUES
(40, 'Secretaria', 'hola', '2023-11-16 19:25:44', '2023-11-16 19:25:44'),
(41, 'juan', 'hola!!!!', '2023-11-16 19:27:00', '2023-11-16 19:27:00'),
(42, 'pedro', 'sdasdasd', '2023-11-16 19:29:29', '2023-11-16 19:29:29'),
(43, 'pedro', 'sdasdasd', '2023-11-16 19:57:22', '2023-11-16 19:57:22'),
(44, 'Id totam officia dol', 'Fuga Dicta aspernat', '2023-11-16 19:57:32', '2023-11-16 19:57:32'),
(45, 'Fugiat molestiae in', 'Aliquam quos qui ali', '2023-11-16 19:57:53', '2023-11-16 19:57:53'),
(46, 'Sed quo ex velit du', 'Voluptas quaerat opt', '2023-11-17 17:32:50', '2023-11-17 17:32:50'),
(47, 'Magnam fugit et cup', 'Explicabo Ad dicta', '2023-11-17 17:35:05', '2023-11-17 17:35:05'),
(48, 'Magnam fugit et cup', 'Explicabo Ad dicta', '2023-11-17 17:37:29', '2023-11-17 17:37:29'),
(49, 'Enim vel inventore q', 'Sed id aliquip eum n', '2023-11-17 17:38:55', '2023-11-17 17:38:55'),
(50, 'Enim vel inventore q', 'Sed id aliquip eum n', '2023-11-17 17:41:50', '2023-11-17 17:41:50'),
(51, 'Sit itaque molestia', 'Et et non impedit l', '2023-11-17 17:42:58', '2023-11-17 17:42:58'),
(52, 'Reprehenderit qui ne', 'Quia placeat enim e', '2023-11-17 17:43:36', '2023-11-17 17:43:36'),
(53, 'Et et perspiciatis', 'Quia ut incididunt s', '2023-11-17 17:44:44', '2023-11-17 17:44:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Descripcion` varchar(255) NOT NULL,
  `Stock` varchar(255) NOT NULL,
  `Precio` varchar(255) NOT NULL,
  `Fecha_V` varchar(255) NOT NULL,
  `Proveedor_id` varchar(255) NOT NULL,
  `Foto` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `Nombre`, `Descripcion`, `Stock`, `Precio`, `Fecha_V`, `Proveedor_id`, `Foto`, `created_at`, `updated_at`) VALUES
(1, 'diclofenaco', 'desinflamante en gel', '60', '1', '2023-10-13', '1', 'uploads/S5mnLtUAJj8nKdpqG27ZkcOipqe0zVw6fpQBPFWv.jpg', NULL, '2023-10-15 16:14:22'),
(3, 'paracetamol', 'dolores de cabeza', '25', '2', '2023-10-26', '5', 'uploads/uuZQ7k0Cr7ih42jWyh3kK4XmttAgxL0kf75RqzaT.jpg', NULL, '2023-10-10 02:39:59'),
(4, 'diclofenaco', 'desinflamante', '5', '3', '2023-10-29', '2', 'uploads/aTfSElfDF4AzTe8y5apaygTaZhngpFXWcavc4huZ.jpg', NULL, '2023-10-10 02:40:35'),
(16, 'Sed dolor reiciendis', 'Dolore quos fugiat', '99', '75', '1974-08-07', '4', 'uploads/JucWVl9lWIHGpcp4BlF07Li9xsLU1hdkmyPvn8v6.jpg', NULL, '2023-10-15 16:14:11'),
(19, 'Qui aliquam et iusto', 'Sed iusto esse duis', '53', '230', '1982-05-20', '3', 'uploads/X8lQu6Te6GA0jQrVuoyp70V260pXQJ3QaxFXnBB4.jpg', NULL, '2023-10-26 18:22:19'),
(24, 'Fugiat fugit expedi', 'Non quisquam corrupt', '40', '72', '1982-02-14', '20', 'uploads/4ATGEQan5zt2Yjoz8zWPsk5KNlvoETlCmkztdddd.webp', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$riGfczbARViGn5c2n/X.PeohGsKUFqZ417dxKE9gGkm47SXSwUBMS', NULL, '2023-10-10 00:20:45', '2023-10-10 00:20:45'),
(3, 'YIMY ARMELLA', 'yimyarmella0@gmail.com', NULL, '$2y$10$murNJ7rWElzBcMvjfknqwu/H4bTcLK6ArRdpidZVEb/Iq4vDAidlu', NULL, '2023-10-10 02:02:29', '2023-10-10 02:02:29'),
(5, 'estrella', 'estrella@gmail.com', NULL, '$2y$10$GoJaWi3XynmC5ncT5UW2nufVwyBJ2aVfda2b894RzNPJNoOQIxn.y', NULL, '2023-11-03 15:51:04', '2023-11-03 15:51:04'),
(6, 'usuario1', 'usuario1@gmail.com', NULL, '$2y$10$Y2IwMaTGQtnzDSEC/QBfuuSQhXtI5G3ow2CBuDvlPw2EDuGulZInC', NULL, '2023-11-04 19:22:58', '2023-11-04 19:22:58'),
(7, 'usuario2', 'usuario2@gmail.com', NULL, '$2y$10$/UF.CRI4ZYcS0p8Bu2Zl7uSFrDsf48XkYRw9fHPB7oGk53YONO0Dq', NULL, '2023-11-04 19:23:27', '2023-11-04 19:23:27'),
(8, 'us1', 'us1@gmail.com', NULL, '$2y$10$2Do9/QNMWzmrEbERlpt4hO3W.5RPYg1pOgVX3sHxngpcfu0xjP4Wy', NULL, '2023-11-05 00:29:32', '2023-11-05 00:29:32'),
(9, 'YIMY', 'yimy@gmail.com', NULL, '$2y$10$mW21Vnkll28d/749wwemdOOh7eCHX7bJkjYk9fkds9t5eXGovhimi', NULL, '2023-11-09 18:42:58', '2023-11-09 18:42:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `websockets_statistics_entries`
--

CREATE TABLE `websockets_statistics_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `app_id` varchar(255) NOT NULL,
  `peak_connection_count` int(11) NOT NULL,
  `websocket_message_count` int(11) NOT NULL,
  `api_message_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `chat_user`
--
ALTER TABLE `chat_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_id` (`chat_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `points`
--
ALTER TABLE `points`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `chats`
--
ALTER TABLE `chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `chat_user`
--
ALTER TABLE `chat_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `points`
--
ALTER TABLE `points`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `chat_user`
--
ALTER TABLE `chat_user`
  ADD CONSTRAINT `chat_user_ibfk_1` FOREIGN KEY (`chat_id`) REFERENCES `chats` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chat_user_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
