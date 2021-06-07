-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.4.17-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- 테이블 unoestellar.movieimg 구조 내보내기
CREATE TABLE IF NOT EXISTS `movieimg` (
  `m_index` int(11) DEFAULT NULL,
  `imgname` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 unoestellar.movieimg:~179 rows (대략적) 내보내기
DELETE FROM `movieimg`;
/*!40000 ALTER TABLE `movieimg` DISABLE KEYS */;
INSERT INTO `movieimg` (`m_index`, `imgname`) VALUES
	(1, '결백/poster.jpg'),
	(1, '결백/still1.jpg'),
	(1, '결백/still2.jpg'),
	(1, '결백/still3.jpg'),
	(1, '결백/still4.jpg'),
	(1, '결백/still5.jpg'),
	(1, '결백/still6.jpg'),
	(1, '결백/still7.jpg'),
	(2, '살아있다/poster.jpg'),
	(2, '살아있다/still1.jpg'),
	(2, '살아있다/still2.jpg'),
	(2, '살아있다/still3.jpg'),
	(2, '살아있다/still4.jpg'),
	(2, '살아있다/still5.jpg'),
	(3, '소리꾼/poster.jpg'),
	(3, '소리꾼/still1.jpg'),
	(3, '소리꾼/still2.jpg'),
	(3, '소리꾼/still3.jpg'),
	(3, '소리꾼/still4.jpg'),
	(3, '소리꾼/still5.jpg'),
	(4, '딥워터/poster.jpg'),
	(4, '딥워터/still1.jpg'),
	(4, '딥워터/still2.jpg'),
	(4, '딥워터/still3.jpg'),
	(4, '딥워터/still4.jpg'),
	(4, '딥워터/still5.jpg'),
	(5, '반도/poster.jpg'),
	(5, '반도/still1.jpg'),
	(5, '반도/still2.jpg'),
	(5, '반도/still3.jpg'),
	(5, '반도/still4.jpg'),
	(5, '반도/still5.jpg'),
	(6, '애니멀 크래커/poster.jpg'),
	(6, '애니멀 크래커/still1.jpg'),
	(6, '애니멀 크래커/still2.jpg'),
	(6, '애니멀 크래커/still3.jpg'),
	(6, '애니멀 크래커/still4.jpg'),
	(6, '애니멀 크래커/still5.jpg'),
	(6, '애니멀 크래커/still6.jpg'),
	(7, '테넷/poster.jpg'),
	(7, '테넷/still1.jpg'),
	(7, '테넷/still2.jpg'),
	(7, '테넷/still3.jpg'),
	(7, '테넷/still4.jpg'),
	(7, '테넷/still5.jpg'),
	(8, '에이바/poster.jpg'),
	(8, '에이바/still1.jpg'),
	(8, '에이바/still2.jpg'),
	(8, '에이바/still3.jpg'),
	(8, '에이바/still4.jpg'),
	(8, '에이바/still5.jpg'),
	(9, '온워드-단 하루의 기적/poster.jpg'),
	(9, '온워드-단 하루의 기적/still1.jpg'),
	(9, '온워드-단 하루의 기적/still2.jpg'),
	(9, '온워드-단 하루의 기적/still3.jpg'),
	(10, '뮬란-실사판/poster.jpg'),
	(10, '뮬란-실사판/still1.jpg'),
	(10, '뮬란-실사판/still2.jpg'),
	(10, '뮬란-실사판/still3.jpg'),
	(10, '뮬란-실사판/still4.jpg'),
	(10, '뮬란-실사판/still5.jpg'),
	(11, '돌멩이/poster.jpg'),
	(11, '돌멩이/still1.jpg'),
	(11, '돌멩이/still2.jpg'),
	(11, '돌멩이/still3.jpg'),
	(11, '돌멩이/still4.jpg'),
	(11, '돌멩이/still5.jpg'),
	(12, '삼진그룹 영어토익반/poster.jpg'),
	(12, '삼진그룹 영어토익반/still1.jpg'),
	(12, '삼진그룹 영어토익반/still2.jpg'),
	(12, '삼진그룹 영어토익반/still3.jpg'),
	(12, '삼진그룹 영어토익반/still4.jpg'),
	(12, '삼진그룹 영어토익반/still5.jpg'),
	(12, '삼진그룹 영어토익반/still6.jpg'),
	(13, '도굴/poster.jpg'),
	(13, '도굴/still1.jpg'),
	(13, '도굴/still2.jpg'),
	(13, '도굴/still3.jpg'),
	(13, '도굴/still4.jpg'),
	(14, '내가 죽던 날/poster.jpg'),
	(14, '내가 죽던 날/still1.jpg'),
	(14, '내가 죽던 날/still2.jpg'),
	(14, '내가 죽던 날/still3.jpg'),
	(14, '내가 죽던 날/still4.jpg'),
	(14, '내가 죽던 날/still5.jpg'),
	(15, '마리 퀴리/poster.jpg'),
	(15, '마리 퀴리/still1.jpg'),
	(15, '마리 퀴리/still2.jpg'),
	(15, '마리 퀴리/still4.jpg'),
	(15, '마리 퀴리/still5.jpg'),
	(16, '조제/poster.jpg'),
	(16, '조제/still1.jpg'),
	(16, '조제/still2.jpg'),
	(16, '조제/still3.jpg'),
	(16, '조제/still4.jpg'),
	(16, '조제/still5.jpg'),
	(17, '원더 우먼 1984/poster.jpg'),
	(17, '원더 우먼 1984/still1.jpg'),
	(17, '원더 우먼 1984/still2.jpg'),
	(17, '원더 우먼 1984/still3.jpg'),
	(17, '원더 우먼 1984/still4.jpg'),
	(17, '원더 우먼 1984/still5.jpg'),
	(18, '완벽한 가족/poster.jpg'),
	(18, '완벽한 가족/still1.jpg'),
	(18, '완벽한 가족/still2.jpg'),
	(18, '완벽한 가족/still3.jpg'),
	(18, '완벽한 가족/still4.jpg'),
	(18, '완벽한 가족/still5.jpg'),
	(19, '소울/poster.jpg'),
	(19, '소울/still1.jpg'),
	(19, '소울/still2.jpg'),
	(19, '소울/still3.jpg'),
	(19, '소울/still4.jpg'),
	(19, '소울/still5.jpg'),
	(20, '귀멸의 칼날-무한열차편/poster.jpg'),
	(20, '귀멸의 칼날-무한열차편/still1.jpg'),
	(20, '귀멸의 칼날-무한열차편/still1.jpg'),
	(20, '귀멸의 칼날-무한열차편/still1.jpg'),
	(20, '귀멸의 칼날-무한열차편/still1.jpg'),
	(20, '귀멸의 칼날-무한열차편/still1.jpg'),
	(21, '빛과 철/poster.jpg'),
	(21, '빛과 철/still1.jpg'),
	(21, '빛과 철/still2.jpg'),
	(21, '빛과 철/still3.jpg'),
	(21, '빛과 철/still4.jpg'),
	(22, '최면/poster.jpg'),
	(22, '최면/still1.jpg'),
	(22, '최면/still2.jpg'),
	(22, '최면/still3.jpg'),
	(22, '최면/still4.jpg'),
	(22, '최면/still5.jpg'),
	(23, '자산어보/poster.jpg'),
	(23, '자산어보/still1.jpg'),
	(23, '자산어보/still2.jpg'),
	(23, '자산어보/still3.jpg'),
	(23, '자산어보/still4.jpg'),
	(23, '자산어보/still5.jpg'),
	(23, '자산어보/still6.jpg'),
	(24, '유다 그리고 블랙 메시아/poster.jpg'),
	(24, '유다 그리고 블랙 메시아/still1.jpg'),
	(24, '유다 그리고 블랙 메시아/still2.jpg'),
	(24, '유다 그리고 블랙 메시아/still3.jpg'),
	(24, '유다 그리고 블랙 메시아/still4.jpg'),
	(24, '유다 그리고 블랙 메시아/still5.jpg'),
	(24, '유다 그리고 블랙 메시아/still6.jpg'),
	(24, '유다 그리고 블랙 메시아/still7.jpg'),
	(24, '유다 그리고 블랙 메시아/still8.jpg'),
	(25, '비와 당신의 이야기/poster.jpg'),
	(25, '비와 당신의 이야기/still1.jpg'),
	(25, '비와 당신의 이야기/still2.jpg'),
	(25, '비와 당신의 이야기/still3.jpg'),
	(25, '비와 당신의 이야기/still4.jpg'),
	(25, '비와 당신의 이야기/still5.jpg'),
	(25, '비와 당신의 이야기/still6.jpg'),
	(26, '분노의 질주-더 얼티메이트/poster.jpg'),
	(26, '분노의 질주-더 얼티메이트/still1.jpg'),
	(26, '분노의 질주-더 얼티메이트/still2.jpg'),
	(26, '분노의 질주-더 얼티메이트/still3.jpg'),
	(26, '분노의 질주-더 얼티메이트/still4.jpg'),
	(26, '분노의 질주-더 얼티메이트/still5.jpg'),
	(26, '분노의 질주-더 얼티메이트/still6.jpg'),
	(27, '크루엘라/poster.jpg'),
	(27, '크루엘라/still1.jpg'),
	(27, '크루엘라/still2.jpg'),
	(27, '크루엘라/still3.jpg'),
	(27, '크루엘라/still4.jpg'),
	(28, '캐시트럭/poster.jpg'),
	(28, '캐시트럭/still1.jpg'),
	(28, '캐시트럭/still2.jpg'),
	(28, '캐시트럭/still3.jpg'),
	(28, '캐시트럭/still4.jpg'),
	(28, '캐시트럭/still5.jpg'),
	(28, '캐시트럭/still6.jpg'),
	(28, '캐시트럭/still7.jpg'),
	(29, '컨저링 3-악마가 시켰다/poster.jpg'),
	(29, '컨저링 3-악마가 시켰다/still1.jpg'),
	(30, '그 여름, 가장 차가웠던/poster.jpg'),
	(30, '그 여름, 가장 차가웠던/still1.jpg'),
	(30, '그 여름, 가장 차가웠던/still2.jpg'),
	(31, '콰이어트 플레이스2/poster.jpg'),
	(31, '콰이어트 플레이스2/still1.jpg'),
	(31, '콰이어트 플레이스2/still2.jpg'),
	(31, '콰이어트 플레이스2/still3.jpg'),
	(31, '콰이어트 플레이스2/still4.jpg'),
	(32, '킬러의 보디가드2/poster.jpg'),
	(32, '킬러의 보디가드2/still1.jpg'),
	(32, '킬러의 보디가드2/still2.jpg'),
	(32, '킬러의 보디가드2/still3.jpg'),
	(32, '킬러의 보디가드2/still4.jpg'),
	(32, '킬러의 보디가드2/still5.jpg');
/*!40000 ALTER TABLE `movieimg` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
