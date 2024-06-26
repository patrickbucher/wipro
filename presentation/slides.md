---
title: 'px: PEAX Command Line Client'
subtitle: Wirtschaftsprojekt (Herbstsemester 2019)
author: Patrick Bucher
---

# Ablauf

1. Systemkontext
2. Problemstellung
3. Lösungsansatz: Swiss Army Knive & Unix-Philosophie
4. Teststrategie
5. Umsetzung
6. Programmiersprache Go
7. Live-Demo

# Systemkontext

![Kontextdiagramm](kontextdiagramm-trans.png){height=240px}

# Problemstellung

    curl -X POST -H "Cache-Control: no-cache" \
        -H "Content-Type: application/x-www-form-urlencoded" \
        --data "grant_type=password&client_id=peax.portal& ⏎
        username=683.4839.1914.79&password=Geheim" \
        https://sv-idp-keycloak-test.osapps.peax.ch/auth/ ⏎
        realms/peax-id-test/protocol/openid-connect/token \
        | jq -r .access_token > access_token
    curl -X POST -H "Authorization: Bearer $(cat access_token)" \
        -H "Content-Type: multipart/form-data; charset=UTF-8" \
        -F "document=@document.pdf;type=application/pdf" \
        -F "@meta.json;type=application/json" \
        https://sv-oauth-proxy-test.osapps.peax.ch/document/ ⏎
        api/v3/account/683.4839.1914.79/collection/upload

# Lösungsansatz

    px login -e test -u patrick.bucher@stud.hslu.ch
    px upload document.pdf -meta metadata.json

# Swiss Army Knive

Git:

    git status
    git add *.sh
    git commit -m 'added shell scripts'

px:

    px login -e test -u john.doe@foobar.com -p topsecret1337
    px upload document.pdf
    px logout -a

# Unix-Philosophie 

Verwendung als interaktiver Befehl:

    px upload document.pdf

Verwendung im "Skript":

    px upload document.pdf | jq -r '.documentId' >> documentIds.txt

# Kompromiss

"hardcore":

    for doc in $(find /home/joe/docs -type f | grep -i '\.pdf$')
    do
        px upload "$doc" | jq -r '.documentId' >> documentIds.txt
    done

"casual":

    px upload -r /home/joe/docs > report.json

# Teststrategie

![Agile Testing Quadrants (https://lisacrispin.com/2011/11/08/using-the-agile-testing-quadrants/)](agile-testing-quadrants-trans.png){height=200px}

# Umsetzung

![Komponentendiagramm zu `px`](komponentendiagramm-trans.png){height=240px}

# Programmiersprache Go

![Go Gopher (https://blog.golang.org/gopher)](gopher.png){height=100px}

# Live-Demo

![Dennis Ritchie (links) und Ken Thompson (rechts) (http://genius.cat-v.org/ken-thompson/photos/ken-and-dennis-with-pdp11.jpg)](ritchie-thompson.jpg){height=200px}
