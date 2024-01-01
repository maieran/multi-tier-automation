for id in $(vagrant global-status --prune | grep running | awk '{print $1}');
	do vagrant halt $id;
done
