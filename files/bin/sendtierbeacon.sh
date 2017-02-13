#!/bin/sh
LOGHOST="cerif.org"
LOGPORT="5000"
LOGTEXT="TIERBEACON/TIER/1.0#IM=$IMAGENAME#IV=$VERSION-$TIERVERSION#MT=$MAINTAINER#"
if [ -z "$TIER_BEACON_OPT_OUT" ]; then
  `logger -n $LOGHOST -P $LOGPORT -t TIERBEACON $LOGTEXT`
  echo `date`"; TIER beacon sent."
fi