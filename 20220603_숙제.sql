select * from test11

--rownum�� ����Ͽ� fre, sup, jun, sen 4���� �÷��� 4���� �ο�� �����ϱ�
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
               
--������ 4���� �ο쿡 decode�� �̿�, ����� ����
select coll
      ,dept
      ,decode(no,1,'1�г�',2,'2�г�',3,'3�г�',4,'4�г�')
  from test11
      ,(select rownum no
        from test11
        where rownum<5)
        
select coll
      ,dept
      ,decode(no,1,'1�г�',2,'2�г�',3,'3�г�',4,'4�г�') key3
  from test11
      ,(select rownum no
        from test11
        where rownum<5)
        

--������� �г⺰ �ο��� ����
select coll
      ,dept
      ,decode(no,1,'1�г�',2,'2�г�',3,'3�г�',4,'4�г�') key3
      ,decode(no,1,fre,2,sup,3,jun,4,sen)
  from test11
      ,(select rownum no
        from test11
        where rownum<5)
        
select coll
      ,dept
      ,decode(no,1,'1�г�',2,'2�г�',3,'3�г�',4,'4�г�') key3
      ,decode(no,1,fre,2,sup,3,jun,4,sen) key4
  from test11
      ,(select rownum no
        from test11
        where rownum<5) 
        
        
--group by��, order by�� ����Ͽ� ����      
select coll
      ,dept
      ,decode(no,1,'1�г�',2,'2�г�',3,'3�г�',4,'4�г�') key3
      ,decode(no,1,fre,2,sup,3,jun,4,sen) key4
  from test11
      ,(select rownum no
        from test11
        where rownum<5)
group by coll
      ,dept
      ,decode(no,1,'1�г�',2,'2�г�',3,'3�г�',4,'4�г�') 
      ,decode(no,1,fre,2,sup,3,jun,4,sen)
      
select coll
      ,dept
      ,decode(no,1,'1�г�',2,'2�г�',3,'3�г�',4,'4�г�') key3
      ,decode(no,1,fre,2,sup,3,jun,4,sen) key4
  from test11
      ,(select rownum no
        from test11
        where rownum<5)
group by coll
        ,dept
        ,decode(no,1,'1�г�',2,'2�г�',3,'3�г�',4,'4�г�') 
        ,decode(no,1,fre,2,sup,3,jun,4,sen)
order by coll
        ,dept
        ,decode(no,1,'1�г�',2,'2�г�',3,'3�г�',4,'4�г�') 
        ,decode(no,1,fre,2,sup,3,jun,4,sen)


