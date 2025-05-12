echo  "==== Diagnostic reseau complet ===="
echo " 1 verification de la passerelle..."
bash ping-check.sh
echo "2 scan de ports sur 127.0.0.1..."
bash port-scan.sh 127.0.0.1

echo " 3 log de bande passante..."
bash bandwidth-log.sh

echo "==== fin du diagnostic ===="
