/*
Script to extract initials from the firstname containing two names

*/


select first_name,last_name, Trim(case 
                                when instr(first_name,' ',1)>0 then 
                                    concat(substr(first_name,1,1),Concat('.',Concat(substr(first_name,instr(first_name,' ',1)+1,1),Concat(' ',last_name))))
                                else 
                                     concat(substr(first_name,1,1),Concat(' ',last_name))
                                end) as "Full Name"
FROM employees;