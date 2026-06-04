# Lean & Mean Homeserver IaC

GitOps infrastructuur voor een geautomatiseerde, lichtgewicht 4K Media Server (max 4 kijkers).

## Beheer
Voer aanpassingen alleen door in GitHub. Rol uit via Ansible. 

## TRASH Guides Configuratie (Compressie zonder CPU)
Om H.265 optimalisatie toe te passen zonder server-rekenkracht:
1. Open Radarr en Sonarr.
2. Gebruik de TRASH Guides Custom Formats om `HEVC/x265` een score van +100 te geven.
3. Dit forceert de download-client om direct compacte, pre-gecomprimeerde video's te downloaden.

## Automatisering
Voeg dit toe aan de `crontab -e` van de root-gebruiker op de server om de back-up automatisch te laten verlopen:
`0 4 * * * /bin/bash /opt/homeserver-iac/scripts/backup.sh >> /var/log/restic.log 2>&1`