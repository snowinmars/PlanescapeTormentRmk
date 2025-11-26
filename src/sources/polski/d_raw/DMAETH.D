// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMAETH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMAETH~

IF ~  GlobalLT("Elyce","AR0400",4)
~ THEN BEGIN 0 // from:
  SAY #33587 /* ~To jeden z dwóch mężczyzn, którzy krzyczą i wymachują na siebie swoją bronią. Wygląda na to, że w każdej chwili mogą sobie skoczyć do gardeł...~ */
  IF ~~ THEN REPLY #33598 /* ~"Witaj..."~ */ GOTO 1
  IF ~~ THEN REPLY #33599 /* ~Trzymaj się od nich z daleka.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #33588 /* ~Mężczyzna, z twarzą poczerwieniałą od wysiłku, jaki wkłada w posyłanie przekleństw swojemu wrogowi, obraca się, żeby stanąć przodem do ciebie. "Czego chcesz?! Nie widzisz skurlu, że jestem *zajęty*!"~ */
  IF ~  Global("Elyce","AR0400",3)
~ THEN REPLY #33600 /* ~"Twa miła chciała, bym powstrzymał was dwóch od walki."~ */ GOTO 4
  IF ~~ THEN REPLY #33601 /* ~"Zastanawiam się, dlaczego wy dwaj walczycie."~ */ GOTO 2
  IF ~~ THEN REPLY #33602 /* ~"Żegnaj, więc."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #33589 /* ~"Nie twój interes, trepie. Odśpicuj sie!"~ */
  IF ~  Global("Elyce","AR0400",3)
~ THEN REPLY #33603 /* ~"Twa miła chciała, bym powstrzymał was dwóch od walki."~ */ GOTO 4
  IF ~~ THEN REPLY #33604 /* ~"Czy mógłbym w jakiś sposób pomóc, zażegnać ten spór?"~ */ GOTO 3
  IF ~~ THEN REPLY #33605 /* ~"Żegnaj, więc."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #33590 /* ~"Nie, ni możesz! Ten skurlosyn wściubia nos w moje sprawy z Elicją i tera odrychtuje mu te jego paskudną gębe! Ni twój interes, trzymaj sie tedy z dala od tego!"~ */
  IF ~  Global("Elyce","AR0400",3)
~ THEN REPLY #33606 /* ~"Twoja ukochana poprosiła mnie, bym zapobiegł tej walce."~ */ GOTO 4
  IF ~~ THEN REPLY #33607 /* ~"Żegnaj, więc."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 2.0 3.0
  SAY #33591 /* ~Nagle mężczyzna milknie. "Elicja cie przysłała, co? Nie wim kim jesteś, trepie, ale ni jakim sposobem ni widzem, jak byś mógł nas powstrzymać!"~ */
  IF ~  CheckStatGT(Protagonist,11,STR)
CheckStatGT(Protagonist,11,CON)
~ THEN REPLY #33608 /* ~"Sprawiając wam obydwu łomot, jeśli zajdzie potrzeba."~ */ DO ~SetGlobal("Elyce","AR0400",4)
AddexperienceParty(500)
~ GOTO 7
  IF ~  CheckStatLT(Protagonist,12,STR)
CheckStatLT(Protagonist,12,CON)
~ THEN REPLY #33609 /* ~"Sprawiając wam obydwu łomot, jeśli zajdzie potrzeba."~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,11,STR)
CheckStatLT(Protagonist,12,CON)
~ THEN REPLY #33610 /* ~"Sprawiając wam obydwu łomot, jeśli zajdzie potrzeba."~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,12,STR)
CheckStatGT(Protagonist,11,CON)
~ THEN REPLY #33611 /* ~"Sprawiając wam obydwu łomot, jeśli zajdzie potrzeba."~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #33612 /* ~"Zrozum, Elicja nie chce, żeby żadnemu z was stała się krzywda... czy nie możecie załatwić swoich spraw równocześnie nie napędzając jej strachu?"~ */ DO ~SetGlobal("Elyce","AR0400",4)
AddexperienceParty(500)
~ GOTO 8
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #33613 /* ~"Zrozum, Elicja nie chce, żeby żadnemu z was stała się krzywda... czy nie możecie załatwić swoich spraw równocześnie nie napędzając jej strachu?"~ */ GOTO 6
  IF ~~ THEN REPLY #33614 /* ~"Ja też nie. Żegnaj."~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1 4.2 4.3 6.1 6.2 6.3
  SAY #33592 /* ~"Co, jesteś *bzikiem*, śmiałku? Popatrz se na siebie... może i dobry jesteś i do tego obliźniony, ale to mnie nie rusza! Przestaj kłapać jadaczkom i *odśpicuj sie*!"~ */
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #33615 /* ~"Zrozum, Elicja nie chce, żeby żadnemu z was stała się krzywda... czy nie możecie załatwić swoich spraw równocześnie nie napędzając jej strachu?"~ */ DO ~SetGlobal("Elyce","AR0400",4)
AddexperienceParty(500)
~ GOTO 8
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #33616 /* ~"Zrozum, Elicja nie chce, żeby żadnemu z was stała się krzywda... czy nie możecie załatwić swoich spraw równocześnie nie napędzając jej strachu?"~ */ GOTO 6
  IF ~~ THEN REPLY #33617 /* ~"Dobrze... żegnaj."~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.5 5.1
  SAY #33593 /* ~"Nie mógbyś ta pilnować swoich spraw?! Idź i wsadź se głowe w kupe gnoju, trepie!"~ */
  IF ~  CheckStatGT(Protagonist,11,STR)
CheckStatGT(Protagonist,11,CON)
~ THEN REPLY #33618 /* ~"Przestańcie walczyć, albo sprawię wam obydwu łomot."~ */ DO ~SetGlobal("Elyce","AR0400",4)
AddexperienceParty(500)
~ GOTO 7
  IF ~  CheckStatLT(Protagonist,12,STR)
CheckStatLT(Protagonist,12,CON)
~ THEN REPLY #33619 /* ~"Przestańcie walczyć, albo sprawię wam obydwu łomot."~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,11,STR)
CheckStatLT(Protagonist,12,CON)
~ THEN REPLY #33620 /* ~"Przestańcie walczyć, albo sprawię wam obydwu łomot."~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,12,STR)
CheckStatGT(Protagonist,11,CON)
~ THEN REPLY #33621 /* ~"Przestańcie walczyć, albo sprawię wam obydwu łomot."~ */ GOTO 5
  IF ~~ THEN REPLY #33622 /* ~"Dobrze... żegnaj."~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.0 6.0
  SAY #33594 /* ~Mężczyzna przygląda ci się przez chwilę. "Ech... no to... pewnikiem i jes lepszy sposób dla mnie i tego skurla, na załatwienie naszych spraw. A i Elicja byłaby przez to szczęśliwsza..."~ */
  IF ~~ THEN REPLY #33623 /* ~"Cieszę się, że widzisz to w ten sposób. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.4 5.0
  SAY #33595 /* ~Mężczyzna marszczy brwi przez chwilę, po czym kiwa głową. "Masz rację, śmiałku... bije sie, co by mogła wyrwać się z pod cienia swojego brata, tak więc nie zważam na jej prośby i załatwiam to po swojemu." Wzdycha. "Zdaje sie, że załatwie to z tym skurlem w inny sposób..."~ */
  IF ~~ THEN REPLY #33624 /* ~"Cieszę się, że widzisz to w ten sposób. Żegnaj."~ */ EXIT
END

IF ~  Global("Elyce","AR0400",4)
~ THEN BEGIN 9 // from:
  SAY #33596 /* ~Oblubieniec Elicji przytakuje ci głową i uśmiecha się. "Dziękujem ci za przerwanie tej walki... pewnikiem, dobry z ciebie człek, śmiałku."~ */
  IF ~~ THEN REPLY #33597 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END
