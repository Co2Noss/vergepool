#!/bin/bash

PHP_CLI='php -d max_execution_time=120'

DIR=/var/yaamp/web
cd ${DIR}

date
echo started in ${DIR}

while true; do
        ${PHP_CLI} runconsole.php cronjob/run
        sleep 90
done
exec bash

