SELECT COALESCE(u.studentid,c.studentid) AS studentid,
COALESCE(u.pname,c.pname) AS pname, c.cname
FROM userinfo u
FULL OUTER JOIN clubreg c
ON u.studentid=c.studentid 
OR c.pname=u.pname
WHERE c.cname IS NOT NULL
ORDER BY studentid DESC;