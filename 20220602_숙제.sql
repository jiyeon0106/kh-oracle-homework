SELECT * FROM t_orderbasket

--판매날짜, 판매개수, 판매가격 확인
SELECT indate_vc, qty_nu, price_nu
  FROM t_orderbasket

--group by절 사용. (판매날짜) 
SELECT indate_vc
  FROM t_orderbasket
GROUP BY indate_vc

SELECT indate_vc as "판매날짜"
  FROM t_orderbasket
GROUP BY indate_vc

--총 판매개수 확인
SELECT indate_vc as "판매날짜"
      ,SUM(qty_nu)||'개' as "판매개수"
  FROM t_orderbasket
GROUP BY indate_vc

--판매가격 합 확인
SELECT indate_vc as "판매날짜"
      ,SUM(qty_nu) ||'개' as "판매개수"
      ,SUM(price_nu) ||'원' as "판매가격"
  FROM t_orderbasket
GROUP BY indate_vc

--총 판매가격 확인
SELECT indate_vc as "판매날짜"
      ,SUM(qty_nu) ||'개' as "판매개수"
      ,SUM(price_nu*qty_nu) ||'원' as "판매가격"
  FROM t_orderbasket
GROUP BY indate_vc




