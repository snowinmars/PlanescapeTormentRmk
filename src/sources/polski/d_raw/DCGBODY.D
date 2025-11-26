// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCGBODY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCGBODY~

IF ~  Global("Gatehead_Talk","GLOBAL",0)
Global("Current_Area","GLOBAL",800)
~ THEN BEGIN 0 // from:
  SAY #47032 /* ~Kiedy zbliżasz się do bramy, gnijące głowy zaczynają do ciebie mówić, wymieniając pomiędzy sobą słowa i tworząc w ten sposób spójne zdania. "Przepadło, przepadło. Zgubił je zdrajca, światło już w nim nie zapanuje."~ */
  IF ~~ THEN REPLY #47033 /* ~"Co się stało z miastem?"~ */ DO ~SetGlobal("bd_heads_talk_once","ar0800",1)
TriggerActivation("Bd_gate_heads",TRUE)
~ GOTO 1
  IF ~~ THEN REPLY #47034 /* ~"Co się wam stało?"~ */ DO ~SetGlobal("bd_heads_talk_once","ar0800",1)
TriggerActivation("Bd_gate_heads",TRUE)
~ GOTO 2
  IF ~~ THEN REPLY #47035 /* ~"Dziękuję za najnowsze wieści. Żegnajcie."~ */ DO ~SetGlobal("bd_heads_talk_once","ar0800",1)
TriggerActivation("Bd_gate_heads",TRUE)
SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.2 3.0 7.0
  SAY #47036 /* ~"Przepadło na skrzydłach wiatru, zmiecione falą zła. Przepadło, zmiecione przez bramę, przepadło, przepadło. Przepadło miasto, zgubione swoją nienawiścią. Przez bramę, do Czerwonego Więzienia, do sfery więziennej... Tartaru."~ */
  IF ~~ THEN REPLY #47037 /* ~"Tartar? Opowiedzcie mi o tej sferze."~ */ GOTO 13
  IF ~~ THEN REPLY #47038 /* ~"Czy nie umiecie mówić normalnie?"~ */ GOTO 6
  IF ~~ THEN REPLY #47039 /* ~"Co się z wami stało?"~ */ GOTO 2
  IF ~~ THEN REPLY #47040 /* ~"Czy wiecie, jak się tam dostać, albo jak sprowadzić je tutaj z powrotem?"~ */ GOTO 4
  IF ~~ THEN REPLY #47041 /* ~"Nie mam czas na te bzdury. Żegnajcie."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.2 6.0 7.1 13.1
  SAY #47042 /* ~"Zdradzone, znienawidzone, wrobione... ukarane jako przykład dla innych. Powieszone tu przez wrogów. Zgubione, zgubione, zgubione."~ */
  IF ~  CheckStatGT(Protagonist,20,INT)
Global("Ghead_Exp","AR0800",0)
~ THEN REPLY #47043 /* ~"Czy to ze mną jest coś nie tak, czy ostatnio za dużo się namnożyło gadających, odciętych głów?"~ */ DO ~GiveExperience(Protagonist,3000)
SetGlobal("Ghead_Exp","AR0800",1)
~ GOTO 3
  IF ~  CheckStatGT(Protagonist,20,INT)
Global("Ghead_Exp","AR0800",1)
~ THEN REPLY #47044 /* ~"Czy to ze mną jest coś nie tak, czy ostatnio za dużo się namnożyło gadających, odciętych głów?"~ */ GOTO 3
  IF ~~ THEN REPLY #47045 /* ~"Gdzie się wszyscy podziali?"~ */ GOTO 1
END

IF ~~ THEN BEGIN 3 // from: 2.0 2.1
  SAY #47046 /* ~Głowy milkną. Patrzą na siebie przez chwilę, a potem spoglądają na ciebie, zwisając sromotnie z bramy.~ */
  IF ~~ THEN REPLY #47047 /* ~"A co się stało z Klątwą?"~ */ GOTO 1
  IF ~~ THEN REPLY #47048 /* ~"No dobrze. Żegnajcie."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.3 6.1 13.2
  SAY #47049 /* ~"Przez bramę, do więzienia... z więzienia nie ma powrotu, nie ma powrotu. Przejdź przez bramę, przez bramę... tam czeka na ciebie twoje przeznaczenie."~ */
  IF ~~ THEN REPLY #47050 /* ~"Co wiecie o moim przeznaczeniu?"~ */ JOURNAL #39483 /* ~Głowy na bramie do Tartaru powiedziały mi, że miasto oddało się złu i zostało wessane przez wrota do Tartaru. Twierdzą, że moje przeznaczenie znajduje się po drugiej stronie bramy.~ */ GOTO 5
  IF ~~ THEN REPLY #47051 /* ~"Dziękuję. Żegnajcie."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #47052 /* ~"Deva czeka na ciebie." Głowy milkną i przestają reagować na twoje dalsze pytania.~ */
  IF ~~ THEN REPLY #47053 /* ~"W takim razie, żegnajcie."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1 13.0
  SAY #47054 /* ~"Za zasłoną wszystko jest... skryte cieniem, oświetlone. Nic nie przeniknie. Nic nie jest łatwe. Nie."~ */
  IF ~~ THEN REPLY #47055 /* ~"No dobrze, a co się stało z wami?"~ */ GOTO 2
  IF ~~ THEN REPLY #47056 /* ~"Czy wiecie, w jaki sposób dostać się do miasta, albo jak sprowadzić miasto z powrotem?"~ */ GOTO 4
  IF ~~ THEN REPLY #47057 /* ~"No cóż. Żegnajcie."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~  Global("Gatehead_Talk","GLOBAL",1)
Global("Current_Area","GLOBAL",800)
~ THEN BEGIN 7 // from:
  SAY #47058 /* ~Z początku głowy milkną, a potem powoli zaczynają mówić. Najpierw szeptem, a potem rozgadują się na dobre.~ */
  IF ~~ THEN REPLY #47059 /* ~"Co stało się z Klątwą?"~ */ GOTO 1
  IF ~~ THEN REPLY #47060 /* ~"Co się z wami stało?"~ */ GOTO 2
  IF ~~ THEN REPLY #47061 /* ~"Mniejsza z tym. Żegnajcie."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~  Global("Gatehead_Talk","GLOBAL",0)
!Global("Current_Area","GLOBAL",800)
~ THEN BEGIN 8 // from:
  SAY #47062 /* ~Kiedy zbliżasz się do bramy, gnijące głowy, które zdobią pokryty ostroroślą łuk, przemawiają do ciebie. Ich głosy zbiegają się w jeden, jak szum plugawej rzeki. "Do Tartaru... to sfery więziennej... do krainy zdradzonych i zdrajców. Ta brama... jest zamknięta... na razie."~ */
  IF ~~ THEN REPLY #47063 /* ~"Kiedy będzie znowu otwarta?"~ */ DO ~SetGlobal("Gatehead_Talk","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #47064 /* ~"Co możecie mi powiedzieć o Tartarze?"~ */ DO ~SetGlobal("Gatehead_Talk","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #47065 /* ~"Co się z wami stało?"~ */ DO ~SetGlobal("Gatehead_Talk","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #47066 /* ~"Dziękuję. Żegnajcie."~ */ DO ~SetGlobal("Gatehead_Talk","GLOBAL",1)
SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~  Global("Gatehead_Talk","GLOBAL",1)
!Global("Current_Area","GLOBAL",800)
~ THEN BEGIN 9 // from:
  SAY #47067 /* ~"Brama... ciągle zamknięta. Nie ma tędy przejścia."~ */
  IF ~~ THEN REPLY #47068 /* ~"Kiedy będzie znowu otwarta?"~ */ GOTO 10
  IF ~~ THEN REPLY #47069 /* ~"Co możecie mi powiedzieć o Tartarze?"~ */ GOTO 11
  IF ~~ THEN REPLY #47070 /* ~"Co się z wami stało?"~ */ GOTO 12
  IF ~~ THEN REPLY #47072 /* ~"Dziękuję. Żegnajcie."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0 11.0 12.0
  SAY #47075 /* ~"Kiedy skończy się plaga choroby. Kiedy choroba umrze. Kiedy śmierć się skończy."~ */
  IF ~~ THEN REPLY #47076 /* ~"Co możecie mi powiedzieć o Tartarze?"~ */ GOTO 11
  IF ~~ THEN REPLY #47077 /* ~"Co się z wami stało?"~ */ GOTO 12
  IF ~~ THEN REPLY #47078 /* ~"Dziękuję. Żegnaj."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.1 9.1 10.0 12.1
  SAY #47080 /* ~"Sfera więzienna... chaos, zło... światy wewnątrz światów, kule w kulach, rozciągnięte na niebie jak przeklęte perły... Czerwone Więzienie, zagłada tytanów i bogów."~ */
  IF ~~ THEN REPLY #47082 /* ~"Kiedy brama będzie otwarta?"~ */ GOTO 10
  IF ~~ THEN REPLY #47083 /* ~"Co się z wami stało?"~ */ GOTO 12
  IF ~~ THEN REPLY #47084 /* ~"Żegnajcie."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.2 9.2 10.1 11.1
  SAY #47085 /* ~"Zdradzone, znienawidzone, wrobione... ukarane jako przykład dla innych. Powieszone tu przez wrogów. Zgubione, zgubione, zgubione."~ */
  IF ~~ THEN REPLY #47086 /* ~"Kiedy brama będzie otwarta?"~ */ GOTO 10
  IF ~~ THEN REPLY #47087 /* ~"Co możecie mi powiedzieć o Tartarze?"~ */ GOTO 11
  IF ~~ THEN REPLY #47088 /* ~"Żegnajcie."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.0
  SAY #47089 /* ~"Sfera więzienna... chaos, zło... światy wewnątrz światów, kule w kulach, rozciągnięte na niebie jak przeklęte perły... Czerwone Więzienie, zagłada tytanów i bogów."~ */
  IF ~~ THEN REPLY #47090 /* ~"Czy nie umiecie mówić normalnie?"~ */ GOTO 6
  IF ~~ THEN REPLY #47091 /* ~"Co się z wami stało?"~ */ GOTO 2
  IF ~~ THEN REPLY #47092 /* ~"Czy wiecie, jak się tam dostać, albo jak sprowadzić je tutaj z powrotem?"~ */ GOTO 4
  IF ~~ THEN REPLY #47093 /* ~"Nie mam czas na te bzdury. Żegnajcie."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END
