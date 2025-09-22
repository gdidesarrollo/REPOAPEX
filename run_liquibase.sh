#!/bin/bash
set -e

# Variables
LIQUIBASE_HOME="${GITHUB_WORKSPACE}/liquibase"
DB_ALIAS="${DB_ALIAS}"
DB_USER="${DB_USER}"
DB_PASSWORD="${DB_PASSWORD}"
CHANGELOG_FILE="changelog_001.sql"

# Ejecutar Liquibase
$LIQUIBASE_HOME/liquibase \
  --driver=oracle.jdbc.OracleDriver \
  --url="jdbc:oracle:thin:@${DB_ALIAS}" \
  --username="$DB_USER" \
  --password="$DB_PASSWORD" \
  --changeLogFile="$CHANGELOG_FILE" \
  update
