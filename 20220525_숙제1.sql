����1            
��ȭ Ƽ���� ���� �� �ִ� ����� ��ܰ� ���� ������ �ִ� ����Ʈ, ��ȭ Ƽ���� ����Ʈ            
�׸��� �� Ƽ���� ����� �� ���� ���� ����Ʈ�� ����Ͻÿ�.            


SELECT * FROM t_giftpoint

SELECT * FROM t_giftmem



SELECT giftid_vc, name_vc, point_nu
FROM t_giftpoint
WHERE name_vc = '��ȭƼ��' 
--��ȭ Ƽ�� ����Ʈ Ȯ��

SELECT *
FROM t_giftmem,
( SELECT name_vc, point_nu
FROM t_giftpoint
WHERE name_vc = '��ȭƼ��') 
--�ζ��κ� ���. ��ܿ��� ��ȭ Ƽ�� ��� ������ ��� Ȯ��.

SELECT *
FROM t_giftmem a,
(SELECT name_vc, point_nu 
FROM t_giftpoint
WHERE name_vc = '��ȭƼ��') b
WHERE a.point_nu>=b.point_nu 
--�ζ��κ� ���. ��ȭ Ƽ�� ��� ������ ��� ����.

SELECT a.name_vc, a.point_nu, b.point_nu, a.point_nu-b.point_nu 
FROM t_giftmem a,
(SELECT name_vc, point_nu 
FROM t_giftpoint
WHERE name_vc = '��ȭƼ��') b
WHERE a.point_nu>=b.point_nu
--�ζ��κ� ���. ��ȭ Ƽ�� ��� ������ ��� ���� �� ����� ���� ���� ����Ʈ ���

SELECT a.name_vc "�̸�", a.point_nu "����"
, b.point_nu "����", a.point_nu-b.point_nu "��������" 
FROM t_giftmem a,
(SELECT name_vc, point_nu 
FROM t_giftpoint
WHERE name_vc = '��ȭƼ��') b
WHERE a.point_nu>=b.point_nu
--���� ���