# Disaster Recovery Gids

1. **Bare Metal:** Installeer Debian op de nieuwe Intel N100.
2. **Setup:** Installeer Git & Ansible op je eigen laptop. Clone deze repo.
3. **Schijven:** Vraag met `sudo blkid` op de server de nieuwe UUID's op van de harde schijven en USB-stick. Werk `ansible/inventory/group_vars/all.yml` bij.
4. **Wachtwoord:** Maak lokaal een `.vault_pass` bestand aan.
5. **Restore:** Voer eenmalig `/scripts/restore.sh` uit vanaf de USB-stick op de server.
6. **Deploy:** Typ op je laptop in de `ansible` map: `ansible-playbook -i inventory/hosts.yml site.yml --vault-password-file ~/.vault_pass`