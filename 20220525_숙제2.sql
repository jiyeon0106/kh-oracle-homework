����2    
�����ž��� �����ϰ� �ִ� ���ϸ��� ����Ʈ�� ���� �� �ִ� ��ǰ �� ���� ����Ʈ�� ���� ����    
�����ΰ�?    

SELECT * FROM t_giftmem

SELECT * FROM t_giftpoint


SELECT *
FROM t_giftmem
WHERE name_vc='������'
--������ ���� ����Ʈ Ȯ��

SELECT a.name_vc, a.point_nu, b.point_nu
FROM t_giftpoint a,
(SELECT *
FROM t_giftmem
WHERE name_vc='������')b
--������ ���� ����Ʈ Ȯ�� �� ���� �� �ִ� ��ǰ Ȯ�� ù��°

SELECT max(a.point_nu)
FROM t_giftpoint a,
(SELECT *
FROM t_giftmem
WHERE name_vc='������')b
WHERE a.point_nu<=b.point_nu
--������ ���� ����Ʈ�� ���� �� �ִ� ��ǰ Ȯ�� �ι�°

SELECT name_vc, point_nu
FROM t_giftpoint
WHERE point_nu =
(SELECT max(a.point_nu)
FROM t_giftpoint a, t_giftmem b
WHERE a.point_nu<=b.point_nu
AND b.name_vc='������')
--���� ���

 
