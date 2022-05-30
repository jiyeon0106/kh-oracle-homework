SELECT * FROM test02

--한화금액
SELECT cdate
      ,amt
      ,crate
      ,amt*crate as "한화금액"
  FROM test02
  
--전일 금액으로 계산하기
--구글링으로 전값을 리턴하는 leg함수 찾아 사용.

--실패 (이유-lag함수 order by에 잘못된 값 입력)
SELECT cdate
      ,amt
      ,crate
      ,amt*crate
      ,LAG (amt*crate) OVER (ORDER BY amt*crate) AS "한화금액"
  FROM test02
 
--실패 (이유- 위 실패한지 모르고 order by절 추가) 
SELECT cdate
      ,amt
      ,crate
      ,amt*crate
      ,LAG (amt*crate) OVER (ORDER BY amt*crate) AS "한화금액"
  FROM test02
ORDER BY cdate asc

--lag함수 전값 리턴 성공.
--crate 전값을 리턴하여 계산해야 하는데.. -실패
SELECT cdate
      ,amt
      ,crate
      ,amt*crate
      ,LAG (amt*crate) OVER (ORDER BY cdate) AS "한화금액"
  FROM test02
 
--재계산 
SELECT cdate
      ,amt
      ,crate
      ,amt*LAG(crate) OVER (ORDER BY cdate)
  FROM test02

SELECT cdate
      ,amt
      ,crate
      ,amt*LAG(crate) OVER (ORDER BY cdate) AS "한화금액"
  FROM test02
  
SELECT cdate
      ,amt
      ,crate
      ,TO_CHAR(amt*LAG(crate) OVER (ORDER BY cdate),'999,999,999')AS "한화금액"
  FROM test02
  
SELECT cdate
      ,amt
      ,crate
      ,TO_CHAR(amt*LAG(crate) OVER (ORDER BY cdate),'999,999,999')||'원' AS "한화금액"
  FROM test02

