hbase shell
create 'flight','finfo','fsch','delay';
list
put 'flight',1,'finfo:source','Mumbai'
put 'flight',1,'finfo:dest','Pune'
put 'flight',1,'finfo:year','2003'
put 'flight',1,'fsch:at','9'
put 'flight',1,'fsch:dt','11'
put 'flight',1,'delay:delay_mins','10'
put 'flight',2,'finfo:source','Nagar'
put 'flight',2,'finfo:dest','Pune'
put 'flight',2,'finfo:year','2004'
put 'flight',2,'fsch:at','10'
put 'flight',2,'fsch:dt','12'
put 'flight',2,'delay:delay_mins','20'
scan 'flight'
alter 'flight' ,{NAME=>'fcapacity'}
put 'flight',1,'fcapacity:size','500'
put 'flight',2,'fcapacity:size','600'
scan 'flight'
create 'dummy','dummyinfo';
list
TABLE                                                                                                                                                                                                                                        
dummy                                                                                                                                                                                                                                        
flight 
disable 'dummy'
drop 'dummy'
list
TABLE                                                                                                                                                                                                                                        
flight                    