// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDUSTHGG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DDUSTHGG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #66596 /* ~Widzisz bladolicego Grabarza stojącego na straży u frontowej bramy do Kostnicy. Strażnik spogląda w zamyśleniu na dachy okolicznych zabudowań. Kiedy się do niego zbliżasz, budzi się z zadumy i odwraca do ciebie. "Tak? Słucham?"~ */
  IF ~~ THEN REPLY #66597 /* ~"Mam kilka pytań..."~ */ GOTO 1
  IF ~~ THEN REPLY #66598 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.4 4.0 5.1 6.0 7.0
  SAY #66599 /* ~Strażnik kiwa głową i czeka na twoje słowa.~ */
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66600 /* ~"Chciałbym wejść do środka Kostnicy."~ */ GOTO 2
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66601 /* ~"Jestem Inicjatą od Grabarzy. Chciałbym wejść do środka Kostnicy."~ */ GOTO 3
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #66602 /* ~"Poszukuję człowieka o imieniu Farod. Czy orientujesz się może, gdzie mógłbym go znaleźć?"~ */ JOURNAL #66588 /* ~Jedne z Grabarzy powiedział mi, że jeżeli poszukuję Faroda, powinienem zagadnąć o niego osobnika o imieniu Emorik, bawiącego w Karczmie "Proch do Prochu. Karczmę tę znajdę idąc od frontowej bramy Kostnicy w kierunku południowym, a potem zachodnim.~ */ GOTO 5
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #66603 /* ~"Szukam zaginionego dziennika. Widziałeś go może?"~ */ GOTO 7
  IF ~~ THEN REPLY #66604 /* ~"Właściwie to nic takiego. Czas już na mnie. Bywaj zdrów."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #66605 /* ~"A w jakim celu chcesz odwiedzić Kostnicę?"~ */
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #66606 /* ~"Przybywam tu, aby oddać hołd prochom Deionarry, kobiecie pogrzebanej w północno-zachodniej sali pamięci.~ */ GOTO 3
  IF ~  GlobalGT("Dhall","GLOBAL",0)
~ THEN REPLY #66607 /* ~"Mam się zobaczyć z Dhallem."~ */ GOTO 3
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #66608 /* ~"Przybywam tutaj na ceremonię czuwania przy zmarłym. Prawdę powiedziawszy to nie wiem, w której części Kostnicy odbywa się ta uroczystość, ale może któryś z Grabarzy przebywających wewnątrz będzie mógł mnie oświecić."~ */ GOTO 3
  IF ~~ THEN REPLY #66609 /* ~"Nie mam jakiegoś konkretnego celu. Po prostu chciałbym wejść do środka."~ */ GOTO 4
  IF ~~ THEN REPLY #66610 /* ~"Właściwie to mam kilka pytań..."~ */ GOTO 1
  IF ~~ THEN REPLY #66611 /* ~"Mniejsza z tym. Czas już na mnie."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0 2.1 2.2
  SAY #66612 /* ~Strażnik kiwa głową z aprobatą. "Rozumiem. Oczywiście. Proszę za mną."~ */
  IF ~~ THEN REPLY #66613 /* ~"Dobrze..."~ */ DO ~TeleportParty("AR0201",[1190.2578],10)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.3
  SAY #66614 /* ~Strażnik potrząsa głową z dezaprobatą. "W takim razie nie możesz wejść do środka. Kostnica to nie miejsce na beztroskie przechadzki."~ */
  IF ~~ THEN REPLY #66615 /* ~"Rozumiem. Mam jednak kilka pytań..."~ */ GOTO 1
  IF ~~ THEN REPLY #66616 /* ~"Wobec tego pójdę już w swoją stronę. Bywaj zdrów."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY #66617 /* ~"Farod to Zbieracz." Strażnik przez chwilę wpatruje się w twoje oblicze. "Gdybyś chciał dowiedzieć się o nim coś więcej, porozmawiaj z Emorikiem Inicjatą z karczmy 'Proch do Prochu'. On też poszukuje tego Faroda. Może zechce ci pomóc."~ */
  IF ~  Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #66618 /* ~"A gdzie znajduje się karczma 'Proch do Prochu'?"~ */ GOTO 6
  IF ~  GlobalGT("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #66619 /* ~"Dobrze wiem, o jakiej karczmie mówisz. Ale zanim tam odejdę, chciałbym zadać jeszcze kilka innych pytań..."~ */ GOTO 1
  IF ~  GlobalGT("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #66620 /* ~"Karczma 'Proch do Prochu'? To na południowy zachód stąd, prawda? Zaraz się tam udam."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #66621 /* ~"Przejdź przez bramę, a potem skieruj się najpierw na południe, a następnie na zachód. Karczma leży niedaleko kamienia pamiątkowego."~ */
  IF ~~ THEN REPLY #66622 /* ~"Doskonale. Ale zanim odejdę, chciałbym zadać jeszcze kilka innych pytań..."~ */ GOTO 1
  IF ~~ THEN REPLY #66623 /* ~"Doskonale. Zaraz poszukam tego Emorika."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.3
  SAY #66624 /* ~Strażnik kręci przecząco głową. "Nie. Nic mi o tym nie wiadomo."~ */
  IF ~~ THEN REPLY #66625 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 1
  IF ~~ THEN REPLY #66626 /* ~"Niemniej jednak dziękuję."~ */ EXIT
END
