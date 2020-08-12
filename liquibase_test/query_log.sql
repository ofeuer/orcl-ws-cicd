set linesize 120
column AUTHOR format a10
column FILENAME format a20
column TAG format a15
column COMMENTS format a50

select AUTHOR, FILENAME, ORDEREXECUTED, TAG, COMMENTS from DATABASECHANGELOG order by 3;

exit;
