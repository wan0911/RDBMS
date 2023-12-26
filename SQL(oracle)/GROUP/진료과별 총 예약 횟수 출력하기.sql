-- 22년 5월 / 진료과코드별 / 환자 수, 진료과 코드


SELECT MCDP_CD "진료과 코드", COUNT(*) "5월예약건수"
FROM APPOINTMENT 
WHERE TO_CHAR(APNT_YMD, 'YYYYMM') LIKE '202205%'
GROUP BY MCDP_CD
ORDER BY 2, 1