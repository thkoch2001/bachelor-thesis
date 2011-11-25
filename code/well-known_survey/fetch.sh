#!/usr/bin/env sh
WORKDIR=`dirname $0`
HOSTFILE=$WORKDIR/hosts
HOSTS=`cat $HOSTFILE|grep -v "^[# ]"|cut -f 1 -d ' '`

for HOST in $HOSTS
do
  OUTBASE=$WORKDIR/`echo $HOST|tr . _`
  OUTBODY=${OUTBASE}.xml
  if [ -f $OUTBODY ]
  then
    echo $OUTBODY exists. Skipping host $HOST.
    continue
  fi
  echo fetching $HOST
  curl -v -o $OUTBODY \
    --location \
    --dump-header $OUTBASE.headers \
    --stderr - \
    "http://$HOST/.well-known/host-meta" >$OUTBASE.out
  xmlstarlet sel -t \
  -o "$HOST 	" \
  -m "//*[translate(local-name(),'LINK','link')='link']" \
  -v @rel -o "      " \
  $OUTBODY > $OUTBASE.rel
done