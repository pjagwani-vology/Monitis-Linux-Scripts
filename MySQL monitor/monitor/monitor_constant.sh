#!/bin/bash

# Declaration of monitor constants
declare -r HOST="127.0.0.1"			# host where located MySQL server
declare -r USER="root"				# MySQL server user name
declare -r PASSWORD="r00t"			# MySQL server user password

declare -r MONITOR_NAME="MySQL_$HOST" 		# name of custom monitor
declare -r MONITOR_TAG="MySQL"			# tag for custom monitor
declare -r MONITOR_TYPE="BASH_Monitor"		# type for custom monitor

# format of result params - name1:displayName1:uom1:Integer
declare -r P0="status:Status::3;receive:Received_kb_per_second::4;send:Sent_kb_per_second::4;insert:Inserts_per_second::4;select:Selects_per_second::4;update:Updates_per_second::4;delete:Deletes_per_second::4"
declare -r P1="queries:Queries_per_second::4;slow_queries:Slow_queries_per_monitor_time::2;thread_running:Threads_running::2;thread_connected:Threads_connected::2;Connections_usage:Connections_usage_percent::4;uptime:Uptime::3"

declare -r RESULT_PARAMS="$P0;$P1" 

declare -r RESP_DOWN="status:DOWN"
	
# format of additional params - name:displayName:uom:String
declare -r ADDITIONAL_PARAMS="details:Details::3"	
	
declare    DURATION=5	 			# information sending duration [min] (REPLACE by any desired value)
