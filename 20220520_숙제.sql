1.1.�� �޿��� ������ 18�� ������ Ȧ�� �޿��� ������ 1/18�� ���޵ǰ�, ¦���޿��� ������ 2/18�� ���޵ȴٰ� �������� �� Ȧ�� �ް� ¦�� �޿� ���� �ݾ��� ��Ÿ���ÿ�.
SELECT ENAME, SAL/18, SAL*2/18
FROM EMP;


2.������ ���� �� �޿��� ����� 10������ ���޵ȴٸ�(¦������ 20����)���� ������ 
��� �ٲ��� �ۼ��� ���ÿ�.
SELECT ENAME, SAL/18+100000, SAL*2/18+100000
FROM EMP;


3.TEMP ���̺��� ��̰� NULL �� �ƴ� ����� ������ �о���ÿ�.
SELECT EMP_NAME, HOBBY
FROM TEMP
WHERE HOBBY IS NOT NULL;


4.TEMP ���̺��� ��̰� NULL�� ����� ��� HOBBY�� ���������̶�� ���� ġȯ�Ͽ� �������� �������� �״�� ���� �о���ÿ�.
SELECT EMP_NAME, NVL(HOBBY, '����') AS HOBBY
FROM TEMP;


5.TEMP�� �ڷ� �� HOBBY�� ���� NULL�� ����� ����ꡯ���� ġȯ���� �� HOBBY�� ������� ����� ������ �������� ������ �ۼ��Ͻÿ�.
SELECT EMP_NAME 
FROM TEMP
WHERE NVL(HOBBY, '���') = '���';


6.TEMP�� �ڷ� �� EMP_ID�� EMP_NAME�� ���� �������,���������� ǥ�õǾ� DISPLAY�ǵ��� COLUMN ALLIAS�� �ο��Ͽ� SELECT �Ͻÿ�.
SELECT EMP_ID AS "���", EMP_NAME AS "����"
FROM TEMP



7.TEMP�� �ڷḦ ���� ��(LEV)�� ASCENDING�ϸ鼭 ��������� �ٽ� ��� ������ 
DESCENDING�ϰ� �ϴ� ORDER BY�ϴ� ������ ����� ���ÿ�.
SELECT EMP_ID ��� , EMP_NAME ||'('||LEV||')' ����
FROM TEMP
ORDER BY EMP_ID