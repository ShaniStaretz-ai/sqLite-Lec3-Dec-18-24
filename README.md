# sqLite-Lec3-Dec-18-24
GROUP BY
## subjects learned:
* AUTOINCREMENT= constrain definition on column.
    always running forward, even on delete/failed insert 
* GROUP BY- to create groups by column name:
  * each return row is a group 
  * can add multiple paramters to do the group
  * the output data is about the group itself and not about the items in the group
  * if you want to filter with WHERE, need to add it before the GROUP BY:
    * this will filter first on all the rows and then make the groups.
  * if you want to filter the groups, according to the values of the groups, add HAVING after the GROUP BY.
  * FULL EXAMPLE:
    SELECT group columns
    FROM <table name>
    WHERE table conditions
    GROUP BY table column
    HAVING group column
* ASCending/DESCending - from small to big / from big to small 
* ROUND(number,2)- with return the number with 2 digits after the '.' 
* strftime('%Y-%M',sale_date) - return the year-moth from column sale_date (text)
  * '%Y'- must be capital letters
  * the parameter sale_date= must be in format of time explained in the output pattern:
    *  if sale_date= 'M/Y', the output pattern with be accordingly.
 
## extra subjects:
