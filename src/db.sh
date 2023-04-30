#!/bin/bash

flask shell <<EOF
from app import db
db.create_all()
exit()
EOF