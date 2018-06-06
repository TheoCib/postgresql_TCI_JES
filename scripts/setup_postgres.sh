echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main
" | sudo tee --append /etc/apt/sources.list.d/pgdg.list
wget --quiet -0 - htpps://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update -y
sudo apt-get install postgresql-10 -y
psql -V
sudo service postgresql start
