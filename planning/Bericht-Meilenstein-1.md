---
title: Bericht Meilenstein 1
subtitle: Wirtschaftsprojekt
author: Patrick Bucher
---

# Vorgeschichte 

Das Wirtschaftsprojekt beginnt zwar erst mit dem Herbstsemester mitte September, das Projekt `px` (_PEAX Command Line Client_) begleitet mich jedoch schon durch das ganze Jahr, wenn nicht schon länger: Im Rahmen meiner Berufstätigkeit als Backend-Entwickler bei PEAX fiel mir immer wieder auf, dass das Ansprechen der API mit Tools wie Postman, `curl` und `httpie` nicht befriedigend ist.

Im Rahmen des firmeninternen Ideation-Prozesses schlug ich zu Beginn des Jahres vor, einen Prototyp zu entwickeln, der das vereinfachte Ansprechen der PEAX API über ein Kommandozeilenprogramm demonstrieren soll. Das Ideation-Gremium gewährte mir schliesslich 60 Arbeitsstunden für die Entwicklung eines Prototypen, und wir einigten uns auf Kriterien (Anzahl Aufrufe pro Entwickler, geschätzte Zeitersparnis, Feedback der Entwickler) zur Validierung desselben.

Mehr als ca. 20 Arbeitsstunden konnte ich aufgrund anderer Aufgaben nicht investieren, sodass nur ein abgespeckter Protoyp an die Teamkollegen ausgeliefert werden konnte. Die «harte» Validierung (Aufrufe und Zeitersparnis) konnte dadurch nicht durchgeführt werden. Da die Rückmeldungen der Entwickler jedoch positiv ausfielen und auf technischer Seite keine Probleme gemeldet wurden, kann der Prototyp dennoch zumindest als Teilerfolg verbucht werden.

So formulierte Pascal Meier, der den Ideation-Prozess bei PEAX leitet, mit mir einen Projektauftrag, den ich bis Ende August bei der Transferstelle der HSLU einreichen konnte.

# Projektinitialisierung

In der ersten Semesterwoche wurde ein Kick-Off-Meeting mit Roger Diehl (Betreuer), Pascal Meier (Auftraggeber) und mir bei PEAX in Luzern durchgeführt. Die Aufgabenstellung wurde hierzu noch um einige Punkte ergänzt; andere Punkte konnten angepasst (Form der Dokumentation) bzw. gestrichen (Wahl einer OpenSource-Lizenz, Aufbau einer Community) werden.

Ich erklärte Annahme des überarbeiteten Projektauftrags, und Ende Woche konnte der Projektauftrag bei der Transferstelle definitiv gemeldet werden. In der Zwischenzeit entwarf ich einen Rahmen- und Meilensteinplan, der mit dem Auftraggeber noch besprochen und angepasst worden ist.

Bereits am Wochenende vor dem Semesterstart nahm ich mir Zeit um die generischen Teile der Dokumentation mit LaTeX aufzubauen (technische Dokumentstruktur, Bibliographie und andere Verzeichnisse, ein `Makefile` zum komfortablen Erstellen der PDF-Ausgabe, etc.). Die Dokumentation lässt sich so laufend erweitern, und bei Bedarf kann ein potenziell abgabefähiges Dokument generiert werden.

Ende der ersten Semesterwoche machte ich mir verschiedene Notizen zur Technologieevaluation (Programmiersprache). Hier zeichnete sich schnell aus verschiedenen Gründen eine Tendenz zu Go ab, womit ich bereits den Prototyp umgesetzt hatte.

Zu Beginn der zweiten Semesterwoche konnte ich die Ergebnisse der Prototyp-Validierung vor dem Ideation-Gremium vorstellen. Mein Vorschlag, das Projekt in meiner frei- und Studienzeit umzusetzen, und für das ganze Entwicklerteam vier Tage Aufwand (Ausprobieren des Zwischenstands nach Sprintende, Erteilung Feedback) bis Projektende einzuplanen, wurde trotz der eingeschränkten Validierung des Prototyps angenommen.

Weiter konnte ich mich in der zweiten Woche noch etwas mit der Literarurrecherche befassen, wobei ich Werke zum Thema Unix und Kommandozeile, Testing und Software-Architektur finden konnte.

Ich bereitete die Planungsdokumente für eine Besprechung Ende Woche mit dem Betreuer Roger Diehl vor.
