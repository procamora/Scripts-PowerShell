$IP="192.168.1.20"
$USER="ubnt"
$PASS="ubnt"

echo 'y' | & 'C:\Program Files (x86)\plink.exe' -ssh $ip -l $USER -pwd $PASS "echo 'echo \"<option value=\"511\">Compliance Test</option>\" >> /etc/ccodes.inc' > /etc/persistent/rc.poststart && chmod +x /etc/persistent/rc.poststart && cfgmtd -w -p /etc/ && reboot"


echo 'echo "<option value=\"511\">Compliance Test</option>" >> /etc/ccodes.inc' > /etc/persistent/rc.poststart && chmod +x /etc/persistent/rc.poststart && cfgmtd -w -p /etc/ && reboot