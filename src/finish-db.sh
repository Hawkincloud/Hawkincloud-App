#!/bin/bash

sqlite3 database.db <<EOF
select * from user;
.tables
.exit
EOF