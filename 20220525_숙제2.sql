문제2    
김유신씨가 보유하고 있는 마일리지 포인트로 얻을 수 있는 상품 중 가장 포인트가 높은 것은    
무엇인가?    

SELECT * FROM t_giftmem

SELECT * FROM t_giftpoint


SELECT *
FROM t_giftmem
WHERE name_vc='김유신'
--김유신 보유 포인트 확인

SELECT a.name_vc, a.point_nu, b.point_nu
FROM t_giftpoint a,
(SELECT *
FROM t_giftmem
WHERE name_vc='김유신')b
--김유신 보유 포인트 확인 및 얻을 수 있는 상품 확인 첫번째

SELECT max(a.point_nu)
FROM t_giftpoint a,
(SELECT *
FROM t_giftmem
WHERE name_vc='김유신')b
WHERE a.point_nu<=b.point_nu
--김유신 보유 포인트로 얻을 수 있는 상품 확인 두번째

SELECT name_vc, point_nu
FROM t_giftpoint
WHERE point_nu =
(SELECT max(a.point_nu)
FROM t_giftpoint a, t_giftmem b
WHERE a.point_nu<=b.point_nu
AND b.name_vc='김유신')
--최종 출력

 
