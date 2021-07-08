# csv2table

```
$ cat mydata.csv
Example CSV Data for conversion
Col1,Col2,Col3,Col4,Col5
Data1,Data2,Data3,Data4,Data5
$
$
$
$ ./csv2table mydata.csv
Columns: 5
+--------------------------------------+
|   Example CSV Data for conversion    |
+------+-------+-------+-------+-------+
|Col1  | Col2  | Col3  | Col4  | Col5  |
+------+-------+-------+-------+-------+
|Data1 | Data2 | Data3 | Data4 | Data5 |
+------+-------+-------+-------+-------+
$

DEMO 2

$ cat mydata.csv | csv2table
Columns: 5
+--------------------------------------+
|   Example CSV Data for conversion    |
+------+-------+-------+-------+-------+
|Col1  | Col2  | Col3  | Col4  | Col5  |
+------+-------+-------+-------+-------+
|Data1 | Data2 | Data3 | Data4 | Data5 |
+------+-------+-------+-------+-------+

DEMO 3

$ echo -e "Example CSV Data for conversion\n1,2,3,4,5\n6,7,8,9,10" | csv2table
Columns: 5
+--------------------------------+
|Example CSV Data for conversion |
+-----+------+-----+------+------+
|1    | 2    |3    | 4    |5     |
+-----+------+-----+------+------+
|6    | 7    |8    | 9    |10    |
+-----+------+-----+------+------+
```
