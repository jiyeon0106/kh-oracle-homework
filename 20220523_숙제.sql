SELECT * FROM t_worktime

SELECT workcd_vc, time_nu, 
       RANK() OVER (ORDER BY time_nu DESC) AS TIME_RANK
FROM t_worktime

SELECT workcd_vc, time_nu, 
       RANK() OVER (ORDER BY time_nu DESC) AS RNK
FROM t_worktime