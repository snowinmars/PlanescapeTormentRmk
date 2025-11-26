// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDEADDAB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DDEADDAB~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #61682 /* ~Widzisz martwe ciało Dabusa. Towarzyszący rozkładowi smród jest nie do zniesienia... A spoglądając na sztywne, nienaturalnie ułożone zwłoki można wywnioskować, że ostateczny zgon nastąpił dość dawno temu. Mimo to, czujesz się dziwnie poruszony tą sceną.~ */
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
GlobalLT("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #61683 /* ~Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.~ */ DO ~SetGlobal("Know_Dead_Dabus","GLOBAL",1)
~ GOTO 2
  IF ~  GlobalLT("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #61684 /* ~Zbadaj ciało, by się przekonać, czy będziesz potrafił ustalić, co go zabiło.~ */ DO ~SetGlobal("Know_Dead_Dabus","GLOBAL",1)
~ GOTO 1
  IF ~  GlobalLT("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #61685 /* ~Odejdź.~ */ DO ~SetGlobal("Know_Dead_Dabus","GLOBAL",1)
~ EXIT
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #61686 /* ~Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.~ */ GOTO 2
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #61687 /* ~Zbadaj ciało, by się przekonać, czy będziesz potrafił ustalić, co go zabiło.~ */ GOTO 1
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #61688 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.4
  SAY #61689 /* ~Gdy dotykasz trupa, ciało twe przeszywa nagły wstrząs. W powietrzu czuć zawirowania, jakby wiatr odnalazł drogę do wnętrza budynku i walczy, by się wydostać. Czujesz dziwny pulsujący ból w skroniach, jakby ktoś silnie i desperacko uderzał w nie młotem.~ */
  IF ~~ THEN REPLY #61690 /* ~Spróbuj się skoncentrować...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 3
  IF ~~ THEN REPLY #61691 /* ~Otrząśnij się z doznania, odejdź od trupa.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 0.3
  SAY #61692 /* ~Gdy sięgasz swą mocą, powietrze zaczyna lekko falować i, na chwilę, ciało dabusa rozmywa się. Czujesz dziwny pulsujący ból w skroniach, jakby ktoś silnie i desperacko uderzał w nie młotem.~ */
  IF ~~ THEN REPLY #61693 /* ~Spróbuj się skoncentrować...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 3
  IF ~~ THEN REPLY #61694 /* ~Otrząśnij się z doznania, odejdź od trupa.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #61695 /* ~Wizję przykrywa na chwilę ciemność i pulsujący ból zaczyna słabnąć, aż zaczynasz go słyszeć, jakby nachodził z zewnątrz czaszki. Ciemność zanika i słyszysz odgłos młotka nadchodzący z zewnątrz budynku. Cały budynek zdaje się być jakoś zamglony, niewyraźny, jakbyś patrzył przez mgłę.~ */
  IF ~~ THEN REPLY #61696 /* ~W dalszym ciągu koncentruj się na wizji...~ */ GOTO 4
  IF ~~ THEN REPLY #61697 /* ~Otrząśnij się z doznania, odejdź od trupa.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #61698 /* ~Odgłos młota zanika i, niespodziewanie, widzisz zjawę dabusa wkraczającą do budynku. Gdy to robi, okna i drzwi stają się niczym woda, momentalnie zasklepiając przejście, którym wszedł dabus. Dabus odwraca się, zatrzymuje, po czym zaczyna krążyć powoli wokół pokoju, sprawdzając ściany i uderzając w każdą z nich młotkiem, jakby je sprawdzał.~ */
  IF ~~ THEN REPLY #61699 /* ~W dalszym ciągu koncentruj się na wizji...~ */ GOTO 5
  IF ~~ THEN REPLY #61700 /* ~Otrząśnij się z doznania, odejdź od trupa.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #61701 /* ~Dabus kończy obchód wokół pokoju, po czym zatrzymuje się przy "drzwiach", którymi wszedł wcześniej. Zaczyna uderzać w nie młotkiem, odłupując kamienie, jednak po każdym uderzeniu ściana naprawia się sama. Wizję zalewa ciemność, ale wciąż słychać odgłos młotka - najpierw w regularnych odstępach czasu, później coraz rzadziej, rzadziej...~ */
  IF ~  Global("Know_Dead_Dabus","GLOBAL",1)
~ THEN REPLY #61702 /* ~W dalszym ciągu koncentruj się na wizji...~ */ DO ~SetGlobal("Know_Dead_Dabus","GLOBAL",2)
AddexperienceParty(1000)
~ GOTO 6
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #61703 /* ~W dalszym ciągu koncentruj się na wizji...~ */ GOTO 6
  IF ~~ THEN REPLY #61704 /* ~Otrząśnij się z doznania, odejdź od trupa.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1
  SAY #61705 /* ~Wzrok twój rozjaśnia się, gdy ustaje bicie młotka. Znów stoisz nad ciałem dabusa... Wygląda na to, że umarł z głodu, zamknięty w budynku.~ */
  IF ~~ THEN REPLY #61706 /* ~Zostaw ciało dabusa w spokoju.~ */ EXIT
END
