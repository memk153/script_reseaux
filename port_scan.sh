if [ -z "$1"]; then echo "Usage: $0 <IP>"
exit 1
fi

TARGET=$1

PORTS=(22 80 443 8080 3306)

check_port {
nc -zv -w3 $TARGET $1 &> /dev/null
if [$? -eq 0]; then
echo "Port $1 ouvert"
else
echo¨"Port $1 fermé"
fi
}

for port in "${PORTS[@]}"; do
check_port $port
done
