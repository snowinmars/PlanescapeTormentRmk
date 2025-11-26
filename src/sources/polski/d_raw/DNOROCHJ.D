// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DNOROCHJ.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DNOROCHJ~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 2 even though they appear after this state */
~  Global("Know_Dustmen","GLOBAL",0)
Global("Norochj","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #46511 /* ~Widzisz przed sobą chudego jak szczapa mężczyznę ubranego w czarne szaty. Jego sztywne, czarne włosy sterczą z czaszki jak korona kolców. Skóra jego czaszki ma białawy kolor, tak jak ktoś, kto jest trędowaty. Patrzy się ze złością na swoje picie i coś do siebie mruczy.~ */
  IF ~  Global("Dustman_Initiation","GLOBAL",0)
~ THEN REPLY #46526 /* ~"Witaj."~ */ DO ~SetGlobal("Norochj","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #46527 /* ~"Norochj?"~ */ DO ~SetGlobal("Norochj","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #46528 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 2 even though they appear after this state */
~  GlobalGT("Know_Dustmen","GLOBAL",0)
Global("Norochj","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #46512 /* ~Widzisz przed sobą chudego jak szczapa Grabarza ubranego w czarne szaty. Jego sztywne, czarne włosy sterczą z czaszki jak korona kolców. Skóra jego czaszki ma białawy kolor, tak jak ktoś, kto jest trędowaty. Patrzy się ze złością na swoje picie i coś do siebie mruczy.~ */
  IF ~  Global("Dustman_Initiation","GLOBAL",0)
~ THEN REPLY #46529 /* ~"Witaj."~ */ DO ~SetGlobal("Norochj","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Mausoleum_Quest","GLOBAL",0)
~ THEN REPLY #46530 /* ~"Norochj?"~ */ DO ~SetGlobal("Norochj","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #46531 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Norochj","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #46513 /* ~Widzisz przed sobą Norochja. Ciągnie za jeden ze swoich zlepków włosów w kształcie kolca i używa go, aby podrapać się po wyprysku na twarzy. Nie możesz odeprzeć od siebie myśli, że lepiej wyglądałby z dredami.~ */
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #46532 /* ~"Udało mi się odkryć, co się działo w mauzoleum. Umarli znowu mogą spać."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~Wróciłem do Norochja i powiedziałem mu, że rozwiązałem problem w mauzoleum.~ */ GOTO 11
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #46533 /* ~"Udało mi się odkryć, co się działo w mauzoleum. Umarli znowu mogą spać."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(200)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~Wróciłem do Norochja i powiedziałem mu, że rozwiązałem problem w mauzoleum.~ */ GOTO 10
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #46534 /* ~"Udało mi się odkryć, co się działo w mauzoleum. Umarli znowu mogą spać."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(100)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~Wróciłem do Norochja i powiedziałem mu, że rozwiązałem problem w mauzoleum.~ */ GOTO 9
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46535 /* ~"Udało mi się odnaleźć tego... nie-Grabarza. Nie będzie już okradał nikogo w tym mieście."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~Odnalazłem i zająłem się Popielatą Opończą, więc mogłem odebrać nagrodę od Norochja.~ */ GOTO 11
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46536 /* ~"Udało mi się odnaleźć tego... nie-Grabarza. Nie będzie już okradał nikogo w tym mieście."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~Odnalazłem i zająłem się Popielatą Opończą, więc mogłem odebrać nagrodę od Norochja.~ */ GOTO 10
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46537 /* ~"Udało mi się odnaleźć tego... nie-Grabarza. Nie będzie już okradał nikogo w tym mieście."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~Odnalazłem i zająłem się Popielatą Opończą, więc mogłem odebrać nagrodę od Norochja.~ */ GOTO 9
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
~ THEN REPLY #46538 /* ~"Udało mi się odnaleźć tego... nie-Grabarza. Już nie żyje, więc wątpię, żeby mu się chciało jeszcze kogoś okradać."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~Znalazłem i zarżnąłem Popielatą Opończę, więc mogłem odebrać nagrodę od Norochja.~ */ GOTO 11
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
~ THEN REPLY #46539 /* ~"Udało mi się odnaleźć tego... nie-Grabarza. Już nie żyje, więc wątpię, żeby mu się chciało jeszcze kogoś okradać."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~Znalazłem i zarżnąłem Popielatą Opończę, więc mogłem odebrać nagrodę od Norochja.~ */ GOTO 10
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
~ THEN REPLY #46540 /* ~"Udało mi się odnaleźć tego... nie-Grabarza. Już nie żyje, więc wątpię, żeby mu się chciało jeszcze kogoś okradać."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~Znalazłem i zarżnąłem Popielatą Opończę, więc mogłem odebrać nagrodę od Norochja.~ */ GOTO 9
  IF ~  Dead("Mochai")
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
Global("Mochai_Norochj_Pickpocket","GLOBAL",0)
~ THEN REPLY #62892 /* ~"Udało mi się odnaleźć tego... nie-Grabarza. Już nie żyje, więc wątpię, żeby jej się chciało jeszcze kogoś okradać."~ */ GOTO 15
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
~ THEN REPLY #62893 /* ~"Coś cię martwi?"~ */ GOTO 5
  IF ~  Global("Norochj_Ad","GLOBAL",1)
Global("Mausoleum_Quest","GLOBAL",0)
~ THEN REPLY #62894 /* ~"Przychodzę tu w sprawie tego, co dzieje się na zewnątrz."~ */ GOTO 6
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #62895 /* ~"Emorik powiedział, żeby z tobą porozmawiać."~ */ GOTO 12
  IF ~~ THEN REPLY #62896 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 0.1 1.0 1.1
  SAY #46514 /* ~Grabarz podnosi głowę, mruga, a potem bacznie ogląda cię od góry do dołu. W międzyczasie bierze jeden ze swoich kolcowatych zlepków włosów, wskazuje nim na siebie i mówi. "Norochj. Wtajemniczony. Grabarz. Strażnik."~ */
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
Global("Norochj_Ad","GLOBAL",0)
~ THEN REPLY #46545 /* ~"Wyglądasz na zmartwionego..."~ */ GOTO 5
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
Global("Norochj_Ad","GLOBAL",1)
~ THEN REPLY #46546 /* ~"Przychodzę tu w sprawie tego, co dzieje się na zewnątrz."~ */ GOTO 6
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #46547 /* ~"Emorik powiedział, żeby z tobą porozmawiać."~ */ GOTO 12
  IF ~~ THEN REPLY #46548 /* ~"Czy mogę ci zadać parę pytań?"~ */ GOTO 4
  IF ~~ THEN REPLY #46549 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.3
  SAY #46515 /* ~Norochj kręci przecząco głową, po czym z powrotem przenosi wzrok na swój trunek.~ */
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
~ THEN REPLY #46550 /* ~"Coś nie tak? Wyglądasz na zmartwionego."~ */ GOTO 5
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #46551 /* ~"Poczekaj. Emorik powiedział, żeby z tobą porozmawiać."~ */ GOTO 12
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
Global("Norochj_Ad","GLOBAL",1)
~ THEN REPLY #46609 /* ~"Przychodzę tu w sprawie tego, co dzieje się na zewnątrz."~ */ GOTO 6
  IF ~~ THEN REPLY #46610 /* ~"W takim razie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.10 3.0 4.0 9.10 10.10 11.10
  SAY #46516 /* ~Norochj dotyka twarzy i wodzi palcem po zarysie zmarszczki.~ */
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
~ THEN REPLY #46553 /* ~"W czym problem?"~ */ GOTO 6
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #46554 /* ~"Emorik powiedział, żeby z tobą porozmawiać."~ */ GOTO 12
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
Global("Norochj_Ad","GLOBAL",1)
~ THEN REPLY #46611 /* ~"Przychodzę tu w sprawie tego, co dzieje się na zewnątrz."~ */ GOTO 6
  IF ~~ THEN REPLY #46612 /* ~"Chyba będziesz musiał znaleźć kogo innego, żeby rozwiązał twoje problemy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.11 3.1 4.2 5.0 5.2
  SAY #46517 /* ~Grabarz bacznie ci się przygląda. "Wiele problemów mam ja. Pomóc mogę ci. Mauzoleum budzi się, umarli chodzą, zburzony spokój umarłych, zburzony spokój Grabarzy. Dowiedz się, co zaburzyło spokój nieumarłych, a miedziaki ci zapłacę."~ */
  IF ~~ THEN REPLY #46556 /* ~"Dobrze. Gdzie jest to mauzoleum?"~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",1)
~ JOURNAL #17134 /* ~Norochj, Grabarz poznany w karczmie Proch do prochu opowiedział mi o mauzoleum gdzie chodzą umarli. Chciał, żebym bliżej przyjrzał się tej sprawie. Powiedział mi, że wejście do mauzoleum jest na północny zachód od pamiątkowego pomnika Grabarzy, poza Kostnicą. Dodał, że powinienem podejść do bramy i zakreślić palcem wskazującym półokrąg wokół serca. Wtedy otworzy się przejście. Jeśli rozwiążę kłopoty w mauzoleum, mam powrócić do Norochja i mu o tym powiedzieć.~ */ GOTO 13
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #46557 /* ~"Hmmm, nie wiem, czy zdołam ci w tym pomóc. Emorik powiedział, żeby porozmawiać z tobą o innej sprawie."~ */ GOTO 12
  IF ~~ THEN REPLY #46558 /* ~"Nie, dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 12.0
  SAY #46518 /* ~Norochj przytakuje. "Odnaleźć go ja nie potrafię. Ważne dla Grabarzy to jest."~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46559 /* ~"Nie martw się - już udało mi się go znaleźć. Nie będzie już was niepokoił."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
AddexperienceParty(750)
SetGlobal("Dustman_Initiation","GLOBAL",2)
~ JOURNAL #39503 /* ~Na całe szczęście zdążyłem już się zająć Popielatą Opończą, więc odebrałem swoją nagrodę.~ */ GOTO 11
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46560 /* ~"Nie martw się - już udało mi się go znaleźć. Nie będzie was już niepokoił."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
AddexperienceParty(750)
SetGlobal("Dustman_Initiation","GLOBAL",2)
~ JOURNAL #39503 /* ~Na całe szczęście zdążyłem już się zająć Popielatą Opończą, więc odebrałem swoją nagrodę.~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,13,CHR)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46561 /* ~"Nie martw się - już udało mi się go znaleźć. Nie będzie was już niepokoił."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
AddexperienceParty(750)
SetGlobal("Dustman_Initiation","GLOBAL",2)
~ JOURNAL #39503 /* ~Na całe szczęście zdążyłem już się zająć Popielatą Opończą, więc odebrałem swoją nagrodę.~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,15,CHR)
Dead("Ashman")
~ THEN REPLY #46562 /* ~"Nie martw się - udało mi się go już odnaleźć i uwolnić od problemów."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
AddexperienceParty(750)
SetGlobal("Dustman_Initiation","GLOBAL",2)
~ JOURNAL #17090 /* ~Na szczęście załatwiłem już starego Opończę, więc odebrałem nagrodę.~ */ GOTO 11
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Dead("Ashman")
~ THEN REPLY #46563 /* ~"Nie martw się - udało mi się go już odnaleźć i uwolnić od problemów."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
AddexperienceParty(750)
SetGlobal("Dustman_Initiation","GLOBAL",2)
~ JOURNAL #17090 /* ~Na szczęście załatwiłem już starego Opończę, więc odebrałem nagrodę.~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,13,CHR)
Dead("Ashman")
~ THEN REPLY #62897 /* ~"Nie martw się - udało mi się go już odnaleźć i uwolnić od problemów."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
AddexperienceParty(750)
SetGlobal("Dustman_Initiation","GLOBAL",2)
~ GOTO 9
  IF ~  Dead("Mochai")
Global("Mochai_Norochj_Pickpocket","GLOBAL",0)
~ THEN REPLY #62898 /* ~"Nie martw się - udało mi się go już odnaleźć i uwolnić od problemów."~ */ GOTO 15
  IF ~  !Dead("Ashman")
Global("Remove_Ash","GLOBAL",0)
~ THEN REPLY #62899 /* ~"Mogę go dla ciebie odszukać."~ */ GOTO 8
  IF ~  !Dead("Ashman")
Global("Remove_Ash","GLOBAL",0)
~ THEN REPLY #62900 /* ~"Mogę go dla ciebie odszukać... jeśli mi zapłacisz."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Norochj_1","GLOBALGood",-1)
~ GOTO 8
  IF ~~ THEN REPLY #62901 /* ~"W takim razie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.7 7.8
  SAY #46519 /* ~Norochj znowu przytakuje. "Za uczynienie moich problemów twoimi miedziaki ci zapłacę. Znajdź nie-Grabarza, rozpraw się z nim, potem wróć. Norochj czekać będzie."~ */
  IF ~~ THEN REPLY #46568 /* ~"Dobrze. W takim razie wrócę, gdy znajdę tego... 'Nie-Grabarza'. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.2 2.5 2.8 7.2 7.5 9.2 9.5 9.8 10.2 10.5 10.8 11.2 11.5 11.8 15.2 15.5 16.2 16.5
  SAY #46520 /* ~Zmarszczki na twarzy Norochja wygładzają się, gdy słucha twoich słów. "Dziękuję ja ci." Wkłada rękę między szaty, a po chwili wyciąga małą torbę, którą ci podaje. "Miedziaki. Setka."~ */
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #46569 /* ~"Udało mi się odkryć, co się działo w mauzoleum. Umarli znowu mogą spać."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~Wróciłem do Norochja i powiedziałem mu, że rozwiązałem problem w mauzoleum.~ */ GOTO 11
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #46570 /* ~"Udało mi się odkryć, co się działo w mauzoleum. Umarli znowu mogą spać."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(200)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~Wróciłem do Norochja i powiedziałem mu, że rozwiązałem problem w mauzoleum.~ */ GOTO 10
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #46571 /* ~"Udało mi się odkryć, co się działo w mauzoleum. Umarli znowu mogą spać."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(100)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~Wróciłem do Norochja i powiedziałem mu, że rozwiązałem problem w mauzoleum.~ */ GOTO 9
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46572 /* ~"Udało mi się odnaleźć tego... nie-Grabarza. Nie będzie już okradał nikogo w tym mieście."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~Odnalazłem i zająłem się Popielatą Opończą, więc mogłem odebrać nagrodę od Norochja.~ */ GOTO 11
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46573 /* ~"Udało mi się odnaleźć tego... nie-Grabarza. Nie będzie już okradał nikogo w tym mieście."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~Odnalazłem i zająłem się Popielatą Opończą, więc mogłem odebrać nagrodę od Norochja.~ */ GOTO 10
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46574 /* ~"Udało mi się odnaleźć tego... nie-Grabarza. Nie będzie już okradał nikogo w tym mieście."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~Odnalazłem i zająłem się Popielatą Opończą, więc mogłem odebrać nagrodę od Norochja.~ */ GOTO 9
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
~ THEN REPLY #46575 /* ~"Udało mi się odnaleźć tego... nie-Grabarza. Już nie żyje, więc wątpię, żeby mu się chciało jeszcze kogoś okradać."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~Znalazłem i zarżnąłem Popielatą Opończę, więc mogłem odebrać nagrodę od Norochja.~ */ GOTO 11
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
~ THEN REPLY #46576 /* ~"Udało mi się odnaleźć tego... nie-Grabarza. Już nie żyje, więc wątpię, żeby mu się chciało jeszcze kogoś okradać."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~Znalazłem i zarżnąłem Popielatą Opończę, więc mogłem odebrać nagrodę od Norochja.~ */ GOTO 10
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
~ THEN REPLY #46577 /* ~"Udało mi się odnaleźć tego... nie-Grabarza. Już nie żyje, więc wątpię, żeby mu się chciało jeszcze kogoś okradać."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~Znalazłem i zarżnąłem Popielatą Opończę, więc mogłem odebrać nagrodę od Norochja.~ */ GOTO 9
  IF ~  Dead("Mochai")
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
Global("Mochai_Norochj_Pickpocket","GLOBAL",0)
~ THEN REPLY #62902 /* ~"Udało mi się odnaleźć tego... nie-Grabarza. Już nie żyje, więc wątpię, żeby jej się chciało jeszcze kogoś okradać."~ */ GOTO 15
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
~ THEN REPLY #62903 /* ~"Czy masz jeszcze inne zmartwienia?"~ */ GOTO 5
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",1)
~ THEN REPLY #62904 /* ~"Aha, Emorik powiedział, żeby z tobą porozmawiać o jeszcze jednej sprawie."~ */ GOTO 12
  IF ~~ THEN REPLY #62905 /* ~"Dzięki... cieszę się, że mogłem pomóc. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1 2.4 2.7 7.1 7.4 9.1 9.4 9.7 10.1 10.4 10.7 11.1 11.4 11.7 15.1 15.4 16.1 16.4
  SAY #46521 /* ~Zmarszczki na twarzy Norochja wygładzają się, gdy słucha twoich słów. "Dziękuję ja ci." Wkłada rękę między szaty, a po chwili wyciąga małą torbę, którą ci podaje. "Miedziaki. Dwa razy setka."~ */
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #46581 /* ~"Udało mi się odkryć, co się działo w mauzoleum. Umarli znowu mogą spać."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~Wróciłem do Norochja i powiedziałem mu, że rozwiązałem problem w mauzoleum.~ */ GOTO 11
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #46582 /* ~"Udało mi się odkryć, co się działo w mauzoleum. Umarli znowu mogą spać."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(200)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~Wróciłem do Norochja i powiedziałem mu, że rozwiązałem problem w mauzoleum.~ */ GOTO 10
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #46583 /* ~"Udało mi się odkryć, co się działo w mauzoleum. Umarli znowu mogą spać."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(100)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~Wróciłem do Norochja i powiedziałem mu, że rozwiązałem problem w mauzoleum.~ */ GOTO 9
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46584 /* ~"Udało mi się odnaleźć tego... nie-Grabarza. Nie będzie już okradał nikogo w tym mieście."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~Odnalazłem i zająłem się Popielatą Opończą, więc mogłem odebrać nagrodę od Norochja.~ */ GOTO 11
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46585 /* ~"Udało mi się odnaleźć tego... nie-Grabarza. Nie będzie już okradał nikogo w tym mieście."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~Odnalazłem i zająłem się Popielatą Opończą, więc mogłem odebrać nagrodę od Norochja.~ */ GOTO 10
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46586 /* ~"Udało mi się odnaleźć tego... nie-Grabarza. Nie będzie już okradał nikogo w tym mieście."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~Odnalazłem i zająłem się Popielatą Opończą, więc mogłem odebrać nagrodę od Norochja.~ */ GOTO 9
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
~ THEN REPLY #46587 /* ~"Udało mi się odnaleźć tego... nie-Grabarza. Już nie żyje, więc wątpię, żeby mu się chciało jeszcze kogoś okradać."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~Znalazłem i zarżnąłem Popielatą Opończę, więc mogłem odebrać nagrodę od Norochja.~ */ GOTO 11
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
~ THEN REPLY #46588 /* ~"Udało mi się odnaleźć tego... nie-Grabarza. Już nie żyje, więc wątpię, żeby mu się chciało jeszcze kogoś okradać."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~Znalazłem i zarżnąłem Popielatą Opończę, więc mogłem odebrać nagrodę od Norochja.~ */ GOTO 10
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
~ THEN REPLY #46589 /* ~"Udało mi się odnaleźć tego... nie-Grabarza. Już nie żyje, więc wątpię, żeby mu się chciało jeszcze kogoś okradać."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~Znalazłem i zarżnąłem Popielatą Opończę, więc mogłem odebrać nagrodę od Norochja.~ */ GOTO 9
  IF ~  Dead("Mochai")
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
Global("Mochai_Norochj_Pickpocket","GLOBAL",0)
~ THEN REPLY #62906 /* ~"Udało mi się odnaleźć tego... nie-Grabarza. Już nie żyje, więc wątpię, żeby jej się chciało jeszcze kogoś okradać."~ */ GOTO 15
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
~ THEN REPLY #62911 /* ~"Czy masz jeszcze inne zmartwienia?"~ */ GOTO 5
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #62912 /* ~"Aha, Emorik powiedział, żeby z tobą porozmawiać o jeszcze jednej sprawie."~ */ EXIT
  IF ~~ THEN REPLY #62913 /* ~"Dzięki... cieszę się, że mogłem pomóc. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.0 2.3 2.6 7.0 7.3 9.0 9.3 9.6 10.0 10.3 10.6 11.0 11.3 11.6 15.0 15.3 16.0 16.3
  SAY #46522 /* ~Zmarszczki na twarzy Norochja wygładzają się, gdy słucha twoich słów. "Dziękuję ja ci." Wkłada rękę między szaty, a po chwili wyciąga małą torbę, którą ci podaje. "Miedziaki. Trzy razy setka. I..." Jeszcze raz szuka czegoś w swoim ubraniu, a potem rzuca ci zwitek bandaży. "Tych bandaży bardziej niż ja potrzebujesz."~ */
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #46593 /* ~"Udało mi się odkryć, co się działo w mauzoleum. Umarli znowu mogą spać."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~Wróciłem do Norochja i powiedziałem mu, że rozwiązałem problem w mauzoleum.~ */ GOTO 11
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #46594 /* ~"Udało mi się odkryć, co się działo w mauzoleum. Umarli znowu mogą spać."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(200)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~Wróciłem do Norochja i powiedziałem mu, że rozwiązałem problem w mauzoleum.~ */ GOTO 10
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #46595 /* ~"Udało mi się odkryć, co się działo w mauzoleum. Umarli znowu mogą spać."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(100)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~Wróciłem do Norochja i powiedziałem mu, że rozwiązałem problem w mauzoleum.~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46596 /* ~"Udało mi się odnaleźć tego... nie-Grabarza. Nie będzie już okradał nikogo w tym mieście."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~Odnalazłem i zająłem się Popielatą Opończą, więc mogłem odebrać nagrodę od Norochja.~ */ GOTO 11
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46597 /* ~"Udało mi się odnaleźć tego... nie-Grabarza. Nie będzie już okradał nikogo w tym mieście."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~Odnalazłem i zająłem się Popielatą Opończą, więc mogłem odebrać nagrodę od Norochja.~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46598 /* ~"Udało mi się odnaleźć tego... nie-Grabarza. Nie będzie już okradał nikogo w tym mieście."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~Odnalazłem i zająłem się Popielatą Opończą, więc mogłem odebrać nagrodę od Norochja.~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
Global("Dustman_Initiation","GLOBAL",1)
~ THEN REPLY #46599 /* ~"Udało mi się odnaleźć tego... nie-Grabarza. Już nie żyje, więc wątpię, żeby mu się chciało jeszcze kogoś okradać."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~Znalazłem i zarżnąłem Popielatą Opończę, więc mogłem odebrać nagrodę od Norochja.~ */ GOTO 11
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
Global("Dustman_Initiation","GLOBAL",1)
~ THEN REPLY #46600 /* ~"Udało mi się odnaleźć tego... nie-Grabarza. Już nie żyje, więc wątpię, żeby mu się chciało jeszcze kogoś okradać."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~Znalazłem i zarżnąłem Popielatą Opończę, więc mogłem odebrać nagrodę od Norochja.~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
Global("Dustman_Initiation","GLOBAL",1)
~ THEN REPLY #46601 /* ~"Udało mi się odnaleźć tego... nie-Grabarza. Już nie żyje, więc wątpię, żeby mu się chciało jeszcze kogoś okradać."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~Znalazłem i zarżnąłem Popielatą Opończę, więc mogłem odebrać nagrodę od Norochja.~ */ GOTO 9
  IF ~  Dead("Mochai")
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
Global("Mochai_Norochj_Pickpocket","GLOBAL",0)
~ THEN REPLY #64430 /* ~"Udało mi się odnaleźć tego... nie-Grabarza. Już nie żyje, więc wątpię, żeby jej się chciało jeszcze kogoś okradać."~ */ GOTO 15
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
~ THEN REPLY #46602 /* ~"Czy masz jeszcze inne zmartwienia?"~ */ GOTO 5
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #46603 /* ~"Aha, Emorik powiedział, żeby z tobą porozmawiać o jeszcze jednej sprawie."~ */ GOTO 12
  IF ~~ THEN REPLY #46604 /* ~"Dzięki... cieszę się, że mogłem pomóc. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.12 3.2 4.1 5.1 6.1 9.11 11.11
  SAY #46523 /* ~"Emorik przysłać cię do mnie..." Przygląda ci się przez chwilę, potem wzdycha i wskazuje na siebie. "Norochj jest Grabarzem. Służy sprawie Grabarzy, broni sprawy Grabarzy, broni *reputacji* Grabarzy." Mężczyzna wzdycha jeszcze raz. "W Ulu wielu złodziei. Jeden złodziej nosi szaty Grabarza, ale Grabarzem on nie jest."~ */
  IF ~~ THEN REPLY #46605 /* ~"Więc jakiś złodziej przebiera się za Grabarza?"~ */ DO ~SetGlobal("Dustman_Pickpocket","GLOBAL",1)
~ JOURNAL #17075 /* ~Zrobiłem jak polecił Emorik i porozmawiałem z Grabarzem o imieniu Norochj. Ma on kłopoty z wyśledzeniem jakiegoś człowieka - złodzieja przebranego za Grabarza.~ */ GOTO 7
  IF ~~ THEN REPLY #46606 /* ~"Chyba nie mogę ci pomóc. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.0
  SAY #46524 /* ~Norochj przytakuje. "Mauzoleum przy Kamieniu Pamiątkowym Grabarzy. Udaj się na północ i zachód od czarnego monumentu, podejdź do łuku i półkole nad swoim sercem tym palcem zrób." Pokazuje ci palec wskazujący swojej prawej ręki. "Do mauzoleum ty pójdziesz."~ */
  IF ~~ THEN REPLY #46607 /* ~"W takim razie zajmę się tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #46525 /* ~Norochj wzdycha, a potem pociąga za jeden z kolców na głowie. "Grabarze przyrzekli, że nigdy nie wejdą do mauzoleum. Przyrzekli umarłym. Nie mogą. Tylko nie-Grabarz wejść tam może."~ */
  IF ~~ THEN REPLY #46608 /* ~"W takim razie zajmę się tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 2.9 7.6 9.9 10.9 11.9
  SAY #61163 /* ~Przez chwilę Norochj mruga w ciszy oczyma. "Nie-Grabarz znaleziony. Czy *go* zabiłeś?"~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #61164 /* ~"Ach, on? Nie okradnie już nikogo w tym mieście."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #61166 /* ~"Ach, on? Nie okradnie już nikogo w tym mieście."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 10
  IF ~  CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #61167 /* ~"Ach, on. Nie okradnie już nikogo w tym mieście."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 9
  IF ~  CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
Global("Dustman_Initiation","GLOBAL",1)
~ THEN REPLY #61168 /* ~"Och... ee... Tak. Nie okradnie już nikogo w tym mieście."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
Global("Dustman_Initiation","GLOBAL",1)
~ THEN REPLY #61170 /* ~"Och... ee... Tak. Nie okradnie już nikogo w tym mieście."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 10
  IF ~  CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
Global("Dustman_Initiation","GLOBAL",1)
~ THEN REPLY #61171 /* ~"Och... ee... Tak. Nie okradnie już nikogo w tym mieście."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 9
  IF ~~ THEN REPLY #61173 /* ~"Ee, nie, w gospodzie Pod Gorejącym Człekiem była *kobieta*, która nie była Grabarzem, a ja..."~ */ DO ~SetGlobal("Mochai_Norochj_Pickpocket","GLOBAL",1)
~ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.6
  SAY #61174 /* ~"Nie-Grabarz nie kobieta. Nie-Grabarz to mężczyzna."~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #61175 /* ~"Ach, on? Nie okradnie już nikogo w tym mieście."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #61179 /* ~"Ach, on? Nie okradnie już nikogo w tym mieście."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 10
  IF ~  CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #61180 /* ~"Ach, on? Nie okradnie już nikogo w tym mieście."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 9
  IF ~  CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
Global("Dustman_Initiation","GLOBAL",1)
~ THEN REPLY #61181 /* ~"Och, ee, tak, *on*. Nie okradnie już nikogo w tym mieście."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
Global("Dustman_Initiation","GLOBAL",1)
~ THEN REPLY #61182 /* ~"Och, ee, tak, *on*. Nie okradnie już nikogo w tym mieście."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 10
  IF ~  CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
Global("Dustman_Initiation","GLOBAL",1)
~ THEN REPLY #61183 /* ~"Och, ee, tak, *on*. Nie okradnie już nikogo w tym mieście."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 9
  IF ~~ THEN REPLY #61184 /* ~"Och. Wybacz mi moje żarty. Jeśli kiedyś się natknę na tego... *człowieka*... przebranego za Grabarza, dam ci znać. Żegnaj."~ */ EXIT
END
