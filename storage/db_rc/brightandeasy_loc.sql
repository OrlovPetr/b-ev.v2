-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 29 2019 г., 15:57
-- Версия сервера: 8.0.15
-- Версия PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `brightandeasy.loc`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `article_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `article_alias` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `article_category` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `article_category_alias` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `article_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `article_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `article_img` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `article_img_alt` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `mail_base`
--

CREATE TABLE `mail_base` (
  `id` bigint(20) NOT NULL COMMENT 'ID',
  `company` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `mail_base`
--

INSERT INTO `mail_base` (`id`, `company`, `category`, `email`, `url`, `phone`) VALUES
(1, 'Бизнес Инвест', 'Застройщик', '', 'http://busines-invest.ru', '+7 (861) 274-90-72'),
(2, 'Адвокатский кабинет Сидорова АС.', 'аюридическая помощь', 'advokatsidorov@mail.ru', 'http://advokatsidorov.ru', '+7(904)8768419'),
(3, 'БАУИНВЕСТ', 'Застройщик', 'info@bauinvest.su', 'https://sk-bauinvest.ru', '+7 (800) 100-00-35'),
(4, 'ГК СТРОЙГРАД', 'Застройщик', 'abrikos@gk-stroygrad.ru', 'http://www.gk-stroygrad.ru', '8 (861) 204-17-67'),
(5, 'Европея', 'Строительство', 'info@europeya.ru', 'http://europeya.ru', '88002004030'),
(6, 'ЖК Резиденция', 'Строительство многоэтажных домов', 'mial-stroj@yandex.ru', 'http://жк-резиденция.рф', '8-861-246-48-28'),
(7, 'Service-Help.ru', 'Электроника, Запчасти для телефонов,Аксессуары для телефонов,Ремонт телефонов', 'info@applehelp.ru', 'https://service-help.ru/', '8-989-262-8888'),
(8, 'Агентство Недвижимости Велес-Риэлт и Партнеры ', 'Все операции с недвижимостью', 'agenstvo-nedvizhimosti@veles-realtor.ru', 'http://veles-realtor.ru', '89604749822'),
(9, 'SFlowers', 'Сервис доставки цветов', 'contact@s-fl.ru', 'https://krasnodar.s-fl.ru/', '+7 (861) 203 38 14'),
(10, 'Веб-студия MaPbiz Group', 'создание и продвижение сайтов, аудит сайтов', 'aleksey_abrosimov@list.ru', 'https://mapbiz.ru/sozdanie-sajtov-v-krasnodare-pod-klyuch/', '8(900)288-38-58'),
(11, 'Интернет-магазин отделочных материалов КВАДРАТУРА.ru', 'Продажа отделочных материалов, сантехники, товаров для дома и интерьера', 'sochi@kwadratura.ru', 'http://sochi.kwadratura.ru', '+7 (918) 999-16-56'),
(12, 'Интернет-магазин новогодних костюмов &quot;Дед Одет&quot;', 'Интернет-магазин новогодних костюмов &quot;Дед Одет&quot;', '', 'https://krasnodar.dedodet.ru', '8-800-551-45-84'),
(13, 'Flower Studio - Доставка цветов в Краснодаре', 'Доставка цветов', 'flowers.studio@ya.ru', 'http://flowerstudio.com.ru', '8 (800) 500-51-58, +7 (918) 979-95-22'),
(14, 'Журнал &quot;Табрис&quot;', 'Онлайн журнал', 'zhurnal.tabris@yandex.ru', 'http://magazine.tabris.ru/', '8 (861) 234-44-22, внутр.тел.102'),
(15, 'АнтАлекс', 'Продажа спецодежды и инструментов', 'zakaz@antaleks.info', 'http://анталекс.рф/', '8-861-200-02-42, 8-800-50-50-021'),
(16, 'Macon advice', 'рекламная компания', 'info@macon-advice.ru', 'http://macon-realty.ru/', '88612101155'),
(17, 'ГИК', 'Строительная компания', 'office@maininvest.ru', 'http://gik23.ru', '88002508338'),
(18, 'Дирекция СОТ', 'Группа компаний', 'info@d-sot.ru', 'http://d-sot.ru', '8 (861) 234-2919'),
(19, 'Единая служба наркологической помощи', 'Наркологическая помощь', 'esnp23@yandex.ru', 'http://esnp24.ru', '88001007807'),
(20, 'Адвокат Сидоров Анатолий Станиславович', 'Юридические услуги', 'advokatsidorov@mail.ru', 'http://advokatsidorov.ru', '+7(904)8768419'),
(21, 'Горница Окон', 'Пластиковые окна', 'info.oknagor@mail.ru', 'http://kupit-okna.info', '+7 (861) 213-94-06 '),
(22, 'Белова наталья', 'Продажа квартир и дов. Новостройки и вторичный рынок. Квартиры от подрядчиков', '79180129391@ya.ru', '', '89180129391'),
(23, 'Detailing Gold', 'Детейлинг автомобилей', 'kzm2009@mail.ru', 'https://detailinggold.ru/', '+ 7 (988) 353-31-81'),
(24, 'Анис недвижимость', 'Агентство недвижимости.', '', 'http://anis-realty.ru', '89189173666'),
(25, ' Частный детский сад &quot;Дошкольная Британская Академия&quot;', ' Частный детский сад', 'info@britishpreschool.com', 'http://www.britishpreschool.com', '+7 988 488 21 21'),
(26, 'AXIS Development', 'Застройщик', 'info@axis.ru', 'http://axis.ru', '+7 (800) 222 31 78'),
(27, 'Искусство Дизайна', 'Кухни на заказ от производителя в Краснодаре', 'sale@kitchens-krd.ru', 'http://kitchens-krd.ru/', '8 (989) 800-27-49'),
(28, 'Ваш заказ', 'доставка и грузоперевозки', 'bobobo-84@mail.ru', ' https://v-zakaz.ru/ ', '78612245776'),
(29, 'Департамент Краснодарской Недвижимости', 'Предоставление услуг', 'hh-dkn@yandex.ru', 'http://дкн-риэлт.рф/', '+7 (928) 040-64-04'),
(30, 'Квартирная галерея', 'Продажа и покупка недвижимости в Краснодаре', '', 'https://apartments-gallery.ru/', '89615853868'),
(31, 'Аист', 'фотостудия', 'aist-photostudio@mail.ru ', 'http://www.aist-studio.ru ', '89183877030'),
(32, 'Бюро переводов TLC - Краснодар', 'Перевод документации и текстов', '', 'https://tlcentr.ru', '+7 (988) 242-47-42'),
(33, 'Арболит Кубани Ваш теплый Дом', 'Производство Арболит Блока ', 'arbolitkubani@yandex.ru', '', '89186922458'),
(34, 'Капитал Инвест', 'Застройщик', '', 'http://capstroi.com', '88005003355'),
(35, 'ЕкатеринодарИнвест-Строй', 'Застройщик', 'info@ek-invest.ru', 'http://ek-invest.ru', '8 (861) 205-67-32, 8 (861) 205-67-26'),
(36, 'AUTOMAMA Красная площадь | Проверенные автомобили в кредит', 'Продажа автомобилей', 'info@automama.ru', 'https://automama.ru/', '+7 (800) 100-84-38'),
(37, 'Дизайн интерьера', 'Дизайн интерьера', 'info@decoro.vip', 'https://www.decoro.vip/page/DIZAYN_INTERERA', '+7(861)2402733'),
(38, 'Квестория', 'Организация праздников', 'questoria-krasnodar@yandex.ru', 'http://krasnodar.questoria.ru', '89064347978'),
(39, 'LepART', 'Продажа и производство лепнины.', 'lepart-marketing@yandex.ru', 'https://lepart.su', '8 (861) 205-03-55'),
(40, 'Добрострой-Юг', 'Строительная компания', 'info@dobrostroy23.ru', 'http://dobrostroy23.ru', '8-918-970-22-59, 8-988-249-80-80'),
(41, 'ЖК Новый квартал', 'Строительная компания', 'mark_03@mail.ru', '', '79189884228'),
(42, 'Кубань Инвест', 'Недвижимость', 'kubaninwest@yandex.ru', 'http://1dogma.ru', '8 (861) 222 88 22'),
(43, 'Консалтинговая компания &laquo;Законовед&raquo;', 'юридические услуги, Услуги адвоката', 'info@zakonoved23.ru', 'http://zakonoved23.ru', '8-861-292-80-85, 8-928-884-80-85'),
(44, 'Креативное рекламное агентство Кливера', 'реклама и дизайн', 'info@clivera.ru', 'www.clivera.ru', '+7(861)299-96-09'),
(45, 'Меховые накидки на сиденья авто ЛЕГАТОН', 'Производство меховых накидок на сиденья ато', '', 'https://nakidki.legaton-shop.ru', '+7 (989) 293-24-18'),
(46, 'МФЦ Западный', 'Многофункциональный центр', 'mfc@krd.ru', 'http://mfc.krd.ru', '8 (861) 218-9-218'),
(47, 'ЛИКВИ МОЛИ', 'Продажа авто-масел, авто-химии и авто-косметики', 'novsintez@mail.ru', 'http://liquimoly.ru/', '89883160804'),
(48, 'Любимый дом', 'Застройщик', 'lubimyidom@inbox.ru', 'http://любимыйдом.рф', '8 800 250 90 77'),
(49, 'Компания &quot;ОСК&quot; - Строительство домов в Краснодаре под ключ ', 'Строительные и отделочные работы', 'osc-krd@yandex.ru', 'http://отделка-строительство-краснодар.рф', '8 (928) 440-25-56'),
(50, 'Минелаб - Регион', 'Поисковое оборудование', 'RegionaLBarnauL@yandex.ru', 'http://md23.su', '89237952363'),
(51, 'МНОГОНАДО.net', 'Поисковая система предприятий по Краснодару', 'vl.smart@mail.ru', 'http://gorod.krasnodar.mnogonado.net/', '+7(902) 618-78-15'),
(52, 'КСК-Инвест', 'Застройщик', 'info@ksk-invest.com', 'http://ksk-invest.com', '8 (861) 248-45-67, 8 (800) 700-28-94'),
(53, 'Латлант', 'Ландшафтный дизайн', 'latlant_design@mail.ru', 'http://latlant-design.ru/', '8 (938) 868-51-61'),
(54, 'Краснодарское Строительное Объединение', 'строительство', 'info@jkfontani.ru', 'http://www.jkfontani.ru', '8(861)20-19-000'),
(55, 'Конференц-зал FORUM PLAZA', 'Конференц-залы и комнаты переговоров', 'pr@forum1hotel.com', 'http://www.event.forumplaza.ru', '+7 988 3 55555 8'),
(56, 'МФЦ Зиповский', 'Многофункциональный центр', 'mfc@krd.ru', 'http://mfc.krd.ru', '8 (861) 218-9-218'),
(57, 'МФЦ Центральный', 'Многофункциональный центр', 'mfc@krd.ru', 'http://mfc.krd.ru', '8 (861) 218-9-218'),
(58, 'ООО М2-ДЕВЕЛОПМЕНТ', 'Дизайн, ремонт и обустройство с гарантией до 3-х лет!', 'm2-devel0pment@yandex.ru', 'http://m2-development.ru', '78612404100'),
(59, 'ООО Автотехком', 'Сдача в аренду строительной техники и спецтехники', '', 'http://avtotehkom.com/', '+7 (918) 99-88-722'),
(60, 'МФЦ Прикубанский', 'Многофункциональный центр', 'mfc@krd.ru', 'http://mfc.krd.ru', '8 (861) 218-9-218'),
(61, 'МФЦ Прикубанский 2', 'Многофункциональный центр', 'mfc@krd.ru', 'http://mfc.krd.ru', '8 (861) 218-9-218'),
(62, 'МФЦ Карасунский', 'Многофункциональный центр', 'mfc@krd.ru', 'http://mfc.krd.ru', '8 (861) 218-9-218'),
(63, 'ОБД-Инвест', 'Строительно-инвестиционная компания', 'obd-invest@yandex.ru', 'http://obdinvest.ru', '+7 (861) 274 88 20, +7 (861) 274 90 20'),
(64, 'ООО &quot;ГК УРАЛ МАРТ&quot;', 'Торговля', '', 'http://krasnodar.ural-mart.ru', '+7 (861) 205-16-87'),
(65, 'ООО &quot;ГарантСтройКомплекс&quot;', 'Строительство многоэтажных жилых домов ', 'garantstroy_k@mail.ru', 'http://garantdeveloper.ru', '8-861-298-48-48'),
(66, 'Наркологическая клиника &laquo;ДельтаМед&raquo;', 'Наркологический центр в Краснодаре - частная наркологическая клиника &laquo;ДельтаМед&raquo;', '', 'https://clinicrehab.ru/', '+7 (962) 880-66-33'),
(67, 'ООО &quot;Эврика&quot;', 'Экологическая организация, проектная организация', 'evrika-k@yandex.ru', 'https://evrika-k.ru', '+7(861) 245-10-81'),
(68, 'ООО ПКФ Движение', 'Продажа и ремонт запчастей для дорожно-строительной техники', 'pkfdvizenie@yandex.ru', 'http://pkfdvizenie.ru/', '84855254440'),
(69, 'Наш Дом Кубань', 'Кованые изделия на заказ', 'info@kovkadivo.ru', 'https://kovkadivo.ru', '+ 7 918 336 23 23'),
(70, 'ООО СК &quot;Вектор&quot;', 'Строительная компания', 'sale@dubrovkakrd.ru', 'http://жкдубровка.рф', '89182422932'),
(71, 'ООО &laquo;РЕГИОН-СТРОЙ&raquo;', 'Строительство жилых домов ', '', 'https://dombalans.ru', '89282151512'),
(72, 'ООО &quot;Абсолют&quot;', 'дезинфекция, дезинсекция, дератизация', 'abs0lyt.buh@gmail.com', 'https://abs0lyt.me', '+7 (928) 039-30-63'),
(73, 'Ремонт холодильников в Краснодаре &laquo;Белый Медведь&raquo;', 'Ремонт холодильников в Краснодаре', 'info@krasnodarholod.ru', 'http://krasnodarholod.ru', '+7 (861) 204-28-90'),
(74, 'Реал Инвест', 'Агентство недвижимости', 'marketing@risochi.ru', 'http://sochi-realinvest.ru', '89184185037'),
(75, 'Орион Центр', 'Продажа недвижимости', 'yulyaorion@mail.ru', '', '8-918-666-90-92'),
(76, 'Призывной Советник', 'Помощь призывникам', 'info@prizyvnoi-sovetnik.info', 'http://prizyvnoi-sovetnik.info/', '8-918-355-80-09'),
(77, 'Рабочий Фактор', 'Аутсорсинговая компания', 'workfactor@yandex.ru', 'http://workfactor.ru', '79530807875'),
(78, 'Похмельная Служба', 'Частная наркологическая клиника', 'info@stop-alko.ru', 'http://stop-alko.ru', '78005116479'),
(79, 'Рекламное агентство &quot;Яблоко&quot;', 'Рекламное агентство', 'ybloko-ra@mail.ru', 'http://всерекламы.рф', '89182759655'),
(80, 'ООО СК &laquo;ВЕКТОР&raquo;', 'Строительная компания ', 'sale@dybrovkakrd.ru', 'http://жкдубровка.рф', '+7 (861) 203-64-72'),
(81, 'Отопление Сити', 'Проектирование, монтаж и обслуживание систем отопления, водоснабжения и канализации.', 'info@otoplenie.city', 'http://krasnodar.otoplenie.city/', '8 800 222-33-17'),
(82, 'Рекламный Дизайн', 'Создание сайтов', 'info@dcsite.ru', 'https://dcsite.ru/', '+7 918 240 00 65'),
(83, 'Родные масла', 'Федеральная сеть автомагазинов', 'krd@rmasla.ru', 'http://krasnodar.rmasla.ru', '+7 (861) 205-01-03'),
(84, 'СплитГост', 'Продажа климатического оборудования', 'splitgost@yandex.ru', 'http://www.splitgost.ru', '8(861)243-04-04, 8(928)884-32-00'),
(85, 'Транспортная компания Новолог', 'грузоперевозки', '4240200@mail.ru', 'http://dispnovo.ru/', '79284240200'),
(86, 'Техник', 'торговая компания', 'zapros@avtopogruzchik.ru', 'http://krd.avtopogruzchik.ru/', '8 (800) 511-90-45'),
(87, 'Строй&amp;Сервис', 'Остекление балконов и лоджий', 'Roma.lvr@yandex.ru', 'https://balkon-krasnodar.ru/', '89883896879'),
(88, 'Строительная компания &quot;Онис&quot;', 'строительство', 'sale@onisstroy.ru', 'http://onisstroy.ru/', '8 (861) 2-100-700'),
(89, 'СК &laquo;Гарантия&raquo;', 'Застройщик', '', 'http://skgarantiya.ru', '8 (800) 700 90 93'),
(90, 'СК &quot;Квартал&quot; ', 'Строительство, недвижимость', '', 'http://www.kvartal23.ru', '89892620906'),
(91, 'Тотал-Клин', 'Клининговая компания', 'totalcleaningru@gmail.com', 'http://total-cleaning.ru', '+7 (918) 090-81-44'),
(92, 'ТЕХЗАПЧАСТЬ.рф', 'Продажа запасных частей для вилочных погрузчиков', 'teh-zap@mail.ru', 'http://xn--80aani5bnbgvx2d.xn--p1ai/zapchasti-dlja-pogruzchikov-v-gorode-krasnodar-v-internet-magazine-tehzapchastrf/', '79026187062'),
(93, 'СК &quot;Семья&quot;', 'Застройщик', 'info@family-yug.ru', 'http://family-yug.ru', '8 (861) 205-50-84'),
(94, 'Стройкомплект', 'Производство жби', 'stroy-com23@mail.ru', 'http://stroy-com23.ru', '89183444922, 89189879302'),
(95, 'СК &quot;Август&quot;', 'Строительная компания', '2901717@list.ru', 'http://august-sk.ru', '8 (861) 290-17-17, 8 (918) 449-33-33 '),
(96, 'Страховой центр ДЮКС', 'Страхование', 'atlantdux@mail.ru', 'http://duxcentr.ru/', '89886206911'),
(97, 'СК Иван Калита', 'Строительная компания', '', 'http://www.ivankalita.com', '2-126-136'),
(98, 'Школа английского языка &laquo;Lingua From Home&raquo; ', 'Школа английского языка по Skype', 'info@linguafromhome.com ', 'http://linguafromhome.com/', '+7 (938) 478-52-32 '),
(99, 'Фонд &quot;Здоровая Нация&quot;', 'Реабилитационный центр', 'fondzn18@yandex.ru', 'http://fond-zn.ru', '8 905 407 53 86'),
(100, 'Центр охраны труда Решение', 'Обучение по охране труда', 'cot.reshenie@yandex.ru', 'http://cot-reshenie.ru', '+7 952 981 81 81'),
(101, 'Южный финансовый центр', 'Брокерский центр', 'info@broker-centr.com', 'http://www.broker-centr.com', '79882488488'),
(102, 'Школа английского языка Head Made', 'Английский язык для детей, взрослых. Подготовка к ОГЭ, ЕГЭ, международным экзаменам.', 'headmade1.krd@yandex.ru', 'http://h-made.net/', '8(918)000-76-70'),
(103, 'ЮгСтройИмпериал', 'Недвижимость', 'info@imperialgorod.ru', 'http://www.imperialgorod.ru/', '88005050300'),
(104, 'Центр чтения Александры Фрунзе', 'Обучение детей азбуке и чтению, коррекция дисграфии и дислексии', '', 'https://vk.com/logoped_krasnodar', '89654708145'),
(105, 'Юридическая компания &quot;Социальная юриспруденция&quot; ', 'Юр услуги', 'valeriyorehov20@gmail.com', 'http://vk.com/krasnodar.yurist', '7 (962) 880-16-17'),
(106, 'Центр помощи призывникам', 'Юридическая помощь призывникам', 'cpp.krasnodar@gmail.com', 'http://www.призывник-краснодар.рф', '+7  (988) 380 - 14  - 14;+7 (861) 299 - 09  - 19'),
(107, 'Учебный центр Юг-Профи', 'Обучение/переобучение/повышение квалификации на курсах ', 'profi@kursactiv.ru', 'http://kursactiv.ru', '79181704477'),
(108, 'Свадебное агентство &laquo;Wedding PRO&raquo;', 'Организация свадеб ', 'wedding-krd@mail.ru', 'http://www.weddings-pro.ru', '79182456063'),
(109, 'Уфимская транспортная компания', 'грузоперевозки', '2743155@mail.ru', 'http://pereezd-po-rossii.ru', '+7(960) 800-37-50'),
(110, 'Квартиры в ЖК Гарантия', 'Строительство жилищных комплексов', 'zk-garantiya@yandex.ru', 'http://skgarantiya.ru', '8(861)203-51-15'),
(111, 'ПРОМО-БОТ', 'Аренда робота', 'arenda-event@mail.ru', 'http://arenda-event.com/arenda-oborudovaniia/arenda-robota-na-meropriiatie', '89892717528'),
(112, 'АльфаСтройИнвест', 'Застройщик', 'sale@alfastroyinvest.com', 'http://alfastroyinvest.com', '+ 7 (861) 221-16-92'),
(113, 'ООО &quot;Стройфинансгруп&quot;', 'Строительство многоэтажных домов', '', 'http://домсротондами.рф', '8988-246-00-48'),
(114, 'Сплитсистема.ру', 'Климатическая компания', 'info@splitsistema.ru', 'https://splitsistema.ru', '8(861)243-04-04'),
(115, 'Брокерский страховой центр &laquo;Виконт&raquo;', 'Более 20 страховых компаний, юридическое сопровождение', 'osagovikont@yandex.ru', 'http://vikont23.ru', '89189556111'),
(116, 'Cyxodol-Суходол', 'Всё необходимое для вязальщиц и не только', '', 'https://cyxodol.ru', '79183704623'),
(117, 'ГК &quot;КУБАНЬ&quot;', 'Застойщик', '2469091@mail.ru', 'http://gk-kuban.ru', '8-800-22-22-400'),
(118, ' ГК &quot;Дарстрой&quot;', 'Застройщик', '8673732@gmail.com', 'http://skdarstroy.ru', '8 (861) 279-53-53'),
(119, 'Матрас.ру', 'Продажа матрасов, мебели для спальни и спальных принадлежностей.', 'zakaz@matras.ru', 'http://krasnodar.matras.ru', '+7 (861) 238-86-24'),
(120, 'ООО &laquo;МВ Стил-Юг&raquo;', 'Строительная компания', 'sales@avangard-krd.ru', 'http://aviator.avangard-krd.ru/', '8 800 755‑44-41'),
(121, 'Отель Азиш-Тау', 'Туризм Отель', 'infomezmay@gmail.com', 'https://www.azich-tau.ru/', '79180129439'),
(122, 'МИЦ - Мезмайский Информационный Центр', 'Персональный консультант по туризму в Лагонаки', 'infomezmay@gmail.com', 'https://www.mezmay.org/', '79180129439'),
(123, 'Avtoservis23', 'Автосервис, СТО, Авторазбор', 'avtoshop93@gmail.com', 'http://avtoshop23.com', '8-961-525-35-95'),
(124, 'ПК &quot;Формат&quot;', 'Производство и продажа мебели', 'info@mebelformat.com', 'http://mebelformat.com', '8 (861) 210-30-00'),
(125, 'Рембыттехника', 'Ремонт бытовой техники', '', 'http://рембыттехникакраснодар.рф', '79625344500'),
(126, 'СК &quot;Новосфера&quot;', 'Застройщик', 'ask.stroy@bk.ru', 'http://www.askstroi.ru', '8 (800) 250-81-87'),
(127, 'КраснодарФлора', 'Круглосуточная доставка идеальных цветов', 'flora.krasnodar.11@bk.ru', 'http://krasnodarflora.ru', '8(918)-046-44-46'),
(128, 'Лаборатория Праздника &quot;Holiday&quot;', 'Доставка цветов, шаров и подарков.', 'cotnikoba@mail.ru', 'http://laboratory-holiday.ru/', '79880801120'),
(129, 'УютМаркет ', 'Товары и услуги для создания уюта', '', 'http://remjilstroy.ru', '89897613888'),
(130, 'Автостанция кузовного ремонта', 'Кузовной ремонт, Правка геометрии', '', 'http://avtokuzov93.ru', '+7 (918) 150-23-46'),
(131, 'Эндимарт', 'Инженерные товары для дома: отопление, водоснабжение, канализация, сантехника.', 'andimart.ru@gmail.com', 'http://andimart.ru/', '8 (800) 550-33-95'),
(132, 'Магазин GPSOFF.ru ', 'продажа металлоискателей', ' info@gpsoff.ru', 'http://gpsoff-krasnodar.ru/', ' 8 (861) 202-96-42'),
(133, 'Техно-Раум - магазин ФИРМЕННОЙ техники Karcher (Керхер)', 'Пылесосы, мойки, АВД, стеклоочистители, парогенераторы Керхер', 'zakaz@technoraum.ru', 'http://technoraum.ru/', '8-800-777-57-01'),
(134, 'ИП Сыркина ', 'Доставка цветов в Краснодаре', '', 'http://roza-krasnodar.ru', '+7(918)-326-1782'),
(135, 'Garden Land', 'Студия ландшафтного дизайна', '', 'https://garden-land23.ru/', '+7 (918) 080-20-30'),
(136, 'ДКН-Риэлт', 'Уважаемые, участники рынка недвижимости города Краснодара! Компания ООО &laquo;ДКН-РИЭЛТ&raquo; предоставляет ри', '89649010674@mail.ru', 'http://girshberg.recrm.ru', '89182497829'),
(137, '&laquo;Европея&raquo; - жилой район', 'Строительство жилых комплексов', 'info@europeya.ru', 'http://europeya.ru', '8 800 200 40 30   '),
(138, 'СКБ Контур Краснодар', 'электронные сервисы для бизнеса', 'krasnodar@skbkontur.ru', 'http://kontur23.com/', '8 (861) 200-67-46'),
(139, 'SportPanda', 'Производство и продажа товаров для бокса и единоборств', 'info@sportpanda.ru', 'https://sportpanda.ru', '+7-964-899-29-99'),
(140, 'СК &laquo;Квартал&raquo;', 'Застройщик', '', 'http://kvartal23.ru', '+7 (861) 203-20-55, +7 (918)226-55-33'),
(141, ' Нарцисс', 'Цветы оптом в Краснодаре и Краснодарском крае', 'narcissofficial@gmail.com ', 'http://narciss-opt.ru/krasnodar/', '+7 (928) 005-54-57'),
(142, 'Бизнес-Профи', 'Юридическая компания', '', 'biznes-profi.com', '8 800 100‑13-37, +7 861 991‑23-33'),
(143, 'Интернет-магазин товаров для взрослых &laquo;Bad Bed Shop&raquo;', 'магазин товаров для взрослых', 'info@badbedshop.ru', 'http://krasnodar.badbedshop.ru', '8 (800) 301-66-07'),
(144, 'ЮГ-СК', 'Компания &laquo;ЮГ-СК&raquo; специализируется на возведении малоэтажных строений &laquo;под ключ&raquo; и предлагает своим к', 'yug-sk.ru2010@yandex.ru', 'http://yug-sk.ru/', '79676733330'),
(145, 'esteshop', 'Продажа косметологических препаратов.', 'esteshop.mail@yandex.ru', 'http://esteshop.ru/', '8-800-350-68-28'),
(146, 'Восемь Акров', 'Агенства недвижимости', 'vosemakrov@mail.ru', 'https://vosemakrov.ru', '79885258660'),
(147, 'Рефро Краснодар', 'Торговое оборудование', 'info@refro.ru', 'https://www.refro.ru/contacts/krasnodar/', '78003333081'),
(148, 'BTL-агентство TREND', 'Промо мероприятия', 'btl_trend@mail.ru', 'http://btltrend.ru', '79186288242'),
(149, 'Адвокат Лысова и партнеры', 'Юридические услуги', 'pravo@advokat-kuban.com', 'https://advokat-kuban.com/', '+7 918 067 87 87'),
(150, 'КубаньГрадИнвестСтрой', 'Застройщик', '', 'http://kubangis.ru', '8(861) 277-76-37'),
(151, 'Ремонт и удаление вмятин', 'Ремонт и удаление вмятин на автомобилях', '', 'http://remont-vmyatin.ru/', '+7 (928) 412-01-09'),
(152, 'ООО &quot;ХАВЕГ&quot; Краснодар ', 'производство и продажа жидкой гидроизоляции', 'krasnodar@haveg.ru', 'https://krasnodar.haveg.ru/', '+7 (861) 204-35-02'),
(153, 'ООО &ldquo;Термофлекс-Юг&quot;', 'типография, полиграфические услуги ', 'cotovaalin4@yandex.ru', 'http://termoflexug.ru ', '88007009819'),
(154, 'МБОО &quot;Содействие&quot;', 'Межрегиональная благотворительная общественная организация &quot;Содействие&quot;', 'ofissodeystvie@gmail.com', 'https://sodeystviecentr.ru', '88004444089'),
(155, 'Бани Кубани', 'Всё для бани и сауны в Краснодаре и крае!', 'info@banikybani.ru', 'https://banikybani.ru/', '8 928 425-31-61'),
(156, 'Кубань Модуль', 'Строительство', 'leonov5ergey@yandex.ru', 'https://kuban-modul.ru/', '+7 988 888 04 15'),
(157, 'Скупка.Биз: Краснодар', 'Скупка крупной бытовой техники', '', 'http://krasnodar.skupka.biz', '89385332700'),
(158, 'ООО &laquo;Кубаньмотордеталь&raquo;', 'Продажа автозапчастей', 'info@kubanmotordetal.ru', 'http://kubanmotordetal.ru', '+7 861 211 62 54'),
(159, 'ГK &quot;ИНСИТИ&quot;', 'Строительная компания', 'info@incitystroy.ru', 'http://incitystroy.ru', '7 (861) 204 19 85'),
(160, 'Девелопмент-Юг', 'Строительная корпорация', '', 'http://develug.ru', '8-800-100-07-75'),
(161, 'КПС', 'Строительная компания', 'mailbox@kps-93.ru', 'http://kps-93.ru', '8 800 234-17-17'),
(162, 'ООО &quot;Южная регилнальная строительная компания&quot;', 'Строительная компания', '', 'http://ursk-stroy.com', '88001004123'),
(163, 'Цифей', 'Строительная компания', 'cifei@list.ru', 'http://cifei.ru', '8 (800) 500-41-43'),
(164, 'Респект', 'Агентство недвижимости', 'NIm27@yandex.ru', '', '89882470330'),
(165, 'Инвестиционно- строительная компания &quot;РАС&quot;', 'Строительная компания', '', 'http://ras23.ru', '8 (800) 500-26-16'),
(166, 'ООО &quot;СтройМеталлИнвест&quot;', 'Строительная компания', 'kvartira@smi93.ru', '', '8-800-250-44-22'),
(167, 'Biofam', 'Интернет-магазин здорового питания', 'krd@biofam.ru', 'http://biofam.ru', '78619447034'),
(168, 'ООО &quot;Торгово-промышленная компания &quot;Пентан&quot;', 'Оптовая торговля', '', 'http://pentan-krd.ru', '8(861)204-01-77'),
(169, 'ПолимерКомплекс', 'Торгово-производственная компания', 'polimerkompleks71@yandex.ru', 'https://polimerk.ru/', '+7(4872)58-57-95'),
(170, 'Bright Brand 2Br', 'брендинговое агентство', 'brand@2-br.ru', 'http://2-br.ru', '8612432033'),
(171, 'Интер-C', 'Сертификация продукции и услуг', 'office@inter-sert.su', 'http://zerno-inter.su', '8-991-366-10-90'),
(172, 'ВсеКлиники.Su', 'Отзывы о наркологических организациях', 'vsekliniki@yandex.ru', 'http://vsekliniki.su', '89628524188'),
(173, 'Строительная компания БАУИНВЕСТ', 'Строительство многоквартиных домов', 'info@sk-bauinvest.ru', 'sk-bauinvest.ru', '78612018282'),
(174, 'Smartnet 24', 'Создание и продвижение сайтов', 'site@smartnet24.com', 'http://smartnet24.com', '+7 (861) 217-75-59, 8 (964) 913-99-30, +7 (918)  419-49-65'),
(175, 'Stoprealt.ru', 'Доска объявлений по недвижимости', '', 'https://stoprealt.ru', '+7-918-1999-313'),
(176, 'Магазин оптических приборов Zoom-Star', 'Магазин', 'info@zoom-star.ru', 'https://zoom-star.ru/krasnodar/kupit', '8-800-301-63-11'),
(177, 'Негабарит-Краснодар', 'грузоперевозки', 'sale@simtruck-negabarit.ru', 'http://krd-negabarit.ru/', '8 (800) 505-40-76'),
(178, 'Каян', 'жилищно-ипотечный центр', 'r07@kayan.ru', '', '8-988-955-78-14'),
(179, 'СК &quot;Новация&quot;', 'строительство домов', 'info@ccnova.ru', 'https://www.ccnova.ru', '79388678708'),
(180, 'Нарколог 52', 'Наркология', 'vizov@nakolog52.ru', 'https://narkolog52.ru', '212-95-43'),
(181, 'Стальмастер', 'Изготовление металлоконструкций любой сложности', 'personal@stallm.ru', 'http://stalmaster.info/', ' 8 (861-62) 48-3-94'),
(182, 'Титул Про', 'Производство и установка изделий из ПВХ на заказ под ключ', 'info@titulpro.ru', 'http://titulpro.ru', '+7 918 394 07 90'),
(183, 'Центр страхования Зыковой А.Ф.', 'Страховая компания', 'info@centr-zikova.ru', 'http://centr-zikova.ru', ' +7 (928) 281-27-96'),
(184, 'ИП Шевцова', 'оптово-розничная торговля ', 'marry_kpk@mail.ru', '', '79788330888'),
(185, 'Неометрия', 'Строительная компания', 'krdcall@neometria.ru', 'http://neometria.com', '8 (861) 203-47-14'),
(186, 'ООО &quot;Основа-Инвест&quot;', 'Строительно-инвестиционная компания', 'sales@osnova-invest.ru', 'http://дом-на-березанской.рф', '+7 (861) 249-90-90'),
(187, 'Юридическая фирма &laquo;Адвокат&raquo;', 'Юридические услуги профессиональных адвокатов в Краснодаре!', 'zonazakona23@mail.ru', 'http://zakon23.ru/', '8-988-330-78-06'),
(188, 'MODO CAPITAL', 'Проектно-строительная группа', '', 'modo-capital@mail.ru', ' 8 (800) 707-73-83'),
(189, 'КраснодарСтройГрупп ООО', 'Строительная компания', 'ksgroupp@yandex.ru', 'http://k-s-g.ru', '88005057325'),
(190, 'МегаАльянс', 'Строительная компания', 'office@megaalyans.ru', 'http://megaalyans.ru', '(861) 272-25-55'),
(191, 'СК Мегаполис', 'Строительная компания', '', 'http://skmegapolis23.ru', '8 (861) 204-14-87'),
(192, 'АЛМАКС', 'Строительная компания', '', 'http://www.almaks-kr.ru', '+7 (800) 555-10-11'),
(193, 'МСК', 'Строительная компания', 'op@msk-krasnodar.ru', 'http://msk-krasnodar.ru', '+7 (800) 100-41-45'),
(194, 'АСК', 'Строительная компания', 'info@ask-yug.com', 'http://ask-yug.com', '88002221010'),
(195, 'КубаньКапиталСтрой', 'Строительная компания', 'ysadba.rf@mail.ru', 'http://жкусадьба1.рф', '8(861) 245-25-52; 8-918-333-38-37'),
(196, 'Анекс тур', 'Турагентство, поиск туров в ОАЭ', 'info@анекс-тур.рф', 'https://краснодар.анекс-тур.рф/oae', '8-800-511-48-28'),
(197, 'ПРОСТОР Телеком', 'Предоставление телекоммуникационных услуг: широкополосный интернет, телефонная связь, цифровое ТВ', 'info@ptl.ru', 'http://krasnodar.ptl.ru', '+7 (861) 203-36-06'),
(198, 'РЦ Вектор', 'медицина', 'lechenienarco@yandex.ru', 'http://stop-narcomania.ru', '8 (800) 200-00-72'),
(199, 'Токарев Моторс', 'Автозапчасти, контрактные двигатели', '', 'https://tokarevmotors.ru/', '+7 938 510‑30-00'),
(200, 'Forparty23', 'аренда музыкального и светового оборудования', 'info@forparty23.ru', 'http://forparty23.ru', '+7 (918) 152-87-87'),
(201, 'ПК Формат', 'Производство и продажа офисной мебели', '', 'https://mebelformat.com', '8 (861) 210-30-00'),
(202, 'Архитектурная студия &quot;КРАСНЫЙ НОСОРОГ&quot;', 'Разработка дизайн-проектов интерьеров жилых домов, квартир, офисов. Строительно-отделочные работы.', 'info@rhino-studio.ru', 'http://www.rhino-studio.ru', '79649005151'),
(203, 'ГК &laquo;Атлант Групп&raquo;, поставщик рыбы и морепродуктов', 'Поставка рыбы и морепродуктов', 'office@atlant-group.info', 'https://krasnodar.atlant-group.info/', '+7 (800) 775-93-70'),
(204, '&laquo;ЛИЦА&raquo;', 'Клиника эстетической медицины ', 'hello@facesclinic.ru', 'http://faces-clinic.ru', '+7 (988) 248-30-33'),
(205, 'Система промышленная группа', 'Производство и продажа пластиковой тары', 'info@a1plast.ru', 'https://a1plast.ru', '8 (812) 409-37-44'),
(206, 'Завод СХТ', 'автомобильные весы', 'info@cxt.su', 'cxt.su', '8 (988) 999-1-999'),
(207, 'Рекламное агентство Touch Group', ' Рекламное агентство', 'help@tgprint.ru', 'krd.tgprint.ru', '+7 (915) 832-88-88'),
(208, 'ООО &laquo;Железобетонные изделия и конструкции&raquo;', 'Изделия из железобетона', 'sales@zhbikgroup.ru', 'https://zhbikgroup.ru/', '+7 (861) 2042898'),
(209, 'Лидерстрой', 'Строительная компания', 'info@lider-st.ru', 'http://lider-st.ru', '8-918-33-55-111, 8-918-111-888-5'),
(210, 'ЖК Ясная поляна', '', '', '', ''),
(211, 'Реальное SEO', 'Курсы продвижения сайтов SEO', 'info@realnoe-seo.ru', 'http://realnoeseo.ru', '8 (800) 100-78-07'),
(212, 'Робомир, клуб робототехники', 'Детский клуб робототехники', '', 'https://www.robomir23.ru/', '89186544533'),
(213, 'BTL-PROMOTION', 'Рекламное агентство, BTL акции, промо акции', 'btl-pro@inbox.ru', 'btl-pro.ru', '+7 (918) 65-000-91'),
(214, 'MADMEN', 'Создание сайтов', 'madmen18@yandex.ru', 'http://madmen.bz', '8 (800) 100-78-07'),
(215, 'СИК ГРАДЪ', 'Строительно-инвестиционная компания', '', 'http://градъ.com', '8(918)0017979');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_08_154652_create_pages_table', 1),
(4, '2019_08_08_154802_create_services_table', 1),
(5, '2019_08_08_154854_create_portfolios_table', 1),
(6, '2019_08_08_154930_create_articles_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_alias` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_style` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_script` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_robots` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `page_name`, `page_title`, `page_alias`, `page_style`, `page_script`, `page_description`, `page_keywords`, `page_robots`, `updated_at`) VALUES
(1, 'Главная', 'Web-студия Bright and Easy | Креативный подход к созданию и продвижению Вашего сайта', 'index', 'index.css', 'index.js', 'Web-студия Bright and Easy. Креативный подход к созданию и продвижению Вашего сайта', 'студия веб дизайна, заказать сайт краснодар, разработка веб сайта, разработка сайтов краснодар, заказать интернет сайт, веб студия краснодар', 'all', NULL),
(2, 'Наши работы', 'Web-студия Bright and Easy | Творческий подход к созданию и продвижению Вашего сайта', 'portfolio', 'portfolio.css', 'portfolio.js', 'Web-студия Bright and Easy. Творческий подход к созданию и продвижению Вашего сайта', 'разработка сайта, веб дизайн и разработка, создание логотипа, разработка дизайна сайта, продвижение в сети, ведение контекстной рекламы, seo продвижение сайтов', 'all', NULL),
(3, 'Наша студия', 'Web-студия Bright and Easy | Команда профессионалов, Любим котиков', 'about', 'about.css', 'about.js', 'Web-студия Bright and Easy. Команда профессионалов, Любим котиков', 'студия веб дизайна, веб студия краснодар, веб дизайн краснодар, разработка сайтов, seo продвижение, контекстная реклама краснодар, smm продвижение', 'all', NULL),
(4, 'Блог', 'Web-студия Bright and Easy | Статьи про разработку, маркетинг, дизайн', 'blog', 'inbuild.css', 'inbuild.js', 'Web-студия Bright and Easy. Статьи про разработку, маркетинг, дизайн', 'студия веб дизайна, разработка веб сайта, веб дизайн и разработка, веб дизайн сайта, продвижение в сети, seo продвижение сайтов, контекстная реклама сайта, разработка сайтов, интернет-маркетинг, статья про разработку, статья про веб дизайн, статья про интернет-маркетинг', 'no-index', NULL),
(5, 'Наши услуги', 'Web-студия Bright and Easy | Сайт-визитка, лендинг-пейдж, бизнес-сайт, интернет-магазин, SEO, Контекстная реклама, SMM, индивидуальный дизайн, гайдлайн, логотип', 'services', 'services.css', 'services.js', 'Сайт-визитка, лендинг-пейдж, бизнес-сайт, интернет-магазин, SEO, Контекстная реклама, SMM, индивидуальный дизайн, гайдлайн, логотип', 'разработка сайта-визитка, разработка лендинга, разработка корпоративного сайта, разработка сайта интернет-магазина, разработка индивидуального дизайна сайта, разработка логотипа, разработка гайдлайна, продвижение сайтов, контекстная реклама сайта, smm продвижение', 'all', NULL),
(6, 'Trucker-Systems', '', 'trucker', 'work.css', 'work.js', '', '', 'no-index', NULL),
(7, 'Альфа', '', 'alfa', 'work.css', 'work.js', '', '', 'no-index', NULL),
(8, 'Ломбард Надежный', '', 'lombard', 'work.css', 'work.js', '', '', 'no-index', NULL),
(9, 'Ателье ТриНити', '', 'trinity', 'work.css', 'work.js', '', '', 'no-index', NULL),
(10, 'Колос Групп', '', 'kolos', 'work.css', 'work.js', '', '', 'no-index', NULL),
(11, 'Ателье Вероника', '', 'veronika', 'work.css', 'work.js', '', '', 'no-index', NULL),
(12, 'Перерабатывающий комплекс', '', 'poligon', 'work.css', 'work.js', '', '', 'no-index', NULL),
(13, 'iОбщество', '', 'isocial', 'work.css', 'work.js', '', '', 'no-index', NULL),
(14, 'Крипто Долина Инкерман', '', 'crypto', 'work.css', 'work.js', '', '', 'no-index', NULL),
(15, 'Сайт-визитка', 'Web-студия Bright and Easy | Креативный подход к созданию и продвижению Вашего сайта-визитки.', 'start', 'service.css', 'service.js', 'Креативный подход к созданию и продвижению Вашего сайта-визитки.', 'заказать сайт визитку, создать сайт визитку, разработка сайта визитки, сайт визитка цена', 'all', NULL),
(16, 'Лендинг-пейдж', 'Web-студия Bright and Easy | Креативный подход к созданию и продвижению Вашего лендинга.', 'landing', 'service.css', 'service.js', 'Креативный подход к созданию и продвижению Вашего лендинга.', 'заказать лендинг, лендинг краснодар, заказать лендинг-пейдж, сайт лендинг', 'all', NULL),
(17, 'Бизнес-сайт', 'Web-студия Bright and Easy | Креативный подход к созданию и продвижению Вашего сайта для бизнеса.', 'business', 'service.css', 'service.js', 'Креативный подход к созданию и продвижению Вашего сайта для бизнеса.', 'заказать корпоративный сайт,  создать сайт для бизнеса, создать корпоративный сайт, бизнес сайт краснодар, сделать бизнес сайт', 'all', NULL),
(18, 'Интернет-магазин', 'Web-студия Bright and Easy | Креативный подход к созданию и продвижению Вашего интернет-магазина.', 'shop', 'service.css', 'service.js', 'Креативный подход к созданию и продвижению Вашего интернет-магазина.', 'заказать интернет магазин краснодар, заказать разработку интернет магазина, разработка сайта интернет магазина, создание интернет магазина, интернет магазин под ключ', 'all', NULL),
(19, 'SEO', 'Web-студия Bright and Easy | Приведем на сайт целевой трафик с Яндекс и Google.', 'seo', 'service.css', 'service.js', 'Приведем на сайт целевой трафик с Яндекс и Google.', 'seo продвижение краснодар, заказать продвижение сайта, продвижение сайтов краснодар, сео продвижение сайта, заказать seo сайта', 'all', NULL),
(20, 'Контекстная реклама', 'Web-студия Bright and Easy | Настроим эффективные рекламные кампании в Яндекс.Директ и GoogleРеклама.', 'context', 'service.css', 'service.js', 'Настроим эффективные рекламные кампании в Яндекс.Директ и GoogleРеклама.', 'заказать контекстную рекламу, контекстная реклама краснодар, контекстная реклама сайта, заказать настройку яндекс директ, заказать рекламу сайта', 'all', NULL),
(21, 'SMM', 'Web-студия Bright and Easy | Продвижение бизнес аккаунтов в соц. сетях, таргетированная реклама.', 'smm', 'service.css', 'service.js', 'Продвижение бизнес аккаунтов в соц. сетях, таргетированная реклама.', 'продвижение в социальных сетях, реклама в социальных сетях, смм продвижение, smm продвижение, продвижение в сети', 'all', NULL),
(22, 'Индивидуальный дизайн', 'Web-студия Bright and Easy | Креативный подход к индивидуальному дизайну для Вашего сайта.', 'design', 'service.css', 'service.js', 'Креативный подход к индивидуальному дизайну для Вашего сайта.', 'разработка индивидуального дизайна сайта, заказать индивидуальный дизайн', 'all', NULL),
(23, 'Гайдлайн', 'Web-студия Bright and Easy | Креативный подход к созданию Вашего гайдлайна и айдентики.', 'guide', 'service.css', 'service.js', 'Креативный подход к созданию Вашего гайдлайна и айдентики.', 'разработка гайдлайна, гайдлайн компании, айдентика бренда, айдентика компании', 'all', NULL),
(24, 'Логотип', 'Web-студия Bright and Easy | Креативный подход к созданию Вашего логотипа.', 'logo', 'service.css', 'service.js', 'Креативный подход к созданию Вашего логотипа.', 'заказать логотип компании, заказать логотип краснодар, разработка логотипа краснодар, логотип на заказ', 'all', NULL),
(25, 'Контакты', 'Web-студия Bright and Easy | Наши контактные данные', 'contact', 'contact.css', 'contact.js', 'Web-студия Bright and Easy', 'студия веб дизайна,  разработка сайтов краснодар, веб студия краснодар, веб дизайн краснодар', 'all', NULL),
(26, 'Спасибо', 'Web-студия Bright and Easy | Благодарим за Ваше обращение к нам!', 'thanks', 'thanks.css', 'thanks.js', '', '', 'no-index', NULL),
(27, 'Ошибка 404', 'Web-студия Bright and Easy | Страница не найдена', '404', '404.css', '404.js', '', '', 'no-index', NULL),
(28, 'Ошибка 500', 'Web-студия Bright and Easy | Ошибка ответа сервера', '500', '500.css', '500.js', '', '', 'no-index', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `portfolios`
--

CREATE TABLE `portfolios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `work_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_alias` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_period` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_whatwedo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_technologies` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_type_alias` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `portfolios`
--

INSERT INTO `portfolios` (`id`, `work_name`, `work_alias`, `work_description`, `work_period`, `work_whatwedo`, `work_technologies`, `work_url`, `work_type_alias`, `created_at`, `updated_at`) VALUES
(1, 'Trucker-Systems', 'trucker', 'Собственный проект по созданию и внедрению международного логистического сервиса в сфере B2B. Предназначен для комплексного оказания услуг по экспорту грузов из Европы в Россию.', 'В разработке', 'Разработка логотипа и фирменного стиля|Разработка сайта|Разработка презентационных материалов', 'corel|ps|html|css|js|php|laravel', 'https://trucker-systems.com', 'all design development marketing', NULL, NULL),
(2, 'Альфа', 'alfa', 'Сайт проектной организации. Основные услуги - комплексное проектирование и проектное сопровождение на всех этапах строительства.', '1 месяц', 'Разработка логотипа|Разработка индивидуального дизайна сайта|Разработка сайта компании|Техническое сопровождение', 'corel|ps|html|css|js|php', 'https://one-alfa.com', 'all design development', NULL, NULL),
(3, 'Ломбард Надежный', 'lombard', 'Сайт финансовой организации (ломбарда), расположенной в городе Краснодар, предоставляющей займы под залог ювелирных изделий.', '2 недели', 'Разработка индивидуального дизайна сайта|Разработка сайта компании', 'corel|ps|html|css|js|php', 'https://lombard-n.ru', 'all development', NULL, NULL),
(4, 'Ателье ТриНити', 'trinity', 'Создание айдентики для ателье по индивидуальному пошиву и ремонту одежды из тканей, кожи и меха, расположенного в городе Краснодар', '3 дня', 'Разработка логотипа|Разработка дизайна рекламной продукции', 'corel|ps', '', 'all design marketing', NULL, NULL),
(5, 'Колос Групп', 'kolos', 'Комплексная разработка айдентики и подготовка инвестиционного предложения под размещение завода по переработке риса \"сырца\" в границах поселка Тахтамукай Республики Адыгея.', '2 недели', 'Разработка логотипа|Разработка трехмерных моделей по предварительным эскизам|Разработка айдентики и презентационных материалов', 'corel|ps|blender', '', 'all design', NULL, NULL),
(6, 'Ателье Вероника', 'veronika', 'Разработка айдентики и сайта для ателье по ремонту и пошиву одежды в городе Краснодар. Сайт подготовлен к запуску. Работы по проекту приостановлены по инициативе заказчика (закончились средства)', '1 месяц', 'Разработка дизайна сайта|Разработка сайта компании', 'corel|ps|html|css|js|php', 'https://xn--80aaflabvqexkxu6l.xn--p1ai/', 'all design', NULL, NULL),
(7, 'Перерабатывающий комплекс', 'poligon', 'Комплексная подготовка инвестиционного предложения по размещению мусороперерабатывающего комплекса нового поколения в границах п.г.т. Энем в Республике Адыгея', '2 недели', 'Разработка логотипа|Разработка трехмерных моделей|Разработка дизайна полиграфических материалов (плакатов, стендов, альбомов)|Разработка дизайна презентационных материалов', 'corel|ps|blender', '', 'all design', NULL, NULL),
(8, 'iОбщество', 'isocial', 'Комплексная разработка интерактивного социально-цифрового проекта, включающего в себя серверную и клиентскую часть сервиса для расчета, проверки и оспаривания социальных и коммунальных платежей. Позволяет провести комплекс мероприятий досудебных коммуникаций со снабжающими и коммунальными организациями для разрешения вопросов о неправомерном или ошибочном расчете стоимости коммунальных и социальных платежей.', '7 месяцев', 'Разработка технического задания|Разработка прототипа|Контроль проекта на ранней стадии разработки', 'corel|ps|blender', 'http://iobshestvo.ru', 'all design', NULL, NULL),
(9, 'Крипто Долина Инкерман', 'crypto', 'Комплексная подготовка инвестиционного предложения по реализации проекта технологической площадки для реализации цифровых технологических стартапов на основе технологии блокчейн на территории города Инкерман (Севастополь) по заказу Корпорации развития Севастополя', '3 месяца', 'Разработка логотипа и айдентики|Разработка трехмерных предпроектных эскизов|Разработка презентационных материалов', 'corel|ps|blender', '', 'all design', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_alias` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_category` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_category_alias` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_clients` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_differences` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_price` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_price_action` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_action_period` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_period` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_image` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_alt_image` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `services`
--

INSERT INTO `services` (`id`, `service_name`, `service_alias`, `service_category`, `service_category_alias`, `service_description`, `service_clients`, `service_differences`, `service_price`, `service_price_action`, `service_action_period`, `service_period`, `service_image`, `service_alt_image`, `created_at`, `updated_at`) VALUES
(1, 'Сайт-визитка', 'start', 'Разработка', 'development', 'Сайт-визитка – доступный и легкий информационный сайт для ознакомления пользователя с компанией или личностью. Может содержать максимум информации (прайс, портфолио, примеры и др.). Помогает получать реальных клиентов и отсеивать простых любопытных пользователей.', 'Малому бизнесу|Владельцам обучающих онлайн-курсов|Маркетологам|Психологам и коучам|Мастерам бьюти-сферы|Фотографам, моделям, дизайнерам\r\n', 'Мы не используем конструкторы и CMS (WordPress, Joomla и др.). Потому наши сайты-визитки быстро загружаются и просматриваются большим количеством пользователей|Адаптивный дизайн. Наши сайты-визитки смотрятся одинаково привлекательно как на больших экранах компьютеров и ноутбуков, так и на смартфонах и планшетах|Подключение маркетинговых инструментов. Создавая сайт-визитку, мы подключаем к нему инструменты сбора статистической информации и анализа данных, что поможет Вам понять, сколько пользователей стало Вашими клиентами и использовать эти данные для дальнейшего развития.\r\n', 'От 36 000 рублей', 'От 18 000 рублей', 'Скидка 50% действует до 1 октября 2019', 'От 1 недели', 'start.png', 'Сайт-визитка', NULL, NULL),
(2, 'Лендинг-пейдж', 'landing', 'Разработка', 'development', 'Лэндинг пейдж – одностраничный сайт с ярким и привлекающим внимание дизайном. Эффективно рекламирует товар, услугу или мероприятие. Чаще всего используется при запуске рекламной кампании в поисковых системах и социальных сетях.', 'Производителям товаров и услуг, выводящим на рынок новое предложение|Организаторам мероприятий|Стартапам.\r\n', 'Мы не используем конструкторы и CMS (WordPress, Joomla и др.). Потому наши лэндинги быстро загружаются и просматриваются большим количеством пользователей|Адаптивный дизайн. Наши лэндинги смотрятся одинаково привлекательно как на больших экранах компьютеров и ноутбуков, так и на смартфонах и планшетах|Подключение маркетинговых инструментов. Создавая лэндинг, мы подключаем к нему инструменты сбора статистической информации и анализа данных, что поможет Вам понять, сколько пользователей стало Вашими клиентами и использовать эти данные для развития компании.\r\n', 'От 40 000 рублей', 'От 20 000 рублей', 'Скидка 50% действует до 1 октября 2019', 'От 1 недели', 'landing.png', 'Лендинг-пейдж', NULL, NULL),
(3, 'Бизнес-сайт', 'business', 'Разработка', 'development', 'Бизнес-сайт рассказывает о компании и наглядно демонстрирует продаваемые товары и услуги. Как правило, содержит подробный каталог продукции, привлекающий клиентов. Может иметь подключение к корпоративным базам данных и управляться через собственную CMS.', 'Крупным торговым компаниям, реализующим продукцию при прямом контакте с покупателем (строительная техника, автомобили, недвижимость и др.)|Крупным компаниям и корпорациям со сложной внутренней структурой и развитой сетью филиалов|Государственным учреждениям и организациям\r\n', 'Мы не используем конструкторы и CMS (WordPress, Joomla и др.). Потому наши бизнес-сайты быстро загружаются и просматриваются большим количеством пользователей|Адаптивный дизайн. Наши бизнес-сайты смотрятся одинаково привлекательно как на больших экранах компьютеров и ноутбуков, так и на смартфонах и планшетах|Использование эффективных фреймворков и встраиваемых модулей. При разработке сайта мы используем только проверенные быстродействующие фреймворки и компоненты, обеспечивающие высокую надежность и защищенность Вашего сайта|Наличие собственной системы управления. При создании бизнес-сайта, мы добавляем в него систему управления (CMS) для удобного взаимодействия с ним – Ваши сотрудники быстро и легко смогут менять, добавлять, удалять и преобразовывать содержимое|Подключение маркетинговых инструментов. Создавая бизнес-сайт, мы подключаем к нему инструменты сбора статистической информации и анализа данных, что поможет Вам понять, сколько пользователей стало Вашими клиентами и использовать эти данные для дальнейшего развития.', 'От 72 000 рублей', 'От 36 000 рублей', 'Скидка 50% действует до 1 октября 2019', 'От 3-х недель', 'business.png', 'Бизнес-сайт', NULL, NULL),
(4, 'Интернет-магазин', 'shop', 'Разработка', 'development', 'Интернет-магазин – торговая онлайн-площадка Вашей компании. С помощью него Вы можете продавать свои товары и услуги, даже не имея собственных магазинов. Как правило, имеют подключение к базам данных компании, собственные системы управления и платежные инструменты.', 'Производителям товаров и услуг, желающим расширить сеть продаж|Торговым компаниям для расширения покрытия территории продаж|Небольшим торговым компаниям и производителям, не имеющим собственных точек продаж и реализующим продукцию со склада\r\n', 'Адаптивный дизайн. Наши интернет-магазины смотрятся одинаково привлекательно как на больших экранах компьютеров и ноутбуков, так и на смартфонах и планшетах|Использование эффективных фреймворков и встраиваемых модулей. При разработке сайта мы используем только проверенные быстродействующие фреймворки и компоненты, обеспечивающие высокую надежность и защищенность Вашего сайта|Наличие собственной системы управления. При создании интернет-магазина, мы добавляем в него систему управления (CMS) для удобного взаимодействия с ним – Ваши сотрудники быстро и легко смогут менять, добавлять, удалять и преобразовывать содержимое|Наличие платежных инструментов. Подключение сервисов для онлайн оплаты товаров и услуг позволит повысить скорость и эффективность товарооборота компании|Подключение маркетинговых инструментов. Создавая интернет-магазин, мы подключаем к нему инструменты сбора статистической информации и анализа данных, что поможет Вам понять, сколько пользователей стало Вашими клиентами и использовать эти данные для дальнейшего развития.\r\n', 'От 86 000 рублей', 'От 43 000 рублей', 'Скидка 50% действует до 1 октября 2019', 'От 3-х недель', 'shop.png', 'Интернет-магазин', NULL, NULL),
(5, 'SEO', 'seo', 'Маркетинг', 'marketing', 'SEO или поисковая оптимизация – это всестороннее развитие и продвижение сайта для его выхода на первые позиции в результатах выдачи поисковых систем (SERPs) по выбранным запросам с целью увеличения посещаемости и дальнейшего получения дохода.', 'Владельцам действующих и новых сайтов, желающим продвинуть сайт в естественных (\"органических\") поисковых выдачах', 'Комплексный подход. При SEO-оптимизации мы используем различные инструменты анализа, которые позволяют эффективно менять положение сайта в поисковых выдачах|Полный разбор структуры сайта При проведении SEO, мы не только добавляем новое на Ваш сайт, но и модернизируем существующую структуру с сохранением первоначальной концепции|Глубокий анализ потребностей клиента. SEO требует подробного анализа деятельности клиента для оптимизации построения различных структур сайта.\r\n', 'От 62 000 рублей в месяц', 'От 31 000 рублей в месяц', 'Скидка 50% действует до 1 октября 2019', 'От 3-х месяцев', 'seo.png', 'SEO', NULL, NULL),
(6, 'Контекстная реклама', 'context', 'Маркетинг', 'marketing', 'Контекстная реклама - тип интернет-рекламы, при котором рекламное объявление показывается в соответствии с содержанием, контекстом интернет-страницы. Контекстная реклама действует избирательно и отображается посетителям интернет-страницы, сфера интересов которых потенциально совпадает/пересекается с тематикой рекламируемого товара либо услуги, целевой аудитории, что повышает вероятность их отклика на рекламу. Для запуска такой рекламы используются специальные сервисы Яндекс.Директ и Google Реклама.', 'Компаниям, выводящим на рынок новые товары и услуги|Предпринимателям, желающим получить новых клиентов среди интернет-аудитории|Творческим личностям (фотографам, художникам, моделям, писателям и другим), желающим увеличить количество поклонников творчества\r\n', 'Глубокий анализ потребностей клиента. Контекстная реклама требует подробного анализа продукта клиента для оптимизации построения рекламной стратегии.|Комплексный подход. При построении и ведении рекламной кампании мы используем различные инструменты и средства, позволяющие повысить эффективность продвижения и снизить затраты клиента.|Соблюдение принципов рационального планирования бюджета. При построении рекламной кампании мы опираемся в первую очередь на потребности и возможности клиента и максимально эффективно расходуем бюджет.\r\n', 'От 20 000 рублей в месяц', 'От 10 000 рублей в месяц', 'Скидка 50% действует до 1 октября 2019', 'От 1 месяца', 'context.png', 'Контекстная реклама', NULL, NULL),
(7, 'SMM-продвижение', 'smm', 'Маркетинг', 'marketing', 'Продвижение в социальных сетях - самый популярный на данный момент вид интернет-маркетинга, который подразумевает под собой комплексное развитие популярности личного или корпоративного бренда. В популярных социальных сетях, таких как Instagram, Facebook, VK создаются персональные, либо корпоративные страницы (группы), в которых ведется регулярная активная деятельность: выкладываются посты, происходит общение с участниками групп или посетителями страниц, объявляются тематические мероприятия и многое другое. Также может применяться платное продвижение с помощью рекламы в таких социальных сетях для увеличения количества подписчиков.', 'Компаниям, выводящим на рынок новые товары и услуги|Предпринимателям, желающим получить новых клиентов среди интернет-аудитории|Творческим личностям (фотографам, художникам, моделям, писателям и другим), желающим увеличить количество поклонников творчества\r\n', 'Глубокий анализ потребностей клиента. Продвижение в социальных сетях требует подробного анализа продукта клиента для оптимизации построения стратегии продвижения.|Комплексный подход. При построении и ведении кампании в социальных сетях мы используем различные инструменты и средства, позволяющие повысить эффективность продвижения и снизить затраты клиента.|Соблюдение принципов рационального планирования бюджета. При построении кампании мы опираемся в первую очередь на потребности и возможности клиента и максимально эффективно расходуем бюджет.\r\n', 'От 24 000 рублей в месяц', 'От 12 000 рублей в месяц', 'Скидка 50% действует до 1 октября 2019', 'От 1 месяца', 'smm.png', 'Продвижение в социальных сетях', NULL, NULL),
(8, 'Дизайн', 'design', 'Дизайн', 'design', 'Мы готовы разработать индивидуальный дизайн для Вашего сайта. Индивидуальный дизайн – это комплексное уникальное решение, включающее в себя все графические элементы, от самых маленьких иконок до фоновых изображений.', 'Компаниям, желающим выделить себя на фоне однотипных предложений конкурентов|Творческим личностям, желающим показать свой собственный стиль не только в работах, но и в оформлении своего сайта\r\n', 'Профессиональный подход к графике. Каждый элемент сайта создается с учетом его гармоничного зрительного восприятия пользователем|Уникальные изображения. Все изображения на сайте существуют только на Вашем сайте в единственном экземпляре|UI/UX-дизайн. При заказе индивидуального дизайна, Вы получаете не просто красивый уникальный контент, но правильную структуру и грамотное размещение каждого элемента страниц, что в результате приведет к более высокой популярности среди пользователей.\r\n', 'От 32 000 рублей', 'От 16 000 рублей', 'Скидка 50% действует до 1 октября 2019', 'От 1 недели', 'design.png', 'Индивидуальный дизайн', NULL, NULL),
(9, 'Гайдлайн', 'guide', 'Дизайн', 'design', 'Гайдлайн - это набор стандартов и инструкций по применению знаков, логотипов, персонажей бренда, их шрифтовому и цветовому исполнению, а также правильному размещению на различных носителях.', 'Компаниям, желающим создать себе уникальный образ восприятия себя и своих продуктов, а также создания у потребителя четкой эмоциональной связи между компанией и продуктом.|Организациям, желающим переработать или модернизировать существующий стиль для повышения эффективности продаж, улучшения потребительского восприятия или обновления корпоративного стиля.\r\n', 'Профессиональный подход к графике. Гайдлайн создается с учетом соответствия стилю клиента и его гармоничного зрительного восприятия потребителем|Уникальная графика. Айдентика разрабатывается с нуля и при размещении ее элементов в сети будет идентифицироваться, как уникальный и соответствующий образу компании клиента|Индивидуальный подход. При создании гайдлайна мы выбираем стиль в соответствии с пожеланиями клиента и его потребительским категориям, таким образом, улучшая восприятие его на рынке клиента\r\n', 'От 54 000 рублей', 'От 27 000 рублей', 'Скидка 50% действует до 1 октября 2019', 'От 3-х недель', 'guide.png', 'Гайдлайн', NULL, NULL),
(10, 'Логотип', 'logo', 'Дизайн', 'design', 'Логотип – символ компании, отражающий корпоративный стиль и деятельность. Профессионально созданный логотип, как внешний вид человека, создаст у клиента впечатление о компании в первые секунды знакомства.', 'Компаниям, желающим создать уникальный образ восприятия своих продуктов и связывания их со своим именем.|Организациям, желающим переработать или модернизировать существующий логотип.\r\n', 'Профессиональный подход к графике. Логотип создается с учетом соответствия стилю клиента и его гармоничного зрительного восприятия потребителем|Уникальная графика. Разрабатываемый логотип создается с нуля и при размещении его в сети будет идентифицироваться, как уникальный и соответствующий компании клиента|Индивидуальный подход. При создании логотипа мы выбираем стиль в соответствии с пожеланиями клиента и соответствием его потребительским категориям, таким образом, повышая восприятие его на рынке клиента\r\n', 'От 6000 рублей', 'От 3 000 рублей', 'Скидка 50% действует до 1 октября 2019', 'От 3-х дней', 'logo.png', 'Логотип', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `stages`
--

CREATE TABLE `stages` (
  `id` bigint(20) NOT NULL,
  `stage_number` bigint(20) NOT NULL,
  `stage_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `stage_alias` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `stage_title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `stage_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `stages`
--

INSERT INTO `stages` (`id`, `stage_number`, `stage_name`, `stage_alias`, `stage_title`, `stage_desc`, `created_at`, `updated_at`) VALUES
(1, 1, 'Согласование условий и пожеланий с заказчиком', 'coordination', 'Согласование', 'Самый важный этап, так как именно он задает тот путь, который будет необходимо пройти при воплощении проекта клиента в реальность. По факту обсуждения всех пожеланий, идей и требований клиента, заполняются приложения к договору, на основе которых будут проходить все последующие этапы. Все последующие правки и изменения, которые будут вноситься в процессе работы, оцениваются с точки зрения отношения к первоначальным.', NULL, NULL),
(2, 2, 'Составление и согласование технического задания', 'ts', 'ТЗ', 'После прохождения первого этапа следует тщательная проработка всех договоренностей. На их основе строится подробное техническое задание по разработке проекта, на основании которого будет проводиться дальнейшая работа. ТЗ включает в себя всю информацию о том, какие задачи решает проект, описание его структуры, дизайна и многое другое. Дальнейшая работа по созданию проекта невозможна без согласованного технического задания.', NULL, NULL),
(3, 3, 'Проектирование семантического ядра и структуры проекта', 'project', 'Проектирование', 'Хотя самый важный этап уже пройден, другие этапы создания Вашего проекта не менее важны. Так, проработка семантического ядра – важнейший момент для грамотного SEO и продвижения в позициях среди поисковых систем. Проработка структуры проекта позволяет в дальнейшем создать эффективную экономическую модель, благодаря которой сайт из красивой интерактивной картинки превратится в отличный инструмент для привлечения клиентов.', NULL, NULL),
(4, 4, 'Разработка интерактивного прототипа проекта', 'prototype', 'Прототип', 'На данном этапе начинается непосредственно создание того облика, который в итоге примет Ваш проект. Интерактивный прототип представляет собой набор экранов и блоков, которые позволят почувствовать, как будет все работать. И хотя на этом этапе все выглядит в виде неприглядных схем и геометрических фигур, именно прототип задает дальнейшим этапам маршрут создания проекта. Обычно именно на данном этапе проверяется работоспособность модели и предлагаются различные варианты решений.', NULL, NULL),
(5, 5, 'Графический дизайн проекта', 'design', 'Дизайн', 'После того, как был создан и утвержден прототип, следует этап разработки его зрительного образа. Подобным образом художник начинает работу над картиной, когда уже создано достаточное количество эскизов и наступает пора создавать произведение искусства. Правда, в отличие от статичной картины, графический дизайн web-проекта включает в себя не только картинки и фотографии, но и анимацию, видео и графику состояний объектов – то, как будут выглядеть различные элементы в разных ситуациях. В качестве простого примера можно привести кнопку или ссылку, которая при наведении на нее курсора мыши принимает иной стиль оформления.', NULL, NULL),
(6, 6, 'Frontend и backend разработка проекта', 'develop', 'Разработка', 'После того как разработан прототип и создан его внешний облик наступает пора оживить проект. Здесь в дело вступают разработчики программного кода и перекладывают прототип и графику в программный код. Данный этап может занимать довольно значительное время, если проект имеет развитую структуру и включает в себя множество различных возможностей для взаимодействия с пользователем. С точки зрения движения проекта', NULL, NULL),
(7, 7, 'Наполнение проекта контентом и тестирование', 'fill', 'Наполнение', 'И вот все уже выглядит красиво, работает и взаимодействует с пользователем, а сервер отвечает на запросы. Наступает пора наполнить все смыслом, заменив текстовые заглушки на проработанный копирайтером контент. С этого момента все уже почти готово, остается только протестировать проект в максимально возможном диапазоне вариантов и отправить в релиз. Мы уже почти на финишной прямой.', NULL, NULL),
(8, 8, 'Выгрузка на хостинг и передача заказчику', 'upload', 'Выгрузка', 'Все, финал уже близко – проект наполнен смыслом и графикой, а программный код работает без ошибок и сбоев. На этом этапе весь проект переносится на хостинг заказчика и запускает свою деятельность. Остается только принять работу и начинать пользоваться новым эффективным корпоративным инструментом.', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teammate_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `teammate_alias` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `teammate_position` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `teammate_image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `teammate_work` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `teammate_interests` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `teammate_insta_link` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `teams`
--

INSERT INTO `teams` (`id`, `teammate_name`, `teammate_alias`, `teammate_position`, `teammate_image`, `teammate_work`, `teammate_interests`, `teammate_insta_link`, `created_at`, `updated_at`) VALUES
(1, 'Петр Орлов', 'porlov', 'Разработчик', 'porlov.jpg', 'Основатель студии. Превращает идеи и планы клиента, а также творчество дизайнеров и копирайтеров в работающие продукты.', 'Увлекается винтажными и спортивными автомобилями. Любит горы, лес и зиму.', 'https://instagram.com/p.p.orlov', NULL, NULL),
(2, 'Анна Орлова', 'aorlova', 'Интернет-маркетолог', 'aorlova.jpg', 'Сооснователь студии. Увеличивает количество посетителей сайта заказчика и конвертирует их в реальных клиентов. Продвигает аккаунты в социальных сетях.', 'Увлекается крафтингом вместе с маленьким сыном. Любит собак, кошек, природу, узнавать новое и интересное.', 'https://instagram.com/anna_orlova2015', NULL, NULL),
(3, 'Марина Колесникова', 'mkolesnikova', 'Копирайтер', 'mkolesnikova.jpg', 'Грамотно строит тексты, преподносит информацию в интересном, креативном, но понятном для клиентов виде. Редактирует и корректирует статьи.', 'Увлекается написанием песен. Любит печь кексы и тортики, а также проводить время со своими маленькими дочками.', 'https://instagram.com/marixakolesnikova', NULL, NULL),
(4, 'Елена Пушкина', 'epushkina', 'Дизайнер', 'epushkina.jpg', 'Трансформирует мысли и идеи клиента в цвет, форму и композицию. Художественные таланты позволяют создать из любой идеи произведение искусства.', 'Любит свою работу и путешествия, так что даже в отпуске находит вдохновение и время на работу.', 'https://instagram.com/pusshkina', NULL, NULL),
(5, 'Евгений Верчик', 'everchik', 'Фотограф', 'everchik.jpg', 'С помощью фотоаппарата и неизвестных науке сил превращает живые объекты в искусство на фотобумаге и в цифре.', 'Увлечения совпадают с профессиональной деятельностью – в свободное время занимается портретной и макросъемкой.', 'https://instagram.com/evgverchik', NULL, NULL),
(6, 'Ева', 'eva', 'Талисман студии', 'eva.jpg', 'Кошка породы Невская маскарадная. Вдохновитель и развлекатель коллектива студии. Всегда поддержит, особенно на пути к холодильнику.', 'Любит тишину, ласку и внимание.', 'https://instagram.com/brightandeasy', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@brightandeasy.ru', NULL, '$2y$10$Gtgo8D1BvK3hWsQ9fcbdteu.R/NYu2DMV.ed.ElFxOh4RV9xvPyzG', NULL, '2019-08-17 11:34:47', '2019-08-17 11:34:47');

-- --------------------------------------------------------

--
-- Структура таблицы `work_types`
--

CREATE TABLE `work_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `work_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_type_alias` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `work_types`
--

INSERT INTO `work_types` (`id`, `work_type`, `work_type_alias`, `created_at`, `updated_at`) VALUES
(1, 'Дизайн', 'design', NULL, NULL),
(2, 'Разработка', 'development', NULL, NULL),
(3, 'Маркетинг', 'marketing', NULL, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `mail_base`
--
ALTER TABLE `mail_base`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `stages`
--
ALTER TABLE `stages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Индексы таблицы `work_types`
--
ALTER TABLE `work_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `mail_base`
--
ALTER TABLE `mail_base`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `stages`
--
ALTER TABLE `stages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `work_types`
--
ALTER TABLE `work_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
