echo  "==== Diagnostic reseau complet ===="
echo "  verification de la passerelle..."
bash ping-check.sh
echo " scan de ports sur 127.0.0.1..."
bash port-scan.sh 127.0.0.1

echo "  log de bande passante..."
bash bandwidth-log.sh

echo "==== fin du diagnostic ===="
