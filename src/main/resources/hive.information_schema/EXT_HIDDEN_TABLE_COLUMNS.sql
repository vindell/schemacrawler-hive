SELECT
  NULLIF(1, 1) AS TABLE_CATALOG,
  STRIP(COLUMNS.TABSCHEMA) AS TABLE_SCHEMA,
  STRIP(COLUMNS.TABNAME) AS TABLE_NAME,
  STRIP(COLUMNS.COLNAME) AS COLUMN_NAME
FROM
  SYSCAT.COLUMNS AS COLUMNS
WHERE
  COLUMNS.HIDDEN = 'I'
ORDER BY
  COLUMNS.TABSCHEMA,
  COLUMNS.TABNAME,
  COLUMNS.COLNAME
WITH UR 
