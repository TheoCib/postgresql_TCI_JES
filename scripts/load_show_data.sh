#!/usr/bin/env bash

#On desable les trigger des tables jointures
psql --username=admin -d shows -c 'ALTER TABLE "show_follow" DISABLE TRIGGER ALL;'
psql --username=admin -d shows -c 'ALTER TABLE "episode_watch" DISABLE TRIGGER ALL;'
psql --username=admin -d shows -c 'ALTER TABLE "show_rating" DISABLE TRIGGER ALL;'

#On vide les tables
psql --username=admin -d shows -c "TRUNCATE shows CASCADE;"
psql --username=admin -d shows -c "TRUNCATE users CASCADE;"
psql --username=admin -d shows -c "TRUNCATE episodes CASCADE;"
psql --username=admin -d shows -c "TRUNCATE show_follow CASCADE;"
psql --username=admin -d shows -c "TRUNCATE episode_watch CASCADE;"
psql --username=admin -d shows -c "TRUNCATE show_rating CASCADE;"

#On peuple les tables
psql --username=admin -d shows -f sql/insert.sql

#On enable les trigger des tables jointures après le populate
psql --username=admin -d shows -c 'ALTER TABLE "show_follow" ENABLE TRIGGER ALL;'
psql --username=admin -d shows -c 'ALTER TABLE "episode_watch" ENABLE TRIGGER ALL;'
psql --username=admin -d shows -c 'ALTER TABLE "show_rating" ENABLE TRIGGER ALL;'
