 #!/bin/bash
# =====================================================




# Version mise à jour du script - pour pull request
# Script      : ping_check.sh
# Auteur      : Magali
# Description : Vérifie si une adresse IP (passerelle) est joignable via ping
# Usage       : ./ping_check.sh [adresse_ip]
# Exemple     : ./ping_check.sh 192.168.1.1
# =====================================================

# Vérifie que l'utilisateur a fourni une adresse IP
if [ -z "$1" ]; then
  echo "Usage : $0 [adresse_ip]"
  echo "Exemple : $0 192.168.1.1"
  exit 1
fi

adresse="$1"

echo "Ping en cours vers $adresse ..."

# Envoie 4 paquets ping
ping -c 4 "$adresse" > /dev/null 2>&1

# Résultat du test
if [ $? -eq 0 ]; then
  echo "Résultat : $adresse est accessible."
else
  echo "Résultat : $adresse est injoignable."
fi
