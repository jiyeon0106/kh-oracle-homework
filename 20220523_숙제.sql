SELECT * FROM t_worktime

SELECT workcd_vc, time_nu, 
       RANK() OVER (ORDER BY time_nu DESC) AS TIME_RANK
FROM t_worktime


--내림차순 랭크
SELECT workcd_vc, time_nu, 
       RANK() OVER (ORDER BY time_nu DESC) AS RNK
FROM t_worktime


--오름차순 랭크
SELECT workcd_vc, time_nu, 
       RANK() OVER (ORDER BY time_nu ) AS RNK
FROM t_worktime 