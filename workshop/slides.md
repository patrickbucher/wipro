---
title: 'px: PEAX Command Line Client'
subtitle: Wirtschaftsprojekt
author: Patrick Bucher
---

# Problemstellung

```bash
curl -X POST -H "Cache-Control: no-cache" \
    -H "Content-Type: application/x-www-form-urlencoded" \
    --data "grant_type=password&client_id=peax.portal& ⏎
    username=683.4839.1914.79&password=Geheim" \
    https://sv-idp-keycloak-test.osapps.peax.ch/auth/ ⏎
    realms/peax-id-test/protocol/openid-connect/token \
    | jq -r .access_token > access-token
curl -X POST -H "Authorization: Bearer $(cat access_token)" \
    -H "Content-Type: multipart/form-data; charset=UTF-8" \
    -F "document=@document.pdf;type=application/pdf" \
    -F "@meta.json;type=application/json" \
    https://sv-oauth-proxy-test.osapps.peax.ch/document/ ⏎
    api/v3/account/683.4839.1914.79/collection/upload
```

# Ziel

```bash
px login -e test -u patrick.bucher@stud.hslu.ch
px upload document.pdf -meta metadata.json
```

# Projektart

Software- und Produkt-Entwicklung

- Schwerpunkte
    - Software-Erstellung: `px` (_PEAX Command Line Client_)
    - Human Computer Interaction Design
- Vorgehensmodell
    - hybrid
    - inkrementell (Scrum)
    - mit fachlichen Meilensteinen

# Agile Testing Quadrants

![Agile Testing Quadrants (https://lisacrispin.com/2011/11/08/using-the-agile-testing-quadrants/)](agile-testing-quadrants.png){height=200px}

# Testkonzept

- Q1: Automated (lokal, CI-Umgebung)
    - Unit Tests
    - Component Tests
- Q2: Automated & Manual (persönlich, gegen API)
    - Skripts
    - Story Tests
- Q3: Manual (Mitarbeiter, gegen API)
    - Usability Testing
    - User Acceptance Testing
- Q4: Tools (lokal, CI-Umgebung)
    - Benchmarks
    - Linting
