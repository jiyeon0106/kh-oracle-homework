SELECT * FROM t_orderbasket

--�Ǹų�¥, �ǸŰ���, �ǸŰ��� Ȯ��
SELECT indate_vc, qty_nu, price_nu
  FROM t_orderbasket

--group by�� ���. (�Ǹų�¥) 
SELECT indate_vc
  FROM t_orderbasket
GROUP BY indate_vc

SELECT indate_vc as "�Ǹų�¥"
  FROM t_orderbasket
GROUP BY indate_vc

--�� �ǸŰ��� Ȯ��
SELECT indate_vc as "�Ǹų�¥"
      ,SUM(qty_nu)||'��' as "�ǸŰ���"
  FROM t_orderbasket
GROUP BY indate_vc

--�ǸŰ��� �� Ȯ��
SELECT indate_vc as "�Ǹų�¥"
      ,SUM(qty_nu) ||'��' as "�ǸŰ���"
      ,SUM(price_nu) ||'��' as "�ǸŰ���"
  FROM t_orderbasket
GROUP BY indate_vc

--�� �ǸŰ��� Ȯ��
SELECT indate_vc as "�Ǹų�¥"
      ,SUM(qty_nu) ||'��' as "�ǸŰ���"
      ,SUM(price_nu*qty_nu) ||'��' as "�ǸŰ���"
  FROM t_orderbasket
GROUP BY indate_vc




