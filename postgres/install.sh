#!/bin/bash

export PGUSER=postgres
psql <<- SHELL
  CREATE DATABASE "Adventureworks";
  GRANT ALL PRIVILEGES ON DATABASE "Adventureworks" TO postgres;
SHELL
cd /data
psql -d Adventureworks < /data/install.sql
