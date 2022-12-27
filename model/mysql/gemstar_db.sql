-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2022 at 04:29 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gemstar_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `carousel`
--

CREATE TABLE `carousel` (
  `carousel_id` varchar(40) NOT NULL,
  `users_id` varchar(40) NOT NULL,
  `caption` varchar(100) NOT NULL,
  `date_updated` float NOT NULL,
  `is_inactive` int(1) NOT NULL DEFAULT 0,
  `file_name` varchar(255) NOT NULL,
  `file_destination` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `carousel`
--

INSERT INTO `carousel` (`carousel_id`, `users_id`, `caption`, `date_updated`, `is_inactive`, `file_name`, `file_destination`) VALUES
('4fe6c9ab-6ac6-4c93-8139-aabb902367e4', '1dfa4584-e597-4822-b065-e01ba29038dd', 'isuzu', 1656660000000, 0, '2022-07-01T08-18-01.991Z-279270892_1400052313830704_161498878189077264_n.jpg', 'https://gemstar.herokuapp.com/carousel/2022-07-01T08-18-01.991Z-279270892_1400052313830704_161498878189077264_n.jpg'),
('aa61f98a-420d-4b07-835a-a2752d3902ff', '1dfa4584-e597-4822-b065-e01ba29038dd', 'toyota', 1668940000000, 0, '2022-11-20T09-15-54.013Z-toyota.jpg', 'https://gemstar.herokuapp.com/carousel/2022-11-20T09-15-54.013Z-toyota.jpg'),
('b36d434c-0284-45da-98c0-a9aaf56b51b6', '1dfa4584-e597-4822-b065-e01ba29038dd', 'honda', 1656660000000, 0, '2022-07-01T08-18-11.957Z-279087026_1400055700497032_3387318110370379749_n.jpg', 'https://gemstar.herokuapp.com/carousel/2022-07-01T08-18-11.957Z-279087026_1400055700497032_3387318110370379749_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comment_id` varchar(40) NOT NULL,
  `project_id` varchar(40) NOT NULL,
  `users_id` varchar(40) NOT NULL,
  `comment_content` varchar(1000) NOT NULL,
  `date_created` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comment_id`, `project_id`, `users_id`, `comment_content`, `date_created`) VALUES
('0a53a858-14c5-42fe-a8d9-cbc13bff2a53', '6354dea7-af9f-4f98-af67-267acbe42ea7', 'bc14a6d8-02fd-45ac-98c1-36c6766bbde7', '<p class=\"mb-0\">cancel po</p>', 1669098183877),
('1cbea158-bff6-4ef7-bc0c-dec89b09742b', '51a9916c-f096-422c-8eb9-3c0bca55c5bb', '40095f92-c7a3-4e50-9008-d3e369e39c41', '', 1669113546194),
('4650d79e-312c-4fb6-aa84-28eec14b95c4', '59e5c1dd-21c4-4d1a-bd16-4cb22fb1ce5d', '40095f92-c7a3-4e50-9008-d3e369e39c41', '<p class=\"mb-0\">Cancelled!</p>', 1669113956951),
('a30199ae-4a0d-4918-ae7c-2056b7279c69', '51a9916c-f096-422c-8eb9-3c0bca55c5bb', '40095f92-c7a3-4e50-9008-d3e369e39c41', '', 1669113544194),
('c98595df-ee92-46e5-bf45-618c060eeaa2', 'e939047e-3938-41da-9462-046ff435a964', '4d40efe8-1aee-4ea5-a502-49e862938796', '', 1669112794385);

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `logs_id` varchar(50) NOT NULL,
  `logs_type` varchar(200) NOT NULL,
  `created_at` bigint(20) UNSIGNED NOT NULL,
  `remarks` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`logs_id`, `logs_type`, `created_at`, `remarks`) VALUES
('52c3b3be-2495-40c1-af40-25e9d2122e77', 'LOGIN', 1649169138996, 'owner has LOGGED-IN'),
('ac6430ad-7adc-4b6a-93f6-a46b1e2e2891', 'LOGOUT', 1649296105485, 'owner@mail.com has LOGGED-OUT'),
('8772b756-955a-4708-90c1-ce30c7909e43', 'LOGIN', 1649296151198, 'owner has LOGGED-IN'),
('889b49e6-a709-4e13-81a9-ef4404099c3b', 'LOGOUT', 1649296158496, 'owner@mail.com has LOGGED-OUT'),
('4b47b198-a6db-41e6-949a-c239dde9968c', 'LOGIN', 1649296212685, 'owner has LOGGED-IN'),
('d245bc76-a1f2-49d1-b302-fb87b3b38349', 'LOGOUT', 1649296495862, 'owner@mail.com has LOGGED-OUT'),
('1f54ca8c-40b4-4e36-9afe-e880298cba1c', 'LOGIN', 1649300040015, 'owner has LOGGED-IN'),
('cc645411-aed5-42c8-b130-7560c4044fe7', 'LOGIN', 1649300637036, 'owner has LOGGED-IN'),
('9e2ce1c6-7b1c-49be-ae4d-fd6fb0f24a29', 'LOGIN', 1649302952505, 'owner has LOGGED-IN'),
('83225783-390f-48ab-aa16-445176d6186e', 'LOGIN', 1650415363814, 'owner has LOGGED-IN'),
('c773375f-ceed-4a2a-9390-33f39d9cfe68', 'LOGIN', 1651430552636, 'owner has LOGGED-IN'),
('f9900f7d-8e40-434c-b6fa-7f7098ce773d', 'REGISTRATION', 1651430963070, 'test1@mail.com has REGISTERED'),
('492c6a09-0c92-4c22-a18b-0e5ecf386fca', 'LOGIN', 1651430969638, 'test1 has LOGGED-IN'),
('aa768194-3fdb-48af-aea9-c481e85a4821', 'LOGIN', 1651430997214, 'test1 has LOGGED-IN'),
('66c56db2-ced1-49c6-8c09-b31d18f10af7', 'CREATE_PROJECT', 1651431042244, 'Project Test Project 1 has created'),
('56f55012-b6dc-47e0-b69f-8213f07a5908', 'LOGIN', 1652188257953, 'owner has LOGGED-IN'),
('5cbab2b7-2609-414b-ae62-71a8523f92f6', 'LOGIN', 1652188274308, 'employee has LOGGED-IN'),
('8dcad5df-10e0-45e8-975b-cfaa80393f47', 'REGISTRATION', 1652188378780, 'ralphvictor.leonardo@cvsu.edu.ph has REGISTERED'),
('ab959d9c-f837-4d0d-b5b3-0c6784b9cb66', 'LOGIN', 1652188417935, 'ralph has LOGGED-IN'),
('6556379b-8f09-4dcc-85f8-a02e4529834d', 'CREATE_PROJECT', 1652188437783, 'Project metal fabrication has created'),
('fd0f546b-7460-4551-a9d5-0b8fdd55802d', 'LOGOUT', 1652796419983, 'owner@mail.com has LOGGED-OUT'),
('5f1b3411-3e67-4263-a986-588b97223c4f', 'LOGIN', 1652796440512, 'owner has LOGGED-IN'),
('b5e907de-3dc6-4d74-a1ed-e1d083639996', 'LOGOUT', 1652842227787, 'ralphvictor.leonardo@cvsu.edu.ph has LOGGED-OUT'),
('c6906893-79df-47e8-9b61-9e9be7fae47f', 'REGISTRATION', 1652842273029, 'monicajoyceann.mullet@cvsu.edu.ph has REGISTERED'),
('194d3e7a-5112-473d-8ace-914fed014d51', 'LOGIN', 1653225437526, 'ralph has LOGGED-IN'),
('ec6f68b7-7b8a-419b-8f42-65a3b74fdb9f', 'CREATE_PROJECT', 1653226956521, 'Project fabrication has created'),
('d9a83d21-83d9-4bf2-a39d-f3e0247ebb86', 'LOGOUT', 1653227418726, 'owner@mail.com has LOGGED-OUT'),
('444305f8-7c8f-4ef8-9996-0e218ec0b989', 'LOGIN', 1653227437823, 'owner has LOGGED-IN'),
('5d0b6fe1-3c3b-46a2-8bdd-1a4f531576eb', 'LOGIN', 1653630747610, 'owner has LOGGED-IN'),
('417f6930-31f8-4af9-958c-d6ebcd15f2e7', 'LOGIN', 1653630748498, 'owner has LOGGED-IN'),
('18cc7b79-2b22-4bcc-ac41-05b30a63facd', 'LOGIN', 1653630748731, 'owner has LOGGED-IN'),
('efa1b29c-9559-4b48-a374-f291acc42171', 'LOGIN', 1653630748854, 'owner has LOGGED-IN'),
('9e2fffd4-1ed4-456e-a38c-e11b10a863be', 'LOGIN', 1653630749161, 'owner has LOGGED-IN'),
('4842a2c4-1f5f-46a4-9770-5f06fbda0c22', 'LOGIN', 1653630749246, 'owner has LOGGED-IN'),
('f7b762ea-8963-4ff6-9d4d-16e2724ff8b9', 'LOGIN', 1653630749305, 'owner has LOGGED-IN'),
('e38f0c53-ee8d-46df-b22f-bf784e67690d', 'LOGIN', 1653630750971, 'owner has LOGGED-IN'),
('24a75366-5b15-4cb6-a15c-934708d64f43', 'LOGIN', 1653630751124, 'owner has LOGGED-IN'),
('9bf324f7-7080-494c-b2e7-86362e31b7cc', 'LOGIN', 1653630752359, 'owner has LOGGED-IN'),
('29b5a8cb-f30e-4074-a410-180364a20531', 'LOGIN', 1653630752782, 'owner has LOGGED-IN'),
('f1af3f4d-c95a-4190-bf1e-22895682c92f', 'LOGIN', 1653630752789, 'owner has LOGGED-IN'),
('2399921b-615a-4519-b812-72cd3b2d68d5', 'LOGIN', 1653630786702, 'owner has LOGGED-IN'),
('0c8a8daa-0f54-465b-86c6-675479214543', 'LOGIN', 1653630788056, 'owner has LOGGED-IN'),
('828c3357-c78b-4d90-a376-e912b7023f8d', 'LOGIN', 1653630788356, 'owner has LOGGED-IN'),
('4b91b609-d756-4f08-8ec4-06fca79bf35e', 'LOGIN', 1653630802778, 'owner has LOGGED-IN'),
('796e2947-2ddf-4372-9109-5bf3134199eb', 'LOGIN', 1653630822518, 'owner has LOGGED-IN'),
('83664d2a-8250-4d0c-b79d-aa8e7b299f40', 'LOGIN', 1653630834625, 'owner has LOGGED-IN'),
('dbd4debc-c9af-4094-b479-36e306287b51', 'LOGIN', 1653630871012, 'owner has LOGGED-IN'),
('d949d996-0bd8-44ad-8fb3-d7ddac31247f', 'LOGIN', 1653630951670, 'owner has LOGGED-IN'),
('756d3863-2d14-4ebf-ab5c-933eebd5d9bd', 'LOGIN', 1653630953427, 'owner has LOGGED-IN'),
('972568af-348b-47f0-8942-b51c151531b1', 'LOGIN', 1653631072946, 'owner has LOGGED-IN'),
('f3d893e1-a879-428c-87d2-edc19d58206a', 'LOGIN', 1653631082950, 'owner has LOGGED-IN'),
('ecc8282b-c2ce-44ce-8d58-a0770c1942d4', 'LOGIN', 1653631189849, 'owner has LOGGED-IN'),
('cb62b956-1845-4cff-8e12-10759d0f177e', 'LOGIN', 1653631211135, 'owner has LOGGED-IN'),
('5268e2df-caa4-43df-a16d-73fe28d13d28', 'LOGIN', 1653631294479, 'owner has LOGGED-IN'),
('aee45de9-be4a-4807-85d0-050d5a937a39', 'LOGIN', 1653631326919, 'employee has LOGGED-IN'),
('814f1450-53fc-4c21-9856-156230b0c194', 'LOGIN', 1653631798959, 'ralph has LOGGED-IN'),
('bb5a76ae-2353-457e-b475-6c6f4e645435', 'LOGIN', 1653632086108, 'owner has LOGGED-IN'),
('c802c152-d2c4-4531-8794-c3fb9cfa6abf', 'LOGIN', 1653632098974, 'owner has LOGGED-IN'),
('59c35d24-4aec-4c4a-a870-38c9d4c4d1f1', 'LOGIN', 1653632227541, 'owner has LOGGED-IN'),
('2dcd07cd-ae87-4310-92b3-ec25d7f17c71', 'LOGIN', 1653632242103, 'owner has LOGGED-IN'),
('5a7b0848-6413-4958-b6d4-7e5cc2edf12c', 'LOGIN', 1653632263184, 'owner has LOGGED-IN'),
('6583048b-2df7-4a6b-8db1-51bfc70da14b', 'LOGIN', 1653632787930, 'owner has LOGGED-IN'),
('390f6175-1dbb-4ac7-8e21-03d899f9aa13', 'LOGIN', 1653636546861, 'owner has LOGGED-IN'),
('7cf11e6f-f1b5-4a25-8ebe-59a4d9349a6c', 'LOGIN', 1653636566816, 'owner has LOGGED-IN'),
('5d9b9ea4-2db6-4faa-a1ff-8e6aa619ea93', 'LOGIN', 1653639546345, 'owner has LOGGED-IN'),
('ea63ac4c-14b2-4666-8e1c-1e21714d09b4', 'LOGIN', 1653639585560, 'ralph has LOGGED-IN'),
('9495357f-00ba-44be-a268-0e16a4781ece', 'LOGIN', 1653639935887, 'ralph has LOGGED-IN'),
('94a350e7-db9f-4351-bd1e-a645dcbbbcb8', 'LOGIN', 1653661356646, 'owner has LOGGED-IN'),
('bddb1aca-168e-4764-aa06-54ab44a67a3a', 'LOGIN', 1653661394540, 'owner has LOGGED-IN'),
('4feb69b4-b737-4898-8e46-b199712ecd49', 'LOGIN', 1653661412560, 'owner has LOGGED-IN'),
('bf6c8f61-2038-49c3-8aa2-f82731c7df49', 'LOGIN', 1653661441026, 'owner has LOGGED-IN'),
('1daec379-acb7-414f-9cef-ab3390849349', 'LOGIN', 1653662499949, 'owner has LOGGED-IN'),
('cb123924-b02d-43aa-9d50-97f2cfd9b391', 'LOGIN', 1653662732926, 'owner has LOGGED-IN'),
('dc4d54e4-a036-4471-b6c4-d3b4e715a314', 'LOGIN', 1653662733404, 'owner has LOGGED-IN'),
('280814d7-89a0-4745-801e-4c6aedfc90a2', 'LOGIN', 1653662925067, 'owner has LOGGED-IN'),
('bc7e136d-33e6-4d97-9eae-9e4dde5d16eb', 'LOGIN', 1653663047182, 'owner has LOGGED-IN'),
('d573c0b5-d77c-4929-a306-dd0888c3e80a', 'LOGIN', 1653663092516, 'owner has LOGGED-IN'),
('6c4a4843-34aa-438b-ae39-2dc6d051763a', 'LOGIN', 1653664579983, 'owner has LOGGED-IN'),
('2836ab27-ad77-4a60-bc96-06ea7197ad53', 'LOGIN', 1653665275839, 'owner has LOGGED-IN'),
('42be8a77-df06-42f2-a4ae-d87eefd2e68c', 'LOGIN', 1653665478980, 'owner has LOGGED-IN'),
('d6caf7a2-0e9d-4ebd-bc99-4ddc76267a81', 'LOGOUT', 1653665509933, 'owner@mail.com has LOGGED-OUT'),
('c2982bc2-b0f5-4ef3-afa9-6dcb4f4867bb', 'LOGIN', 1653665547708, 'owner has LOGGED-IN'),
('2a512dd7-223d-430a-8e10-71e8cfb0f560', 'LOGOUT', 1653665563806, 'owner@mail.com has LOGGED-OUT'),
('59713284-5a58-46e8-a055-8a87fe662ca9', 'LOGIN', 1653666028206, 'owner has LOGGED-IN'),
('a3788b3b-c73e-40df-9453-4af9b9825e2e', 'LOGOUT', 1653666033544, 'owner@mail.com has LOGGED-OUT'),
('f72c8c38-daf8-4912-876a-46b44b1a9485', 'LOGIN', 1653666106311, 'owner has LOGGED-IN'),
('d017c2d8-9c9d-41d8-a8ce-669c8aad15ca', 'LOGOUT', 1653667052640, 'owner@mail.com has LOGGED-OUT'),
('9ed924b5-ead5-4b77-bed6-47b1ffbfe067', 'LOGIN', 1653667187628, 'owner has LOGGED-IN'),
('b735c4b8-818a-4d64-aa78-d023718fe5b2', 'LOGIN', 1653688645057, 'owner has LOGGED-IN'),
('5f8bf2e9-bf98-46ec-8c67-427968cb4391', 'LOGIN', 1653688645856, 'owner has LOGGED-IN'),
('13cc67a9-4992-443c-86a2-bb1318042f7d', 'LOGIN', 1653688653235, 'owner has LOGGED-IN'),
('cc181c22-2a2b-436e-a3a9-7a56e45344d7', 'LOGIN', 1653688654530, 'owner has LOGGED-IN'),
('018d156e-9da1-4d13-a56c-e1cfee905773', 'LOGIN', 1653688661930, 'ralph has LOGGED-IN'),
('5ef7b685-6bed-41e9-ab2f-dae5956389df', 'LOGOUT', 1653688703762, 'ralphvictor.leonardo@cvsu.edu.ph has LOGGED-OUT'),
('d50132ab-8970-41c7-95fe-b97aa36d6e3a', 'LOGIN', 1653688717033, 'owner has LOGGED-IN'),
('9b30f13a-2254-4793-9aa3-4a07a932c0fb', 'LOGOUT', 1653688751157, 'owner@mail.com has LOGGED-OUT'),
('9a6b0d6e-f80c-40ac-a0a9-a8e97f3c8e24', 'LOGIN', 1653688760444, 'employee has LOGGED-IN'),
('6cff852f-273c-47c3-9599-f4a518d931c7', 'LOGOUT', 1653688769756, 'employee@gmail.com has LOGGED-OUT'),
('cfa4d0ee-9116-4ef4-b21c-e81493a7abb6', 'LOGIN', 1653688781894, 'ralph has LOGGED-IN'),
('7f85575a-2df8-43f2-87c7-1a2a6122e015', 'LOGOUT', 1653689062231, 'ralphvictor.leonardo@cvsu.edu.ph has LOGGED-OUT'),
('3420944c-651d-4016-bd13-b7a305c7f8bb', 'LOGIN', 1653689085760, 'ralph has LOGGED-IN'),
('6cba25b5-64a8-4e1d-a620-de5967590250', 'LOGOUT', 1653689110395, 'ralphvictor.leonardo@cvsu.edu.ph has LOGGED-OUT'),
('7a216a0c-3ce2-48a7-a03f-1664a12793b5', 'LOGIN', 1653689119816, 'owner has LOGGED-IN'),
('ca431790-6890-46d2-b99a-b985f16ff240', 'LOGIN', 1653689121200, 'owner has LOGGED-IN'),
('3ab47163-d237-4bf9-9c15-147cce32ac82', 'LOGIN', 1653689127705, 'owner has LOGGED-IN'),
('30aadb31-cf00-4530-8fe1-9272f5886789', 'LOGIN', 1653689239365, 'owner has LOGGED-IN'),
('9b4120d9-eaf6-4acf-b4bb-3461891ac839', 'LOGIN', 1653689240255, 'owner has LOGGED-IN'),
('5a1f694a-37be-4c98-8a86-a89d2bf497ec', 'LOGIN', 1653689607194, 'employee has LOGGED-IN'),
('ccf8f275-0416-41cf-869e-45ab617a455b', 'LOGIN', 1653690621970, 'ralph has LOGGED-IN'),
('e11714e8-4a0f-4280-934d-3f3b006d6eb1', 'LOGIN', 1653690623009, 'ralph has LOGGED-IN'),
('a98e7d53-97ac-4eac-b2fd-a044285f2635', 'CREATE_PROJECT', 1653690660653, 'Project reface has created'),
('2bf4f50c-a13b-4062-8a1b-bfc1bbdfe1c2', 'LOGIN', 1653690802535, 'owner has LOGGED-IN'),
('08c8e971-6e37-48fb-b251-7a638b4742b5', 'LOGIN', 1653690824453, 'owner has LOGGED-IN'),
('4a969cc7-37ba-4b49-bcf7-3848627538c7', 'LOGIN', 1653690848931, 'owner has LOGGED-IN'),
('a09ebe2d-2679-41f0-9624-647972b45f1c', 'CREATE_PROJECT', 1653691039670, 'Project reface has created'),
('15c3e161-485b-479d-8299-d7ccc6785a1a', 'LOGOUT', 1653692354336, 'ralphvictor.leonardo@cvsu.edu.ph has LOGGED-OUT'),
('3bcc4736-0cb2-42cc-96ef-d6f018370c22', 'REGISTRATION', 1653692387240, 'monicajoyceann.mullet@cvsu.edu.ph has REGISTERED'),
('50f30adc-203c-45ea-b397-af2e0eb15460', 'REGISTRATION', 1653693913963, 'regin.fabela@cvsu.edu.ph has REGISTERED'),
('64295045-1367-4760-a01c-1a555cd3c940', 'LOGOUT', 1653693959486, 'employee@gmail.com has LOGGED-OUT'),
('749f2ecd-22cc-4d73-a01d-b460dc1d0826', 'LOGIN', 1653693974015, 'regin has LOGGED-IN'),
('9cbd2897-2577-4692-bc9d-ff02029af40c', 'LOGIN', 1653693979717, 'regin has LOGGED-IN'),
('fbc4a588-0279-4357-a525-b634a75029a7', 'LOGIN', 1653694018541, 'regin has LOGGED-IN'),
('4a413663-a9c3-4f5a-9f0d-e970bdf41e6f', 'LOGIN', 1653694026782, 'regin has LOGGED-IN'),
('39b774fe-681f-422c-b6cb-6b8efe5be55a', 'LOGIN', 1653694139354, 'regin has LOGGED-IN'),
('96f06b96-4293-41d2-90ca-c8f145387d08', 'LOGIN', 1653704862953, 'owner has LOGGED-IN'),
('c54e1eca-ac1a-40ae-a6a6-0fa742428b3d', 'LOGIN', 1653704863602, 'owner has LOGGED-IN'),
('4f97932e-e432-4149-8f9a-54518b62d54f', 'LOGOUT', 1653705023575, 'owner@mail.com has LOGGED-OUT'),
('f4e1b560-5fe3-4535-b54a-3523ff88db99', 'LOGIN', 1653705032824, 'regin has LOGGED-IN'),
('dd315e21-118e-4269-a888-f51d9e8a2e63', 'LOGIN', 1653705033987, 'regin has LOGGED-IN'),
('027ea405-0ac8-4626-a812-22a3f5827251', 'LOGIN', 1653705039735, 'regin has LOGGED-IN'),
('2792a847-af2a-48f4-95db-37ca4763dd90', 'LOGIN', 1653705044387, 'regin has LOGGED-IN'),
('17a50a6f-473c-4ac9-9f66-2208d3fc72c6', 'LOGIN', 1653705045981, 'regin has LOGGED-IN'),
('d3deb556-5925-4fad-9043-6436dee7354f', 'LOGIN', 1653705072625, 'ralph has LOGGED-IN'),
('f51e3a3d-3be6-4e00-9491-f5e22bf49607', 'LOGOUT', 1653705120663, 'ralphvictor.leonardo@cvsu.edu.ph has LOGGED-OUT'),
('cb84e2d8-3c6d-4fa9-9e6d-9f0b09e3e1c6', 'LOGIN', 1653705155765, 'employee has LOGGED-IN'),
('6477de00-88a1-421e-a201-929f22106468', 'LOGIN', 1653705157171, 'employee has LOGGED-IN'),
('5fad62e3-3aa5-4bdb-9ce6-66b4482314c2', 'LOGIN', 1653705181689, 'owner has LOGGED-IN'),
('e2609382-37a6-4f3a-9953-b06ee6402240', 'LOGIN', 1653705183073, 'owner has LOGGED-IN'),
('f8cdd4f4-d67b-4904-bc2a-b6c3d5278f30', 'LOGIN', 1653705506800, 'owner has LOGGED-IN'),
('7368c531-90be-4363-aa0f-9407ebfcc743', 'LOGIN', 1653705507539, 'owner has LOGGED-IN'),
('835281c7-d347-486f-827f-7c2015166c0b', 'LOGOUT', 1653705515957, 'owner@mail.com has LOGGED-OUT'),
('31dc49dc-dea4-4787-92bc-788d1b8bf9de', 'LOGIN', 1653705523793, 'owner has LOGGED-IN'),
('92ad7433-980d-43b0-90b1-d6d6d81c0759', 'LOGIN', 1653705531567, 'owner has LOGGED-IN'),
('8b3d749b-a17d-4a99-817f-644508b713cb', 'LOGOUT', 1653705547746, 'employee@gmail.com has LOGGED-OUT'),
('23868ebf-8c98-4cca-bab0-880157ae7036', 'LOGIN', 1653705558441, 'regin has LOGGED-IN'),
('c20efe65-3567-4c51-8b12-918a3ec08a36', 'LOGIN', 1653705558732, 'regin has LOGGED-IN'),
('3a64746e-100e-4ffe-b212-601193ca7e75', 'LOGIN', 1653714165458, 'owner has LOGGED-IN'),
('6c5b3381-9f73-45de-894f-5add2f017c7a', 'LOGIN', 1653714166955, 'owner has LOGGED-IN'),
('28d2ffe0-b494-4c1a-8591-83b197fb94fb', 'LOGIN', 1653716921529, 'owner has LOGGED-IN'),
('a5cc5341-9147-4bf7-a462-211fddbf0a06', 'LOGIN', 1653716922333, 'owner has LOGGED-IN'),
('07312e78-cd93-4de9-b455-881f279f484e', 'LOGOUT', 1653728694240, 'owner@mail.com has LOGGED-OUT'),
('f244ff91-d065-4c21-a71c-c46c96341d43', 'LOGIN', 1653728704408, 'regin has LOGGED-IN'),
('ff577166-ed62-4203-84a6-45efb8e534e6', 'LOGIN', 1653728704759, 'regin has LOGGED-IN'),
('0a79a492-0e67-498c-94a2-e83be2d045c2', 'LOGIN', 1653728711280, 'regin has LOGGED-IN'),
('fc695043-5668-4a8e-99e2-7f86b6b19f9c', 'LOGIN', 1653730833303, 'owner has LOGGED-IN'),
('593596b2-6e61-419d-bf34-6dcff1f36884', 'LOGOUT', 1653730873806, 'owner@mail.com has LOGGED-OUT'),
('9b925a79-cdb0-4331-8ce9-743503163fd4', 'LOGIN', 1653730882856, 'regin has LOGGED-IN'),
('fc2987f4-4ade-4906-90b8-3d0f0adf8ecd', 'LOGIN', 1653730889639, 'regin has LOGGED-IN'),
('aff40cd5-d640-4122-bbe9-ee2bb031d80c', 'LOGIN', 1653730891528, 'regin has LOGGED-IN'),
('bc377dd6-abd5-4ae2-918c-70cbf77f8896', 'LOGIN', 1653730902046, 'regin has LOGGED-IN'),
('4dd20737-bbe4-4a0c-9ffd-f834e9d9a1c2', 'LOGOUT', 1653730931785, 'owner@mail.com has LOGGED-OUT'),
('1c4721e3-0c81-4d2c-8438-c40706bd9f67', 'LOGIN', 1653730980547, 'owner has LOGGED-IN'),
('0182528c-9136-420e-b8f9-96987e152979', 'LOGIN', 1653730981906, 'owner has LOGGED-IN'),
('416c50b5-6cac-496f-95b0-bc814ef86eca', 'LOGOUT', 1653731099995, 'owner@mail.com has LOGGED-OUT'),
('fa22b0a2-2404-4609-9f10-2dadb92ac90d', 'LOGIN', 1653731132589, 'owner has LOGGED-IN'),
('448c1816-8102-473a-93c8-ea1cac99df2c', 'LOGOUT', 1653731447330, 'regin.fabela@cvsu.edu.ph has LOGGED-OUT'),
('d065e2d2-00bf-4c76-9f85-78b45c296f7c', 'LOGOUT', 1653731464096, 'owner@mail.com has LOGGED-OUT'),
('c79b1591-613d-4a24-a434-2c29a3614145', 'LOGIN', 1653731468721, 'owner has LOGGED-IN'),
('6affd6d9-1d51-46c4-9974-94fdce79c340', 'LOGIN', 1653731564753, 'owner has LOGGED-IN'),
('8f377c93-fc68-4875-982d-04b100a85282', 'LOGOUT', 1653731609685, 'owner@mail.com has LOGGED-OUT'),
('ba871742-2d72-483d-8654-797f259a6972', 'LOGIN', 1653732082940, 'owner has LOGGED-IN'),
('fb81764f-ddb5-4214-b8e2-d76c49cefe83', 'LOGIN', 1653732083353, 'owner has LOGGED-IN'),
('a9f866f0-a79e-4f38-9f3e-5de2cfb4f424', 'LOGOUT', 1653732610301, 'owner@mail.com has LOGGED-OUT'),
('3f22d6bb-f003-4b37-8ab8-bea29d337c7d', 'REGISTRATION', 1653732644641, 'jackie@gmail.com has REGISTERED'),
('165f050a-3245-4079-a43c-820da76aa407', 'LOGIN', 1653732656138, 'owner has LOGGED-IN'),
('409d4359-ea75-47b1-952b-b7b4966c4cfd', 'LOGOUT', 1653732696739, 'owner@mail.com has LOGGED-OUT'),
('fec33186-b628-4cc4-b488-a0602c828cd8', 'LOGIN', 1653732710951, 'jackie has LOGGED-IN'),
('d8b20586-8b6a-43af-91c7-202e2d18f559', 'CREATE_PROJECT', 1653732743618, 'Project hahhaha has created'),
('a3c59365-ac70-428c-9077-43ff2512287e', 'LOGIN', 1653732993631, 'owner has LOGGED-IN'),
('4e9752a5-a80c-4524-bcd0-1fc51de9b364', 'LOGOUT', 1653733149825, 'owner@mail.com has LOGGED-OUT'),
('af650e8e-1825-4efc-8899-e0ec374c2181', 'LOGIN', 1653733172487, 'owner has LOGGED-IN'),
('6f92aab8-c203-4b13-b6ab-31e2e1fa1d9d', 'CREATE_PROJECT', 1653733231004, 'Project ahahahahhahh has created'),
('64d778ea-8a42-4284-8c00-68d1eecd2d6c', 'LOGOUT', 1653733707327, 'jackie@gmail.com has LOGGED-OUT'),
('861f182c-25af-4b40-90be-751e043d5c23', 'LOGIN', 1653733720752, 'owner has LOGGED-IN'),
('5e6245e7-aa0b-42ce-a152-f260bf6df893', 'LOGOUT', 1653736495070, 'owner@mail.com has LOGGED-OUT'),
('da8479ed-3676-45d6-80e7-e6ba1cc34db2', 'LOGOUT', 1653736518051, 'owner@mail.com has LOGGED-OUT'),
('d7ee162a-e266-4dde-8f44-fb4f2c4d7fb1', 'LOGIN', 1653736532344, 'owner has LOGGED-IN'),
('ec065891-7697-4266-b82f-2d1f3926aa69', 'LOGIN', 1653736533726, 'owner has LOGGED-IN'),
('39785193-9b28-4305-a3ef-aa3984e63664', 'LOGIN', 1653736808345, 'jackie has LOGGED-IN'),
('83e5af5c-b35b-4aac-bbb4-9093d98c0308', 'LOGIN', 1653736809280, 'jackie has LOGGED-IN'),
('01f4b08c-ac8c-43c5-b13d-8010555e3272', 'LOGIN', 1653736812651, 'jackie has LOGGED-IN'),
('eeb7151a-a8ac-40ba-88a0-1a29cd566f3b', 'LOGIN', 1653736891625, 'ralph has LOGGED-IN'),
('b82fd6d8-a751-41d2-b9db-d5244da983b1', 'CREATE_PROJECT', 1653736919960, 'Project reface has created'),
('27649ba6-e965-4465-9d3f-241aafeadd4d', 'LOGIN', 1653737116734, 'regin has LOGGED-IN'),
('edd81afc-c83d-4a7f-a93a-5e3072735504', 'LOGIN', 1653737118016, 'regin has LOGGED-IN'),
('42b59e0a-0ebf-433a-9cf7-ae5cb5808a17', 'LOGOUT', 1653737308656, 'regin.fabela@cvsu.edu.ph has LOGGED-OUT'),
('0f003db2-e7b1-4d2b-935b-a0163952cabe', 'LOGIN', 1653737316420, 'employee has LOGGED-IN'),
('7895e516-de73-4116-8a86-13bdd4a39e81', 'LOGIN', 1653737317145, 'employee has LOGGED-IN'),
('4dc633fe-9ec0-424d-9bd4-65f552ec4307', 'LOGIN', 1653737811404, 'owner has LOGGED-IN'),
('31105247-2be0-45d6-9d27-5d657abdd8b2', 'LOGIN', 1653737811477, 'owner has LOGGED-IN'),
('e750433e-d8c5-4b62-87d5-489f12f73e08', 'LOGIN', 1653737812459, 'owner has LOGGED-IN'),
('f96f9476-2996-439c-be6d-8eddffb365d3', 'LOGIN', 1653737813168, 'owner has LOGGED-IN'),
('3bf54a5d-4f71-404f-bb95-73cfdac1c395', 'LOGIN', 1653737868014, 'owner has LOGGED-IN'),
('a228bee8-9b56-4793-a37a-c93348d081fa', 'LOGOUT', 1653738888318, 'employee@gmail.com has LOGGED-OUT'),
('38ca7070-65e2-4e95-84d3-cfdd43b0fb61', 'LOGIN', 1653738897045, 'regin has LOGGED-IN'),
('3dfc5619-1a56-44f9-aa56-644b24150ec5', 'LOGIN', 1653738901400, 'regin has LOGGED-IN'),
('98c637fe-060c-44ef-8509-cdf3654981eb', 'LOGIN', 1653827699700, 'owner has LOGGED-IN'),
('00152167-2e9c-498a-a85d-4370aef6e64e', 'LOGOUT', 1653827708718, 'owner@mail.com has LOGGED-OUT'),
('740f0968-f22a-45b9-923f-ac30038ac107', 'LOGIN', 1653827719544, 'owner has LOGGED-IN'),
('3df40ff1-d805-446a-9c4b-cfb4dac44960', 'LOGOUT', 1653830404885, 'owner@mail.com has LOGGED-OUT'),
('0d219df7-f354-4f49-be1f-ff3d64136cd2', 'LOGIN', 1653830414342, 'jackie has LOGGED-IN'),
('e6eac357-65a2-4c24-94d9-f0591dee4f2d', 'LOGIN', 1653830422598, 'jackie has LOGGED-IN'),
('13b96237-54ee-4eda-9255-495e9299b7bf', 'LOGIN', 1653830462247, 'jackie has LOGGED-IN'),
('7dbe9999-26de-42d2-9a85-6aeab1c0db4b', 'LOGIN', 1653830486400, 'jackie has LOGGED-IN'),
('adcd6857-4168-4823-a125-7a4edcaa0ea0', 'LOGOUT', 1653830646419, 'jackie@gmail.com has LOGGED-OUT'),
('dbd473f7-6cd3-4e43-aa55-f43b675c4aff', 'LOGIN', 1653830656832, 'owner has LOGGED-IN'),
('a106daaa-c559-4151-ae65-fb82454d4098', 'LOGOUT', 1653830707416, 'owner@mail.com has LOGGED-OUT'),
('1d57c9ee-06f3-47c3-9694-1923da8aa9b7', 'LOGIN', 1653830718076, 'employee has LOGGED-IN'),
('1c305b47-7c75-4b6b-9391-1748f73d17a4', 'LOGOUT', 1653830887847, 'employee@gmail.com has LOGGED-OUT'),
('04ef1825-48b8-4aaf-97ef-50326f1f410a', 'LOGIN', 1653830913506, 'owner has LOGGED-IN'),
('ae46f5ee-00b9-4d98-a17d-f01b849059e5', 'LOGOUT', 1653831168574, 'owner@mail.com has LOGGED-OUT'),
('41f98eff-ecd6-424e-bb00-1fe1462ab39a', 'LOGOUT', 1653831241254, 'ralphvictor.leonardo@cvsu.edu.ph has LOGGED-OUT'),
('bfa6029c-1baa-4522-a36a-1717c3c23e4d', 'LOGIN', 1653831258041, 'regin has LOGGED-IN'),
('621828f3-68ee-4075-a6ca-5c37e3cca302', 'LOGOUT', 1653831324154, 'regin.fabela@cvsu.edu.ph has LOGGED-OUT'),
('2f7c7bf3-644a-4f5b-9f4a-98705cbdce44', 'LOGIN', 1653831332981, 'ralph has LOGGED-IN'),
('5784cf48-1727-4108-97aa-6734f45d9f3b', 'CREATE_PROJECT', 1653831354135, 'Project reface has created'),
('3ec643db-d74b-4a00-8b99-3e5082ebf534', 'LOGIN', 1653831485622, 'owner has LOGGED-IN'),
('091cac33-da4e-4565-a2d8-0c7face89bfe', 'LOGOUT', 1653831603162, 'ralphvictor.leonardo@cvsu.edu.ph has LOGGED-OUT'),
('4d2ab1df-814c-46c2-ab60-948ab16850bd', 'LOGIN', 1653831612241, 'regin has LOGGED-IN'),
('83161294-950c-410e-b5b3-371e59b79c0e', 'LOGIN', 1653831804686, 'regin has LOGGED-IN'),
('7e918a2d-1a83-4cac-a56b-23ed10260f91', 'LOGIN', 1653831805744, 'regin has LOGGED-IN'),
('f833ee4e-f850-46c2-bcbe-0343d2cadd3a', 'LOGIN', 1653832186470, 'owner has LOGGED-IN'),
('a25a7c06-dd7e-4dae-a7c6-ec691ef8296c', 'LOGIN', 1653832187563, 'owner has LOGGED-IN'),
('6f74518b-9500-4c16-8ef1-a61f9fa07267', 'LOGOUT', 1653833683595, 'regin.fabela@cvsu.edu.ph has LOGGED-OUT'),
('d3144266-1abc-45a4-89d6-7d2d6e9d3fa6', 'LOGIN', 1653833690964, 'ralph has LOGGED-IN'),
('b0f96728-c340-430f-9fd8-774be3d5859e', 'LOGOUT', 1653834514783, 'regin.fabela@cvsu.edu.ph has LOGGED-OUT'),
('8ff02519-a845-464b-967a-2298bcbb67a7', 'LOGIN', 1653834525475, 'owner has LOGGED-IN'),
('a8a5b136-0ce0-4b5b-aa24-07ea7ec06ac1', 'LOGOUT', 1653835063111, 'owner@mail.com has LOGGED-OUT'),
('350a97d3-9b2b-4f75-ace9-ad4eed16ed2e', 'LOGIN', 1653835072681, 'owner has LOGGED-IN'),
('301357ca-b030-40c9-9178-a5a7f46e251f', 'LOGOUT', 1653835308621, 'owner@mail.com has LOGGED-OUT'),
('583b6c4a-afe5-4b1a-92ab-f9c13d2e804a', 'LOGIN', 1653835317809, 'owner has LOGGED-IN'),
('20bb8357-e021-4ce7-ba87-4df9a8626fdf', 'LOGOUT', 1653837360788, 'owner@mail.com has LOGGED-OUT'),
('356f62e4-5c85-4ee4-8c98-0cf0e9ca3fec', 'LOGIN', 1653837369778, 'owner has LOGGED-IN'),
('6492aeb6-645f-4408-a38b-a9120b4e1804', 'LOGOUT', 1653837810364, 'owner@mail.com has LOGGED-OUT'),
('3bcd2d66-4d01-4127-8612-ea4575dc8cca', 'LOGIN', 1653839874679, 'jackie has LOGGED-IN'),
('1ccf58b5-0e21-40f7-b382-2671377109e0', 'LOGOUT', 1653839890292, 'jackie@gmail.com has LOGGED-OUT'),
('360b4951-ace2-466f-a4c4-b45a506926aa', 'LOGIN', 1653839899915, 'jackie has LOGGED-IN'),
('0eb1e690-af59-468d-b143-2579d6639bce', 'LOGOUT', 1653840443498, 'jackie@gmail.com has LOGGED-OUT'),
('ca60d3a2-6790-40d1-bef8-82bb0a8acfa2', 'LOGIN', 1653840463574, 'jackie has LOGGED-IN'),
('6ae9d63a-1297-46ae-ac46-fe5f5a68cd2b', 'LOGOUT', 1653841078638, 'jackie@gmail.com has LOGGED-OUT'),
('ae0c44da-c5ae-4acb-8d59-d14b78d84609', 'LOGIN', 1653841089020, 'jackie has LOGGED-IN'),
('99c845ab-38c8-4a32-911b-c8809a5d6a5a', 'LOGOUT', 1653865344403, 'ralphvictor.leonardo@cvsu.edu.ph has LOGGED-OUT'),
('a84d02f9-3b8d-43c7-b53e-0e90a131ba7b', 'LOGIN', 1653865354035, 'jackie has LOGGED-IN'),
('5736ae8d-3585-4add-80e1-dded335e7600', 'LOGIN', 1653865354743, 'jackie has LOGGED-IN'),
('73a3c68c-d20e-4479-8d5e-d5936a0b2fc4', 'LOGOUT', 1653865358279, 'jackie@gmail.com has LOGGED-OUT'),
('3b8475dd-78be-4b15-b745-fb244ccf48fe', 'LOGIN', 1653865365107, 'jackie has LOGGED-IN'),
('d12a0dc9-19cd-4047-b968-5138ab5ef667', 'LOGOUT', 1653865495394, 'jackie@gmail.com has LOGGED-OUT'),
('8f7de977-7bb8-4413-82d5-890945dc2f65', 'LOGIN', 1653865507048, 'ralph has LOGGED-IN'),
('10b53c28-d07d-4278-8095-348512b47fa1', 'LOGOUT', 1653865543131, 'ralphvictor.leonardo@cvsu.edu.ph has LOGGED-OUT'),
('367bde32-4466-4fa4-9e3a-a5bdfb50807f', 'LOGIN', 1653865551107, 'ralph has LOGGED-IN'),
('732112c5-e202-4d82-8f4f-a7f2b5da4632', 'LOGOUT', 1653866887470, 'regin.fabela@cvsu.edu.ph has LOGGED-OUT'),
('9e49bc42-9965-4f3d-8304-62ddb7be3924', 'LOGIN', 1653866900609, 'employee has LOGGED-IN'),
('b6bf542b-cd41-4bd4-8e5f-b808cc9cafef', 'LOGIN', 1653866901873, 'employee has LOGGED-IN'),
('dd211589-e26f-420d-beba-12607971eab8', 'LOGOUT', 1653878772168, 'owner@mail.com has LOGGED-OUT'),
('6620bd72-f900-4ef2-b1a3-75c7fac421f8', 'LOGIN', 1653878785672, 'owner has LOGGED-IN'),
('4d7eed0d-90f7-41da-ad10-56e0aa91c5ba', 'LOGOUT', 1653878923872, 'ralphvictor.leonardo@cvsu.edu.ph has LOGGED-OUT'),
('e8ba783f-75aa-4be0-89e0-405186ea2ae3', 'LOGIN', 1653878926561, 'owner has LOGGED-IN'),
('b774c599-ee8c-4386-a1e3-bf827a51775a', 'LOGIN', 1653878935195, 'owner has LOGGED-IN'),
('e509b0a7-a867-4a53-a336-4d5d47151027', 'LOGIN', 1653878936623, 'owner has LOGGED-IN'),
('48b2bc00-e2aa-4496-b72b-ea66ba4ba88c', 'LOGOUT', 1653878955001, 'owner@mail.com has LOGGED-OUT'),
('c9a9bee9-c4fa-4efd-a0ed-b8cc51462916', 'LOGIN', 1653878962007, 'owner has LOGGED-IN'),
('c7d3efcc-a31c-4b34-bc1b-7cfb7e126b32', 'LOGOUT', 1653879003308, 'owner@mail.com has LOGGED-OUT'),
('f9368d6b-3816-4be3-9abf-3308eb8438c3', 'LOGIN', 1653879017166, 'owner has LOGGED-IN'),
('a0a06365-6bec-4779-afce-00eee9dca08d', 'LOGOUT', 1653879499347, 'owner@mail.com has LOGGED-OUT'),
('8e0cd053-706d-46dd-aa12-011d88bf4e47', 'LOGOUT', 1653880201631, 'owner@mail.com has LOGGED-OUT'),
('a8d3a344-1241-4068-96ae-afe401eadfac', 'LOGOUT', 1653880217498, 'employee@gmail.com has LOGGED-OUT'),
('4c5cdad6-a0ca-40dc-8e54-97d28f4cfb0e', 'LOGIN', 1653880324682, 'regin  has LOGGED-IN'),
('8d832317-32df-40d9-928f-e6171c0fbda4', 'LOGIN', 1653880330769, 'regin  has LOGGED-IN'),
('cb557d73-50c9-4c96-a844-b887662cdd5d', 'LOGIN', 1653880343418, 'regin  has LOGGED-IN'),
('edc991f8-0ef0-4916-8490-f37ec2658788', 'LOGIN', 1653880375613, 'regin has LOGGED-IN'),
('4fd23068-76ba-4382-9ad5-d4f27e7dddbd', 'LOGIN', 1653880382098, 'regin has LOGGED-IN'),
('3880afe5-6c22-45e1-a96b-c8631e6a9f68', 'LOGIN', 1653880383631, 'regin has LOGGED-IN'),
('5ad954cb-ddfb-43e2-9cea-fceeecffd47b', 'LOGIN', 1653880425657, 'ralph has LOGGED-IN'),
('eed03946-1b8c-4b08-944d-18d476883a87', 'LOGIN', 1653883667433, 'owner has LOGGED-IN'),
('93f3182a-fecc-4401-b4da-ac56067a1036', 'LOGIN', 1653901329337, 'owner has LOGGED-IN'),
('1d9f9315-fa23-4db8-9981-28013b690447', 'LOGIN', 1653901330523, 'owner has LOGGED-IN'),
('577b057f-c80e-46f9-809b-5af8c58f89f5', 'LOGOUT', 1653903085152, 'owner@mail.com has LOGGED-OUT'),
('c81cc197-2e11-4d3d-b6f9-353ffe69f92a', 'LOGIN', 1653918012696, 'regin has LOGGED-IN'),
('17dfbc0a-dd74-4608-ab32-08d032b4ad8a', 'LOGIN', 1653918014335, 'regin has LOGGED-IN'),
('6ddab646-e278-4744-885f-f12ebfa12950', 'LOGIN', 1653918021475, 'regin has LOGGED-IN'),
('f009b543-4a55-4cb0-9da0-9f4cee633112', 'LOGIN', 1653918115283, 'ralph has LOGGED-IN'),
('b9e9e5f9-2860-42f6-b25f-d36cb9051de0', 'LOGOUT', 1653918210986, 'ralphvictor.leonardo@cvsu.edu.ph has LOGGED-OUT'),
('56999fec-6c28-4c1f-a5b3-39f5037dd297', 'LOGIN', 1653918220213, 'monica has LOGGED-IN'),
('12db86c5-cd02-47a7-9131-508a2df73b9b', 'LOGOUT', 1653918254382, 'monicajoyceann.mullet@cvsu.edu.ph has LOGGED-OUT'),
('2bda9486-8f7e-4a4e-ba0f-f16cb7bb59b6', 'LOGIN', 1653918263089, 'regin has LOGGED-IN'),
('8608c8b1-86e5-445f-8700-af33ba8935d0', 'LOGIN', 1653918272166, 'regin has LOGGED-IN'),
('4450a0ea-da9b-46ef-8122-b3fb3e06b7b6', 'LOGIN', 1653918273089, 'regin has LOGGED-IN'),
('b4dd81bb-9eff-4f90-9125-74942f9555ab', 'LOGIN', 1653918285057, 'regin has LOGGED-IN'),
('396b1b50-6a12-433e-9f8d-9e4ad746c6eb', 'LOGIN', 1653918294740, 'regin has LOGGED-IN'),
('716afa35-4b18-4390-b072-df1c62b6ef75', 'LOGIN', 1653918474684, 'regin has LOGGED-IN'),
('20e54c07-9c27-4eeb-828c-cfcba3522369', 'LOGIN', 1653918475196, 'regin has LOGGED-IN'),
('c06bc978-fcb4-4377-bc5d-e44f03519a10', 'LOGOUT', 1653918584196, 'regin.fabela@cvsu.edu.ph has LOGGED-OUT'),
('5b076ed9-7c67-4ed6-a6af-2351d9d17235', 'LOGIN', 1653918590878, 'regin has LOGGED-IN'),
('db67e418-45f6-468b-b7f5-056d57980d97', 'LOGOUT', 1653918749092, 'regin@gmail.com has LOGGED-OUT'),
('d068c1ea-ce99-4e0f-91ef-1eb80c1fc2f5', 'LOGOUT', 1653997586104, 'regin.fabela@cvsu.edu.ph has LOGGED-OUT'),
('8c67fb02-b66f-4e08-9fd8-a7127001e542', 'LOGOUT', 1653997586654, 'ralphvictor.leonardo@cvsu.edu.ph has LOGGED-OUT'),
('948f3955-512d-430e-b5ae-d28a1ecb94d4', 'LOGIN', 1654038969728, 'ralph has LOGGED-IN'),
('dc351bb8-bc99-4fb3-84f5-7073d1a6121f', 'LOGOUT', 1654039077611, 'ralph@gmail.com has LOGGED-OUT'),
('9dc0abe2-9381-4115-8d75-b9479e1b9eda', 'LOGIN', 1654039101227, 'owner has LOGGED-IN'),
('9008d309-2a75-4302-8cbc-7f8558851cde', 'LOGIN', 1654039102477, 'owner has LOGGED-IN'),
('6a3abb39-4296-4a9f-8c3a-526263e53a0f', 'LOGOUT', 1654039245933, 'owner@mail.com has LOGGED-OUT'),
('16b0a8c0-a4af-4236-93ba-89da0c92bcae', 'LOGIN', 1654114988045, 'owner has LOGGED-IN'),
('a62ce597-5c98-4546-a377-3b47f645dc07', 'LOGIN', 1654115002691, 'employee has LOGGED-IN'),
('4fdc4c33-3b06-4a6d-9bc7-e1efe4e88d90', 'LOGIN', 1654115016797, 'ralph has LOGGED-IN'),
('8edd5f05-b49d-400a-9a88-c7b6172e6bd8', 'CREATE_PROJECT', 1654115195302, 'Project reface has created'),
('e0acddb2-a4a3-41f6-bbdb-a24148f6aeca', 'CREATE_PROJECT', 1654115744683, 'Project metal fabrication has created'),
('e3e3a667-ef7f-488c-ab01-91c2b369fd4c', 'LOGIN', 1655613683821, 'owner has LOGGED-IN'),
('8bb024fc-7613-4044-925e-106f672aa9a6', 'LOGIN', 1655613684811, 'owner has LOGGED-IN'),
('f4dfed59-f514-4216-a8bd-8f28795cb994', 'LOGIN', 1655613733176, 'employee has LOGGED-IN'),
('8ebe33ea-2bba-4958-ba8a-c2668044a22c', 'LOGIN', 1655613733830, 'employee has LOGGED-IN'),
('32e4adfd-87aa-4b43-8fa5-45a8738a352b', 'LOGIN', 1655613754377, 'ralph has LOGGED-IN'),
('c1c3506e-e8d4-43af-8143-c91fdc42740b', 'LOGIN', 1655613762565, 'ralph has LOGGED-IN'),
('7de33678-13e6-4aaa-bebd-2d126f6e9656', 'LOGIN', 1655613767946, 'ralph has LOGGED-IN'),
('aeed3d70-1023-4de3-896f-cadadb335ebd', 'LOGOUT', 1655613790261, 'ralph@gmail.com has LOGGED-OUT'),
('b8d837aa-4eb4-42c1-96af-ce08346bd550', 'LOGIN', 1656663179252, 'owner has LOGGED-IN'),
('f478cbc3-6ffd-446b-8bbf-f183512bc458', 'LOGIN', 1656663180508, 'owner has LOGGED-IN'),
('e18badd5-a59b-49d5-ba30-bfc8b1534b54', 'LOGIN', 1657443476102, 'owner has LOGGED-IN'),
('36e59489-4008-42f7-9f60-63cc8bbb364b', 'LOGIN', 1658707455898, 'owner has LOGGED-IN'),
('c8d91086-dbfe-4f17-82da-fc82e22602cd', 'LOGIN', 1661266161262, 'admin has LOGGED-IN'),
('18fd5b30-c120-4c40-95e9-ebdc70083424', 'LOGIN', 1661266170147, 'owner has LOGGED-IN'),
('5dac6800-7fce-41b2-9cdc-b3d433109161', 'LOGIN', 1662684491132, 'ralph has LOGGED-IN'),
('667e1a19-b30e-4dfa-8423-c1be5a61a548', 'LOGIN', 1662684496593, 'ralph has LOGGED-IN'),
('6e1bc2aa-ea52-4ab6-b817-05b592037b1d', 'LOGIN', 1662684558769, 'employee has LOGGED-IN'),
('761ed960-5fdf-4e76-b153-0ea1b5af48e7', 'LOGIN', 1662684567370, 'employee has LOGGED-IN'),
('d6edbedb-8ae5-47b3-95b8-e74c1059107f', 'LOGIN', 1662684593357, 'owner has LOGGED-IN'),
('705c38b7-aa34-4e38-bb3d-c86eca83dfc1', 'LOGIN', 1662711824252, 'owner has LOGGED-IN'),
('9e49cc3a-a376-4567-9491-98deb6191cf4', 'LOGIN', 1662711850897, 'owner has LOGGED-IN'),
('906558a5-4b69-4127-8173-eac7dadb1928', 'LOGIN', 1662711871518, 'employee has LOGGED-IN'),
('3707a184-efa0-4429-a6d8-de7a9e69a4c6', 'LOGIN', 1662711899104, 'ralph has LOGGED-IN'),
('6af7f016-bd25-4ced-8b55-a0031773a980', 'LOGIN', 1662711918110, 'ralph has LOGGED-IN'),
('36a206c7-4d47-4a20-ad9b-ae97ec1f4f81', 'LOGIN', 1662711941928, 'ralph has LOGGED-IN'),
('211c98aa-9e5b-472b-9a81-8bfe9727b1a5', 'LOGIN', 1662711983075, 'ralph has LOGGED-IN'),
('8c439788-fe6d-4ac9-96f2-0c1264361f62', 'REGISTRATION', 1662712026508, 'test@test.com has REGISTERED'),
('3c7a978d-a2fb-4c4c-a42c-09047647fef4', 'LOGIN', 1662712035513, 'test1 has LOGGED-IN'),
('059f3bf7-df33-4bbb-829b-9e4aef83a939', 'LOGIN', 1662712041752, 'test has LOGGED-IN'),
('2355fff2-8ca7-41ca-a468-8b75b14b44c7', 'LOGIN', 1662712047859, 'test1 has LOGGED-IN'),
('f034ad7f-7062-47d7-b094-2938d3e0bca7', 'LOGIN', 1662712407378, 'Employee has LOGGED-IN'),
('187f553a-bfe8-4cb5-993a-44210d55f314', 'LOGIN', 1662712630611, 'ralph has LOGGED-IN'),
('5c186e94-936a-4fc0-8ee0-a61621568200', 'LOGOUT', 1662712668166, 'ralph@gmail.com has LOGGED-OUT'),
('9d185f47-bc83-4953-b822-f7b8ea382e17', 'LOGIN', 1662712678669, 'Owner has LOGGED-IN'),
('7118bf00-e8bf-4042-b165-24c064f18503', 'LOGOUT', 1662712743694, 'owner@mail.com has LOGGED-OUT'),
('2d1e5a3b-12cb-4bc5-8797-e690b9bf4d3c', 'LOGIN', 1662712763835, 'Employee has LOGGED-IN'),
('615b9982-8050-4495-b9b1-cd231ac76391', 'LOGOUT', 1662712968166, 'employee@gmail.com has LOGGED-OUT'),
('41df82fc-59f6-4884-9a0b-ad3616506c4d', 'LOGIN', 1662712976412, 'Owner has LOGGED-IN'),
('e418d679-126b-47a0-a9a5-18b6bc05df5d', 'LOGIN', 1662712983484, 'Owner has LOGGED-IN'),
('17f0110a-a9f5-425b-9f48-5bac4671cae4', 'LOGIN', 1663138978130, 'mulletmonica has LOGGED-IN'),
('342aa8c8-3d54-4947-a686-d20bd8327989', 'LOGIN', 1663138978948, 'mulletmonica has LOGGED-IN'),
('81b1c5b2-c70c-4519-973e-7d94828b2d1d', 'LOGIN', 1663138980088, 'mulletmonica has LOGGED-IN'),
('6c19ee91-5634-47bc-9c03-5b0e5538ca5f', 'LOGIN', 1663138994988, 'mulletmonica has LOGGED-IN'),
('653ce160-65c7-40a1-b9d4-863895d6dc62', 'LOGIN', 1663138995249, 'mulletmonica has LOGGED-IN'),
('e59e3dba-2341-4a6d-9737-03d426d9f6f4', 'LOGIN', 1663138995659, 'mulletmonica has LOGGED-IN'),
('5157e4bb-d49c-4d35-8713-ca4a2ab486fb', 'LOGIN', 1663138996314, 'mulletmonica has LOGGED-IN'),
('851c8310-87fa-4463-b985-44f16d7eab4e', 'LOGIN', 1663139024653, 'owner has LOGGED-IN'),
('f0259a18-438f-4293-a621-aebc47f2c487', 'LOGIN', 1663139074591, 'owner has LOGGED-IN'),
('c8e71573-a261-48b5-b041-d8094ec12011', 'LOGIN', 1663208569807, 'admin has LOGGED-IN'),
('991bcb0f-7ece-48f7-a212-68a0e9ad4323', 'LOGIN', 1663208570891, 'admin has LOGGED-IN'),
('f31cb008-84a1-446b-9254-09f86b1144c7', 'LOGIN', 1663208571627, 'admin has LOGGED-IN'),
('7b5ff0bc-9e21-4295-ac49-1b88d70f72a1', 'LOGIN', 1663208571861, 'admin has LOGGED-IN'),
('7f4fe78c-7b0b-483b-ad56-89e5cc697570', 'REGISTRATION', 1663208656377, 'LOHHERNANDEZL1996@GMAIL.COM has REGISTERED'),
('879b2a99-b95e-4bb3-8f37-e5b8c7725c31', 'LOGIN', 1663208667702, 'jhlm has LOGGED-IN'),
('04e7a2e0-414a-4f35-949b-2f5d87bd26a0', 'LOGOUT', 1663222005374, 'owner@mail.com has LOGGED-OUT'),
('632cce14-26f3-4dbc-9a65-752d55f57a0f', 'LOGIN', 1663223715932, 'owner has LOGGED-IN'),
('ff418e33-e32c-4e84-b91e-65636e919917', 'REGISTRATION', 1663228725405, 'monicajoyceann@gmail.com has REGISTERED'),
('71d6a510-f5a2-4965-b6ac-903a6f56b406', 'LOGIN', 1663230153747, 'mulletmonica has LOGGED-IN'),
('ac3061b6-80f6-4a60-b8e5-951d0975c898', 'LOGIN', 1663230185388, 'mulletmonica has LOGGED-IN'),
('9da2f82b-350f-4538-9da8-735ac95cab53', 'LOGIN', 1663230203783, 'monicajoyceann@gmail.com has LOGGED-IN'),
('987c033f-4306-469f-af29-ea70ac12df91', 'CREATE_PROJECT', 1663285859573, 'Project Honda Ph15 Engine Block  has created'),
('508c5a1c-54a1-4108-994f-60c2d790ecdb', 'LOGOUT', 1663288966223, 'monicajoyceann@gmail.com has LOGGED-OUT'),
('1812e21f-8253-45ee-b9ed-d30fb4fde964', 'LOGIN', 1663288976006, 'employee has LOGGED-IN'),
('031866a7-706c-4963-9485-fcee9469f161', 'LOGOUT', 1663313881776, 'employee@gmail.com has LOGGED-OUT'),
('7c599297-0b66-4824-8055-49f68ca78b3b', 'LOGIN', 1663313896776, 'monicajoyceann@gmail.com has LOGGED-IN'),
('796f0a09-bd2e-4e37-80b0-935ac76f0292', 'LOGIN', 1663313897635, 'monicajoyceann@gmail.com has LOGGED-IN'),
('e257a8da-2a83-4092-809f-03868b68dfd0', 'LOGIN', 1663579946864, 'owner has LOGGED-IN'),
('7bb2328f-e0bf-43bb-8546-22752adb9597', 'LOGOUT', 1663579985845, 'owner@mail.com has LOGGED-OUT'),
('02ed7855-d5ed-4ce3-af0e-11a3e5d16841', 'LOGIN', 1663580003781, 'employee has LOGGED-IN'),
('025eb810-a25a-42e3-8952-df4a867e5442', 'LOGOUT', 1663580341220, 'employee@gmail.com has LOGGED-OUT'),
('52189610-ac2f-46b2-83a6-3aab97e28f78', 'LOGIN', 1663580526030, 'ralph has LOGGED-IN'),
('02d1c252-fa95-46e3-80c0-7a211eef3ff7', 'LOGIN', 1663580526072, 'ralph has LOGGED-IN'),
('3277ba92-9da7-4b88-9348-e21dc25cf681', 'LOGIN', 1663580526286, 'ralph has LOGGED-IN'),
('14cdbfdf-1e5b-41e4-bced-8a3ad6af7dd4', 'LOGIN', 1663580527546, 'ralph has LOGGED-IN'),
('4348e1fc-45c4-4109-aa14-b801c2712e8d', 'LOGOUT', 1663581643266, 'ralph@gmail.com has LOGGED-OUT'),
('7c8d42b4-25b5-498c-be9b-c30865c64d7b', 'LOGIN', 1663581660526, 'ralph has LOGGED-IN'),
('6bc10467-65e2-4fbf-a5f2-6cb562b64cc6', 'LOGIN', 1663588402868, 'ralph has LOGGED-IN'),
('b56084cf-766b-4ea5-a3b6-2269ebceb2b1', 'LOGOUT', 1663593333960, 'ralph@gmail.com has LOGGED-OUT'),
('4b7f9cb6-9831-4138-b33a-93804bff87e1', 'LOGIN', 1663596331420, 'ralph has LOGGED-IN'),
('07417f7a-7081-4e63-9479-3cb10069e57d', 'LOGIN', 1663596331654, 'ralph has LOGGED-IN'),
('9df22e73-a0cd-434d-9734-c23b3a3b2477', 'LOGIN', 1663596331888, 'ralph has LOGGED-IN'),
('73c88a96-8aae-4768-9674-78f715dcbcba', 'LOGIN', 1663596332125, 'ralph has LOGGED-IN'),
('78f9683c-31ee-488d-94ee-f80cb04e0606', 'LOGIN', 1663596332133, 'ralph has LOGGED-IN'),
('fd47036d-7609-4bc0-8e67-0141758539e9', 'LOGIN', 1663596332340, 'ralph has LOGGED-IN'),
('e198ecc9-e121-4cb7-bc89-289fa7af4f26', 'LOGIN', 1663596332879, 'ralph has LOGGED-IN'),
('259897f4-afd4-4292-835a-8c38fc9c8934', 'LOGOUT', 1663596371321, 'ralph@gmail.com has LOGGED-OUT'),
('add27201-7ac0-41f2-bca2-602e7c7b692e', 'LOGIN', 1663596386605, 'owner has LOGGED-IN'),
('de4ab282-5a59-4c16-aa05-11d6315c9616', 'LOGIN', 1663596387664, 'owner has LOGGED-IN'),
('ebfda461-57e7-4bae-b5cb-31d6a085ce07', 'LOGOUT', 1663596437763, 'owner@mail.com has LOGGED-OUT'),
('5f7269bb-2c41-4f0e-9a79-0e3b5872c8db', 'LOGIN', 1663596471932, 'emplyoyess has LOGGED-IN'),
('18498490-32fb-40b7-b791-b0829b584530', 'LOGIN', 1663596480942, 'employee has LOGGED-IN'),
('9ceec63d-1aa0-47e3-a2ab-1edf34ce6329', 'LOGOUT', 1663596523804, 'employee@gmail.com has LOGGED-OUT'),
('cc9ee36b-d372-4b7c-86ac-1f214ee2489b', 'LOGIN', 1663596535322, 'owner has LOGGED-IN'),
('52ce4fd5-c9c6-4838-a8ad-6f468d8837b3', 'LOGOUT', 1663596596936, 'owner@mail.com has LOGGED-OUT'),
('c959854f-9d8f-4b5e-aacd-2bf97c19394f', 'LOGIN', 1663596609157, 'ralph has LOGGED-IN'),
('72b4e45f-36f9-4183-a409-33c0592f5bc9', 'LOGOUT', 1663596898543, 'ralph@gmail.com has LOGGED-OUT'),
('e1348347-dbce-42f0-b8e8-b7552456a6ac', 'LOGIN', 1663596920662, 'owner has LOGGED-IN'),
('d00f4333-e1fd-4cce-93a5-90f76af55ee7', 'LOGOUT', 1663597160491, 'owner@mail.com has LOGGED-OUT'),
('e86002b0-7d66-4a67-874b-4572972562da', 'LOGIN', 1663597183435, 'employee1 has LOGGED-IN'),
('83eab98b-8ec1-45a3-b986-94219ba5fb1e', 'LOGIN', 1663597191521, 'employee has LOGGED-IN'),
('4269ee86-cf80-41fb-842a-be823ad17d40', 'LOGOUT', 1663597505887, 'employee@gmail.com has LOGGED-OUT'),
('4ad78530-ed93-4087-a489-70c715d83102', 'LOGIN', 1663597517454, 'ralph has LOGGED-IN'),
('8c235393-ee62-426f-a82f-f2e7e1cf2487', 'LOGIN', 1663597519096, 'ralph has LOGGED-IN'),
('4ffd2cf9-d740-4062-bd68-bea0341506be', 'LOGOUT', 1663597790364, 'ralph@gmail.com has LOGGED-OUT'),
('df7aab6c-a9ac-42d8-8314-76cfcb83c904', 'LOGIN', 1663597806336, 'owner has LOGGED-IN'),
('1763b6b4-19fb-485d-8403-dfe4736217ff', 'LOGIN', 1663597807768, 'owner has LOGGED-IN'),
('be1c1da1-64ce-4f3a-b3da-b234a454a3a6', 'LOGOUT', 1663601832863, 'owner@mail.com has LOGGED-OUT'),
('c5018a1b-34fd-407d-ad73-01f29156bd4c', 'LOGIN', 1663601848126, 'owner has LOGGED-IN'),
('f19196b5-c6a4-41b5-a6a7-9c33fa99bb76', 'LOGIN', 1663601848324, 'owner has LOGGED-IN'),
('a08dc35a-09ac-4974-af7d-6d44e1f54142', 'LOGOUT', 1663602095439, 'owner@mail.com has LOGGED-OUT'),
('853cb9cd-453c-4600-ac13-9b3fc64341b8', 'LOGIN', 1663602301554, 'ralph has LOGGED-IN'),
('e332c5e4-7f9a-4bf9-b3ef-5924f2e83301', 'LOGIN', 1664928312042, 'owner has LOGGED-IN'),
('33ad4d0e-9664-42ed-944a-66f6f56e6126', 'LOGIN', 1666244831240, 'owner has LOGGED-IN'),
('20f5e356-609a-4ce8-a8e4-62ca5b7e9d75', 'LOGIN', 1666244831972, 'owner has LOGGED-IN'),
('79b8c170-e3e6-469f-a7c9-8909e85bbdf5', 'LOGIN', 1666497193392, 'owner has LOGGED-IN'),
('e5433262-faae-4b4b-b784-13a2b3c4c002', 'LOGIN', 1666497194787, 'owner has LOGGED-IN'),
('c6582299-cea0-4e30-a74b-884950fe47c8', 'LOGIN', 1666497212623, 'employee has LOGGED-IN'),
('2b848ba8-9938-420a-a018-bebb96cf0af2', 'LOGIN', 1666497212961, 'employee has LOGGED-IN'),
('acf82d1f-4251-42df-bd41-56cc3db0f03d', 'LOGOUT', 1666497262261, 'employee@gmail.com has LOGGED-OUT'),
('1a23360f-fd63-4906-993f-46c4d11b2a6e', 'LOGIN', 1666498388688, 'regin has LOGGED-IN'),
('ea847aa9-824c-4f4b-939a-ba1934a2bb83', 'LOGOUT', 1666498395587, 'regin@gmail.com has LOGGED-OUT'),
('3fb94e1c-a439-4de1-add0-e8b8f52529dd', 'LOGIN', 1666498411062, 'ralph has LOGGED-IN'),
('17890ab0-f04c-4e4c-addb-68e247182286', 'LOGIN', 1666498442799, 'ralph has LOGGED-IN'),
('38dbf6dc-0998-4e6f-9e56-f8d80d960849', 'LOGOUT', 1666498470928, 'ralph@gmail.com has LOGGED-OUT'),
('ea0d396a-289d-46a7-85cf-5d2e603df899', 'LOGIN', 1666498480564, 'regin has LOGGED-IN'),
('820f3c18-382a-4098-8f38-a33ceb25e691', 'LOGOUT', 1666498486936, 'ralph@gmail.com has LOGGED-OUT'),
('f1c6dee8-2ebf-4aa4-b71b-255fb70f27e1', 'LOGIN', 1666498494345, 'ralph has LOGGED-IN'),
('ebacb279-fb31-44e6-bb2c-1e8475be0fd5', 'LOGIN', 1666498502335, 'ralph has LOGGED-IN'),
('df1f2308-8cae-4b6d-ac85-2ff6619ae120', 'LOGIN', 1666498511538, 'ralph has LOGGED-IN'),
('efdc4331-2ee6-4d05-8e66-d67c0c27bdb5', 'LOGOUT', 1666498557546, 'ralph@gmail.com has LOGGED-OUT'),
('ba67bad7-216f-41d9-aede-b5300509b923', 'LOGIN', 1666498563137, 'ralph has LOGGED-IN'),
('7a98b1c2-e78c-4c4a-af07-772c68805757', 'LOGIN', 1666498564331, 'ralph has LOGGED-IN'),
('5da1bd8c-8197-4b9f-9ad6-c53d2aea3fd5', 'LOGOUT', 1666498583017, 'ralph@gmail.com has LOGGED-OUT'),
('273ca0ee-79e2-476d-8a56-9b1c28b4a687', 'LOGIN', 1666498591327, 'ralph has LOGGED-IN'),
('56ec53cb-3b11-463d-b1a3-5ca7e112b0fe', 'LOGIN', 1667385881604, 'owner has LOGGED-IN'),
('571f2f97-c0c0-4d43-8dc8-b86bff0083be', 'LOGIN', 1667385882311, 'owner has LOGGED-IN'),
('2e38ffbb-2b24-47eb-a000-3a6a508e6113', 'LOGOUT', 1667385909660, 'owner@mail.com has LOGGED-OUT'),
('141435d3-2b24-4fa4-a76f-c8976dc09e87', 'LOGIN', 1667891089415, 'ralph has LOGGED-IN'),
('82342aa7-f13b-4bb4-8d95-84545d717783', 'LOGOUT', 1667891094308, 'ralph@gmail.com has LOGGED-OUT'),
('f5913f16-f04a-4ca9-a3ee-06b80b8e2dca', 'LOGIN', 1668059240857, 'owner has LOGGED-IN'),
('90e3edd8-faac-4240-8a1d-169ac8acab4a', 'LOGIN', 1668059241056, 'owner has LOGGED-IN'),
('1ca0ab40-93fd-4afd-addc-e5c1cc4de576', 'LOGIN', 1668059241254, 'owner has LOGGED-IN'),
('b4d0c201-6bc6-4bb7-a67a-f97630236540', 'LOGIN', 1668059242411, 'owner has LOGGED-IN'),
('5d0b8c8a-51d8-4cd3-a8c2-d82468182a8d', 'LOGIN', 1668059242416, 'owner has LOGGED-IN'),
('55f11af2-1a5c-4038-b386-56789fa1a860', 'LOGIN', 1668059242979, 'owner has LOGGED-IN'),
('101ee9ac-b3bb-4d40-bc40-5dfc16e601d4', 'LOGIN', 1668059242993, 'owner has LOGGED-IN'),
('7687af2f-eff0-43df-8441-f7f6fdea6a1e', 'LOGOUT', 1668059266668, 'owner@mail.com has LOGGED-OUT'),
('20a859a0-74f8-429c-a8e6-77f74f5f5ed9', 'LOGIN', 1668059484456, 'employee has LOGGED-IN'),
('54add079-825c-47b1-a07f-78b5953da8bc', 'LOGOUT', 1668059496098, 'employee@gmail.com has LOGGED-OUT'),
('9cfbf850-e4c4-4aac-91f9-c334ff0baeb5', 'LOGIN', 1668059514791, 'ralph has LOGGED-IN'),
('95156cb1-2557-4ee0-9d6b-59af30b58de1', 'LOGOUT', 1668059545875, 'ralph@gmail.com has LOGGED-OUT'),
('06cc70a7-b411-46d4-9211-635827e14db4', 'LOGIN', 1668059555087, 'ralph has LOGGED-IN'),
('ae815334-ce2b-43f3-9db7-6066fa5d3226', 'LOGIN', 1668059566539, 'ralph has LOGGED-IN'),
('f54ff971-8136-4ff9-bb71-8b630d058b2b', 'LOGOUT', 1668059577507, 'ralph@gmail.com has LOGGED-OUT'),
('60df0444-a1b2-4ae4-8742-2270a255c3ae', 'LOGIN', 1668926785654, 'owner has LOGGED-IN'),
('f1e72586-8223-4dff-b525-fa78af869e2e', 'LOGIN', 1668926785668, 'owner has LOGGED-IN'),
('c86af982-ec34-46f8-b69b-6780ba84bfdb', 'LOGIN', 1668932726454, 'ralph has LOGGED-IN'),
('8cfe79c0-2acc-4c2d-980b-6a8a6cc13615', 'CREATE_PROJECT', 1668933260079, 'Project Toyota 5K Cylinder Head has created'),
('b83db5ae-e9f5-416e-bcc3-a2f639cf0cf0', 'LOGIN', 1668934944334, 'employee has LOGGED-IN'),
('8c72a680-6ce7-49d6-aef0-c7a28ff363a1', 'LOGIN', 1668934946035, 'employee has LOGGED-IN'),
('0ea7b0b7-c3f5-4579-b22b-6210e5814c14', 'LOGIN', 1668945951745, 'owner has LOGGED-IN'),
('e3c9f172-6882-41dc-9ca7-5f38a8699115', 'LOGIN', 1668961835696, 'owner has LOGGED-IN'),
('53e0825c-032e-4857-b6a8-b91854e7fb7d', 'LOGIN', 1668995186338, 'ralph has LOGGED-IN'),
('89344ab6-0061-4602-b832-d47832e4e142', 'LOGIN', 1668995196575, 'ralph has LOGGED-IN'),
('029d061f-93b0-479c-995a-7e0ec1381eee', 'LOGOUT', 1668998517834, 'ralph@gmail.com has LOGGED-OUT'),
('7332394a-146f-4f70-aaf5-683d61d4a072', 'LOGIN', 1668998536729, 'owner has LOGGED-IN'),
('e884098a-7431-4625-8566-f948297e32b7', 'LOGIN', 1668998758900, 'owner has LOGGED-IN'),
('e98b7666-5177-4283-a0aa-ba3a6f6d0021', 'LOGIN', 1668998778036, 'owner has LOGGED-IN'),
('a7748dc9-c546-4f5d-878b-341aa993c2d1', 'LOGIN', 1668998790361, 'owner has LOGGED-IN'),
('9f5fb5fc-b62f-44f2-9fdc-f7a9bb703b57', 'LOGIN', 1668998799307, 'employee has LOGGED-IN'),
('74ee455c-2c51-49be-9862-05ed172d4866', 'LOGIN', 1668998799986, 'ralph has LOGGED-IN'),
('f094e29f-5fb0-41e7-9af5-7937894f8a69', 'LOGOUT', 1669000004024, 'owner@mail.com has LOGGED-OUT'),
('93e4ca55-e68c-45b5-82f0-7b73b10f0bb8', 'LOGIN', 1669000013602, 'owner has LOGGED-IN'),
('4820ad8e-f4d1-4443-ab11-40330dfc7c2f', 'LOGIN', 1669000703564, 'owner has LOGGED-IN'),
('42c9f5ac-8dfe-47db-80f4-3fdb8a87ee9c', 'LOGIN', 1669000907758, 'regin has LOGGED-IN'),
('c3a33cde-5f70-4980-a2d2-7e140b8e0284', 'LOGOUT', 1669000919839, 'regin@gmail.com has LOGGED-OUT'),
('694f9e48-7a19-40c9-bf93-e35ff998f049', 'LOGOUT', 1669002087453, 'owner@mail.com has LOGGED-OUT'),
('723b61a4-b5bf-4450-9e0e-cbe4b0e19947', 'LOGIN', 1669002115958, 'ralph has LOGGED-IN'),
('9e43fdcf-5446-4295-a627-be7099140d34', 'LOGIN', 1669002127273, 'ralph has LOGGED-IN'),
('63be8547-ec58-487b-812e-c649611b15cf', 'LOGOUT', 1669002138956, 'ralph@gmail.com has LOGGED-OUT'),
('72f87c45-0e99-41a9-8faa-49c0b443c846', 'REGISTRATION', 1669005560554, 'gregoriohiyas@gmail.com has REGISTERED'),
('aea69ba0-1047-43f7-92dc-caa986b898a3', 'LOGOUT', 1669005582326, 'employee@gmail.com has LOGGED-OUT'),
('ebc6e843-c479-469c-a6bd-e6b733797a79', 'LOGIN', 1669005592673, 'gregorio has LOGGED-IN'),
('e45553dd-c2e4-44c2-86bc-e162a5198aae', 'LOGIN', 1669005597053, 'gregorio has LOGGED-IN'),
('9bef66f6-7f29-4628-92d0-a2a9fc0dbe74', 'LOGIN', 1669005713065, 'gregorio has LOGGED-IN'),
('414015ea-b7da-4922-8a75-0c3adc44bc34', 'REGISTRATION', 1669005823570, 'noelsinon@gmail.com has REGISTERED'),
('3928786a-5f74-41ed-bc26-e8d242f5afc5', 'LOGOUT', 1669005844764, 'gregoriohiyas@gmail.com has LOGGED-OUT'),
('91aa97cc-5ad1-4961-8068-a6b6899e2137', 'LOGIN', 1669005854852, 'noel has LOGGED-IN'),
('fae21bd2-2bcd-472f-b6b0-aaf3ebcfc76f', 'REGISTRATION', 1669005960701, 'arielreyes@gmail.com has REGISTERED'),
('e8c73b60-15ba-4832-a99c-e2fc18d278b3', 'LOGOUT', 1669006017391, 'noelsinon@gmail.com has LOGGED-OUT'),
('1b188cc7-c2ac-4f1c-ad5f-5ee5d0293d46', 'LOGIN', 1669006031199, 'ariel has LOGGED-IN'),
('1cddac6b-5b77-4118-95b7-bb8bf89f7d74', 'REGISTRATION', 1669006110166, 'josegrefalda@gmail.com has REGISTERED'),
('bf8770cd-af0d-4bb9-857b-c355709dadaf', 'LOGOUT', 1669006155626, 'arielreyes@gmail.com has LOGGED-OUT'),
('9b9cb596-5bfb-4fcf-a97f-eb5035f3b57b', 'LOGIN', 1669006165546, 'jose has LOGGED-IN'),
('a2690aba-40e6-4f41-811e-6cbe5e12198d', 'LOGOUT', 1669006208407, 'josegrefalda@gmail.com has LOGGED-OUT'),
('8817fbb1-d97c-49a5-bdaf-176957410b30', 'LOGIN', 1669006216213, 'employee has LOGGED-IN'),
('31544f46-f2c6-4c9e-bdff-cbbe26abb620', 'REGISTRATION', 1669006601623, 'albertreyes@gmail.com has REGISTERED'),
('094f5984-3519-4a20-b0b8-edebf3acedac', 'REGISTRATION', 1669006702377, 'rubenreyes@gmail.com has REGISTERED'),
('704d3fad-6f23-441f-b86c-5cdaadbda7f2', 'REGISTRATION', 1669006842551, 'celsovillanueva@gmail.com has REGISTERED'),
('b1907512-7f19-4cd0-9401-1c8b42ae11a0', 'REGISTRATION', 1669006994356, 'ruscainsorio@gmail.com has REGISTERED'),
('df615bff-500f-4d70-9a38-d77cf41d9846', 'LOGOUT', 1669007038235, 'ralph@gmail.com has LOGGED-OUT'),
('a08515e5-53f5-4488-b2b4-180ecd7cf0a4', 'LOGIN', 1669007048892, 'rusca has LOGGED-IN'),
('39b598c9-7759-4211-970b-8cdbc9c9d4d0', 'LOGOUT', 1669007059145, 'ruscainsorio@gmail.com has LOGGED-OUT'),
('1604726b-e52d-4de3-9d6b-79170769fb09', 'LOGIN', 1669007094377, 'albert has LOGGED-IN'),
('82bdd134-4022-424d-b00f-dd5adea2348b', 'LOGIN', 1669007111823, 'albert has LOGGED-IN'),
('fc027fc0-f27f-4948-9ead-3194b42f6720', 'LOGOUT', 1669007122355, 'albertreyes@gmail.com has LOGGED-OUT'),
('710591af-1ac4-46da-b4ce-540ec560ff16', 'LOGIN', 1669007142975, 'ruben has LOGGED-IN'),
('6c21f6fe-cc11-424b-b849-dafd562de2b6', 'LOGOUT', 1669007163951, 'rubenreyes@gmail.com has LOGGED-OUT'),
('2421204e-02c7-4b10-80f9-3ef54bbe1dac', 'LOGIN', 1669007194023, 'celso has LOGGED-IN'),
('dab46154-9fd7-421c-9fbd-d3fe6d8e51da', 'LOGIN', 1669008188205, 'ruben has LOGGED-IN'),
('958ae770-ea79-49db-9db8-1668cf112ac0', 'LOGOUT', 1669008216196, 'rubenreyes@gmail.com has LOGGED-OUT'),
('b50affa9-5a11-4c1f-937e-8732e707fa6e', 'LOGIN', 1669008238301, 'celso has LOGGED-IN'),
('da744949-c316-4367-92a1-df857b0375e7', 'LOGIN', 1669023351912, 'owner has LOGGED-IN'),
('e4cc8ef2-eda9-424f-82c9-20b81e5a6469', 'REGISTRATION', 1669024553692, 'jaysondca@gmail.com has REGISTERED'),
('2c845f76-6ccb-4410-a978-22ed5170a1e3', 'LOGOUT', 1669024591059, 'celsovillanueva@gmail.com has LOGGED-OUT'),
('3ebbc2bd-4c0d-477a-bcff-3ac22135728f', 'REGISTRATION', 1669024872486, 'kendrickjlm@gmail.com has REGISTERED'),
('4dff8cf0-df89-4ea9-ada0-2e8c91c8c8bc', 'LOGIN', 1669024894883, 'kendrick has LOGGED-IN'),
('b2793751-be54-4326-9bd8-1f5560a240a6', 'LOGIN', 1669024896909, 'kendrick has LOGGED-IN'),
('34ba9796-f11b-4aa0-a961-058f827b8bed', 'LOGIN', 1669024904713, 'kendrick has LOGGED-IN'),
('f5918b17-a44d-470d-89af-16b98d58e81e', 'LOGIN', 1669024905939, 'kendrick has LOGGED-IN'),
('f41f5e1b-3f20-4c81-baa1-f2c482eb9e4f', 'REGISTRATION', 1669025188545, 'dominicss@yahoo.com has REGISTERED'),
('0badf502-9a2f-4e97-b3e0-2a51e11e7145', 'REGISTRATION', 1669025569735, 'efraintc@yahoo.com has REGISTERED'),
('ebcda5da-97e0-499a-a055-dd46509830fd', 'LOGIN', 1669025586012, 'efrain has LOGGED-IN'),
('511519d7-31d8-41c5-82ec-51edf7fbada2', 'LOGIN', 1669025587711, 'efrain has LOGGED-IN');
INSERT INTO `logs` (`logs_id`, `logs_type`, `created_at`, `remarks`) VALUES
('de06d4ad-3585-4dff-8d03-2afd172f7eda', 'REGISTRATION', 1669025914049, 'dulcinalm@yahoo.com has REGISTERED'),
('233af491-ecc4-429c-8f6f-d5d97249cdac', 'REGISTRATION', 1669026127018, 'eduardomj@gmail.com has REGISTERED'),
('f06753c8-e2e4-4cdd-adef-3b3278dd991e', 'REGISTRATION', 1669026293784, 'arnoldsq@yahoo.com has REGISTERED'),
('f0bf0eb2-9112-4ba2-8a5b-255a4ac5689c', 'REGISTRATION', 1669026664346, 'vicenterb@yahoo.com has REGISTERED'),
('48a3d645-9c74-4a29-a06b-b81f36b876ef', 'REGISTRATION', 1669027188582, 'christianla@yahoo.com has REGISTERED'),
('9bf754a2-cf4a-43a3-8ced-7ed8f9bcca2b', 'REGISTRATION', 1669027439086, 'carlosmiguelbr@yahoo.com has REGISTERED'),
('71195576-da1e-4f72-baa7-3ad768dc8cdd', 'REGISTRATION', 1669027605106, 'chrisam@gmail.com has REGISTERED'),
('640bd0a1-db4e-4413-afde-a48c023abbca', 'REGISTRATION', 1669027750328, 'carlsc@yahoo.com has REGISTERED'),
('54c13963-7e9d-4ce0-8d3b-4592ce2900eb', 'REGISTRATION', 1669027923825, 'elainerg@yahoo.com has REGISTERED'),
('337eaba6-297a-4fad-8efc-e34fec327eec', 'REGISTRATION', 1669028146631, 'gemmalynra@yahoo.com has REGISTERED'),
('f1424b03-134b-4186-aa14-b4cd5c5bc95f', 'REGISTRATION', 1669028282025, 'julianalr@yahoo.com has REGISTERED'),
('dd428924-699d-408f-9ba8-ecb86289dd1f', 'LOGIN', 1669028340061, 'owner has LOGGED-IN'),
('9a36d42d-735b-4525-beea-7d1c61839c7c', 'LOGOUT', 1669028700255, 'owner@mail.com has LOGGED-OUT'),
('f88221c6-7e2b-4937-9e57-6041c43e842e', 'LOGIN', 1669028711211, 'owner has LOGGED-IN'),
('71f2a04b-4575-4ca7-9f9a-2d22cb8a5159', 'LOGOUT', 1669045668427, 'owner@mail.com has LOGGED-OUT'),
('c8bf9a71-afce-4abb-829d-52308c953d63', 'LOGIN', 1669045690716, 'owner has LOGGED-IN'),
('1e7f7500-81b8-4075-9b40-dd67b24e023c', 'CREATE_PROJECT', 1669047642203, 'Project fabrication has created'),
('315199cb-a7f8-4446-a744-94ea6b051081', 'LOGIN', 1669078337790, 'owner has LOGGED-IN'),
('c91f8bc3-71df-447b-8bbc-fcddf4c0cedc', 'LOGOUT', 1669086610278, 'gemstar.machineshop@gmail.com has LOGGED-OUT'),
('108a16ec-9139-4afc-bdae-1672229f47a6', 'LOGIN', 1669093167593, 'owner has LOGGED-IN'),
('ae8ffcb2-015b-423e-9b02-b5612e015373', 'CREATE_PROJECT', 1669095143679, 'Project Cylinder Head has created'),
('2d8db3ad-11d4-4749-8581-3afcfe1d9dec', 'LOGIN', 1669095580417, 'ariel has LOGGED-IN'),
('55fd87f8-5bc6-4599-bec5-9a34db3a723b', 'LOGIN', 1669095599881, 'ariel has LOGGED-IN'),
('1c606631-16b5-4d94-ae6c-0fd711409e0f', 'LOGOUT', 1669096165548, 'gemstar.machineshop@gmail.com has LOGGED-OUT'),
('fbf290e5-35d7-4a35-b404-32161c8a327a', 'LOGIN', 1669096173866, 'owner has LOGGED-IN'),
('17d6848e-8f8a-4939-bb8f-8f4d0b965668', 'LOGOUT', 1669097395903, 'celsovillanueva@gmail.com has LOGGED-OUT'),
('06f32411-5c8f-469f-a41d-41a690c67b7a', 'LOGIN', 1669097406107, 'rusco has LOGGED-IN'),
('a7d6b6f2-c4a5-485d-904b-2ae3a3ea2f18', 'LOGIN', 1669097421470, 'rusca has LOGGED-IN'),
('0bd12d57-ab59-4fa4-b65f-7674650c90bb', 'CREATE_PROJECT', 1669097553312, 'Project Engine Block has created'),
('44db811e-a7ef-41f5-8f09-d530234ad729', 'LOGOUT', 1669097993194, 'arielreyes@gmail.com has LOGGED-OUT'),
('5c266507-efaa-4be0-b63e-3f5bf4147fc9', 'LOGIN', 1669098004208, 'gregorio has LOGGED-IN'),
('43c1fe4b-b22b-454d-a886-15ae383df230', 'LOGOUT', 1669098144582, 'ruscainsorio@gmail.com has LOGGED-OUT'),
('819ef43c-9910-458e-b9ee-bfa22b60eee9', 'LOGIN', 1669098153696, 'celso has LOGGED-IN'),
('489d3cf8-4b63-4121-8b25-deda7606a60d', 'LOGOUT', 1669098270688, 'celsovillanueva@gmail.com has LOGGED-OUT'),
('4ca24c58-ee3a-4fa6-b6ad-79e704c80ee9', 'LOGIN', 1669098302297, 'albert has LOGGED-IN'),
('1a33f6df-55e3-40e7-8288-fed49ce528b9', 'CREATE_PROJECT', 1669098502014, 'Project Cylinder Head has created'),
('8e3f90ef-8737-46ea-86e4-ddd66f82ea12', 'LOGOUT', 1669098809881, 'gregoriohiyas@gmail.com has LOGGED-OUT'),
('713c04fe-98f8-4aff-879d-82ce3000a63b', 'LOGIN', 1669098818632, 'noel has LOGGED-IN'),
('0af3560d-6185-4ac5-97d1-d98716076627', 'LOGOUT', 1669100448357, 'albertreyes@gmail.com has LOGGED-OUT'),
('1941518f-840a-4553-ab05-65fdb84bf045', 'LOGIN', 1669100462089, 'ruben has LOGGED-IN'),
('9da70ede-aa84-40e9-b126-76bb7b4c4bf2', 'CREATE_PROJECT', 1669100562734, 'Project Engine Block has created'),
('6bc29edc-e30d-44c9-ab4f-77ad071a260a', 'LOGOUT', 1669100859253, 'noelsinon@gmail.com has LOGGED-OUT'),
('a0e722a7-ddae-4b5d-af98-8701b068b84a', 'LOGIN', 1669100867805, 'jose has LOGGED-IN'),
('415b87c6-39bd-4125-b570-cf29d44d8d2f', 'LOGIN', 1669106239873, 'employee has LOGGED-IN'),
('9106102b-7c7c-414c-ba81-a9ad3d8fd2e6', 'LOGIN', 1669106255181, 'owner has LOGGED-IN'),
('3c840499-9851-4c3c-995b-45892124d425', 'LOGOUT', 1669106504941, 'rubenreyes@gmail.com has LOGGED-OUT'),
('2f27307e-fc77-4814-adb1-1cd0ff9fae3d', 'LOGIN', 1669106532988, 'dominic has LOGGED-IN'),
('c3b6312d-ed67-41f0-add1-ea223652f5ee', 'CREATE_PROJECT', 1669106597080, 'Project Resurface has created'),
('83f92998-0c8f-4237-a07c-088f59fd1926', 'LOGIN', 1669107452701, 'owner has LOGGED-IN'),
('e695e5c7-467e-4fae-9110-3ac9cb1af6f2', 'LOGIN', 1669107524260, 'owner has LOGGED-IN'),
('f8ddd4dc-6392-467c-bd83-6fdc8b7c8ba3', 'LOGIN', 1669107525149, 'owner has LOGGED-IN'),
('c88b9582-9d9a-4657-a1bf-e408f40047ce', 'LOGIN', 1669107525423, 'owner has LOGGED-IN'),
('2a7bf169-d03a-4b00-a476-74bb5792d33d', 'LOGIN', 1669107525629, 'owner has LOGGED-IN'),
('9ce047db-75ff-4d33-aa1f-42c95b07b8e7', 'LOGIN', 1669107525664, 'owner has LOGGED-IN'),
('8c8e4eb7-cd41-4b39-a180-470a8b23935a', 'LOGIN', 1669107598804, 'owner has LOGGED-IN'),
('c1c44511-63db-4653-b72f-85e80b23fccf', 'LOGIN', 1669107602333, 'owner has LOGGED-IN'),
('b55ae574-dd43-48fc-b0cf-fd2ea9c15757', 'LOGIN', 1669107603228, 'owner has LOGGED-IN'),
('f0fe5fd7-e8bf-439e-abc2-706e89321979', 'LOGIN', 1669107606674, 'owner has LOGGED-IN'),
('02878fff-50d6-4b5d-97bd-5822ec86c0c6', 'LOGIN', 1669107616806, 'owner has LOGGED-IN'),
('6f95a6eb-5eb7-4f14-88e4-1d30e46067c2', 'LOGIN', 1669107616838, 'owner has LOGGED-IN'),
('9af7d866-29f5-4460-b2b6-78d99b21656f', 'LOGIN', 1669107618790, 'owner has LOGGED-IN'),
('12ddd71d-1064-4af2-bb54-37c9cc691d83', 'LOGIN', 1669107637255, 'owner has LOGGED-IN'),
('3274f39f-a7a8-4617-bd49-5d7880e27f6f', 'LOGIN', 1669107637904, 'owner has LOGGED-IN'),
('d4ce5bdd-aa7b-4ed6-9363-4d8c44d0e304', 'LOGIN', 1669107638145, 'owner has LOGGED-IN'),
('e394007b-1112-49bd-af32-2def8210aa98', 'LOGIN', 1669107742122, 'owner has LOGGED-IN'),
('a8b60033-235b-4517-a066-e1b062b32367', 'LOGIN', 1669107742285, 'owner has LOGGED-IN'),
('83c3e59e-9125-42bc-9e2c-40583093d5d0', 'LOGIN', 1669107742361, 'owner has LOGGED-IN'),
('dc11385f-aae2-4716-96e0-932b4b52a4fe', 'LOGIN', 1669107742530, 'owner has LOGGED-IN'),
('a5a8ef46-8475-452e-9da0-8942a5896905', 'LOGOUT', 1669109131412, 'gemstar.machineshop@gmail.com has LOGGED-OUT'),
('ffb7aae8-e5a0-4337-947a-13d4d6a6fd72', 'LOGOUT', 1669109134818, 'dominicss@yahoo.com has LOGGED-OUT'),
('2e26ae4a-831b-4f52-837c-294cfd08c110', 'LOGIN', 1669109143089, 'owner has LOGGED-IN'),
('03d764f9-e0b4-4c2a-b288-10a8138cfa13', 'LOGOUT', 1669110030422, 'owner@mail.com has LOGGED-OUT'),
('4a9c499a-36a3-4c0b-ba28-25ffefe80f3c', 'LOGIN', 1669110047622, 'owner has LOGGED-IN'),
('6dc7db09-adce-4012-9c46-c74fe06e84b0', 'LOGIN', 1669110049578, 'owner has LOGGED-IN'),
('94c9c8fb-ee5d-40e4-93fb-0e405cec470a', 'LOGOUT', 1669110873777, 'gemstar.machineshop@gmail.com has LOGGED-OUT'),
('0ee87070-84eb-4ee4-9eed-c87a04e7ecd7', 'LOGIN', 1669110949152, 'jayson has LOGGED-IN'),
('c0f624a4-ac01-43b0-acd5-827add953d45', 'LOGIN', 1669110961469, 'jayson has LOGGED-IN'),
('c0130473-9a6b-4f34-aacc-698bbcf4521e', 'LOGIN', 1669111324425, 'owner has LOGGED-IN'),
('1ebdbf28-5cf3-425e-88ba-bf7e99037c6d', 'CREATE_PROJECT', 1669112531959, 'Project Cylinder Head has created'),
('1ae221fe-be98-4b61-8254-6976838d9e66', 'LOGOUT', 1669112951231, 'jaysondca@gmail.com has LOGGED-OUT'),
('4f2e35af-8c5d-4837-999c-b08de0e9f1c7', 'LOGIN', 1669112970517, 'kendrick has LOGGED-IN'),
('73ba8a71-597e-44cb-bf40-aab62327bb3c', 'LOGOUT', 1669113182806, 'gemstar.machineshop@gmail.com has LOGGED-OUT'),
('8fc23444-d31f-40ff-a2a8-6d08d351b257', 'CREATE_PROJECT', 1669113440098, 'Project Cylinder Head has created'),
('f198b11a-1763-4a5d-81fa-36c43a67135c', 'CREATE_PROJECT', 1669113440141, 'Project Cylinder Head has created'),
('36442760-d646-4577-b69f-f42046322f97', 'LOGOUT', 1669113625154, 'josegrefalda@gmail.com has LOGGED-OUT'),
('c7bbba61-5089-4405-b188-9ea7c5dc15a2', 'LOGIN', 1669113634609, 'noel has LOGGED-IN'),
('c2da40cf-5bfc-40be-be26-f34034d9d227', 'LOGIN', 1669114177224, 'juliana has LOGGED-IN'),
('6c4a1017-4919-450c-ab42-8801d8f9a0c9', 'CREATE_PROJECT', 1669114479642, 'Project Engine Block has created'),
('83b59545-1f1a-4b64-a0e7-180616edd1ba', 'CREATE_PROJECT', 1669114556106, 'Project Cylinder Head has created'),
('57fe188d-ce1c-408a-bdb8-6ddbfc8abc0b', 'REGISTRATION', 1669117257903, 'davecruz@gmail.com has REGISTERED'),
('33d93abc-8c2b-47f5-82d0-fea2ec354fd9', 'LOGOUT', 1669117607569, 'julianalr@yahoo.com has LOGGED-OUT'),
('4c29e576-32b3-4125-a2ab-9a5d64870a96', 'LOGIN', 1669117615894, 'eduardo has LOGGED-IN'),
('40b24b66-4271-4704-a3c6-2cc196eda443', 'LOGIN', 1669117624164, 'eduardo has LOGGED-IN'),
('a577e77d-ba7a-44c8-98c5-298ef9b92f37', 'CREATE_PROJECT', 1669117705195, 'Project Cylinder Head has created'),
('819c75f6-3fd1-4f63-9d4e-d593e7ce8dc5', 'LOGOUT', 1669117958227, 'noelsinon@gmail.com has LOGGED-OUT'),
('1ce5380c-f9b6-4129-8bf9-bb9a5ac6cd69', 'LOGIN', 1669117973220, 'jose has LOGGED-IN'),
('0f1724b2-f20b-418c-b80e-2b1b1580182c', 'CREATE_PROJECT', 1669118263047, 'Project Cylinder Head has created'),
('115149f4-5b46-4650-9a5c-e792ef481912', 'LOGOUT', 1669119590879, 'eduardomj@gmail.com has LOGGED-OUT'),
('c1021650-f8b5-42b6-8870-bbfaab28e646', 'LOGIN', 1669119599156, 'carl has LOGGED-IN'),
('a014715e-b8f1-48ad-92b5-bf66c58103c0', 'CREATE_PROJECT', 1669119745734, 'Project Fabrication has created'),
('2595f088-ec94-4bef-aa6f-a0f06438d6fb', 'LOGOUT', 1669119815370, 'josegrefalda@gmail.com has LOGGED-OUT'),
('93decb75-390c-4e44-a10f-414aa36f92f6', 'LOGIN', 1669119884183, 'gregorio has LOGGED-IN'),
('a686dfe9-f362-4f53-bf8d-071954b66a0a', 'CREATE_PROJECT', 1669120013242, 'Project Cylinder Head has created'),
('ddaf9ae2-9c15-4915-818f-6012b9c0ecc8', 'LOGOUT', 1669120373550, 'carlsc@yahoo.com has LOGGED-OUT'),
('22481f4d-ce8f-4a90-9eed-734f437019ae', 'LOGIN', 1669120386120, 'arnold has LOGGED-IN'),
('1cb4e43e-6a39-4fb0-8ef6-02a71711f9f5', 'CREATE_PROJECT', 1669120450405, 'Project Reface has created'),
('98215a39-3e1a-4025-b591-fbeb06dd65dc', 'LOGOUT', 1669120647158, 'gregoriohiyas@gmail.com has LOGGED-OUT'),
('da09a8a9-11bb-4868-b372-feb8a7e6402c', 'LOGIN', 1669120656794, 'ariel has LOGGED-IN'),
('3003470f-42fe-45ad-8a60-7f49938d78a2', 'LOGOUT', 1669120667667, 'arnoldsq@yahoo.com has LOGGED-OUT'),
('c595eab0-cd73-48ea-918c-caacea7b544e', 'LOGIN', 1669120708357, 'vicente has LOGGED-IN'),
('0f0b76fd-5492-400c-8f43-2b5f5f0d539c', 'LOGOUT', 1669120797198, 'arielreyes@gmail.com has LOGGED-OUT'),
('6fd54ec4-23dd-4ddf-8861-2b83daf13fd3', 'LOGIN', 1669120803818, 'gregorio has LOGGED-IN'),
('d43a7ba6-fe10-4a8b-b64b-f57877be28ce', 'CREATE_PROJECT', 1669120991916, 'Project Fabrication has created'),
('7a1cf17a-794f-4ee0-b13f-9c46448853be', 'CREATE_PROJECT', 1669121307034, 'Project Build-up & Re-Teeth has created'),
('c263fcbd-a149-47db-822e-5847874480fe', 'LOGOUT', 1669121414622, 'gregoriohiyas@gmail.com has LOGGED-OUT'),
('fe23bbc5-3b9a-48a8-8794-04849e0a0249', 'LOGIN', 1669121425806, 'ariel has LOGGED-IN'),
('d2301d07-520e-4255-9a0e-7d7b8de6dc61', 'LOGOUT', 1669121830649, 'vicenterb@yahoo.com has LOGGED-OUT'),
('0569de20-f295-4818-bbd2-0f8d8437bc23', 'LOGIN', 1669121840622, 'efrain has LOGGED-IN'),
('8abb01d5-54b7-4f8a-bdea-06a45437c714', 'CREATE_PROJECT', 1669122041524, 'Project Refacing has created'),
('c72c68aa-9354-4e38-8323-01bb4deedd56', 'LOGOUT', 1669122173190, 'efraintc@yahoo.com has LOGGED-OUT'),
('3bbc6317-4749-42e7-a47a-480a07c05e05', 'LOGIN', 1669122183098, 'dulcina has LOGGED-IN'),
('25ea8018-5ec9-47b8-91c5-6fe2228ec83c', 'CREATE_PROJECT', 1669125999744, 'Project Engine Block has created'),
('f223d2be-e36e-45eb-8deb-0e31703f869c', 'LOGOUT', 1669126282709, 'dulcinalm@yahoo.com has LOGGED-OUT'),
('d8747b3e-1672-402a-a534-ff8c7b1a254e', 'LOGIN', 1669126301302, 'gemmalyn has LOGGED-IN'),
('df1300b4-f751-489e-a799-a49f65688572', 'CREATE_PROJECT', 1669126378538, 'Project Compressor Crankshaft has created'),
('184d6340-44b0-40da-b655-260d8a77a0a7', 'LOGOUT', 1669148596346, 'kendrickjlm@gmail.com has LOGGED-OUT'),
('4e3b497c-78d1-4704-90f1-96eb8f3d0992', 'LOGIN', 1669148610377, 'owner has LOGGED-IN'),
('ddc673de-bb2f-41e2-8b81-f4a8d4889c05', 'LOGOUT', 1669162967007, 'gemmalynra@yahoo.com has LOGGED-OUT'),
('5ec24fab-2a1f-4ad4-b8c0-e40e3a5f6426', 'LOGIN', 1669162984989, 'chris has LOGGED-IN'),
('6a47b7ce-4e10-417f-a7dd-4d882cad2c85', 'LOGOUT', 1669163008719, 'arielreyes@gmail.com has LOGGED-OUT'),
('6fd4d6dc-fbe8-4f83-84df-082d6cbb2d7f', 'LOGIN', 1669163018972, 'noel has LOGGED-IN');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `notification_id` varchar(40) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `url_link` varchar(1000) NOT NULL,
  `date` bigint(20) NOT NULL,
  `notified_by` varchar(40) DEFAULT NULL,
  `users_id` varchar(40) NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `is_dismiss` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`notification_id`, `content`, `url_link`, `date`, `notified_by`, `users_id`, `is_read`, `is_dismiss`) VALUES
('03d093ef-90db-4e86-a8c9-635632a3c53f', 'New User needs confirmation', '/users/manage/6f6a239e-4ecd-4283-a4ed-e28e5efb3ed9', 1653693914958, '6f6a239e-4ecd-4283-a4ed-e28e5efb3ed9', '1dfa4584-e597-4822-b065-e01ba29038dd', 0, 1),
('17722038-0162-476e-b659-7a416db2f1ab', 'New User needs confirmation', '/users/manage/2d3ff114-840e-4114-8307-0a6054a0a641', 1669006602516, '2d3ff114-840e-4114-8307-0a6054a0a641', '1dfa4584-e597-4822-b065-e01ba29038dd', 0, 1),
('1972daa8-22ac-4e7c-8922-48e614961f43', 'New User needs confirmation', '/users/manage/0732b1cb-4b75-4d74-a9a4-ffa0d08f2b40', 1669006995191, '0732b1cb-4b75-4d74-a9a4-ffa0d08f2b40', '1dfa4584-e597-4822-b065-e01ba29038dd', 0, 1),
('2437934b-64ec-412d-bfed-3db4b2d5384b', 'New User needs confirmation', '/users/manage/df0b9194-6f75-4251-8ec7-10b3cbaa7937', 1669027439988, 'df0b9194-6f75-4251-8ec7-10b3cbaa7937', '1dfa4584-e597-4822-b065-e01ba29038dd', 0, 1),
('348119d2-9e60-4ffc-97f3-83a638dce1a2', 'New User needs confirmation', '/users/manage/e809a32a-4769-45d2-8c34-17e256d35bab', 1669027189457, 'e809a32a-4769-45d2-8c34-17e256d35bab', '1dfa4584-e597-4822-b065-e01ba29038dd', 0, 1),
('3bef6e0a-9e3b-47be-9663-541a9235c8d0', 'New User needs confirmation', '/users/manage/00acd103-3325-456e-84d1-2377beaaaddd', 1653692388165, '00acd103-3325-456e-84d1-2377beaaaddd', '1dfa4584-e597-4822-b065-e01ba29038dd', 0, 1),
('3fdd5f93-c80f-4a97-bb22-1e29c2d8edfb', 'New User needs confirmation', '/users/manage/f6385a57-fbda-4b04-8f06-1d02f29837e3', 1669027924899, 'f6385a57-fbda-4b04-8f06-1d02f29837e3', '1dfa4584-e597-4822-b065-e01ba29038dd', 0, 1),
('48e54da0-4840-48d8-9864-d39516f0fb1e', 'New User needs confirmation', '/users/manage/92110ee8-2630-4895-91bb-071c533d5577', 1652842273385, '92110ee8-2630-4895-91bb-071c533d5577', '1dfa4584-e597-4822-b065-e01ba29038dd', 0, 1),
('49a5f7de-cbf8-4c8a-b6c4-b4ef10e7998f', 'New User needs confirmation', '/users/manage/94743c99-8cb5-4b02-aa1f-3814fea4b72d', 1669025570638, '94743c99-8cb5-4b02-aa1f-3814fea4b72d', '1dfa4584-e597-4822-b065-e01ba29038dd', 0, 1),
('4b9661ce-9445-42f5-baea-8b58cd7a95e8', 'New User needs confirmation', '/users/manage/4d40efe8-1aee-4ea5-a502-49e862938796', 1669024554564, '4d40efe8-1aee-4ea5-a502-49e862938796', '1dfa4584-e597-4822-b065-e01ba29038dd', 0, 1),
('706ac6ec-026b-4e7b-93c6-bf6dabd66d72', 'New User needs confirmation', '/users/manage/cafbb0f7-e3ac-490b-87ed-8c18366959b4', 1669028147521, 'cafbb0f7-e3ac-490b-87ed-8c18366959b4', '1dfa4584-e597-4822-b065-e01ba29038dd', 0, 1),
('75f3b086-0c30-4f1e-8723-26497a2490d5', 'New User needs confirmation', '/users/manage/354f313d-8473-4b62-b116-7433f299ea1a', 1669025189424, '354f313d-8473-4b62-b116-7433f299ea1a', '1dfa4584-e597-4822-b065-e01ba29038dd', 0, 1),
('77ef2667-8798-4ff5-bb5f-5aee9b088b8b', 'New User needs confirmation', '/users/manage/703f21d7-0fd9-4fae-8ca8-54696ec85ef0', 1662712027358, '703f21d7-0fd9-4fae-8ca8-54696ec85ef0', '1dfa4584-e597-4822-b065-e01ba29038dd', 0, 1),
('7f29b603-924a-4928-bf26-79a0176ebc84', 'New User needs confirmation', '/users/manage/73d287a1-4179-49ae-8bff-a8e3448239aa', 1669006111090, '73d287a1-4179-49ae-8bff-a8e3448239aa', '1dfa4584-e597-4822-b065-e01ba29038dd', 0, 1),
('80eb3eea-b728-4c0b-adb3-81019ea30416', 'New User needs confirmation', '/users/manage/1fd0649a-1c8a-41c7-b4f0-0dd396dae71d', 1669005561449, '1fd0649a-1c8a-41c7-b4f0-0dd396dae71d', '1dfa4584-e597-4822-b065-e01ba29038dd', 0, 1),
('82d7471f-2dcc-42fb-8bd6-0d1525d15837', 'New User needs confirmation', '/users/manage/ebb0e300-a6ca-48cf-940f-efe963675003', 1652188379394, 'ebb0e300-a6ca-48cf-940f-efe963675003', '1dfa4584-e597-4822-b065-e01ba29038dd', 0, 1),
('8b2c99ab-8800-4dba-b546-491f2e3fbbec', 'New User needs confirmation', '/users/manage/e949701c-87fb-479a-8bbc-42b3ddd91848', 1669027606025, 'e949701c-87fb-479a-8bbc-42b3ddd91848', '1dfa4584-e597-4822-b065-e01ba29038dd', 0, 1),
('8da43556-60d1-43c1-88ce-e141c7b9789e', 'New User needs confirmation', '/users/manage/37424d19-1187-4563-92e3-45ebb3e1f698', 1669005824405, '37424d19-1187-4563-92e3-45ebb3e1f698', '1dfa4584-e597-4822-b065-e01ba29038dd', 0, 1),
('918d2b22-9f44-42bd-88e9-7539c9ae41da', 'New User needs confirmation', '/users/manage/70668d40-96ac-4b7b-be2b-d1f89e12b745', 1669006703275, '70668d40-96ac-4b7b-be2b-d1f89e12b745', '1dfa4584-e597-4822-b065-e01ba29038dd', 0, 1),
('934a3f36-d7da-4d06-bd46-997906819903', 'New User needs confirmation', '/users/manage/20ee507a-603b-4072-94ae-51892d1dcfa7', 1669005961548, '20ee507a-603b-4072-94ae-51892d1dcfa7', '1dfa4584-e597-4822-b065-e01ba29038dd', 0, 1),
('9ead4f3e-5040-4394-8322-c7e94cff6da3', 'New User needs confirmation', '/users/manage/bc14a6d8-02fd-45ac-98c1-36c6766bbde7', 1669006843470, 'bc14a6d8-02fd-45ac-98c1-36c6766bbde7', '1dfa4584-e597-4822-b065-e01ba29038dd', 0, 1),
('a26238aa-c356-42fa-8c28-bfc6f4b7fcb3', 'New User needs confirmation', '/users/manage/a88e1e93-e9a3-4090-b228-27e54cac3d35', 1653732645686, 'a88e1e93-e9a3-4090-b228-27e54cac3d35', '1dfa4584-e597-4822-b065-e01ba29038dd', 0, 1),
('a74d45f1-cc98-4176-990e-0087e8aca9a4', 'New User needs confirmation', '/users/manage/36dc8416-b9a9-4cf3-b21d-11d4ed006c6a', 1669026129157, '36dc8416-b9a9-4cf3-b21d-11d4ed006c6a', '1dfa4584-e597-4822-b065-e01ba29038dd', 0, 1),
('c0866cf7-8ecc-4168-a863-5598a4776116', 'New User needs confirmation', '/users/manage/64b2c523-9be8-4595-b282-9c84d64c22ec', 1669117258803, '64b2c523-9be8-4595-b282-9c84d64c22ec', '1dfa4584-e597-4822-b065-e01ba29038dd', 0, 1),
('d091b4b2-f0d8-4a56-a1b4-51b1fed31b24', 'New User needs confirmation', '/users/manage/a7b247b8-5ec1-449e-8deb-330384f3cbb4', 1669025914935, 'a7b247b8-5ec1-449e-8deb-330384f3cbb4', '1dfa4584-e597-4822-b065-e01ba29038dd', 0, 1),
('d1bd25a2-11bb-4ebc-a542-38284d87bd8e', 'New User needs confirmation', '/users/manage/f4b963df-bc5c-4319-acf2-dbd6635b8417', 1663208657282, 'f4b963df-bc5c-4319-acf2-dbd6635b8417', '1dfa4584-e597-4822-b065-e01ba29038dd', 0, 1),
('e3694c03-d4df-45f4-9b36-5520fc9b0960', 'New User needs confirmation', '/users/manage/81990470-4d9f-4572-9ea0-1361a714617e', 1669026294694, '81990470-4d9f-4572-9ea0-1361a714617e', '1dfa4584-e597-4822-b065-e01ba29038dd', 0, 1),
('e562748a-9323-4539-959e-456598c460d5', 'New User needs confirmation', '/users/manage/fe75330e-69c1-4e0e-85f4-51189decd782', 1669028282917, 'fe75330e-69c1-4e0e-85f4-51189decd782', '1dfa4584-e597-4822-b065-e01ba29038dd', 0, 1),
('e5d55e80-8b59-4bbd-aa6b-15feba25064b', 'New User needs confirmation', '/users/manage/3c0c1027-53ad-4e0f-a4d3-ecd1422edd68', 1669027751265, '3c0c1027-53ad-4e0f-a4d3-ecd1422edd68', '1dfa4584-e597-4822-b065-e01ba29038dd', 0, 1),
('eeb2375b-0128-4e80-96d5-7617e9c97678', 'New User needs confirmation', '/users/manage/40095f92-c7a3-4e50-9008-d3e369e39c41', 1669024873433, '40095f92-c7a3-4e50-9008-d3e369e39c41', '1dfa4584-e597-4822-b065-e01ba29038dd', 0, 1),
('ef99858f-6730-4f49-9492-86801a9bdcb5', 'New User needs confirmation', '/users/manage/859e3aff-1a5e-46c1-a87e-dc7d3fbe9679', 1669026665348, '859e3aff-1a5e-46c1-a87e-dc7d3fbe9679', '1dfa4584-e597-4822-b065-e01ba29038dd', 0, 1),
('f800cbfc-f4b9-4292-83ff-db659431eb54', 'New User needs confirmation', '/users/manage/2e7d5a07-61d2-4b00-b7b6-ef6cb1f99c93', 1663228726359, '2e7d5a07-61d2-4b00-b7b6-ef6cb1f99c93', '1dfa4584-e597-4822-b065-e01ba29038dd', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `project_id` varchar(40) NOT NULL,
  `project_name` varchar(100) NOT NULL,
  `project_description` varchar(500) NOT NULL,
  `users_id` varchar(40) NOT NULL,
  `employee_id` varchar(40) DEFAULT NULL,
  `start_date` float NOT NULL,
  `end_date` float NOT NULL,
  `date_created` bigint(20) NOT NULL,
  `status_id` int(2) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`project_id`, `project_name`, `project_description`, `users_id`, `employee_id`, `start_date`, `end_date`, `date_created`, `status_id`) VALUES
('0e08ce49-a7a0-448c-a7bb-a2189cc5e99a', 'Engine Block', '<p>Hyundai Starex</p>', 'a7b247b8-5ec1-449e-8deb-330384f3cbb4', '20ee507a-603b-4072-94ae-51892d1dcfa7', 1649290000000, 1649640000000, 1669125999744, 2),
('0edc5628-d782-4dd5-93bb-aa0f81fc4e5b', 'Cylinder Head', '<p>C240</p>', '3c0c1027-53ad-4e0f-a4d3-ecd1422edd68', '1fd0649a-1c8a-41c7-b4f0-0dd396dae71d', 1657070000000, 1657320000000, 1669120013242, 4),
('1ac91f1b-83cc-475c-a902-2aa4a7fa6c16', 'Build-up & Re-Teeth', '<p>Helical Gear</p>', '859e3aff-1a5e-46c1-a87e-dc7d3fbe9679', '20ee507a-603b-4072-94ae-51892d1dcfa7', 1652830000000, 1652920000000, 1669121307034, 3),
('1dcfb02d-f47e-44c6-b8bc-28d83c9fba64', 'Resurface', '', '354f313d-8473-4b62-b116-7433f299ea1a', NULL, 1669080000000, 1669160000000, 1669106597080, 1),
('3bfcbc0a-9604-43b5-92c8-3685001dfb4b', 'Cylinder Head', '<p>Nissan GA16 Cylinder Head</p>', '36dc8416-b9a9-4cf3-b21d-11d4ed006c6a', '73d287a1-4179-49ae-8bff-a8e3448239aa', 1662600000000, 1662770000000, 1669117705195, 4),
('51a9916c-f096-422c-8eb9-3c0bca55c5bb', 'Cylinder Head', '<p>Toyota 5K</p>', '40095f92-c7a3-4e50-9008-d3e369e39c41', '37424d19-1187-4563-92e3-45ebb3e1f698', 1664580000000, 1667350000000, 1669113440098, 4),
('59e5c1dd-21c4-4d1a-bd16-4cb22fb1ce5d', 'Cylinder Head', '<p>Toyota 5K</p>', '40095f92-c7a3-4e50-9008-d3e369e39c41', NULL, 1664580000000, 1667350000000, 1669113440142, 1),
('62e27151-8c87-4801-a498-9137cf09c9fa', 'Engine Block', '<p>Engine Block 4M50</p>', '0732b1cb-4b75-4d74-a9a4-ffa0d08f2b40', '1fd0649a-1c8a-41c7-b4f0-0dd396dae71d', 1669080000000, 1669080000000, 1669097553313, 4),
('6354dea7-af9f-4f98-af67-267acbe42ea7', 'fabrication', '', 'bc14a6d8-02fd-45ac-98c1-36c6766bbde7', NULL, 1669160000000, 1669160000000, 1669047642204, 1),
('718f270b-f833-48d6-ba1f-3d6bc2f9133a', 'Fabrication', '<p>Spur Gear</p>', '3c0c1027-53ad-4e0f-a4d3-ecd1422edd68', '1fd0649a-1c8a-41c7-b4f0-0dd396dae71d', 1654560000000, 1654650000000, 1669119745734, 4),
('84ce9635-7900-4aab-8a36-4b9cd04e76bd', 'Cylinder Head', '<p>Cylinder Head Chevrolet</p>', '2d3ff114-840e-4114-8307-0a6054a0a641', '37424d19-1187-4563-92e3-45ebb3e1f698', 1668040000000, 1668210000000, 1669098502014, 4),
('9dbb2073-72d7-455a-ad75-cf4f8043f1b0', 'Refacing', '<p>Drum brake</p>', '94743c99-8cb5-4b02-aa1f-3814fea4b72d', '20ee507a-603b-4072-94ae-51892d1dcfa7', 1647910000000, 1647990000000, 1669122041524, 4),
('a0f8e2af-ac49-422e-8a34-11d3c08cd9a5', 'Cylinder Head', '<p>Cylinder Head 4663</p>', 'bc14a6d8-02fd-45ac-98c1-36c6766bbde7', '20ee507a-603b-4072-94ae-51892d1dcfa7', 1666400000000, 1666570000000, 1669095143679, 4),
('a1446325-9d66-4926-a631-ebed7c5a693f', 'Fabrication', '<p>Worm Gear</p>', '859e3aff-1a5e-46c1-a87e-dc7d3fbe9679', '1fd0649a-1c8a-41c7-b4f0-0dd396dae71d', 1653960000000, 1654040000000, 1669120991916, 4),
('adc3b60e-3ff5-42f0-bb9f-85fbb30c6f1a', 'Cylinder Head', '<p>4af</p>', '36dc8416-b9a9-4cf3-b21d-11d4ed006c6a', NULL, 1659570000000, 1659920000000, 1669118263047, 2),
('bf63a81a-e462-4c38-a215-f6b1d04b7ede', 'Cylinder Head', '<p>Honda City Idsi</p>', 'fe75330e-69c1-4e0e-85f4-51189decd782', '37424d19-1187-4563-92e3-45ebb3e1f698', 1664840000000, 1665100000000, 1669114556106, 4),
('c39698d3-dd3e-4dec-92ee-fbaf8cb38385', 'Engine Block', '<p>Engine Block 4B62</p>', '70668d40-96ac-4b7b-be2b-d1f89e12b745', '73d287a1-4179-49ae-8bff-a8e3448239aa', 1667780000000, 1667950000000, 1669100562734, 4),
('d17b4fd6-697e-426e-b3f9-0b47c322291b', 'Engine Block', '<p>Toyota Avanza Engine Block</p>', 'fe75330e-69c1-4e0e-85f4-51189decd782', '37424d19-1187-4563-92e3-45ebb3e1f698', 1663800000000, 1663980000000, 1669114479642, 4),
('e939047e-3938-41da-9462-046ff435a964', 'Cylinder Head', '<p><span style=\"color: rgb(5, 5, 5);\">Degreasing</span></p><p><span style=\"color: rgb(5, 5, 5);\">Valve Lapping</span></p><p><span style=\"color: rgb(5, 5, 5);\">Valve Reface</span></p><p><span style=\"color: rgb(5, 5, 5);\">Valve Seat Reface</span></p><p><span style=\"color: rgb(5, 5, 5);\">Replace Valve Seal</span></p><p><span style=\"color: rgb(5, 5, 5);\">Assemble Valve Spring and Lock</span></p>', '4d40efe8-1aee-4ea5-a502-49e862938796', '73d287a1-4179-49ae-8bff-a8e3448239aa', 1667260000000, 1667430000000, 1669112531959, 4),
('f1389a06-2a76-4788-b31d-f50c5705d0a9', 'Reface', '<p>Rotor Disc</p>', '81990470-4d9f-4572-9ea0-1361a714617e', '1fd0649a-1c8a-41c7-b4f0-0dd396dae71d', 1657500000000, 1657580000000, 1669120450405, 4),
('f43f8226-c01f-4309-9771-b4f19a03a236', 'Compressor Crankshaft', '<p>Iwata</p>', 'cafbb0f7-e3ac-490b-87ed-8c18366959b4', '20ee507a-603b-4072-94ae-51892d1dcfa7', 1646780000000, 1646960000000, 1669126378538, 3);

-- --------------------------------------------------------

--
-- Table structure for table `project_file`
--

CREATE TABLE `project_file` (
  `project_file_id` varchar(40) NOT NULL,
  `project_id` varchar(40) NOT NULL,
  `date_uploaded` bigint(20) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `original_file_name` varchar(255) NOT NULL,
  `file_path` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project_file`
--

INSERT INTO `project_file` (`project_file_id`, `project_id`, `date_uploaded`, `file_name`, `original_file_name`, `file_path`) VALUES
('08ccde28-b6bc-4de9-a7d4-2ef967f8150e', '62e27151-8c87-4801-a498-9137cf09c9fa', 1669097553313, '32176e15-e0a5-4547-ac12-9fe759feb348.jpg', 'Engine block.jpg', 'uploads/projects/62e27151-8c87-4801-a498-9137cf09c9fa'),
('0c27ab8f-cd18-4ea8-a820-ede6d87bb0f6', '51a9916c-f096-422c-8eb9-3c0bca55c5bb', 1669113440098, '6a9837a9-3c80-41ad-af5a-27cdba0521d7.jpg', 'Toyota 5K Cylinder Head.jpg', 'uploads/projects/51a9916c-f096-422c-8eb9-3c0bca55c5bb'),
('0cfee4de-d635-44ec-9eba-9181e157f7e1', '718f270b-f833-48d6-ba1f-3d6bc2f9133a', 1669119745734, '5e0c6db6-e768-4de6-bd57-fc7ce0e29717.jpg', 'Spur Gear.jpg', 'uploads/projects/718f270b-f833-48d6-ba1f-3d6bc2f9133a'),
('1dc86c7f-204c-4975-a983-ee041ee2c36f', '0edc5628-d782-4dd5-93bb-aa0f81fc4e5b', 1669120013242, '03ae045f-e7a7-4e19-9dd1-3e44c37c2259.jpg', 'c240.jpg', 'uploads/projects/0edc5628-d782-4dd5-93bb-aa0f81fc4e5b'),
('297c2c60-fa35-4b63-9564-b31684dcb01d', '1ac91f1b-83cc-475c-a902-2aa4a7fa6c16', 1669121307034, '65872966-9005-4dee-b046-f9e0ed920368.jpg', 'helical.jpg', 'uploads/projects/1ac91f1b-83cc-475c-a902-2aa4a7fa6c16'),
('322b4ae0-1b53-48de-8868-44ae3099ea12', 'f1389a06-2a76-4788-b31d-f50c5705d0a9', 1669120450405, '73ecbef6-42fa-4776-af2e-ee8da9a80677.jpg', 'rotor.jpg', 'uploads/projects/f1389a06-2a76-4788-b31d-f50c5705d0a9'),
('3a8048f7-7a22-4c40-844d-f8c1b06e1b04', 'adc3b60e-3ff5-42f0-bb9f-85fbb30c6f1a', 1669118263047, '64a4e2f5-ebdc-4a59-8cc0-6fb8de6463e0.jpg', '4af.jpg', 'uploads/projects/adc3b60e-3ff5-42f0-bb9f-85fbb30c6f1a'),
('46da5cf9-5374-47af-aee6-bdb4495cc449', '3bfcbc0a-9604-43b5-92c8-3685001dfb4b', 1669117705195, 'd8b70f05-5841-404c-bb7e-46dc432ad1ac.jpg', 'nissan.jpg', 'uploads/projects/3bfcbc0a-9604-43b5-92c8-3685001dfb4b'),
('4c2398d9-ba4f-4e7f-9f30-01ed6286500d', '1dcfb02d-f47e-44c6-b8bc-28d83c9fba64', 1669106597080, '13e047c0-0cbe-410d-ae5e-97688243cabe.jpg', 'Resurface.jpg', 'uploads/projects/1dcfb02d-f47e-44c6-b8bc-28d83c9fba64'),
('644f9009-9373-4eda-ac49-733676e539d5', 'f43f8226-c01f-4309-9771-b4f19a03a236', 1669126378538, '338c26fa-6d17-44e4-8cef-cd5f402f7520.jpg', '1.jpg', 'uploads/projects/f43f8226-c01f-4309-9771-b4f19a03a236'),
('6465e16f-8d5c-49d0-a31b-776ba5a2927b', 'f43f8226-c01f-4309-9771-b4f19a03a236', 1669126378538, '6bb1bd4a-c506-43d5-8eba-f405170a8cbb.jpg', '2.jpg', 'uploads/projects/f43f8226-c01f-4309-9771-b4f19a03a236'),
('70c37611-6b7e-4114-850d-5bdfce478cc0', '59e5c1dd-21c4-4d1a-bd16-4cb22fb1ce5d', 1669113440142, '6e6c503b-80d4-42b8-98d5-11660a1585e5.jpg', 'Toyota 5K Cylinder Head.jpg', 'uploads/projects/59e5c1dd-21c4-4d1a-bd16-4cb22fb1ce5d'),
('77e441c4-c31b-49f6-bcb3-68bd0848d7cb', '6354dea7-af9f-4f98-af67-267acbe42ea7', 1669047642204, '1058b47a-62ba-471a-82a0-00296456064b.jpg', 'toyota.jpg', 'uploads/projects/6354dea7-af9f-4f98-af67-267acbe42ea7'),
('83e0394f-7aa6-425b-9b23-a8d18bb05a2e', '84ce9635-7900-4aab-8a36-4b9cd04e76bd', 1669098502014, 'bdbfbcc3-dd07-4f81-b7f7-12030edc6233.jpg', 'chevrolet cylinder.jpg', 'uploads/projects/84ce9635-7900-4aab-8a36-4b9cd04e76bd'),
('a06fea0b-0133-4f07-b409-98689cdbe2a9', 'a0f8e2af-ac49-422e-8a34-11d3c08cd9a5', 1669095143679, 'f41cb962-092c-4ae9-9cee-b7d476428897.jpg', 'cylinder.jpg', 'uploads/projects/a0f8e2af-ac49-422e-8a34-11d3c08cd9a5'),
('a2afaa7e-cff4-4af8-a7e0-2b4a21aa0ade', '9dbb2073-72d7-455a-ad75-cf4f8043f1b0', 1669122041524, '974f05a1-c95c-4f10-aee9-7f62086609f8.jpg', 'drum brake.jpg', 'uploads/projects/9dbb2073-72d7-455a-ad75-cf4f8043f1b0'),
('a304c8b4-469d-4d98-aaa4-4c89e74a65fa', 'd17b4fd6-697e-426e-b3f9-0b47c322291b', 1669114479642, 'c3339446-98a7-4364-9ef3-1a9cf70d21d1.jpg', 'avanza engine block.jpg', 'uploads/projects/d17b4fd6-697e-426e-b3f9-0b47c322291b'),
('a7b6297a-b01e-457c-9153-da402cc1035f', 'bf63a81a-e462-4c38-a215-f6b1d04b7ede', 1669114556106, '42efed51-f1e9-44f8-9be5-cb3148a4bc1d.jpg', 'honda cylinder.jpg', 'uploads/projects/bf63a81a-e462-4c38-a215-f6b1d04b7ede'),
('aee50e44-2ef6-4049-859f-eba21821b6d6', '0e08ce49-a7a0-448c-a7bb-a2189cc5e99a', 1669125999744, 'c8a22251-cc2a-4b0f-b6a8-691968e75bf5.jpg', 'hyundai.jpg', 'uploads/projects/0e08ce49-a7a0-448c-a7bb-a2189cc5e99a'),
('af62080f-c4ac-4f9d-9b4b-94e9266f95e2', 'c39698d3-dd3e-4dec-92ee-fbaf8cb38385', 1669100562734, 'a1e8741a-4ebc-4a99-945f-37c53c17343f.jpg', 'engine block toyota.jpg', 'uploads/projects/c39698d3-dd3e-4dec-92ee-fbaf8cb38385'),
('d8b5aae9-956e-4f42-8d10-ad3759f1d10f', 'a1446325-9d66-4926-a631-ebed7c5a693f', 1669120991916, '7adcde57-76a4-46d7-951f-82fa442faa3a.webp', 'worm gear.webp', 'uploads/projects/a1446325-9d66-4926-a631-ebed7c5a693f'),
('e26a0f28-d239-4db5-b1a9-c4591ba9f427', 'e939047e-3938-41da-9462-046ff435a964', 1669112531959, 'de8e44cf-d153-46c5-b7af-bf9179361df7.jpg', 'Cylinder Head.jpg', 'uploads/projects/e939047e-3938-41da-9462-046ff435a964');

-- --------------------------------------------------------

--
-- Table structure for table `project_qoutation`
--

CREATE TABLE `project_qoutation` (
  `project_qoutation_id` varchar(40) NOT NULL,
  `project_qoutation_detail_id` varchar(40) NOT NULL,
  `quantity` int(4) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `services_id` varchar(40) NOT NULL,
  `services_name` varchar(200) NOT NULL,
  `unit_price` float NOT NULL,
  `price` float NOT NULL,
  `last_updated` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project_qoutation`
--

INSERT INTO `project_qoutation` (`project_qoutation_id`, `project_qoutation_detail_id`, `quantity`, `unit`, `services_id`, `services_name`, `unit_price`, `price`, `last_updated`) VALUES
('019198c6-f419-450a-afa0-deae0ff1d52f', '80503534-e9b0-4406-96aa-dd46d51d8b98', 1, 'pcs', 'others', 'Build up & Re-teeth', 300, 300, 1669120000000),
('0db8e587-07aa-469a-bb28-e46262e632b8', 'aca7a874-fae4-48ae-b1b1-6313eb3053f6', 12, 'pcs', 'others', 'Valve Reface', 100, 1200, 1669120000000),
('10ca6ce0-5518-4222-a1d9-be36e8d4725f', '65f036b4-8179-411b-8ee4-c1b2e659af4d', 1, 'pcs', 'others', 'Degreasing', 500, 500, 1669100000000),
('120f0a68-5904-4317-a800-57704c29f458', 'bc390b96-5743-4c09-9a93-1655d6285d1e', 4, 'pcs', '796d1d42-2456-412d-9a92-537138ca4d5e', 'Engine Valve Refacing / Valve Lapping', 100, 400, 1669110000000),
('158fea3d-afcd-4f12-91b4-9f6af3ad2cc0', '00a798c0-e1a1-464b-8488-5dafb4986a93', 1, 'pcs', 'others', 'Degreasing', 500, 500, 1669100000000),
('18c4c06e-ce72-4867-8300-1fb0c4441c4d', '94da6208-0008-4ad5-a5b4-47f3449cd6de', 2, 'pcs', 'a0fd179d-541a-483f-8bb4-4b2e7b30d584', 'Main Housing Align Bore / Fitting Main Bearing', 150, 300, 1669130000000),
('190c60d5-65ba-477f-880b-f4c276db5a31', 'f9353ce2-6720-4797-bd87-8fa91929a3a7', 12, 'pcs', '796d1d42-2456-412d-9a92-537138ca4d5e', 'Engine Valve Refacing / Valve Lapping', 100, 1200, 1669110000000),
('1e708e00-81e4-4bde-a49f-0d2f302d1bdf', 'd13d65c2-922e-4a82-8132-d705d223fc31', 12, 'pcs', 'others', 'Valve Reface', 100, 1200, 1669120000000),
('1fda9628-d6b5-4bf9-92dd-485f085bf091', '701206d5-ce6a-4668-9044-ad19895273e0', 4, 'pcs', 'others', 'Replace Valve Seal', 100, 400, 1669120000000),
('200f9127-6664-4ac0-8ad2-d3a35bb717ae', 'bc390b96-5743-4c09-9a93-1655d6285d1e', 1, 'pcs', 'others', 'Degreasing', 500, 500, 1669110000000),
('23e7b339-e170-4ae9-9f12-a270e2e12fce', '94da6208-0008-4ad5-a5b4-47f3449cd6de', 4, 'pcs', '44350bf0-28b6-4823-b25c-3719b06411c5', 'Cylinder Bore / Reboring O.S', 350, 1400, 1669130000000),
('2fb390f9-fe2f-4574-91d1-2f45c49ef0bc', '00a798c0-e1a1-464b-8488-5dafb4986a93', 12, 'pcs', '796d1d42-2456-412d-9a92-537138ca4d5e', 'Engine Valve Refacing / Valve Lapping', 100, 1200, 1669100000000),
('433b9f2e-7e55-424c-b782-cfc77d62115b', '94fa6856-f17c-4521-aae9-a420211751a0', 4, 'pcs', '1eaa084e-a067-4171-a401-0bdafd8c2553', 'Con. Rod Arm Re-standard / Fitting Bearing', 150, 600, 1669120000000),
('46ca230f-c0de-445d-9039-a9cb5512b37a', 'd13d65c2-922e-4a82-8132-d705d223fc31', 1, 'pcs', 'others', 'Degreasing', 500, 500, 1669120000000),
('49240ebf-7b47-4292-a2d4-2f1d7b381627', 'ab9b3efd-2a96-4c89-8e2b-c8d40ac2482d', 1, 'pcs', 'others', 'Degreasing', 400, 400, 1669100000000),
('49e12274-4d19-493c-9bc9-b63a8add264e', '00a798c0-e1a1-464b-8488-5dafb4986a93', 1, 'pcs', 'others', 'Resurface', 1500, 1500, 1669100000000),
('4da45755-3a01-40d5-b948-4f6ca5bcbb32', '00a798c0-e1a1-464b-8488-5dafb4986a93', 12, 'pcs', 'others', 'Valve Seal Replace + Assemble', 50, 600, 1669100000000),
('50892252-7002-4746-9a03-2e6a9cce8869', '94da6208-0008-4ad5-a5b4-47f3449cd6de', 4, 'pcs', 'dac560b9-5e0e-49ec-889f-cbc4009d4f91', 'Crankshaft Main / Con. Rod Joumal Polish', 250, 1000, 1669130000000),
('511dad65-5387-4bfc-9b97-b20df23c6290', '94fa6856-f17c-4521-aae9-a420211751a0', 4, 'pcs', 'a0fd179d-541a-483f-8bb4-4b2e7b30d584', 'Main Housing Align Bore / Fitting Main Bearing', 100, 400, 1669120000000),
('52058e7d-2ebc-40cf-8cfb-ac425ddf1be4', '94fa6856-f17c-4521-aae9-a420211751a0', 1, 'pcs', 'others', 'Degreasing', 500, 500, 1669120000000),
('5331615c-621a-4e37-aab8-8c94816f3561', '94fa6856-f17c-4521-aae9-a420211751a0', 4, 'pcs', 'cf3b0ca0-57d9-4296-83ee-02c5dd279188', 'Cylinder Bore Sleeving/Honing/Replace Liner', 250, 1000, 1669120000000),
('53600b37-a52e-4596-9f75-9f9377817363', '94da6208-0008-4ad5-a5b4-47f3449cd6de', 2, 'pcs', '1eaa084e-a067-4171-a401-0bdafd8c2553', 'Con. Rod Arm Re-standard / Fitting Bearing', 150, 300, 1669130000000),
('547ba1c9-a345-4ca7-9e2f-cf878802c268', 'bc390b96-5743-4c09-9a93-1655d6285d1e', 12, 'pcs', '5acffe55-ddf3-4395-ab0d-dbc5a261ffbe', 'Engine Valve Guide Replace', 100, 1200, 1669110000000),
('5e523d0a-24b5-4135-9526-d0f4007cd3f5', '9d50ffe9-3ca6-4dfc-8a4d-18b4ad9b08fe', 12, 'pcs', '65bfc4f5-c141-4a2c-a35d-fd25314ccf49', 'Engine Valve Seat Refacing', 100, 1200, 1669110000000),
('66f59451-92dc-403e-b3cb-c6eed9ca7889', 'f9353ce2-6720-4797-bd87-8fa91929a3a7', 1, 'pcs', 'others', 'Degreasing', 500, 500, 1669110000000),
('680ef3fb-7fac-442a-9221-e5e172f69f1c', '00a798c0-e1a1-464b-8488-5dafb4986a93', 12, 'pcs', 'others', 'Valve Reface', 50, 600, 1669100000000),
('6eae6419-e8c3-4dc3-b3dd-5e46ac747f21', 'f9353ce2-6720-4797-bd87-8fa91929a3a7', 12, 'pcs', '5acffe55-ddf3-4395-ab0d-dbc5a261ffbe', 'Engine Valve Guide Replace', 100, 1200, 1669110000000),
('6eb94bee-599e-41ae-9f40-11f3d4b1ac23', 'ab9b3efd-2a96-4c89-8e2b-c8d40ac2482d', 16, 'pcs', '65bfc4f5-c141-4a2c-a35d-fd25314ccf49', 'Engine Valve Seat Refacing', 100, 1600, 1669100000000),
('773a8167-4f7e-48bd-b352-abbb7b30bc69', 'ff568509-9b5f-4782-982f-fccaeeb2e958', 1, 'pcs', 'others', 'Fabrication of Con Rod Bearing (Tiger Bronze)', 450, 450, 1669130000000),
('783f874b-fa24-4922-8f47-f8f01216c83c', '65f036b4-8179-411b-8ee4-c1b2e659af4d', 5, 'pcs', 'a0fd179d-541a-483f-8bb4-4b2e7b30d584', 'Main Housing Align Bore / Fitting Main Bearing', 300, 1500, 1669100000000),
('7da65bf6-1257-413f-88b5-c635257b50d3', 'd13d65c2-922e-4a82-8132-d705d223fc31', 4, 'pcs', 'others', 'Replace Valve Seal', 100, 400, 1669120000000),
('84c357ff-ce97-4ef6-b652-566ac2dd995f', 'ee7cb5b3-2101-4748-9188-0f00d4eb36c6', 1, 'pcs', 'others', 'Degreasing', 500, 500, 1669100000000),
('864d4a04-ad91-45ea-8d56-51d3c71f8712', 'd13d65c2-922e-4a82-8132-d705d223fc31', 12, 'pcs', '796d1d42-2456-412d-9a92-537138ca4d5e', 'Engine Valve Refacing / Valve Lapping', 100, 1200, 1669120000000),
('867c4df4-e9d5-4150-9be3-4b0a10bf14eb', '701206d5-ce6a-4668-9044-ad19895273e0', 12, 'pcs', '796d1d42-2456-412d-9a92-537138ca4d5e', 'Engine Valve Refacing / Valve Lapping', 100, 1200, 1669120000000),
('87df9baa-fb69-4cc1-993c-bbb12382d3a8', '94da6208-0008-4ad5-a5b4-47f3449cd6de', 1, 'pcs', 'others', 'Degreasing', 500, 500, 1669130000000),
('8d1d602f-015f-4d3a-b8fe-66207dc62eff', '94fa6856-f17c-4521-aae9-a420211751a0', 4, 'pcs', 'dac560b9-5e0e-49ec-889f-cbc4009d4f91', 'Crankshaft Main / Con. Rod Joumal Polish', 150, 600, 1669120000000),
('8e1e126a-c58d-4ca8-bec3-6989793e23de', '4730f765-ff51-4eee-9af9-2ab2f6026d1f', 2, 'pcs', 'others', 'Fabrication', 250, 500, 1669120000000),
('92aa20fd-75cb-4bf4-b562-0a5b8759ab46', 'aca7a874-fae4-48ae-b1b1-6313eb3053f6', 4, 'pcs', 'others', 'Valve Seal', 150, 600, 1669120000000),
('935add0c-84bd-4ea7-bfae-b81f1528904b', 'ee7cb5b3-2101-4748-9188-0f00d4eb36c6', 5, 'pcs', 'a0fd179d-541a-483f-8bb4-4b2e7b30d584', 'Main Housing Align Bore / Fitting Main Bearing', 300, 1500, 1669100000000),
('9aa1e70d-4c49-4877-b444-83253c6de4a6', 'ab9b3efd-2a96-4c89-8e2b-c8d40ac2482d', 16, 'pcs', '796d1d42-2456-412d-9a92-537138ca4d5e', 'Engine Valve Refacing / Valve Lapping', 100, 1600, 1669100000000),
('9b1679af-0c87-4d55-9924-57459c88cdd5', 'ab9b3efd-2a96-4c89-8e2b-c8d40ac2482d', 16, 'pcs', 'others', 'Valve Reface', 100, 1600, 1669100000000),
('9e181b1b-5bd6-43e3-9617-f672e845de24', '42fdb71e-4bbc-434e-ba1b-79e1467266c0', 3, 'pcs', 'others', 'Reface', 250, 750, 1669120000000),
('a2f1b895-87a6-44cb-bf56-f7a977e55c7f', 'ee7cb5b3-2101-4748-9188-0f00d4eb36c6', 4, 'pcs', '1eaa084e-a067-4171-a401-0bdafd8c2553', 'Con. Rod Arm Re-standard / Fitting Bearing', 325, 1300, 1669100000000),
('aa91aeec-2169-40b1-acd3-24c4c7f6ad9b', 'ee7cb5b3-2101-4748-9188-0f00d4eb36c6', 9, 'pcs', 'dac560b9-5e0e-49ec-889f-cbc4009d4f91', 'Crankshaft Main / Con. Rod Joumal Polish', 135, 1215, 1669100000000),
('ab26888a-c61f-4ee1-8076-845f8fb77c82', '65f036b4-8179-411b-8ee4-c1b2e659af4d', 4, 'pcs', '1eaa084e-a067-4171-a401-0bdafd8c2553', 'Con. Rod Arm Re-standard / Fitting Bearing', 300, 1200, 1669100000000),
('b0071fd3-22dc-4cc3-a798-e8b78fdda5e6', 'aca7a874-fae4-48ae-b1b1-6313eb3053f6', 12, 'pcs', '796d1d42-2456-412d-9a92-537138ca4d5e', 'Engine Valve Refacing / Valve Lapping', 100, 1200, 1669120000000),
('b3ddf07e-f74e-4964-a105-fed6d55b31c7', '9d50ffe9-3ca6-4dfc-8a4d-18b4ad9b08fe', 12, 'pcs', 'others', 'Valve Reface', 100, 1200, 1669110000000),
('b9e511fc-f43c-4067-ab56-cf86a2b75568', '9d50ffe9-3ca6-4dfc-8a4d-18b4ad9b08fe', 12, 'pcs', '796d1d42-2456-412d-9a92-537138ca4d5e', 'Engine Valve Refacing / Valve Lapping', 100, 1200, 1669110000000),
('bd89bb38-ffc0-428b-b1c8-0b2ca21e84e8', 'bc390b96-5743-4c09-9a93-1655d6285d1e', 12, 'pcs', '65bfc4f5-c141-4a2c-a35d-fd25314ccf49', 'Engine Valve Seat Refacing', 100, 1200, 1669110000000),
('c2c9799e-d6f6-47be-84a9-6c407c49a2a9', '5bd1d21e-6f5a-418b-a172-f4096df0ca46', 1, 'pcs', 'others', 'Fabrication', 1000, 1000, 1669120000000),
('c39b945e-bdb5-47e3-9578-a61b60b8082c', 'ab9b3efd-2a96-4c89-8e2b-c8d40ac2482d', 16, 'pcs', '5acffe55-ddf3-4395-ab0d-dbc5a261ffbe', 'Engine Valve Guide Replace', 100, 1600, 1669100000000),
('c55a982c-13d2-4ed9-86e0-e72533839260', 'ab9b3efd-2a96-4c89-8e2b-c8d40ac2482d', 16, 'pcs', 'others', 'Valve Seat Replace + Assemble', 100, 1600, 1669100000000),
('c5cc798d-799c-4dc9-b437-5c3fdc422999', 'd13d65c2-922e-4a82-8132-d705d223fc31', 1, 'pcs', 'others', 'Assemble Valve Spring and Lock', 600, 600, 1669120000000),
('cd3cde3c-89a1-4269-86fe-1b4c1da4391d', '00a798c0-e1a1-464b-8488-5dafb4986a93', 12, 'pcs', '65bfc4f5-c141-4a2c-a35d-fd25314ccf49', 'Engine Valve Seat Refacing', 100, 1200, 1669100000000),
('cdff61cc-db09-4a20-b8fd-eb3bfc831167', '9d50ffe9-3ca6-4dfc-8a4d-18b4ad9b08fe', 1, 'pcs', '89027e08-8be3-4125-bcae-3c8ca39cc85d', 'Cylinder Head / Block Resurface', 1200, 1200, 1669110000000),
('d51f2152-9f84-44ad-8c93-028caa89a261', '9d50ffe9-3ca6-4dfc-8a4d-18b4ad9b08fe', 1, 'pcs', 'others', 'Degreasing', 500, 500, 1669110000000),
('e0fd84b0-b254-44f4-94d4-b0a3aa1fa4f5', '00a798c0-e1a1-464b-8488-5dafb4986a93', 1, 'pcs', 'others', 'Hydrotest', 1000, 1000, 1669100000000),
('e754f762-1687-48c8-b25d-2b9cf83a4a83', '701206d5-ce6a-4668-9044-ad19895273e0', 12, 'pcs', 'others', 'Valve Reface', 100, 1200, 1669120000000),
('eebc525a-4ae6-49c3-afb9-58ecc701398c', 'aca7a874-fae4-48ae-b1b1-6313eb3053f6', 4, 'pcs', '65bfc4f5-c141-4a2c-a35d-fd25314ccf49', 'Engine Valve Seat Refacing', 150, 600, 1669120000000),
('f039be35-d3a4-49b6-ac43-59b371f7cf0a', '701206d5-ce6a-4668-9044-ad19895273e0', 4, 'pcs', 'others', 'Assemble Valve Spring and Lock', 150, 600, 1669120000000),
('f15b5f9b-1946-4064-8c51-18be6f1f52ba', '4f88d789-ccbd-489d-b38b-dbbe51ddaa8e', 2, 'pcs', 'others', 'Reface', 250, 500, 1669120000000),
('f46121cd-8553-443a-a6d4-c360aa5fa5d9', 'aca7a874-fae4-48ae-b1b1-6313eb3053f6', 1, 'pcs', 'others', 'Resurfaced', 1200, 1200, 1669120000000),
('f672cc51-e3d7-4b02-aa6f-eddb17aff54d', 'd13d65c2-922e-4a82-8132-d705d223fc31', 4, 'pcs', '65bfc4f5-c141-4a2c-a35d-fd25314ccf49', 'Engine Valve Seat Refacing', 100, 400, 1669120000000),
('f76330da-1fa6-45e6-99d6-0eb717823409', 'aca7a874-fae4-48ae-b1b1-6313eb3053f6', 1, 'pcs', 'others', 'Degreasing', 500, 500, 1669120000000),
('f9341a52-6ff3-4e83-a0f7-d8efead7190d', 'ff568509-9b5f-4782-982f-fccaeeb2e958', 1, 'pcs', '1eaa084e-a067-4171-a401-0bdafd8c2553', 'Con. Rod Arm Re-standard / Fitting Bearing', 350, 350, 1669130000000),
('f96fddea-f19b-493b-8df5-3a971f1b7808', '65f036b4-8179-411b-8ee4-c1b2e659af4d', 9, 'pcs', 'others', 'Crankshaft Polish', 100, 900, 1669100000000),
('feb17f7e-c4d6-4993-97a4-3b334f750d8b', '701206d5-ce6a-4668-9044-ad19895273e0', 1, 'pcs', 'others', 'Degreasing', 500, 500, 1669120000000);

-- --------------------------------------------------------

--
-- Table structure for table `project_qoutation_detail`
--

CREATE TABLE `project_qoutation_detail` (
  `project_qoutation_detail_id` varchar(40) NOT NULL,
  `date` float NOT NULL,
  `customer` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `engine_model` varchar(100) NOT NULL,
  `serial_number` varchar(40) NOT NULL,
  `project_id` varchar(40) NOT NULL,
  `is_final` tinyint(1) NOT NULL,
  `is_show` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project_qoutation_detail`
--

INSERT INTO `project_qoutation_detail` (`project_qoutation_detail_id`, `date`, `customer`, `address`, `engine_model`, `serial_number`, `project_id`, `is_final`, `is_show`) VALUES
('00a798c0-e1a1-464b-8488-5dafb4986a93', 1669100000000, 'Santos, Albert', 'San Pedro City, Laguna', 'chevrolet spark', 'n/a', '84ce9635-7900-4aab-8a36-4b9cd04e76bd', 1, 1),
('42fdb71e-4bbc-434e-ba1b-79e1467266c0', 1669120000000, 'Quiambao, Arnold', 'Calamba, Laguna', 'n/a', 'n/a', 'f1389a06-2a76-4788-b31d-f50c5705d0a9', 1, 1),
('4730f765-ff51-4eee-9af9-2ab2f6026d1f', 1669120000000, 'Bautista, Vicente', 'Binan, Laguna', 'n/a', 'n/a', 'a1446325-9d66-4926-a631-ebed7c5a693f', 1, 1),
('4f88d789-ccbd-489d-b38b-dbbe51ddaa8e', 1669120000000, 'Castro, Efrain', 'Binan, Laguna', 'n/a', 'n/a', '9dbb2073-72d7-455a-ad75-cf4f8043f1b0', 1, 1),
('5bd1d21e-6f5a-418b-a172-f4096df0ca46', 1669120000000, 'Callo, Carl', 'Calamba, Laguna', 'Spur Gear', 'n/a', '718f270b-f833-48d6-ba1f-3d6bc2f9133a', 1, 1),
('65f036b4-8179-411b-8ee4-c1b2e659af4d', 1669100000000, 'Reyes, Ruben', 'Biñan City, Laguna', '4B62', 'n/a', 'c39698d3-dd3e-4dec-92ee-fbaf8cb38385', 1, 1),
('701206d5-ce6a-4668-9044-ad19895273e0', 1669120000000, 'Jardenil, Eduardo', 'Sta. Rosa, Laguna', '4af', 'n/a', 'adc3b60e-3ff5-42f0-bb9f-85fbb30c6f1a', 1, 1),
('80503534-e9b0-4406-96aa-dd46d51d8b98', 1669120000000, 'Bautista, Vicente', 'Binan, Laguna', 'n/a', 'n/a', '1ac91f1b-83cc-475c-a902-2aa4a7fa6c16', 1, 1),
('94da6208-0008-4ad5-a5b4-47f3449cd6de', 1669130000000, 'Mallari, Dulcina', 'GMA, Cavite', 'n/a', 'n/a', '0e08ce49-a7a0-448c-a7bb-a2189cc5e99a', 1, 1),
('94fa6856-f17c-4521-aae9-a420211751a0', 1669120000000, 'Rivera, Juliana', 'Binan, Laguna', 'n/a', 'n/a', 'd17b4fd6-697e-426e-b3f9-0b47c322291b', 1, 1),
('9d50ffe9-3ca6-4dfc-8a4d-18b4ad9b08fe', 1669110000000, 'Rivera, Juliana', 'Binan, Laguna', 'Honda City Idsi', 'n/a', 'bf63a81a-e462-4c38-a215-f6b1d04b7ede', 1, 1),
('ab9b3efd-2a96-4c89-8e2b-c8d40ac2482d', 1669100000000, 'Villanueva, Celso', 'Biñan City, Laguna', 'n/a', 'n/a', 'a0f8e2af-ac49-422e-8a34-11d3c08cd9a5', 1, 1),
('aca7a874-fae4-48ae-b1b1-6313eb3053f6', 1669120000000, 'Jardenil, Eduardo', 'Sta. Rosa, Laguna', 'Nissan GA16', 'n/a', '3bfcbc0a-9604-43b5-92c8-3685001dfb4b', 1, 1),
('bc390b96-5743-4c09-9a93-1655d6285d1e', 1669110000000, 'Marcelo, Kendrick Jonathan', 'Silang, Cavite', 'n/a', 'n/a', '51a9916c-f096-422c-8eb9-3c0bca55c5bb', 1, 1),
('d13d65c2-922e-4a82-8132-d705d223fc31', 1669120000000, 'Callo, Carl', 'Calamba, Laguna', 'c240', 'n/a', '0edc5628-d782-4dd5-93bb-aa0f81fc4e5b', 1, 1),
('ee7cb5b3-2101-4748-9188-0f00d4eb36c6', 1669100000000, 'Insorio, Rusca', 'Sta. Rosa City, Laguna', 'n/a', 'n/a', '62e27151-8c87-4801-a498-9137cf09c9fa', 1, 1),
('f3e153ef-e9e6-42ff-8d56-017bd992f70b', 1669050000000, 'Villanueva, Celso', 'Biñan City, Laguna', 'n/a', 'n/a', '6354dea7-af9f-4f98-af67-267acbe42ea7', 0, 0),
('f9353ce2-6720-4797-bd87-8fa91929a3a7', 1669110000000, 'Armando, Jayson', 'Sta. Rosa, Laguna', 'n/a', 'n/a', 'e939047e-3938-41da-9462-046ff435a964', 1, 1),
('ff568509-9b5f-4782-982f-fccaeeb2e958', 1669130000000, 'Atienza, Gemmalyn', 'San Pedro, Laguna', 'n/a', 'n/a', 'f43f8226-c01f-4309-9771-b4f19a03a236', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `project_status`
--

CREATE TABLE `project_status` (
  `project_status_id` varchar(40) NOT NULL,
  `project_id` varchar(40) NOT NULL,
  `status_id` int(1) NOT NULL,
  `employee_id` varchar(40) NOT NULL,
  `date_created` bigint(20) NOT NULL,
  `remarks` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project_status`
--

INSERT INTO `project_status` (`project_status_id`, `project_id`, `status_id`, `employee_id`, `date_created`, `remarks`) VALUES
('02b6d762-bbde-40e3-bc2a-42c7a3b385cf', '0edc5628-d782-4dd5-93bb-aa0f81fc4e5b', 4, '1fd0649a-1c8a-41c7-b4f0-0dd396dae71d', 1669120300346, '<p><br></p>'),
('08795bbf-2e4b-4f05-85db-d08754f306f5', 'c39698d3-dd3e-4dec-92ee-fbaf8cb38385', 3, '73d287a1-4179-49ae-8bff-a8e3448239aa', 1669100972313, '<p>Fitting Con. Bearing</p>'),
('08c06d98-2d58-4a89-a49a-e208cbbd1945', '0edc5628-d782-4dd5-93bb-aa0f81fc4e5b', 3, '1fd0649a-1c8a-41c7-b4f0-0dd396dae71d', 1669120247794, '<p>Valve Reface</p>'),
('097154af-959e-4a7f-9133-528baf842220', 'bf63a81a-e462-4c38-a215-f6b1d04b7ede', 3, '37424d19-1187-4563-92e3-45ebb3e1f698', 1669114965889, '<p>Valve Reface</p>'),
('0d3ad558-1ae1-4453-a118-705c217b85f7', 'a0f8e2af-ac49-422e-8a34-11d3c08cd9a5', 3, '20ee507a-603b-4072-94ae-51892d1dcfa7', 1669095917509, '<p>Valve Seat Replace + Assemble</p>'),
('0db7d00d-c867-471c-a636-4679f28b7306', '718f270b-f833-48d6-ba1f-3d6bc2f9133a', 3, '1fd0649a-1c8a-41c7-b4f0-0dd396dae71d', 1669119911281, '<p>Fabrication</p>'),
('102b45a7-32df-49a2-a264-b9274840ef97', 'e939047e-3938-41da-9462-046ff435a964', 3, '73d287a1-4179-49ae-8bff-a8e3448239aa', 1669112994981, '<p>Engine Valve Lapping</p>'),
('178d0ddc-d85e-4450-8f34-1e81b8794dc5', '84ce9635-7900-4aab-8a36-4b9cd04e76bd', 3, '37424d19-1187-4563-92e3-45ebb3e1f698', 1669098940968, '<p>Hydrotest</p>'),
('187abd2e-e596-452f-bc9b-fd055e794d37', '51a9916c-f096-422c-8eb9-3c0bca55c5bb', 3, '37424d19-1187-4563-92e3-45ebb3e1f698', 1669116007389, '<p>Engine Valve Guide Replace</p>'),
('1d9b894c-fe01-4a43-96cd-7b24999a8110', 'f43f8226-c01f-4309-9771-b4f19a03a236', 3, '20ee507a-603b-4072-94ae-51892d1dcfa7', 1669126537942, '<p>Fabrication of Con Rod Bearing (Tiger Bronze)</p>'),
('1fe6fea8-8304-4881-9ef8-0fce1931739a', '84ce9635-7900-4aab-8a36-4b9cd04e76bd', 3, '37424d19-1187-4563-92e3-45ebb3e1f698', 1669098863285, '<p>Degreasing</p>'),
('1ffb15c6-a530-4a7c-9c2a-050a9d7369a5', '3bfcbc0a-9604-43b5-92c8-3685001dfb4b', 4, '73d287a1-4179-49ae-8bff-a8e3448239aa', 1669118068395, '<p><br></p>'),
('23f97d84-b0dc-4bc1-b343-043e5c3abd4d', '0edc5628-d782-4dd5-93bb-aa0f81fc4e5b', 3, '1fd0649a-1c8a-41c7-b4f0-0dd396dae71d', 1669120256192, '<p>Valve Seat Reface</p>'),
('26dd7d42-4672-492a-9812-fd4b17a9841e', 'd17b4fd6-697e-426e-b3f9-0b47c322291b', 3, '37424d19-1187-4563-92e3-45ebb3e1f698', 1669115339890, '<p>Fitting Main Bearing</p>'),
('275f7e18-7912-4919-b6ef-1bd064db894b', 'c39698d3-dd3e-4dec-92ee-fbaf8cb38385', 3, '73d287a1-4179-49ae-8bff-a8e3448239aa', 1669100961660, '<p>Crankshaft Polish</p>'),
('32780415-d6f8-4e93-ad5e-5cf08f2f510e', 'bf63a81a-e462-4c38-a215-f6b1d04b7ede', 3, '37424d19-1187-4563-92e3-45ebb3e1f698', 1669114941262, '<p>Degreasing</p>'),
('35d16747-7d52-42d2-ad53-08ba75d03e6c', '3bfcbc0a-9604-43b5-92c8-3685001dfb4b', 3, '73d287a1-4179-49ae-8bff-a8e3448239aa', 1669118046424, '<p>Valve Reface</p>'),
('362f7e3c-6c3a-456e-8495-f3fcad170153', '3bfcbc0a-9604-43b5-92c8-3685001dfb4b', 3, '73d287a1-4179-49ae-8bff-a8e3448239aa', 1669118062138, '<p>Replace Valve Seal</p>'),
('3a7dcc9f-9174-4ca4-9df4-9c4bd31fe43b', 'c39698d3-dd3e-4dec-92ee-fbaf8cb38385', 3, '73d287a1-4179-49ae-8bff-a8e3448239aa', 1669100912422, '<p>Degreasing</p>'),
('3bb54c9e-20b1-43c8-b250-a2d79e4699ca', '0edc5628-d782-4dd5-93bb-aa0f81fc4e5b', 3, '1fd0649a-1c8a-41c7-b4f0-0dd396dae71d', 1669120281205, '<p>Replace Valve Seal</p>'),
('3ef7adfd-cb00-4d73-ad46-c98d55997ff9', '84ce9635-7900-4aab-8a36-4b9cd04e76bd', 3, '37424d19-1187-4563-92e3-45ebb3e1f698', 1669098880429, '<p>Valve Lapping</p>'),
('44bfc916-328d-434b-83c5-40ddb21403cc', '3bfcbc0a-9604-43b5-92c8-3685001dfb4b', 3, '73d287a1-4179-49ae-8bff-a8e3448239aa', 1669118030112, '<p>Resurfaced</p>'),
('484a1109-915b-4744-9fb4-e24db5b7630f', 'a1446325-9d66-4926-a631-ebed7c5a693f', 4, '1fd0649a-1c8a-41c7-b4f0-0dd396dae71d', 1669121113346, '<p><br></p>'),
('48a0dab1-d6ef-4ef0-946b-8d80b849e16d', 'd17b4fd6-697e-426e-b3f9-0b47c322291b', 3, '37424d19-1187-4563-92e3-45ebb3e1f698', 1669115309321, '<p>Bore Honing</p>'),
('4a99be8f-a91b-4ba9-bd81-a34641ba4bb0', '62e27151-8c87-4801-a498-9137cf09c9fa', 4, '1fd0649a-1c8a-41c7-b4f0-0dd396dae71d', 1669098085508, '<p><br></p>'),
('4ce48727-d2fd-4804-bce3-3ecf237ca738', 'a0f8e2af-ac49-422e-8a34-11d3c08cd9a5', 3, '20ee507a-603b-4072-94ae-51892d1dcfa7', 1669095859255, '<p>Valve Guide Replace</p>'),
('4dc7997c-4fce-4d5e-a67f-eec65cac9e08', '0edc5628-d782-4dd5-93bb-aa0f81fc4e5b', 3, '1fd0649a-1c8a-41c7-b4f0-0dd396dae71d', 1669120295524, '<p>Assemble Valve Spring and Lock</p>'),
('517165a9-bfb2-422b-8a2f-a78893bf7e81', '9dbb2073-72d7-455a-ad75-cf4f8043f1b0', 3, '20ee507a-603b-4072-94ae-51892d1dcfa7', 1669122140356, '<p>Reface</p>'),
('55cc0f54-f9bb-40bf-a399-0772cd286410', '0edc5628-d782-4dd5-93bb-aa0f81fc4e5b', 3, '1fd0649a-1c8a-41c7-b4f0-0dd396dae71d', 1669120241722, '<p>Valve Lapping</p>'),
('60979631-c18f-44e4-8965-8886bac06988', 'e939047e-3938-41da-9462-046ff435a964', 3, '73d287a1-4179-49ae-8bff-a8e3448239aa', 1669112977921, '<p>Degreasing</p>'),
('64743483-a42d-48d5-888e-3eb78889459c', 'bf63a81a-e462-4c38-a215-f6b1d04b7ede', 3, '37424d19-1187-4563-92e3-45ebb3e1f698', 1669114991840, '<p>Valve Seat Reface</p>'),
('6ddfcbcf-4536-4bfc-ad97-3da7554d0151', '84ce9635-7900-4aab-8a36-4b9cd04e76bd', 3, '37424d19-1187-4563-92e3-45ebb3e1f698', 1669098893837, '<p>Valve Seat Reface</p>'),
('7285ebe1-ae13-481c-8ef6-49d874f9201d', 'bf63a81a-e462-4c38-a215-f6b1d04b7ede', 3, '37424d19-1187-4563-92e3-45ebb3e1f698', 1669114956350, '<p>Valve Lapping</p>'),
('7a1d1851-08a8-47ad-8562-965fc2242184', 'e939047e-3938-41da-9462-046ff435a964', 4, '73d287a1-4179-49ae-8bff-a8e3448239aa', 1669113011676, '<p><br></p>'),
('83fe947c-8cf0-4653-b9a1-b502459c236c', '3bfcbc0a-9604-43b5-92c8-3685001dfb4b', 3, '73d287a1-4179-49ae-8bff-a8e3448239aa', 1669118053791, '<p>Valve Seat Reface</p>'),
('88dda0eb-8169-49cd-8506-1d82d0811c09', '0edc5628-d782-4dd5-93bb-aa0f81fc4e5b', 3, '1fd0649a-1c8a-41c7-b4f0-0dd396dae71d', 1669120232433, '<p>Degreasing</p>'),
('8ad06f19-aa27-4484-a777-148790dc1c87', 'bf63a81a-e462-4c38-a215-f6b1d04b7ede', 4, '37424d19-1187-4563-92e3-45ebb3e1f698', 1669114998882, '<p><br></p>'),
('8ddbd3c3-058d-4580-ab5e-8eea14f7c74a', 'c39698d3-dd3e-4dec-92ee-fbaf8cb38385', 4, '73d287a1-4179-49ae-8bff-a8e3448239aa', 1669100976400, '<p>Fitting Con. Bearing</p>'),
('905c015a-3c85-41aa-b17b-4e25f36b6f72', '84ce9635-7900-4aab-8a36-4b9cd04e76bd', 4, '37424d19-1187-4563-92e3-45ebb3e1f698', 1669098947097, '<p><br></p>'),
('9ffcfa9a-0b4d-4f7d-80a5-8e99a0f568a7', '718f270b-f833-48d6-ba1f-3d6bc2f9133a', 4, '1fd0649a-1c8a-41c7-b4f0-0dd396dae71d', 1669119916367, '<p><br></p>'),
('a0217f47-8cab-464c-9132-df03be379dfb', 'd17b4fd6-697e-426e-b3f9-0b47c322291b', 3, '37424d19-1187-4563-92e3-45ebb3e1f698', 1669115302543, '<p>Degreasing</p>'),
('a41de78b-878e-4ca2-91d6-39c38e14ebbb', 'd17b4fd6-697e-426e-b3f9-0b47c322291b', 3, '37424d19-1187-4563-92e3-45ebb3e1f698', 1669115327009, '<p>Polish Crankshaft Journal</p>'),
('a69e79ad-352e-4786-b4e1-25ad399169e5', '84ce9635-7900-4aab-8a36-4b9cd04e76bd', 3, '37424d19-1187-4563-92e3-45ebb3e1f698', 1669098921743, '<p>Valve Seal Replace + Assemble</p>'),
('a76fcde0-c2e3-42a7-b4c5-1d93f013fd0d', '51a9916c-f096-422c-8eb9-3c0bca55c5bb', 3, '37424d19-1187-4563-92e3-45ebb3e1f698', 1669116020546, '<p>Engine Valve Seat Refacing</p>'),
('a8cf965f-c524-40b9-b856-b5dad3c69d82', '84ce9635-7900-4aab-8a36-4b9cd04e76bd', 3, '37424d19-1187-4563-92e3-45ebb3e1f698', 1669098932359, '<p>Resurface</p>'),
('a9110f74-8f35-410a-8e00-3f7f22262e59', 'f1389a06-2a76-4788-b31d-f50c5705d0a9', 4, '1fd0649a-1c8a-41c7-b4f0-0dd396dae71d', 1669120573701, '<p><br></p>'),
('a9335342-28ce-449e-82c7-f106a5a09158', '9dbb2073-72d7-455a-ad75-cf4f8043f1b0', 4, '20ee507a-603b-4072-94ae-51892d1dcfa7', 1669122150757, ''),
('a9acfcf7-d9d7-438c-9cd7-a306ec19d5ff', '62e27151-8c87-4801-a498-9137cf09c9fa', 3, '1fd0649a-1c8a-41c7-b4f0-0dd396dae71d', 1669098042999, '<p>Degreasing</p>'),
('ae5413dd-edab-47a5-8398-38e30b87b143', '62e27151-8c87-4801-a498-9137cf09c9fa', 3, '1fd0649a-1c8a-41c7-b4f0-0dd396dae71d', 1669098068565, '<p>Crankshaft Polish</p>'),
('b0f4bc9b-e090-4867-8443-c38a31c65da4', 'bf63a81a-e462-4c38-a215-f6b1d04b7ede', 3, '37424d19-1187-4563-92e3-45ebb3e1f698', 1669114949549, '<p>Resurface</p>'),
('b1299e43-a407-45b0-a955-f96a389d8767', '3bfcbc0a-9604-43b5-92c8-3685001dfb4b', 3, '73d287a1-4179-49ae-8bff-a8e3448239aa', 1669118022539, '<p>Degreasing</p>'),
('b23cda45-fba4-4057-9658-d45a2f206ce2', 'a0f8e2af-ac49-422e-8a34-11d3c08cd9a5', 3, '20ee507a-603b-4072-94ae-51892d1dcfa7', 1669095900977, '<p>Valve Reface</p>'),
('b4ef6bda-2a96-45bd-ab8c-8344a96c57ba', 'a1446325-9d66-4926-a631-ebed7c5a693f', 3, '1fd0649a-1c8a-41c7-b4f0-0dd396dae71d', 1669121108636, '<p>Fabrication</p>'),
('be88fe5e-bde6-4a01-8b51-3fd1b058424d', '1ac91f1b-83cc-475c-a902-2aa4a7fa6c16', 3, '20ee507a-603b-4072-94ae-51892d1dcfa7', 1669121454826, '<p>Build up</p>'),
('bfb85ec2-6538-495b-acff-dc1d07baecc0', '51a9916c-f096-422c-8eb9-3c0bca55c5bb', 4, '37424d19-1187-4563-92e3-45ebb3e1f698', 1669116025370, '<p><br></p>'),
('bff5620d-35b8-465d-bed2-545f5b4662c4', '62e27151-8c87-4801-a498-9137cf09c9fa', 3, '1fd0649a-1c8a-41c7-b4f0-0dd396dae71d', 1669098079605, '<p>Fitting con. Bearing</p>'),
('c25013bd-501e-4d20-b4e6-987f07fc37aa', '1ac91f1b-83cc-475c-a902-2aa4a7fa6c16', 3, '20ee507a-603b-4072-94ae-51892d1dcfa7', 1669121464710, '<p>Re-teeth</p>'),
('c3cd151b-1946-49ae-ab74-9fc11d3ca0a4', 'd17b4fd6-697e-426e-b3f9-0b47c322291b', 4, '37424d19-1187-4563-92e3-45ebb3e1f698', 1669115375981, '<p><br></p>'),
('c448de4f-fe01-4211-b794-26d9db684363', '51a9916c-f096-422c-8eb9-3c0bca55c5bb', 3, '37424d19-1187-4563-92e3-45ebb3e1f698', 1669115978068, '<p>Degreasing</p>'),
('c4738f26-53bd-429e-8075-d4bbbec8162b', '84ce9635-7900-4aab-8a36-4b9cd04e76bd', 3, '37424d19-1187-4563-92e3-45ebb3e1f698', 1669098899587, '<p>Valve Reface</p>'),
('c85514f2-3b08-4aec-a4dc-ca703e6a78ba', 'a0f8e2af-ac49-422e-8a34-11d3c08cd9a5', 4, '20ee507a-603b-4072-94ae-51892d1dcfa7', 1669095922197, '<p>Valve Seat Replace + Assemble</p>'),
('cb07e5ed-eb9c-4889-94b8-31df7e4e5155', 'e939047e-3938-41da-9462-046ff435a964', 3, '73d287a1-4179-49ae-8bff-a8e3448239aa', 1669113005814, '<p>Engine Valve Replace</p>'),
('ce644534-72bb-43ec-97da-8098aaa890b9', 'c39698d3-dd3e-4dec-92ee-fbaf8cb38385', 3, '73d287a1-4179-49ae-8bff-a8e3448239aa', 1669100947801, '<p>Fitting Main Bearing</p>'),
('ceec5785-677e-4328-a549-59cdfdd1b3d7', 'a0f8e2af-ac49-422e-8a34-11d3c08cd9a5', 3, '20ee507a-603b-4072-94ae-51892d1dcfa7', 1669095623058, '<p>Degreasing</p>'),
('d48c9566-b305-4eb2-a96f-3808c63e794b', 'f1389a06-2a76-4788-b31d-f50c5705d0a9', 3, '1fd0649a-1c8a-41c7-b4f0-0dd396dae71d', 1669120567686, '<p>Reface</p>'),
('dd629ed6-1d49-4e7c-b7e7-256d053d8dff', '3bfcbc0a-9604-43b5-92c8-3685001dfb4b', 3, '73d287a1-4179-49ae-8bff-a8e3448239aa', 1669118038174, '<p>Valve Lapping</p>'),
('e030a86c-a645-47cd-b127-7519b6c2d073', '62e27151-8c87-4801-a498-9137cf09c9fa', 3, '1fd0649a-1c8a-41c7-b4f0-0dd396dae71d', 1669098056649, '<p>Fitting M. Bearing</p>'),
('e62ce0a2-1c8d-4fbe-9f3e-649da83eef7a', '51a9916c-f096-422c-8eb9-3c0bca55c5bb', 3, '37424d19-1187-4563-92e3-45ebb3e1f698', 1669115999122, '<p>Engine Valve Reface</p>'),
('fa7b28e2-41e5-4db7-9e66-e70e7c0623e9', 'd17b4fd6-697e-426e-b3f9-0b47c322291b', 3, '37424d19-1187-4563-92e3-45ebb3e1f698', 1669115369525, '<p>Fitting Con Rod Bearing</p>'),
('fa9d4075-9530-45dd-9d4c-63af0176ef17', 'a0f8e2af-ac49-422e-8a34-11d3c08cd9a5', 3, '20ee507a-603b-4072-94ae-51892d1dcfa7', 1669095874857, '<p>Valve Lapping</p>'),
('fb51888e-c71e-4085-9ac1-93e77c6e1989', 'a0f8e2af-ac49-422e-8a34-11d3c08cd9a5', 3, '20ee507a-603b-4072-94ae-51892d1dcfa7', 1669095891130, '<p>Valve Seat Reface</p>');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `services_id` varchar(50) NOT NULL,
  `services_name` varchar(200) NOT NULL,
  `services_price` float NOT NULL,
  `created_at` int(13) NOT NULL,
  `updated_at` int(13) NOT NULL,
  `users_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`services_id`, `services_name`, `services_price`, `created_at`, `updated_at`, `users_id`) VALUES
('04905146-d576-4ad6-9454-9979b460b4b8', 'Crankshaft Check Alignment', 0, 2147483647, 2147483647, '1dfa4584-e597-4822-b065-e01ba29038dd'),
('1eaa084e-a067-4171-a401-0bdafd8c2553', 'Con. Rod Arm Re-standard / Fitting Bearing', 0, 2147483647, 2147483647, '1dfa4584-e597-4822-b065-e01ba29038dd'),
('35d154aa-18d0-41b6-8dbc-5600ddc61f86', 'Cylinder Head / Block Cracktest-Hydrotest', 0, 2147483647, 2147483647, '1dfa4584-e597-4822-b065-e01ba29038dd'),
('40c6b3c1-60db-4ffb-a3c0-4b2cf408eba9', 'Cylinder Head Degreasing-Turbowash', 0, 2147483647, 2147483647, '1dfa4584-e597-4822-b065-e01ba29038dd'),
('44350bf0-28b6-4823-b25c-3719b06411c5', 'Cylinder Bore / Reboring O.S', 0, 2147483647, 2147483647, '1dfa4584-e597-4822-b065-e01ba29038dd'),
('4c5b4f4f-c75c-42fb-9fe6-bd3263a832f7', 'Crankshaft Straightening (Owner\'s risk)', 0, 2147483647, 2147483647, '1dfa4584-e597-4822-b065-e01ba29038dd'),
('5acffe55-ddf3-4395-ab0d-dbc5a261ffbe', 'Engine Valve Guide Replace', 0, 2147483647, 2147483647, '1dfa4584-e597-4822-b065-e01ba29038dd'),
('5c668b1e-15b8-46f0-9b79-72ca7f5069fd', 'Crankshaft Oil Seal Seat Build-up / Machining', 0, 2147483647, 2147483647, '1dfa4584-e597-4822-b065-e01ba29038dd'),
('65bfc4f5-c141-4a2c-a35d-fd25314ccf49', 'Engine Valve Seat Refacing', 0, 2147483647, 2147483647, '1dfa4584-e597-4822-b065-e01ba29038dd'),
('71b4beef-6cb7-4f93-8b59-ed7705eb000c', 'Camshaft / Balancer Bushing Replace & Fitting', 0, 2147483647, 2147483647, '1dfa4584-e597-4822-b065-e01ba29038dd'),
('796d1d42-2456-412d-9a92-537138ca4d5e', 'Engine Valve Refacing / Valve Lapping', 0, 2147483647, 2147483647, '1dfa4584-e597-4822-b065-e01ba29038dd'),
('8407e6aa-09a6-4440-93f0-0d26f7ec8cdc', 'Con. Rod Pin Bushing Replace', 0, 2147483647, 2147483647, '1dfa4584-e597-4822-b065-e01ba29038dd'),
('89027e08-8be3-4125-bcae-3c8ca39cc85d', 'Cylinder Head / Block Resurface', 0, 2147483647, 2147483647, '1dfa4584-e597-4822-b065-e01ba29038dd'),
('91cc6af6-b03d-4a55-ab40-c7b75f9ab36e', 'Engine Valve / Tappet Clearance-Re-Setting', 0, 2147483647, 2147483647, '1dfa4584-e597-4822-b065-e01ba29038dd'),
('a0fd179d-541a-483f-8bb4-4b2e7b30d584', 'Main Housing Align Bore / Fitting Main Bearing', 0, 2147483647, 2147483647, '1dfa4584-e597-4822-b065-e01ba29038dd'),
('a5d5a0b2-9e84-4ad3-a545-d4b4c4d8cffe', 'Cylinder Block Degreasing-Turbowash', 0, 2147483647, 2147483647, '1dfa4584-e597-4822-b065-e01ba29038dd'),
('c1ece73a-49e5-4554-993c-e6bb396c1da0', 'Crankshaft Main / Con. Rod Joumal Re-grind', 0, 2147483647, 2147483647, '1dfa4584-e597-4822-b065-e01ba29038dd'),
('cf3b0ca0-57d9-4296-83ee-02c5dd279188', 'Cylinder Bore Sleeving/Honing/Replace Liner', 0, 2147483647, 2147483647, '1dfa4584-e597-4822-b065-e01ba29038dd'),
('d79242f7-2d77-4b66-bcdd-cc037d5cf7b8', 'Engine Valve Ring Insert / Fabrication/Installation', 0, 2147483647, 2147483647, '1dfa4584-e597-4822-b065-e01ba29038dd'),
('dac560b9-5e0e-49ec-889f-cbc4009d4f91', 'Crankshaft Main / Con. Rod Joumal Polish', 0, 2147483647, 2147483647, '1dfa4584-e597-4822-b065-e01ba29038dd');

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `sid` varchar(255) NOT NULL,
  `sess` text NOT NULL,
  `expired` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`sid`, `sess`, `expired`) VALUES
('-0TeucgL3J0rFqQuBjuj4KNrdOqr_Doh', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T16:40:03.400Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 16:40:03'),
('-nSPINT4zBn9LyXdJJZxhmb191wTtd-p', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T07:07:40.605Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 07:07:40'),
('-XI3nO0_eZlFUplm-Qycj8-7oZZMGw6J', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T11:52:38.943Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 11:52:38'),
('0GFNAunS57WmkJnBVToYc-Kg-dXNx28M', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T08:37:35.824Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"},\"userId\":\"1dfa4584-e597-4822-b065-e01ba29038dd\",\"user\":{\"users_id\":\"1dfa4584-e597-4822-b065-e01ba29038dd\",\"first_name\":\"Admin\",\"last_name\":\"\",\"middle_name\":\"\",\"birthday\":975802000000,\"user_level_name\":\"Owner\",\"user_level_acc\":\"owner\",\"email\":\"gemstar.machineshop@gmail.com\",\"user_name\":\"owner\",\"password\":\"%242a%2410%24BiJGeEcmV0xecIDDyUvQQufsUpTPLPkGSI2tBPbml24ogmX2WAd2O\",\"is_confirmed\":1,\"address\":\"Biñan City, Laguna\",\"contact_number\":\"\"}}', '2022-11-29 09:04:53'),
('0uRVXBBx_zuTPe16SFXjXoeYsZnE4nj3', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-30T00:23:30.195Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-30 00:23:30'),
('17Ie2muuVn1j6FrnLurTXq1aQCChOF1K', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T20:23:18.890Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 20:23:18'),
('27dx9-XDL1mpqHz4RIw39df0B9yUkidm', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T04:50:09.175Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 04:50:09'),
('2ALisau_vii7HosSi3iO0hh5F051daCT', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T10:33:03.497Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 10:33:03'),
('2B_RXpfFWyOPJja5GSseui8_77KinxzJ', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T12:57:12.386Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 12:57:12'),
('2DZmMg5vflUZ5a9SQNzkeiNOXYJhSxhX', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T03:22:00.630Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 03:22:00'),
('2FuTsJsL3xtjoA_4gxniEMzBgTmH-amr', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T05:06:04.451Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 05:06:04'),
('2MBhYFdE0yVqthnpu3G28Ed5tgyNo1rt', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-30T00:23:05.755Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"},\"userId\":\"e949701c-87fb-479a-8bbc-42b3ddd91848\",\"user\":{\"users_id\":\"e949701c-87fb-479a-8bbc-42b3ddd91848\",\"first_name\":\"Chris\",\"last_name\":\"Martin\",\"middle_name\":\"Anuyo\",\"birthday\":282442000000,\"user_level_name\":\"Customer\",\"user_level_acc\":\"csm\",\"email\":\"chrisam@gmail.com\",\"user_name\":\"chris\",\"password\":\"%242a%2410%24a8.t9AptoVJCkP93bFSeaeBdZs..6Qm43Svqe1lIVLuLPn7uayoa.\",\"is_confirmed\":1,\"address\":\"Silang, Cavite\",\"contact_number\":\"09052677890\"}}', '2022-11-30 00:24:00'),
('2pz_5pVkIatrAXYo3cmpl4RD6IUB1daJ', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T04:46:58.324Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 04:46:58'),
('2XTab1W6NGzaIkzcBJhn22hPI-uBOJFK', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-27T08:23:53.053Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-27 08:23:53'),
('33zokESlN78LUo1dZaAeqtUICtXRhVHd', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T03:06:44.523Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 03:06:44'),
('3Iq2YrHNbHIQEt2ezWWzxjvbBINbR8cA', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T03:18:07.681Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 03:18:07'),
('3o2OHaPB82lfj9jzGapjib9_W52Pjzfe', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T20:23:18.122Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 20:23:18'),
('47uIt9ufpZo49qo4gHa_dLa6CF5MrkbB', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T12:37:48.142Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 12:37:48'),
('4QW26SkOTi6XA_gcBZ347v75uvZPqloK', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T12:32:54.080Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 12:32:54'),
('5Kxgz0gOFmiL2_V6RoYRVrsLIdPX5x0N', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T01:46:14.855Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 01:46:14'),
('6Bg9zBVdOToqKLviBFLZN-KfxmlmCfzB', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-30T00:22:49.604Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-30 00:22:49'),
('6HlAVMtBwSK9asDW-2jmpKrb5eQlTknN', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T02:42:00.911Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 02:42:00'),
('6ZxN2VMlHQjmaS5zGxCIEQTJnDmclmzC', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T09:54:34.982Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 09:54:34'),
('7cV0ySVLxp4IJ_py7vT_Jt8_bByhCqRj', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T06:22:25.085Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 06:22:25'),
('7gD8pq0e3Sg9SxLgoOlZyba2WOjFPHdK', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T04:49:16.861Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 04:49:16'),
('7KSKm3ROr1rrRG1c6ifnhTKOQo-Tdl51', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T12:19:52.222Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 12:19:52'),
('8x9xW7DmV_Tkcv97B71nUNlc1l32yg5A', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T13:02:54.560Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 13:02:54'),
('8xNesyRa1lxxSJk4l-DpZm9ggNLN2GJl', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T16:30:34.855Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 16:30:34'),
('8YxBw4YOB_dNTOuhgi_vJFh8FCAFC2cK', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T16:57:16.639Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 16:57:16'),
('9EHEE9EDGd6Hv0YTyXUIRlMSefTY8q-z', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T02:41:58.392Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 02:41:58'),
('9nlXnqYzknVP71pmhBNxh2Ku81Y8o7TS', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T09:25:33.385Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 09:25:33'),
('9WbQLy9VqtVHYxGFL4vkZ7jisEpxChtK', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T05:06:04.773Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 05:06:04'),
('AG_p5wHqBuas-pap9UoAOyJoLg68NXo6', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T05:23:38.166Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 05:23:38'),
('aiPLEblQ__2zunpKpiYFtpBLLKN-64xs', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T12:32:55.602Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 12:32:55'),
('akEuft8L1MNMZnvM4xIzT6pptarlYGrW', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T03:10:10.797Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 03:10:10'),
('avytiMEk73R741MOK3-URp4UG8BzYX74', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T16:28:51.472Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 16:28:51'),
('BeAbZYg4l-VWz5CWIXdssIEYZktfV4rU', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T06:33:31.426Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 06:33:31'),
('bgDKP3G0jjwkulRmW2sDXwBL1KEhcfjY', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T10:29:12.089Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 10:29:12'),
('bhE65pIwmkUiqLf-H1JwbON4PsY3zzo_', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T10:29:11.719Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 10:29:11'),
('bIEeyZkVLmhgJW6-hnDNW2R7qxIr3CVm', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T16:42:26.627Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 16:42:26'),
('BME8CJXGvmDDbxzvKJkUcpmopWJmIiGz', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T04:39:44.044Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 04:39:44'),
('bvlkfKMdfO_blZwCYJIolgnhhVcmUQPh', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T09:25:36.146Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 09:25:36'),
('C04-rtYw0let4cJ73ATx_iB2DQ8ZFmQm', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T16:48:51.521Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 16:48:51'),
('c1QpzQ-bln8TTWT5ic7N7PWGjKjolaci', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T16:30:35.091Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 16:30:35'),
('c45wukG7AoZSMvdrZWVLDsO2DBVMCpBp', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T10:33:04.132Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 10:33:04'),
('cDqHa3q0NqtXMxVW-weSTARzo91japKU', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T14:11:23.225Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 14:11:23'),
('cNJk4nIWr_CmPhadaBn5Zr-BOx7IfF8A', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-30T00:23:39.656Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"},\"userId\":\"37424d19-1187-4563-92e3-45ebb3e1f698\",\"user\":{\"users_id\":\"37424d19-1187-4563-92e3-45ebb3e1f698\",\"first_name\":\"Noel\",\"last_name\":\"Sinon\",\"middle_name\":\"\",\"birthday\":176688000000,\"user_level_name\":\"Employee\",\"user_level_acc\":\"emp\",\"email\":\"noelsinon@gmail.com\",\"user_name\":\"noel\",\"password\":\"%242a%2410%24iIUt6246JIhA5a3cuG5KhO90x.8kyjEcZcjhPShsFnegg4LQrS7WC\",\"is_confirmed\":1,\"address\":\"Biñan City, Laguna\",\"contact_number\":\"09154987621\"}}', '2022-11-30 00:23:57'),
('CPR_caHnZAmMp2WT9HZ1w0iZmDzDve44', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T09:54:35.707Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 09:54:35'),
('CRGGkui623KNaH1YqulvZItNiCQfRdJz', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T05:04:00.267Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 05:04:00'),
('d7wFERzRdE7u4Dmz_2NrAR5Te7nLVTIQ', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T09:54:34.258Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 09:54:34'),
('dDmdV3uhcWqPR_l79sDVG5KBiookdGZj', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T04:46:58.771Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 04:46:58'),
('DdqCdK72ZyPYcDZkq4Riu4adFQlfGP4S', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T16:32:48.594Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 16:32:48'),
('dvWfJLZZ5K7WtZ5dnmvJWMh5BAysDUZb', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T11:05:01.786Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 11:05:01'),
('E73T1oAWt5FsFdEWx9eRuHmLRr_0nx1G', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-27T08:23:47.103Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-27 08:23:47'),
('ec8Hz3tRQ4-p3A-Asi-xjQ-C9U5OADYG', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T12:37:28.107Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 12:37:28'),
('eF46kRsjXCno7usdmczWL0ZEejpVo31T', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T14:11:23.844Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 14:11:23'),
('EHqaqyMwOl7CgXg-HiVbn9Qd7xIySGns', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T07:07:39.761Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 07:07:39'),
('EkiFy0P8fF5U8107cgVPdV0JIby6p-Xy', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T12:23:37.026Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 12:23:37'),
('evm1Uh0a8LSHKTUkBssu_RGL6helPXv-', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-27T08:28:55.411Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-27 08:28:55'),
('EwRToJC-iY1k7-8b2Yi_7rmCW-5TS51f', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T12:19:51.670Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 12:19:51'),
('EylR-HJYiVmOhLsTJrALkEhRehw-Mwxs', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T07:07:40.145Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 07:07:40'),
('eyuQZvlxJoI4TurLUSlHr8F3TZQ3aqdH', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T08:41:45.438Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 08:41:45'),
('f1RbuwSS1LMUMBAcIzSSa7vdJTQQ4Dbx', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T12:50:16.034Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 12:50:16'),
('FIW0CvkTQmc01ZNsrHTzaN6N0SWNhsXB', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T10:29:12.920Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 10:29:12'),
('FjPXjkyTgeE-nPQiMsuf0ppqnwxObDwm', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T05:23:37.435Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 05:23:37'),
('FOSD2dJ67DHAY0EqXtyTAAxW3AkHTYTP', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T15:47:49.274Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 15:47:49'),
('FT_Zjul5fU0jsLsJtnNFOOpXG4skt9-4', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-30T00:23:31.261Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-30 00:23:31'),
('G1neU4zgTVnyBF-OmwNXmlwQLymZ6AtU', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T12:19:52.462Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 12:19:52'),
('g9otzNJMZuHlzHA1DtRL_O2AX1dSBiRJ', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T16:42:27.133Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 16:42:27'),
('GDXG0K8c5zlBAn8lyAOrGPWieJfbwCrJ', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T16:42:26.864Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 16:42:26'),
('GF_fPHzbi7o0Bb2MiZTFeD21szmHb2LN', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-27T08:23:52.631Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-27 08:23:52'),
('H0XxnHGl6gLF7kl-8Pu2O3gF6I3o7yfU', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T12:39:58.037Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 12:39:58'),
('hci_lUwy1vpcRJVy1DvOFFwAOcZdnMHn', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T11:52:40.031Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 11:52:40'),
('HDq8yirs4Erf_X8wRyhLQ1xdjJbh3w57', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T10:33:04.933Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 10:33:04'),
('Hg66zJrw82O-XdxuCIawCm08wppEGzP7', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T05:04:21.108Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 05:04:21'),
('hHeMbPRL7VT3H-93oiI6da2mZnz-btpY', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T03:18:07.367Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 03:18:07'),
('hxLYND-uDLnYV40wP04OgVbsNMoZd4IG', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T12:23:35.845Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 12:23:35'),
('I79Boclk_V_pgOQ4Z_kb9dIrgBdzklt6', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-27T09:12:22.442Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-27 09:12:22'),
('iGKzgcT6ArS1MB8iHZluZEQbPUzkYL8T', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T09:25:31.927Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 09:25:31'),
('IHRE1Zut-DiFjGmKHRanjn5Ew3Jfm2vD', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T11:46:49.702Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 11:46:49'),
('Ij9ea10SyNVWEk8pEOmvIIIs63yx7_hT', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T16:40:03.773Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 16:40:03'),
('IZE_M5ikcy2nYuQsZ5DggfZPedCRLBnD', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T16:27:08.153Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 16:27:08'),
('J5ECGeI-5IGIh7E9TUOEnXfhWUfu9Jzz', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T05:04:19.615Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 05:04:19'),
('j7yMPSvLJCJ64e8Zhu_EuPOaq8psd36W', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T05:23:36.695Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 05:23:36'),
('J8Mizt1tdB4Bn35pf4_p17UzCWUc8fti', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T03:21:39.040Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 03:21:39'),
('je7auKi4TuPKXL0WDbLLNSuAyd-VRkrw', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T05:05:23.975Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 05:05:23'),
('jhen70Y1XsPZyMIfomYdvL8ldPa1a3Mg', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T10:40:25.974Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 10:40:25'),
('jLta-dhxU59PBjeEb1SncRf3UqQQiLsl', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T13:02:53.734Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 13:02:53'),
('jltU-2Umd3ged2KtiG0I_-0F1k9w7R2E', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T11:05:00.779Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 11:05:00'),
('jM31Sg-_ut07qCreWVqPyNv4hj7AT9TI', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T16:30:35.228Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 16:30:35'),
('jZ-sk8L8PPdUEwkbDS6MYRNt-lh1kFs7', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T12:37:49.026Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 12:37:49'),
('k33A0g9hhMjJKTRbodAXNAt6d1oyvdzA', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T13:02:55.312Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 13:02:55'),
('K99oA6a5smVMwRLn091AjqA1SBX0yqHi', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T05:49:27.366Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 05:49:27'),
('K9GaBcDAmUkH6AGkeS3Oheck5cbLZQ-E', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T15:47:49.997Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 15:47:49'),
('KaHUC2qNEqvw2gEtho6O4tweuA5Yncwa', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T12:39:58.044Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 12:39:58'),
('kGBrSg3N4htg0FQpss-rJ14s3rlh99q2', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T07:00:49.457Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 07:00:49'),
('KmnCJTjF3G0ebmgFhXh0-jc9o4OFKKhG', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T03:06:45.037Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 03:06:45'),
('kpISBq929s5dCEhMnLPJgmjtAVXr1Cnu', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T14:11:24.734Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 14:11:24'),
('KRp49tOqm5N8ZrXB03GBquxeYJG1DlNX', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T11:05:02.551Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 11:05:02'),
('kVmWf_fuTfrP6kCb0sIxJLj3UDndA4XL', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T06:22:25.750Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 06:22:25'),
('k_na58cF4VkOqDwj0PcKPN6sJYoNHQCO', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T16:14:20.685Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 16:14:20'),
('LFVD-M6VloS_rYdqYnBQnA9bcDDvXXEW', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T10:40:26.119Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 10:40:26'),
('LGgbu4P6sElXgNKf4pytZ68KqBFv3hzJ', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T06:24:31.505Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 06:24:31'),
('m3dosiqSyUtvT3Auax10XIToMQkHwL-U', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T05:22:23.939Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 05:22:23'),
('M6O91cLg-prnhDXPeLsRxHFePK0A5hgB', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T10:02:05.049Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"},\"userId\":\"1dfa4584-e597-4822-b065-e01ba29038dd\",\"user\":{\"users_id\":\"1dfa4584-e597-4822-b065-e01ba29038dd\",\"first_name\":\"Admin\",\"last_name\":\"\",\"middle_name\":\"\",\"birthday\":975802000000,\"user_level_name\":\"Owner\",\"user_level_acc\":\"owner\",\"email\":\"gemstar.machineshop@gmail.com\",\"user_name\":\"owner\",\"password\":\"%242a%2410%24BiJGeEcmV0xecIDDyUvQQufsUpTPLPkGSI2tBPbml24ogmX2WAd2O\",\"is_confirmed\":1,\"address\":\"Biñan City, Laguna\",\"contact_number\":\"\"}}', '2022-11-30 00:23:52'),
('MCevwjoKKT1O4a0DA5TF1xTP9oOUHHdE', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T12:19:51.412Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 12:19:51'),
('mgCbsM0VtJ1Izmy91woxHshfy74yyHB-', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T12:57:11.632Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 12:57:11'),
('mKS5qaluRi3-Pwau401nVzqDSfgEqGYK', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T12:57:11.157Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 12:57:11'),
('mneLuKyTZwPYIP4riNs1e2jMA_6ELdP4', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T06:24:32.253Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 06:24:32'),
('MuesMug3KTFwspCqwhsM95URY7uycuLa', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T09:40:30.959Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 09:40:30'),
('MzU8gmsqLpkzVaugaun-aK4fdErvtCd0', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T06:19:55.341Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 06:19:55'),
('n7OKf0Q6vZP-OkEVLHLHIUga4PIXfH2c', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T05:22:24.179Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 05:22:24'),
('NlLgRNbUjEKfF6R_xg4gH4V9FkTIwisE', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T16:14:20.665Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 16:14:20'),
('nwlcHs0adJdeS1pLFbKBSyQhmFuCNHqq', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T04:49:16.421Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 04:49:16'),
('nXeUft5sf33ae1GFe7kXy-0rTM2plEq4', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T05:06:05.497Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 05:06:05'),
('O6RDPxigfwT-5LxlW2lLvrKSuLyM-NWy', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-27T06:46:25.207Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-27 06:46:25'),
('of1aeAP_Y35GAHX_UWo7zDUOhOIKj7o1', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T16:27:07.916Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 16:27:07'),
('OpCB6I-HAHNrDU-zkEPY7ZxX8nDtuSht', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T16:27:08.290Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 16:27:08'),
('OSFJWBJrrTETxRBtJJGu6t2dpgZYYXnn', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T04:44:05.899Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 04:44:05'),
('otuvDVgjDycsBe7UMdBFMZuQQCm6get6', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-30T00:22:51.108Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-30 00:22:51'),
('p86atVjb7NECb73Wp8G3swCX1k5Sh2_u', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T06:33:30.384Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 06:33:30'),
('PbnN5tn25syIVuR7oUROTjftjHpg4aaY', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T07:00:48.858Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 07:00:48'),
('PFPfe15Ey3uOHJNqApCg_f5o8rOvPPun', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T12:50:16.056Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 12:50:16'),
('plMLq9y41HaPtGzCXfVympdF_YhNFQkT', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-30T00:23:31.268Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-30 00:23:31'),
('PMFgHspW5V5QpbQk7xZnu2nweYOBPsiU', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T06:09:56.396Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 06:09:56'),
('PqLut49aTz3wQMPBekO0_0eCncLUAXTL', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T09:35:52.650Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"},\"userId\":\"1dfa4584-e597-4822-b065-e01ba29038dd\",\"user\":{\"users_id\":\"1dfa4584-e597-4822-b065-e01ba29038dd\",\"first_name\":\"Owner\",\"last_name\":\"Test\",\"middle_name\":\"\",\"birthday\":975802000000,\"user_level_name\":\"Owner\",\"user_level_acc\":\"owner\",\"email\":\"owner@mail.com\",\"user_name\":\"owner\",\"password\":\"%242a%2410%24BiJGeEcmV0xecIDDyUvQQufsUpTPLPkGSI2tBPbml24ogmX2WAd2O\",\"is_confirmed\":1,\"address\":\"Carmona, Cavite1\",\"contact_number\":\"\"}}', '2022-11-29 09:38:20'),
('QH4VlmpTWP_FeFkjiHsLZzCEWuQgQKsc', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T09:25:32.595Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 09:25:32'),
('qn4mrWhtZMO4EnYzgPQ0z8HaNlDtQkvF', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T08:41:45.942Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 08:41:45'),
('qyXnOvdmmVC1ydqNy91Al-hT-6xF77nT', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T05:03:59.508Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 05:03:59'),
('R82iTewiqCcHTlSCOp2SekI7ifw0NQ8k', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T00:30:31.663Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 00:30:31'),
('RHDdwHKKuJcZ56zqnfLRmnRq2f25SsmY', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-27T09:01:43.843Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-27 09:01:43'),
('Rhjq1so7oukJ1PER4oacMTKHAZv6TtDi', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-30T00:22:48.020Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-30 00:22:48'),
('rIv24Uu4urL2JBRnxgR1w9z7TZtHfPWI', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T06:09:57.886Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 06:09:57'),
('roeaYofGf6xc83yNRxg0M_Il2y1cXRzn', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T03:22:01.151Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 03:22:01'),
('ruk9JsDFbMyLe2JKeli6U1NxkwjT7FGD', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T06:19:55.340Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 06:19:55'),
('sg4yERA26WuA_rADuycEuYlBMPfKQJ_E', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T04:44:06.350Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 04:44:06'),
('sOQLEuDVv5CsfPrRlRUZoHTFNHqCPOsj', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-27T06:46:25.404Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-27 06:46:25'),
('T5ceViRLFcTFwdiELNHKZaeBOS0TynfQ', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-30T00:22:47.829Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-30 00:22:47'),
('Taj52xXc31TNU8dfJ0RzBormAaMS_he3', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T05:05:23.251Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 05:05:23'),
('tAM9yFDa600OlXfDPq8lkFyKWFDywJVr', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-27T06:46:25.474Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-27 06:46:25'),
('TdIWZ7Zt11aXF1K9mexucGEbWEOM7PYz', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-30T00:22:48.812Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-30 00:22:48'),
('Tgp81ZK2uFUbhkzPnA850_-RzlrYiX10', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T12:37:49.788Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 12:37:49'),
('THbQZSZvLqy2Ji0hv-UID5JZ917vRuJV', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T20:23:31.013Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"},\"userId\":\"1dfa4584-e597-4822-b065-e01ba29038dd\",\"user\":{\"users_id\":\"1dfa4584-e597-4822-b065-e01ba29038dd\",\"first_name\":\"Admin\",\"last_name\":\"\",\"middle_name\":\"\",\"birthday\":975802000000,\"user_level_name\":\"Owner\",\"user_level_acc\":\"owner\",\"email\":\"gemstar.machineshop@gmail.com\",\"user_name\":\"owner\",\"password\":\"%242a%2410%24BiJGeEcmV0xecIDDyUvQQufsUpTPLPkGSI2tBPbml24ogmX2WAd2O\",\"is_confirmed\":1,\"address\":\"Biñan City, Laguna\",\"contact_number\":\"\"}}', '2022-11-29 20:24:56'),
('tK-GBDiRv0lj6nJuG-OxGqsEb6GEt4JB', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T05:49:26.028Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 05:49:26'),
('toNTTWOLrw4ncAXAeMjXeIo5wavx7b5t', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T09:25:35.342Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 09:25:35'),
('tpVigIaRNIcfixDZ-wdzSonB3-sUGKA3', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T04:50:09.179Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 04:50:09'),
('TTCU3eD8kQkO1ZikVekz2kpI2wXO7Uya', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T04:39:44.040Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 04:39:44'),
('TteyPyvYY0-yz193q05JZxy-NaQKuu61', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T02:41:59.911Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 02:41:59'),
('TV2s1sf1IT3h0IVgLGhCjk0__ISAg5pD', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T15:47:48.906Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 15:47:48'),
('uJE_oIrv89TuTJqKqymQVRccXEJm7DZh', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T16:32:48.846Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 16:32:48'),
('Uw8J8X9I6iWjDUrq3sQ79Bz19QhUNmtP', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T06:24:31.186Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 06:24:31'),
('UXF2Pf50-z6RWzlFTo9fo7rp5MqVXGb0', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T11:46:48.073Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 11:46:48'),
('UyIivi3IEijTody_EP0pmYj_Ul-Fy7zv', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-27T09:01:43.854Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-27 09:01:43'),
('v0GmS0T8EzmwtpSCi8yu1zkqXQMFeXES', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-27T06:46:26.806Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"},\"userId\":\"1dfa4584-e597-4822-b065-e01ba29038dd\",\"user\":{\"users_id\":\"1dfa4584-e597-4822-b065-e01ba29038dd\",\"first_name\":\"Owner\",\"last_name\":\"Test\",\"middle_name\":\"\",\"birthday\":975802000000,\"user_level_name\":\"Owner\",\"user_level_acc\":\"owner\",\"email\":\"owner@mail.com\",\"user_name\":\"owner\",\"password\":\"%242a%2410%24BiJGeEcmV0xecIDDyUvQQufsUpTPLPkGSI2tBPbml24ogmX2WAd2O\",\"is_confirmed\":1,\"address\":\"Carmona, Cavite1\",\"contact_number\":\"\"}}', '2022-11-27 06:46:26'),
('v1oaizlpuLqwMGbQAQdms0OjMmKWYPJD', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T10:33:03.340Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 10:33:03'),
('VaHDedOgUlrEL5TWRLNmjko4uLDKgykH', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T08:41:46.726Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 08:41:46'),
('VbL9cSFd9AK8lmmOeMEWU9ukNr_PLNGd', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T03:21:39.857Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 03:21:39'),
('VoC7Jso45zunEWePU-Jo46fOX57SxNJf', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T16:28:51.381Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 16:28:51'),
('vSD7Dais-oXFk1BEJ4eHADL4TdmdV19b', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T16:48:51.622Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 16:48:51'),
('W-GOmkUpPH-8LvsDooqzNfmVc1k6UTaX', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T03:22:01.928Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 03:22:01'),
('W0Trf2iOVTSmNPAJYe8hhNYouYZjBHiS', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T03:21:40.179Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 03:21:40'),
('w9U4hcW3pZZzoVjwIcyvyES0kcli-Fck', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T16:32:48.900Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 16:32:48'),
('Wa0ju68xY9oFLNrJumEpOBtHLhdu9EHD', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T00:30:31.484Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 00:30:31'),
('wAruFBy-eDs51frOWPx0moz7XhxycHjw', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T05:49:26.611Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 05:49:26'),
('wkozGutdmafqQvgcq5j3AzTyR3s1dd8V', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T06:09:57.122Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 06:09:57'),
('wKSqKxWUudWFBWAJerxvg9luYIqUUfP7', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T07:00:50.302Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 07:00:50'),
('WOosfnrY37bq_AHr0Xwh9BBEzaMjDOmh', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T16:40:03.636Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 16:40:03'),
('WoyDKNyJ718TeznaFEcuTOL4Fgh7bKba', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T05:03:58.739Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 05:03:58'),
('wp5x0yDFgS0X5vRfSp4ru04-z-xahVtw', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T12:10:58.486Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 12:10:58'),
('WqYVqrsOLJcaS_sfvl_mTGapgVT6DO4-', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T12:32:54.848Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 12:32:54'),
('x-NRjtAPWOulWwzbEeyRSw5paKYGUQ2J', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T12:37:28.547Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 12:37:28'),
('X6fHtn9D__pyZGBCtsLFNbGhwK9E2fqW', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T12:23:36.187Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 12:23:36'),
('XFgtYFg9evApZbHqUvr0kMjjU3U5NCE4', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T16:14:20.415Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 16:14:20'),
('XglmlqluwMnhO_ZVW_ZTbVakHqy774D1', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-27T06:46:25.905Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-27 06:46:25'),
('Xnvn85EdaFBUv-AeeIVApwzYWDptTFbA', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T06:22:26.504Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 06:22:26'),
('XqH36uJQo_utJ9GJGd8CHFthgCPN4dyq', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T05:05:22.879Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 05:05:22'),
('yFSE0JafvEHJiR8P0gqUhAhGy1rVAYsm', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T03:18:24.196Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"},\"userId\":\"1dfa4584-e597-4822-b065-e01ba29038dd\",\"user\":{\"users_id\":\"1dfa4584-e597-4822-b065-e01ba29038dd\",\"first_name\":\"Owner\",\"last_name\":\"Test\",\"middle_name\":\"\",\"birthday\":975802000000,\"user_level_name\":\"Owner\",\"user_level_acc\":\"owner\",\"email\":\"owner@mail.com\",\"user_name\":\"owner\",\"password\":\"%242a%2410%24BiJGeEcmV0xecIDDyUvQQufsUpTPLPkGSI2tBPbml24ogmX2WAd2O\",\"is_confirmed\":1,\"address\":\"Carmona, Cavite1\",\"contact_number\":\"\"}}', '2022-11-28 03:20:12'),
('YH9uhJwCaBu3oroV-KGKyhZqUbNqY6zp', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T03:10:12.957Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 03:10:12'),
('YJfStREbYFgcJjPZhpYAlQK6JDwr2hnJ', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T05:04:20.334Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 05:04:20'),
('ZdoIu2AaM6kqSh7uBUsbvh4L-n-GOjoh', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T16:28:51.143Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 16:28:51'),
('ze_Ng72nHe9Pxrj7Z4V7D9MDaKKZ_0jq', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T06:33:31.357Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 06:33:31'),
('ZjKhBLrszkr0xaNlU1MKXAzDI4c-7arX', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T03:06:45.786Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 03:06:45'),
('zQgdqlD6ZX9X0jmvfU9xWxqSIMr7zJlm', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T20:23:17.187Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 20:23:17'),
('Zs1hPJncO9xIK9OxTEBDtnrORk8vEs9k', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T11:46:48.918Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 11:46:48'),
('ZTSBNAydpKppXbK0ye5cCWdOcGGLgGuM', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-28T01:46:14.320Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-28 01:46:14'),
('zuwDcTNrKVSaS5YWmKGKOXDUprqemjFG', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T09:25:36.890Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 09:25:36'),
('_6s-wEBSRlmy4W4o4H-PKFnxV_K7Nw33', '{\"cookie\":{\"originalMaxAge\":604800000,\"expires\":\"2022-11-29T11:52:39.749Z\",\"secure\":true,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"none\"}}', '2022-11-29 11:52:39');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `status_id` int(2) NOT NULL,
  `status_acr` varchar(10) NOT NULL,
  `status_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`status_id`, `status_acr`, `status_name`) VALUES
(1, 'todo', 'To Do'),
(2, 'pending', 'Pending'),
(3, 'in_progres', 'In Progress'),
(4, 'done', 'Done'),
(5, 'cancel', 'Cancelled');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `users_id` varchar(40) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `birthday` float NOT NULL,
  `user_level_id` int(1) NOT NULL DEFAULT 1,
  `email` varchar(100) NOT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `password` varchar(150) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT 1,
  `address` varchar(255) NOT NULL,
  `contact_number` varchar(16) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  `updated_at` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`users_id`, `first_name`, `last_name`, `middle_name`, `birthday`, `user_level_id`, `email`, `user_name`, `password`, `is_confirmed`, `address`, `contact_number`, `created_at`, `updated_at`) VALUES
('0732b1cb-4b75-4d74-a9a4-ffa0d08f2b40', 'Rusca', 'Insorio', '', -90633600000, 1, 'ruscainsorio@gmail.com', 'rusca', '%242a%2410%24iIUt6246JIhA5a3cuG5KhO90x.8kyjEcZcjhPShsFnegg4LQrS7WC', 1, 'Sta. Rosa City, Laguna', '09784561346', 1669006994934, 1669006994934),
('1dfa4584-e597-4822-b065-e01ba29038dd', 'Admin', '', '', 975802000000, 3, 'gemstar.machineshop@gmail.com', 'owner', '%242a%2410%24BiJGeEcmV0xecIDDyUvQQufsUpTPLPkGSI2tBPbml24ogmX2WAd2O', 1, 'Biñan City, Laguna', '', 1638467239936, 1638467239936),
('1fd0649a-1c8a-41c7-b4f0-0dd396dae71d', 'Gregorio', 'Hiyas', '', -498874000000, 2, 'gregoriohiyas@gmail.com', 'gregorio', '%242a%2410%24iIUt6246JIhA5a3cuG5KhO90x.8kyjEcZcjhPShsFnegg4LQrS7WC', 1, 'Biñan City, Laguna', '09198513245', 1669005561186, 1669005561186),
('20ee507a-603b-4072-94ae-51892d1dcfa7', 'Ariel', 'Reyes', '', 639014000000, 2, 'arielreyes@gmail.com', 'ariel', '%242a%2410%24iIUt6246JIhA5a3cuG5KhO90x.8kyjEcZcjhPShsFnegg4LQrS7WC', 1, 'Biñan City, Laguna', '09465432198', 1669005961292, 1669005961292),
('2d3ff114-840e-4114-8307-0a6054a0a641', 'Albert', 'Santos', '', 247709000000, 1, 'albertreyes@gmail.com', 'albert', '%242a%2410%24iIUt6246JIhA5a3cuG5KhO90x.8kyjEcZcjhPShsFnegg4LQrS7WC', 1, 'San Pedro City, Laguna', '09465213871', 1669006602219, 1669006602219),
('354f313d-8473-4b62-b116-7433f299ea1a', 'Dominic', 'Sanchez', 'Sato', 398909000000, 1, 'dominicss@yahoo.com', 'dominic', '%242a%2410%24a8.t9AptoVJCkP93bFSeaeBdZs..6Qm43Svqe1lIVLuLPn7uayoa.', 1, 'Carmona, Cavite', '09052651311', 1669025189159, 1669025189159),
('36dc8416-b9a9-4cf3-b21d-11d4ed006c6a', 'Eduardo', 'Jardenil', 'Malambut', 423792000000, 1, 'eduardomj@gmail.com', 'eduardo', '%242a%2410%24a8.t9AptoVJCkP93bFSeaeBdZs..6Qm43Svqe1lIVLuLPn7uayoa.', 1, 'Sta. Rosa, Laguna', '09567289010', 1669026128307, 1669026128307),
('37424d19-1187-4563-92e3-45ebb3e1f698', 'Noel', 'Sinon', '', 176688000000, 2, 'noelsinon@gmail.com', 'noel', '%242a%2410%24iIUt6246JIhA5a3cuG5KhO90x.8kyjEcZcjhPShsFnegg4LQrS7WC', 1, 'Biñan City, Laguna', '09154987621', 1669005824149, 1669005824149),
('3c0c1027-53ad-4e0f-a4d3-ecd1422edd68', 'Carl', 'Callo', 'Santiago', 398650000000, 1, 'carlsc@yahoo.com', 'carl', '%242a%2410%24a8.t9AptoVJCkP93bFSeaeBdZs..6Qm43Svqe1lIVLuLPn7uayoa.', 1, 'Calamba, Laguna', '04871461129', 1669027750989, 1669027750989),
('40095f92-c7a3-4e50-9008-d3e369e39c41', 'Kendrick Jonathan', 'Marcelo', 'Lao', 510538000000, 1, 'kendrickjlm@gmail.com', 'kendrick', '%242a%2410%24a8.t9AptoVJCkP93bFSeaeBdZs..6Qm43Svqe1lIVLuLPn7uayoa.', 1, 'Silang, Cavite', '09454775006', 1669024873170, 1669024873170),
('4d40efe8-1aee-4ea5-a502-49e862938796', 'Jayson', 'Armando', 'Dela Cruz', 801965000000, 1, 'jaysondca@gmail.com', 'jayson', '%242a%2410%24a8.t9AptoVJCkP93bFSeaeBdZs..6Qm43Svqe1lIVLuLPn7uayoa.', 1, 'Sta. Rosa, Laguna', '09663352241', 1669024554300, 1669024554300),
('64b2c523-9be8-4595-b282-9c84d64c22ec', 'Dave', 'Cruz', '', 525485000000, 1, 'davecruz@gmail.com', 'dave', '%242a%2410%24xrljCMCbtT34BXeV7fcNquU5Vev.o7Fs1bCxUHP1vZQ9G.o3ccrDy', 1, 'GMA, Cavite', '09786542316', 1669117258545, 1669117258545),
('70668d40-96ac-4b7b-be2b-d1f89e12b745', 'Ruben', 'Reyes', '', 75168000000, 1, 'rubenreyes@gmail.com', 'ruben', '%242a%2410%24iIUt6246JIhA5a3cuG5KhO90x.8kyjEcZcjhPShsFnegg4LQrS7WC', 1, 'Biñan City, Laguna', '09645215486', 1669006703024, 1669006703024),
('73d287a1-4179-49ae-8bff-a8e3448239aa', 'Jose', 'Grefalda', '', 946598000000, 2, 'josegrefalda@gmail.com', 'jose', '%242a%2410%24iIUt6246JIhA5a3cuG5KhO90x.8kyjEcZcjhPShsFnegg4LQrS7WC', 1, 'Biñan City, Laguna', '09985446231', 1669006110836, 1669006110836),
('81990470-4d9f-4572-9ea0-1361a714617e', 'Arnold', 'Quiambao', 'Santos', 582077000000, 1, 'arnoldsq@yahoo.com', 'arnold', '%242a%2410%24a8.t9AptoVJCkP93bFSeaeBdZs..6Qm43Svqe1lIVLuLPn7uayoa.', 1, 'Calamba, Laguna', '09517649801', 1669026294405, 1669026294405),
('859e3aff-1a5e-46c1-a87e-dc7d3fbe9679', 'Vicente', 'Bautista', 'Reyes', 761443000000, 1, 'vicenterb@yahoo.com', 'vicente', '%242a%2410%24a8.t9AptoVJCkP93bFSeaeBdZs..6Qm43Svqe1lIVLuLPn7uayoa.', 1, 'Binan, Laguna', '09056578161', 1669026665014, 1669026665014),
('94743c99-8cb5-4b02-aa1f-3814fea4b72d', 'Efrain', 'Castro', 'Tupaz', 295834000000, 1, 'efraintc@yahoo.com', 'efrain', '%242a%2410%24a8.t9AptoVJCkP93bFSeaeBdZs..6Qm43Svqe1lIVLuLPn7uayoa.', 1, 'Binan, Laguna', '09265143211', 1669025570379, 1669025570379),
('a7b247b8-5ec1-449e-8deb-330384f3cbb4', 'Dulcina', 'Mallari', 'Lacson', 543802000000, 1, 'dulcinalm@yahoo.com', 'dulcina', '%242a%2410%24a8.t9AptoVJCkP93bFSeaeBdZs..6Qm43Svqe1lIVLuLPn7uayoa.', 1, 'GMA, Cavite', '09215438790', 1669025914661, 1669025914661),
('bc14a6d8-02fd-45ac-98c1-36c6766bbde7', 'Celso', 'Villanueva', '', 117072000000, 1, 'celsovillanueva@gmail.com', 'celso', '%242a%2410%24iIUt6246JIhA5a3cuG5KhO90x.8kyjEcZcjhPShsFnegg4LQrS7WC', 1, 'Biñan City, Laguna', '09168749876', 1669006843173, 1669006843173),
('cafbb0f7-e3ac-490b-87ed-8c18366959b4', 'Gemmalyn', 'Atienza', 'Rodriguez', 356832000000, 1, 'gemmalynra@yahoo.com', 'gemmalyn', '%242a%2410%24a8.t9AptoVJCkP93bFSeaeBdZs..6Qm43Svqe1lIVLuLPn7uayoa.', 1, 'San Pedro, Laguna', '09157709051', 1669028147265, 1669028147265),
('df0b9194-6f75-4251-8ec7-10b3cbaa7937', 'Carlos Miguel', 'Rivera', 'Bautista', 338342000000, 1, 'carlosmiguelbr@yahoo.com', 'carlosmiguel', '%242a%2410%24a8.t9AptoVJCkP93bFSeaeBdZs..6Qm43Svqe1lIVLuLPn7uayoa.', 1, 'Cabuyao, Laguna', '09668646141', 1669027439720, 1669027439720),
('e809a32a-4769-45d2-8c34-17e256d35bab', 'Christian', 'Atienza', 'Leonardo', 561773000000, 1, 'christianla@yahoo.com', 'christian', '%242a%2410%24a8.t9AptoVJCkP93bFSeaeBdZs..6Qm43Svqe1lIVLuLPn7uayoa.', 1, 'Binan, Laguna', '09056686461', 1669027189188, 1669027189188),
('e949701c-87fb-479a-8bbc-42b3ddd91848', 'Chris', 'Martin', 'Anuyo', 282442000000, 1, 'chrisam@gmail.com', 'chris', '%242a%2410%24a8.t9AptoVJCkP93bFSeaeBdZs..6Qm43Svqe1lIVLuLPn7uayoa.', 1, 'Silang, Cavite', '09052677890', 1669027605753, 1669027605753),
('f6385a57-fbda-4b04-8f06-1d02f29837e3', 'Elaine', 'Gutierrez', 'Rodriguez', 227750000000, 1, 'elainerg@yahoo.com', 'elaine', '%242a%2410%24a8.t9AptoVJCkP93bFSeaeBdZs..6Qm43Svqe1lIVLuLPn7uayoa.', 1, 'Silang, Cavite', '09655643602', 1669027924584, 1669027924584),
('fe75330e-69c1-4e0e-85f4-51189decd782', 'Juliana', 'Rivera', 'Lopez', 551232000000, 1, 'julianalr@yahoo.com', 'juliana', '%242a%2410%24a8.t9AptoVJCkP93bFSeaeBdZs..6Qm43Svqe1lIVLuLPn7uayoa.', 1, 'Binan, Laguna', '09153215476', 1669028282657, 1669028282657);

-- --------------------------------------------------------

--
-- Table structure for table `user_level`
--

CREATE TABLE `user_level` (
  `user_level_id` int(1) NOT NULL,
  `user_level_name` varchar(50) NOT NULL,
  `user_level_acc` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_level`
--

INSERT INTO `user_level` (`user_level_id`, `user_level_name`, `user_level_acc`) VALUES
(1, 'Customer', 'csm'),
(2, 'Employee', 'emp'),
(3, 'Owner', 'owner');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`carousel_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`project_id`);

--
-- Indexes for table `project_file`
--
ALTER TABLE `project_file`
  ADD PRIMARY KEY (`project_file_id`);

--
-- Indexes for table `project_qoutation`
--
ALTER TABLE `project_qoutation`
  ADD PRIMARY KEY (`project_qoutation_id`);

--
-- Indexes for table `project_qoutation_detail`
--
ALTER TABLE `project_qoutation_detail`
  ADD PRIMARY KEY (`project_qoutation_detail_id`);

--
-- Indexes for table `project_status`
--
ALTER TABLE `project_status`
  ADD PRIMARY KEY (`project_status_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`services_id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`users_id`);

--
-- Indexes for table `user_level`
--
ALTER TABLE `user_level`
  ADD PRIMARY KEY (`user_level_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `status_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
