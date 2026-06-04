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
Backups via Restic (inclusief het inroosteren van een dagelijkse cronjob) worden volledig automatisch door Ansible geconfigureerd op de doelsever. Je hoeft zelf geen scripts of crontabs meer aan te raken.