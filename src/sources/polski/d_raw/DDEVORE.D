// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDEVORE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DDEVORE~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #48410 /* ~Widzisz niskiego mężczyznę, w którego oczach aż kipi od niepohamowanego gniewu. Przerywa wydawanie rozkazów i zwraca się do ciebie zniecierpliwionym tonem. "Czego chcesz?"~ */
  IF ~~ THEN REPLY #48411 /* ~"Kim jesteś?"~ */ GOTO 3
  IF ~~ THEN REPLY #48412 /* ~"Co to za miejsce?"~ */ GOTO 4
  IF ~~ THEN REPLY #48413 /* ~"Co możesz mi powiedzieć o Klątwie?"~ */ GOTO 5
  IF ~  Global("Anarchist_Treasure","GLOBAL",1)
~ THEN REPLY #48414 /* ~"Rozmawiałem z Ponurym Skalpem. Powiedział, że masz coś, co do niego należy."~ */ DO ~SetGlobal("Anarchist_Treasure","GLOBAL",2)
AddexperienceParty(1000)
~ GOTO 6
  IF ~~ THEN REPLY #48415 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Anarchist_Treasure","GLOBAL",2)
~ THEN BEGIN 1 // from: 8.0
  SAY #48416 /* ~"Nic dla ciebie nie mam przyjacielu, nic. Pozwól mi więc w spokoju kierować pracą, dobrze? Coś się wydarzy, przyjdziesz tu z powrotem i wtedy się tobą zatroszczymy. Ale teraz nie powinniśmy być widywani razem."~ */
  IF ~~ THEN REPLY #48417 /* ~"W porządku. Żegnaj."~ */ JOURNAL #47845 /* ~Devor, kupiec z magazynu, powiedział, żebym wrócił do magazynu jeśli coś się stanie. Zgodziłem się zostawić go w spokoju.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #48418 /* ~"Co, znowu ty? Czego chcesz?"~ */
  IF ~~ THEN REPLY #48419 /* ~"Kim jesteś?"~ */ GOTO 3
  IF ~~ THEN REPLY #48420 /* ~"Co to za miejsce?"~ */ GOTO 4
  IF ~~ THEN REPLY #48421 /* ~"Co możesz mi powiedzieć o Klątwie?"~ */ GOTO 5
  IF ~  Global("Anarchist_Treasure","GLOBAL",1)
~ THEN REPLY #48422 /* ~"Rozmawiałem z Ponurym Skalpem. Powiedział, że masz coś, co do niego należy."~ */ DO ~SetGlobal("Anarchist_Treasure","GLOBAL",2)
AddexperienceParty(1000)
~ GOTO 6
  IF ~~ THEN REPLY #48423 /* ~"Niczego. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 2.0 7.0
  SAY #48424 /* ~"Jestem Devore. To mój magazyn. A ci to moi pracownicy. I to jest mój czas, który marnujesz."~ */
  IF ~~ THEN REPLY #48425 /* ~"W porządku. Mam parę innych pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #48426 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1 2.1 7.1
  SAY #48427 /* ~Wzdycha rozdrażniony. "To magazyn. Przechowujemy tu towary: bronie, złoto, alkohol, tkaniny, jedzenie - wszystko, co ciału potrzebne. Słyszałeś chyba o magazynach, nie?"~ */
  IF ~~ THEN REPLY #48428 /* ~"Jasne. Mam kilka innych pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #48429 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.2 2.2 7.2
  SAY #48430 /* ~"To miasto, w którym ludzie starają się zarobić na życie. Osiągamy to dzięki ogromnemu wysiłkowi. Czasami jednak przeszkadzają nam w tym jacyś podróżnicy, którzy uważają, że naszym jedynym zajęciem jest czekanie na nich, by mogli nam zadać parę pytań."~ */
  IF ~~ THEN REPLY #48431 /* ~"W porządku. Mam parę innych pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #48432 /* ~"Załapałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.3 2.3 7.3
  SAY #48433 /* ~"Z Ponurym Skalpem? Mówisz, że on nie umarł? Jak go widziałem ostatnim razem, wlókł się w stronę... A, rozumiem. Przysłał cię tu w celu zastraszenia mnie, bym oddał mu tę część łupów, która jest jego własnością. Albo uprzejmego poproszenia o to... A może ma to związek z Anarchistami w Sigil? On zawsze prowadził zmyślną grę. To przypadek, że udało się nam... To znaczy im się udało, hehe... wbić w niego kilka noży. Przyniosę tę część, która do niego należy. Zaraz wrócę."~ */
  IF ~~ THEN REPLY #48434 /* ~"Pospiesz się."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
GiveGoldForce(250)
GiveItemCreate("OgrGaunt",Protagonist,1,0,0)
~ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 3.0 4.0 5.0
  SAY #48435 /* ~Wzdycha. "Czego?"~ */
  IF ~~ THEN REPLY #48436 /* ~"Kim jesteś?"~ */ GOTO 3
  IF ~~ THEN REPLY #48437 /* ~"Co to za miejsce?"~ */ GOTO 4
  IF ~~ THEN REPLY #48438 /* ~"Co możesz mi powiedzieć o Klątwie?"~ */ GOTO 5
  IF ~  Global("Anarchist_Treasure","GLOBAL",1)
~ THEN REPLY #48439 /* ~"Rozmawiałem z Ponurym Skalpem. Powiedział, że masz coś, co do niego należy."~ */ DO ~SetGlobal("Anarchist_Treasure","GLOBAL",2)
AddexperienceParty(1000)
~ GOTO 6
  IF ~~ THEN REPLY #48443 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #48440 /* ~Powraca z workiem zawierającym monety oraz prymitywnie wyglądające rękawice. Rozgląda się niespokojnie i rzecze. "Masz. Weź to. Teraz stąd zjeżdżaj."~ */
  IF ~~ THEN REPLY #48441 /* ~"Mam parę innych pytań do ciebie..."~ */ GOTO 1
  IF ~~ THEN REPLY #48442 /* ~"Żegnaj."~ */ EXIT
END
