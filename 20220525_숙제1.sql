문제1            
영화 티켓을 받을 수 있는 사람의 명단과 현재 가지고 있는 포인트, 영화 티켓의 포인트            
그리고 그 티켓을 사용한 후 남은 예상 포인트를 출력하시오.            


SELECT * FROM t_giftpoint

SELECT * FROM t_giftmem



SELECT giftid_vc, name_vc, point_nu
FROM t_giftpoint
WHERE name_vc = '영화티켓' 
--영화 티켓 포인트 확인

SELECT *
FROM t_giftmem,
( SELECT name_vc, point_nu
FROM t_giftpoint
WHERE name_vc = '영화티켓') 
--인라인뷰 사용. 명단에서 영화 티켓 사용 가능한 사람 확인.

SELECT *
FROM t_giftmem a,
(SELECT name_vc, point_nu 
FROM t_giftpoint
WHERE name_vc = '영화티켓') b
WHERE a.point_nu>=b.point_nu 
--인라인뷰 사용. 영화 티켓 사용 가능한 사람 적용.

SELECT a.name_vc, a.point_nu, b.point_nu, a.point_nu-b.point_nu 
FROM t_giftmem a,
(SELECT name_vc, point_nu 
FROM t_giftpoint
WHERE name_vc = '영화티켓') b
WHERE a.point_nu>=b.point_nu
--인라인뷰 사용. 영화 티켓 사용 가능한 사람 적용 후 사용후 남은 예상 포인트 출력

SELECT a.name_vc "이름", a.point_nu "보유"
, b.point_nu "적용", a.point_nu-b.point_nu "남은예상" 
FROM t_giftmem a,
(SELECT name_vc, point_nu 
FROM t_giftpoint
WHERE name_vc = '영화티켓') b
WHERE a.point_nu>=b.point_nu
--최종 출력