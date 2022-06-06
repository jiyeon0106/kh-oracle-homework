select * from test11

--rownum을 사용하여 fre, sup, jun, sen 4개의 컬럼을 4개의 로우로 변경하기
select rownum no
  from test11
  
select rownum no
  from test11
 where rownum<5
 
select *
  from test11
      ,(select rownum no
        from test11
        where rownum<5)
               
--변경한 4개의 로우에 decode를 이용, 결과값 적용
select coll
      ,dept
      ,decode(no,1,'1학년',2,'2학년',3,'3학년',4,'4학년')
  from test11
      ,(select rownum no
        from test11
        where rownum<5)
        
select coll
      ,dept
      ,decode(no,1,'1학년',2,'2학년',3,'3학년',4,'4학년') key3
  from test11
      ,(select rownum no
        from test11
        where rownum<5)
        

--결과값에 학년별 인원수 적용
select coll
      ,dept
      ,decode(no,1,'1학년',2,'2학년',3,'3학년',4,'4학년') key3
      ,decode(no,1,fre,2,sup,3,jun,4,sen)
  from test11
      ,(select rownum no
        from test11
        where rownum<5)
        
select coll
      ,dept
      ,decode(no,1,'1학년',2,'2학년',3,'3학년',4,'4학년') key3
      ,decode(no,1,fre,2,sup,3,jun,4,sen) key4
  from test11
      ,(select rownum no
        from test11
        where rownum<5) 
        
        
--group by절, order by절 사용하여 정렬      
select coll
      ,dept
      ,decode(no,1,'1학년',2,'2학년',3,'3학년',4,'4학년') key3
      ,decode(no,1,fre,2,sup,3,jun,4,sen) key4
  from test11
      ,(select rownum no
        from test11
        where rownum<5)
group by coll
      ,dept
      ,decode(no,1,'1학년',2,'2학년',3,'3학년',4,'4학년') 
      ,decode(no,1,fre,2,sup,3,jun,4,sen)
      
select coll
      ,dept
      ,decode(no,1,'1학년',2,'2학년',3,'3학년',4,'4학년') key3
      ,decode(no,1,fre,2,sup,3,jun,4,sen) key4
  from test11
      ,(select rownum no
        from test11
        where rownum<5)
group by coll
        ,dept
        ,decode(no,1,'1학년',2,'2학년',3,'3학년',4,'4학년') 
        ,decode(no,1,fre,2,sup,3,jun,4,sen)
order by coll
        ,dept
        ,decode(no,1,'1학년',2,'2학년',3,'3학년',4,'4학년') 
        ,decode(no,1,fre,2,sup,3,jun,4,sen)


