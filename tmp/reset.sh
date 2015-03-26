#!/bin/bash

sudo docker stop tfs-gitlab  tfs-pgsql
sudo docker rm   tfs-gitlab  tfs-pgsql
sudo rm -fr $HOME/appstore/tfs/gitlab/data/*  
sudo rm -fr $HOME/appstore/tfs/gitlab/log/*  
sudo rm -fr $HOME/appstore/tfs/pgsql/*

sudo ./bin/pgsql.sh
sudo ./bin/gitlab.sh

sudo docker logs -f tfs-gitlab



