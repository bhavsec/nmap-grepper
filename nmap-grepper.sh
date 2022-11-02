echo "\nHTTP Service:"
cat $1 | grep "open  http"
cat $1 | grep "open  ssl/http"

echo "\nFTP Service:"
cat $1 | grep "open  ftp"

echo "\nSMB Service:"
cat $1 | grep -e "139/tcp  open" -e "445/tcp  open"

echo "\nSSH Service:"
cat $1 | grep "open  ssh"

echo "\nSQL Service:"
cat $1 | grep "open  mysql"
cat $1 | grep "open ms-sql-s"

echo "\nMSRPC Service:"
cat $1 | grep "open  msrpc"

echo "\nMail Service:"
cat $1 | grep "open  smtp"
cat $1 | grep "open  imap"

echo "\nTelnet Service:"
cat $1 | grep "23/tcp open  telnet"

echo "\nDNS Service:"
cat $1 | grep -e "53/tcp   open" -e "5353/udp open" -e "53/udp"
