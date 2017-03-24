#!/bin/sh
# NVNAMESTARTSysop E-mailNVNAMEEND
# NVNAMEID 8610
# NVCOMMENTSTARTSend an e-mail to the system administrator using the configured e-mail address.
# No extra variables are needed for this notification method.NVCOMMENTEND
# NVCOMMENTID 6652

$NVHOME/util/nvsendmail -n
RTN=$?
if [ 0 != $RTN ]
then
#
# change the message environment variable to
# reflect what has happened and send logging
# and operator messages
#
  NVEVENTMSG="$NVHOME/util/nvsendmail failed in script $0"
  export NVEVENTMSG
  $NVHOME/util/nvsendopmsg -n
  $NVHOME/util/nvsendlogmessage -msg "$NVEVENTMSG"
fi

exit $RTN
