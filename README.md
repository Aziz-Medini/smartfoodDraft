# Donatily

**Donatily** est une plateforme SaaS qui met en relation les commerces avec les associations et les clubs solidaires afin de faciliter la redistribution des produits invendus, des dons et des ressources essentielles.

Les commerçants peuvent proposer leurs surplus ou leurs produits à prix solidaires, tandis que les associations peuvent souscrire à des abonnements, réserver les produits disponibles et organiser leur collecte et leur distribution.

### Objectifs

- Réduire le gaspillage en valorisant les produits invendus.
- Faciliter l'accès aux ressources essentielles pour les personnes dans le besoin.
- Renforcer les partenariats entre les commerces et les associations.
- Encourager la solidarité et développer l'économie circulaire en Tunisie.

---

## Architecture AWS (3-tiers, multi-AZ)

L'infrastructure repose sur une architecture AWS haute disponibilité :

- **Cognito / WAF** → **ALB** public (Internet Gateway)
- **Subnets publics** (2 AZ) : NAT Gateway + instances frontend (Auto Scaling Group)
- **Subnets privés** (2 AZ) : instances backend (Auto Scaling Group) avec sortie via NAT
- **Subnet privé DB** : RDS avec sauvegarde automatique → S3 (Backup)
- **S3 Gateway Endpoint** : accès S3 depuis le VPC sans traverser Internet

---

## Semaine L3 — réseau et socle de calcul

- VPC multi-AZ, routage, NAT régional, security groups, **une** instance frontend privée
- Dépôt en **modules** Terraform
- [Stratégie d'état](docs/etat-terraform.md)
- [Justification NAT §5.3](docs/acces-sortant-nat.md)
- Script de destruction : `scripts/destroy.ps1`

Voir `terraform/README.md` pour `init` / `apply`.
