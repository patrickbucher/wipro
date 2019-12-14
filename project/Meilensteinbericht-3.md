---
title: Bericht Meilenstein 3
subtitle: 'Wirtschaftsprojekt «px: PEAX Command Line Client»'
author: Patrick Bucher
date: 14.12.2019
---

# Sprint 3, Zwischenphase, Sprint 4

In Sprint 3 wurde zunächst der Quellcode dokumentiert (Story 11). Mit `go vet`
und `golint` wurden zwei Tools zur statischen Codeanalyse eingeführt, die
seither regelmässig zum Einsatz kommen, und nur noch selten Probleme meldeten.
Neu dazu kam der Befehl `px version`, der die aktuelle Version ausgibt (Story
12).  Der Rest des Sprints wurde einerseits für das Ansteuern der Endpoints
mittels generischer HTTP-Befehle (`POST`, `PUT`, usw.) verwendet (Stories
14-17), wodurch eine grosse Abdeckung der API erreicht werden konnte. Ausserdem
wurde das rekursive Hochladen von Ordnern mit Dokumenten umgesetzt (Story 18).
Release `v0.3.0` konnte am Sonntag, dem 1. Dezember freigegeben werden.

Zwischen den beiden Sprints wurden die Kapitel 3 (Methoden) und 5 (Umsetzung)
grösstenteils fertiggestellt. Die bestehenden Umsetzungsnotizen wurden
überarbeitet und ausformuliert. Rückmeldungen von Kollegen wurden aufgenommen,
konnten aber nicht mehr für die Sprint-Planung berücksichtigt werden.

Im verkürzten Sprint 4 wurden zunächst drei Bugs im Token-Handling behoben
(Story 19).  Danach wurde der Upload von Dokumentverzeichnissen verbessert. Neu
sind einerseits die Statusausgabe (Story 20) und das parallele Hochladen von
Dokumenten (Story 21), andererseits das automatische Tagging von Dokumenten
anhand der Verzeichnisstruktur (Story 22) ‒ ein Feature, das für verschiedenste
Benutzergruppen einen hohen Nutzen stiften dürfte. Der letzte im Rahmen des
Wirtschaftsprojekts erstellte Release `v0.4.0` wurde am Samstag, dem 14.
Dezember freigegeben.

# Fazit

Mit den generischen HTTP-Befehlen konnte ein grosser Teil der PEAX-API
abgedeckt ‒ und eines der Hauptziele des Projekts erfüllt werden. Es steht noch
eine Woche für den Abschluss der Dokumentation (Evaluation/Validierung,
Ausblick und Anhang) zur Verfügung. Im Backlog befinden sich verschiedene Ideen
zur Weiterentwicklung.
