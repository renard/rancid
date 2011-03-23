#
# cron-jobs for rancid
#

MAILTO=""
#PATH=/var/lib/rancid/bin:/usr/bin:/bin
HOME=/var/lib/rancid
SHELL=/bin/bash
USER=rancid

# Purge old logs
47      0 * * *     rancid find /var/log/rancid/ -type f -mtime +30 -print0 | xargs -0 --no-run-if-empty rm -f

# Example for running rancid tasks
# Replace GROUP with the name of the group
# 0-59/15 * * * *     rancid PATH=/var/lib/rancid/bin:/usr/bin:/bin rancid-run GROUP

