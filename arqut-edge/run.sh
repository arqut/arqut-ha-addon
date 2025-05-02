#!/usr/bin/with-contenv bashio
set -e

DATA_DIR=$(bashio::config 'data_dir')
DB_DIR="$DATA_DIR/db"

if [ ! -d $DB_DIR ]; then
  mkdir -p $DB_DIR
  bashio::log.info "Create db dir $DB_DIR"
fi

bashio::log.info "Starting Aequt Edge with data_dir=$DATA_DIR ..."

ls $DATA_DIR -la

SME_DATA_DIR="$DATA_DIR" /arqut-edge --docker
