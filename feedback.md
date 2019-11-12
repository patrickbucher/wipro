- SPE:
    - GET funktioniert nicht mit Agent Login
    - ein px --version wär cool, dann kann man kontrollieren dass man wirklich auf der richtigen Version ist
    - beim logout wäre es gut, wenn man das logout einfach auf der aktuellen env macht, so dass man einfach px logut und nicht px logout -e prod machen muss. Also das -e "current nv" als default annimmt
    - Idee: default-Umgebung für Agent und User separat verwalten
- Michi:
    - Hoi Pädu, ich hatte Zeit die neue px Version ein bisschen zu testen. Sieht sehr gut aus  Die Hilfe ist sehr ausführlich, und auch dass ein Environment definiert werden kann per px env ist super. Auch der neue px get command finde ich toll. Dort hab ich mir aber noch überlegt, dass man eventuell den Output noch formatieren könnte, falls es JSON ist (andere mime types habe ich noch nicht getestet). Mir ist auch noch aufgefallen, dass wir ja praktisch bei jedem API Aufruf die PEAX-ID in der URL mitgeben. Jedoch musste ich die PEAX-ID meines aktuell eingeloggten Users vom Portal kopieren, da der Command Line Client mir diese Info nirgends anzeigte. Andererseits habe ich mir die Gedanken dann gemacht, ob unsere APIs überhaupt korrekt sind, da vermutlich zB statt GET profile/api/v3/profile/785.2120.8339.75 auch GET profile/api/v3/profile reichen müsste, um das aktuelle Profil zu laden. Was meinst du?

