# 需要先建立ssh信任关系

while [[ true ]]; do
	echo `date` 'reconnect: '
	localip=`python getlocalip.py`
	echo "localip: ${localip}"
	ssh -R 0.0.0.0:8090:${localip}:8090 root@121.41.103.23
	echo `date` 'disconnected!!!'
	sleep 5
	#statements
done
