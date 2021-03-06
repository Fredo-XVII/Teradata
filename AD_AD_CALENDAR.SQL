-- AD_AD_CALENDAR.SQL
-- conduct inner join on main query

SELECT CAL_1.GREG_D, CAL_1.ACCT_WK_DAY_I, CAL_1.PRYR_AD_WK_END_D, CAL_2.GREG_D AS LY_GREG_D
FROM PRODRPT_V.CAL_DATE_DIM_V AS CAL_1
LEFT JOIN PRODRPT_V.CAL_DATE_DIM_V AS CAL_2
 ON CAL_1.PRYR_AD_WK_END_D = CAL_2.ACCT_WK_END_D
 AND CAL_1.ACCT_WK_DAY_I = CAL_2.ACCT_WK_DAY_I
 
WHERE CAL_1.ACCT_YR_I BETWEEN 2016 AND 2019
ORDER BY CAL_1.GREG_D
