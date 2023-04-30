#!/bin/bash

# Install required packages
pip install -r requirements.txt

# Create database tables using Flask shell
flask shell <<EOF
from app import db
db.create_all()
exit()
EOF

# Query database using SQLite
sqlite3 database.db <<EOF
select * from user;
.tables
.exit
EOF
