#!/bin/sh

PROCS='dos2.pl stealth kaiten dos.pl exploit msfconsole ddos tfn-child tfn-daemon trinoo lool slap.pl brute pscan2 SpyEyeCollector trinity shaft vadimII
vadimii vadim2 vadimI xdestroy xshock udp.pl trash trash2 synsend synk synk7 synhose stream stream2 smurf5 smurf6 smack slice2 slice3 sl2
sl3 rc8 overdrop nestea juno da.sh bloop alpha udp2.pl udp test.pl slowaris';
for i in $PROCS; do
if [[ $(ps axu|grep -i "$i"|grep -v grep|awk '{ print $2 }') ]]; then
for F in $(ps axu|grep -i "$i"|grep -v grep|awk '{ print $2 }'); do

kill -9 $F;
done

echo "`date ` Abuser found issuing: # kill -9 $i" >> /var/log/abusers.log
fi
done

