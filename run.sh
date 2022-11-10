#!/bin/bash

cd /home/cs6400-2022-03-Team044/
npm install
service postgresql start
service postgresql initdb
service postgresql start
sudo -u postgres psql -c 'create database cs6400;'
sudo -u postgres psql -d cs6400  -a -f Phase2/team044_p2_schema.sql


