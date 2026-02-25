-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-02-2026 a las 22:48:09
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cafeteria_utvt_equipo_3`
--

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
(1, '2026_02_25_185407_create_tipo_comida_equipo3s_table', 1),
(2, '2026_02_25_185654_create_comida_equipo3s_table', 1),
(3, '2026_02_25_195500_create_sessions_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('89l7leFRgr8JGNtTDSIBWHCQleBcZ54ta8BV1msJ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ3dTdXRHWlQzMXN0dE5yY3p1emhibmtTdzJhU3loQThhOTU5UmxocCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jb21pZGFfZXF1aXBvMyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1772055720);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_comidas_equipo3`
--

CREATE TABLE `tb_comidas_equipo3` (
  `id_comida_equipo3` bigint(20) UNSIGNED NOT NULL,
  `nombre_comida_equipo3` varchar(100) NOT NULL,
  `costo_comida_equipo3` decimal(8,2) NOT NULL,
  `detalle_comida_equipo3` text NOT NULL,
  `id_tipo_comida_equipo3` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tb_comidas_equipo3`
--

INSERT INTO `tb_comidas_equipo3` (`id_comida_equipo3`, `nombre_comida_equipo3`, `costo_comida_equipo3`, `detalle_comida_equipo3`, `id_tipo_comida_equipo3`, `created_at`, `updated_at`) VALUES
(1, 'Sopes', 105.00, 'Eveniet consequuntur iusto quibusdam.', 3, '2026-02-26 03:40:30', '2026-02-26 03:40:30'),
(2, 'Pozole', 47.00, 'Sit doloremque dolorum sit dolorum quas consequatur.', 5, '2026-02-26 03:40:30', '2026-02-26 03:40:30'),
(3, 'Flan', 23.00, 'Non sint accusantium et debitis dicta consequuntur officia saepe.', 3, '2026-02-26 03:40:30', '2026-02-26 03:40:30'),
(4, 'Quesadillas', 69.00, 'Et delectus rerum illo dolor qui eos dignissimos.', 4, '2026-02-26 03:40:30', '2026-02-26 03:40:30'),
(5, 'Hamburguesa', 71.00, 'Asperiores accusantium voluptates ratione dolorem dolor est quia atque.', 4, '2026-02-26 03:40:30', '2026-02-26 03:40:30'),
(6, 'Tacos', 82.00, 'Corrupti quia ullam quia aliquid rerum.', 1, '2026-02-26 03:40:30', '2026-02-26 03:40:30'),
(7, 'Enchiladas', 27.00, 'Explicabo non iure vel sequi.', 2, '2026-02-26 03:40:30', '2026-02-26 03:40:30'),
(8, 'Hamburguesa', 39.00, 'Sint soluta corporis maiores in.', 1, '2026-02-26 03:40:30', '2026-02-26 03:40:30'),
(9, 'Pozole', 40.00, 'Beatae animi aut nostrum cum ipsa dolor harum.', 3, '2026-02-26 03:40:30', '2026-02-26 03:40:30'),
(10, 'Pozole', 53.00, 'Provident cupiditate deserunt sed mollitia ratione dolor eveniet.', 3, '2026-02-26 03:40:30', '2026-02-26 03:40:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_tipo_comidas_equipo3`
--

CREATE TABLE `tb_tipo_comidas_equipo3` (
  `id_tipo_comida_equipo3` bigint(20) UNSIGNED NOT NULL,
  `nombre_categoria_equipo3` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tb_tipo_comidas_equipo3`
--

INSERT INTO `tb_tipo_comidas_equipo3` (`id_tipo_comida_equipo3`, `nombre_categoria_equipo3`, `created_at`, `updated_at`) VALUES
(1, 'Bebidas', NULL, NULL),
(2, 'Postres', NULL, NULL),
(3, 'Platillos Fuertes', NULL, NULL),
(4, 'Entradas', NULL, NULL),
(5, 'Sopas', NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `tb_comidas_equipo3`
--
ALTER TABLE `tb_comidas_equipo3`
  ADD PRIMARY KEY (`id_comida_equipo3`),
  ADD KEY `tb_comidas_equipo3_id_tipo_comida_equipo3_foreign` (`id_tipo_comida_equipo3`);

--
-- Indices de la tabla `tb_tipo_comidas_equipo3`
--
ALTER TABLE `tb_tipo_comidas_equipo3`
  ADD PRIMARY KEY (`id_tipo_comida_equipo3`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tb_comidas_equipo3`
--
ALTER TABLE `tb_comidas_equipo3`
  MODIFY `id_comida_equipo3` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tb_tipo_comidas_equipo3`
--
ALTER TABLE `tb_tipo_comidas_equipo3`
  MODIFY `id_tipo_comida_equipo3` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tb_comidas_equipo3`
--
ALTER TABLE `tb_comidas_equipo3`
  ADD CONSTRAINT `tb_comidas_equipo3_id_tipo_comida_equipo3_foreign` FOREIGN KEY (`id_tipo_comida_equipo3`) REFERENCES `tb_tipo_comidas_equipo3` (`id_tipo_comida_equipo3`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
