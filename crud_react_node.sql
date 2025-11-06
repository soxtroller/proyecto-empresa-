-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-11-2025 a las 03:55:42
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
-- Base de datos: `crud_react_node`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Alimentos'),
(2, 'Juguetes'),
(3, 'Accesorios'),
(4, 'Medicamentos'),
(5, 'Higiene'),
(6, 'Ropa para mascotas'),
(7, 'Camas y descanso'),
(8, 'Transporte'),
(9, 'Entrenamiento'),
(10, 'Snacks y premios'),
(11, 'Add your name in the body');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `category_id`) VALUES
(1, 'Croquetas Premium', 'Alimento balanceado para perros adultos', 49.99, 16),
(2, 'Croquetas Puppy Mix', 'Comida especial para cachorros', 39.99, 16),
(3, 'Lata Gourmet Gato', 'Alimento húmedo sabor salmón', 25.5, 16),
(4, 'Pelota de goma', 'Pelota resistente para jugar en exteriores', 10.99, 17),
(5, 'Cuerda trenzada', 'Juguete para morder y fortalecer mandíbula', 8.5, 17),
(6, 'Ratón de tela', 'Juguete para gatos con sonido', 6.99, 17),
(7, 'Correa retráctil', 'Correa extensible de 5 metros', 19.99, 18),
(8, 'Collar luminoso', 'Collar LED recargable para paseos nocturnos', 15.99, 18),
(9, 'Pechera ajustable', 'Arnés cómodo para perros medianos', 18.5, 18),
(10, 'Antipulgas Nexgard', 'Tabletas masticables mensuales para perros medianos', 35, 19),
(11, 'Desparasitante interno', 'Jarabe antiparasitario de amplio espectro', 28.75, 19),
(12, 'Champú hipoalergénico', 'Champú sin fragancia para piel sensible', 22.99, 20),
(13, 'Toallas húmedas pet', 'Limpieza rápida para patas y pelaje', 12.5, 20),
(14, 'Perfume para mascotas', 'Fragancia suave post baño', 14.99, 20),
(15, 'Camiseta verano', 'Ropa ligera para climas cálidos', 16, 21),
(16, 'Abrigo invierno', 'Abrigo térmico impermeable para perros', 29.99, 21),
(17, 'Cama ortopédica', 'Cama ergonómica con espuma viscoelástica', 45.99, 22),
(18, 'Colchón grande', 'Colchón suave de felpa para razas grandes', 59.99, 22),
(19, 'Transportadora plástica', 'Caja de transporte resistente con ventilación', 48, 23),
(20, 'Mochila de transporte', 'Bolso con red para gatos pequeños', 35.5, 23),
(21, 'Clicker de entrenamiento', 'Clicker para reforzamiento positivo', 9.99, 24),
(22, 'Tapete absorbente', 'Tapete entrenadores para cachorros', 18.99, 24),
(23, 'Galletas de pollo', 'Snack horneado con sabor a pollo', 8.5, 25),
(24, 'Bocaditos de salmón', 'Premios ricos en omega 3', 9.25, 25),
(25, 'Hueso masticable', 'Juguete comestible que fortalece encías', 7.99, 25),
(26, 'Croquetas senior', 'Alimento especializado para perros mayores', 44.99, 16),
(27, 'Juguete interactivo', 'Pelota con compartimiento para snacks', 14.99, 17),
(28, 'Rascador vertical', 'Rascador de sisal para gatos', 26.5, 17),
(29, 'Collar de cuero', 'Collar resistente con placa metálica', 21, 18),
(30, 'Antipulgas Advantage', 'Pipeta tópica mensual para gatos', 33.5, 19),
(31, 'Desinfectante Pet Safe', 'Limpieza de espacios donde habitan mascotas', 18.5, 20),
(32, 'Capa impermeable', 'Protección contra la lluvia para perros', 24.99, 21),
(33, 'Cojín peludo', 'Cojín mullido de felpa antiestrés', 27.99, 22),
(34, 'Caja transportadora avión', 'Homologada para cabina aérea', 85.99, 23),
(35, 'Silbato de entrenamiento', 'Silbato para comandos a distancia', 5.5, 24),
(36, 'Snacks dentales', 'Limpieza dental diaria con sabor a menta', 11.5, 25);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
