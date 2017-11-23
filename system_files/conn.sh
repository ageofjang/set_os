petasqld start /repo
petactl create db1
petactl release db1
petactl start db1
petasql -u monetdb -P petasql -d db1
