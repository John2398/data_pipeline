#!/bin/bash

SUMMARY_LOG = $~/data_pipeline/logs/error_summary.log

TODAY = $(date '+%Y-%m-%d')
CRON_LOG = ~/data_pipeline/logs/cron.log

ERRORS = $(grep -Ei "error failed" "$CRON_LOG")

if [ -n "ERRORS" ]; then
	echo "Errors found in logsfor $TODAY:"
	echo "$ERRORS"

	{
		echo "[$TODAY] Errors detected:"
		echo "$ERRORS"
		echo "........."
	} >> "$SUMMARY_LOG"
else
	echo "No errors found in logs for $TODAY"
fi
