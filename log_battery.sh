!/bin/bash

# Plotting Battery Level rM tablet
# Codex Version 1309
# Wi Fi Off
# Auto Sleep Off
# Auto Shutdown Off

COUNTER=0
logfile="/home/root/mybattery.log"
basepath='/sys/devices/soc0/soc/2100000.aips-bus/21a0000.i2c/i2c-0/0-0055/power_supply/bq27441/'

capacity=`cat $basepath/charge_now`
capacity_full=`cat $basepath/charge_full`
while true; do # just keep running till battery runs out

	capacity=`cat $basepath/charge_now`
#	echo $capacity
	percent=`cat $basepath/capacity`
#	echo $percent
	voltage=`cat $basepath/voltage_now`
#	echo $voltage
	current=`cat $basepath/current_now`
#	echo $current
	temperature=`cat $basepath/temp`
#	echo $temperature 

	COUNTER=$[$COUNTER +1]
	line=$COUNTER","$capacity","$percent","$voltage","$current","$temperature 
	echo $line >> $logfile
	echo $line
#	sleep 1
#	Adjust the interval time here
	sleep 60
	#Take only one sample per minute
	
done
