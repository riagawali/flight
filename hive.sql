hive
create external table flighthive (
    flight_id INT,
    delay_mins INT,
    size INT,
    source STRING,
    dest STRING,
    year INT,
    at INT,
    dt INT)
     STORED BY 'org.apache.hadoop.hive.hbase.HBaseStorageHandler'
     WITH SERDEPROPERTIES ( "hbase.columns.mapping" = ":key,delay:delay_mins,fcapacity:size,finfo:dest,finfo:source,finfo:year,fsch:at,fsch:dt")
    TBLPROPERTIES ("hbase.table.name" = "flight");

     SELECT * from flighthive;

      SELECT SUM(delay_mins) AS total_dep_delay FROM flighthive;

      SELECT AVG(delay_mins) AS avg_dep_delay FROM flighthive;

       create index flight_index 
     on table flighthive(delay_mins)
    as 'org.apache.hadoop.hive.ql.index.compact.CompactIndexHandler'
    with deferred rebuild;

    show index on flighthive;