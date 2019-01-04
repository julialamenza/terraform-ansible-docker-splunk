#!/bin/bash
docker run --name splunk --hostname splunk -p 8000:8000 -p 10000:10000 -d -e "SPLUNK_START_ARGS=--accept-license" -v /opt/splunk/etc:/opt/splunk/etc -v /opt/splunk/var:/opt/splunk/var splunk/splunk:6.6.1
