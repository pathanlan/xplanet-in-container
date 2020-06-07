#!/bin/bash

cd /www/data
xplanet -output test.jpg -projection rectangular -num_times 1 -geometry 1920x1080

nginx -g "daemon off;"
