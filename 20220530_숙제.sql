SELECT * FROM test02

--��ȭ�ݾ�
SELECT cdate
      ,amt
      ,crate
      ,amt*crate as "��ȭ�ݾ�"
  FROM test02
  
--���� �ݾ����� ����ϱ�
--���۸����� ������ �����ϴ� leg�Լ� ã�� ���.

--���� (����-lag�Լ� order by�� �߸��� �� �Է�)
SELECT cdate
      ,amt
      ,crate
      ,amt*crate
      ,LAG (amt*crate) OVER (ORDER BY amt*crate) AS "��ȭ�ݾ�"
  FROM test02
 
--���� (����- �� �������� �𸣰� order by�� �߰�) 
SELECT cdate
      ,amt
      ,crate
      ,amt*crate
      ,LAG (amt*crate) OVER (ORDER BY amt*crate) AS "��ȭ�ݾ�"
  FROM test02
ORDER BY cdate asc

--lag�Լ� ���� ���� ����.
--crate ������ �����Ͽ� ����ؾ� �ϴµ�.. -����
SELECT cdate
      ,amt
      ,crate
      ,amt*crate
      ,LAG (amt*crate) OVER (ORDER BY cdate) AS "��ȭ�ݾ�"
  FROM test02
 
--���� 
SELECT cdate
      ,amt
      ,crate
      ,amt*LAG(crate) OVER (ORDER BY cdate)
  FROM test02

SELECT cdate
      ,amt
      ,crate
      ,amt*LAG(crate) OVER (ORDER BY cdate) AS "��ȭ�ݾ�"
  FROM test02
  
SELECT cdate
      ,amt
      ,crate
      ,TO_CHAR(amt*LAG(crate) OVER (ORDER BY cdate),'999,999,999')AS "��ȭ�ݾ�"
  FROM test02
  
SELECT cdate
      ,amt
      ,crate
      ,TO_CHAR(amt*LAG(crate) OVER (ORDER BY cdate),'999,999,999')||'��' AS "��ȭ�ݾ�"
  FROM test02

