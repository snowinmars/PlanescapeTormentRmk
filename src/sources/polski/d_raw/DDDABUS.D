// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDDABUS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DDDABUS~

IF ~  Global("Alley_Dabus_SC","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #50355 /* ~Widzisz martwe ciało Dabusa. Towarzyszący rozkładowi smród jest nie do zniesienia... Spoglądając zaś na sztywne, nienaturalnie ułożone zwłoki wywnioskować można, że ostateczny zgon nastąpił dość dawno temu. Mimo to, czujesz się dziwnie poruszony tą sceną.~ */
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #50356 /* ~Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.~ */ DO ~SetGlobal("Alley_Dabus_SC","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #50370 /* ~Pozwól mu spocząć w pokoju.~ */ DO ~SetGlobal("Alley_Dabus_SC","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 7.0
  SAY #50357 /* ~Przez kilka sekund wydaje się, że nic się nie wydarzy. Potem, niespodziewanie, porcja wydychanego powietrza wydobywa się otwartych ust nieboszczyka.~ */
  IF ~~ THEN REPLY #50358 /* ~"Hej! Słyszysz mnie?"~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #50359 /* ~Przez kilka chwil panuje cisza, po czym nagle usta trupa zaczynają się ruszać. "Oczywiście, że cię słyszę! Jestem *martwy*, nie głuchy… przypale."[Tymczasowy tekst Steve'a Bokkesa]~ */
  IF ~~ THEN REPLY #50360 /* ~"Spokojnie... Chcę ci jedynie zadać kilka pytań..."~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #50361 /* ~Pytania? Wyglądam ci na punkt informacyjny, palancie?[Tymczasowy tekst Steve'a Bokkesa]~ */
  IF ~~ THEN REPLY #50362 /* ~Co to za słownictwo… Dabusy powinny chyba mówić rebusami?[Tymczasowy tekst Steve'a Bokkesa]~ */ GOTO 4
  IF ~~ THEN REPLY #50369 /* ~.~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #50363 /* ~Cholera! Ale z ciebie tępa pała. Każdy wie, że śmierć to język uniwersalny. Po kiego grzyba miałbym wyrzucać z siebie te porąbane symbole, jak i tak byś ich nie zrozumiał? Jak byś wtedy wykonał to zadanie? Poza tym to tylko tymczasowy dialog, debilu.[Tymczasowy tekst Steve'a Bokkesa]~ */
  IF ~~ THEN REPLY #50364 /* ~.~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0
  SAY #50365 /* ~.~ */
  IF ~~ THEN REPLY #50366 /* ~.~ */ DO ~SetGlobal("Know_Dead_Dabus","GLOBAL",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #50367 /* ~Nie ma sprawy, leszczu![Tymczasowy tekst Steve'a Bokkesa]~ */
  IF ~~ THEN REPLY #50368 /* ~Odejdź.~ */ EXIT
END

IF ~  GlobalGT("Alley_Dabus_SC","GLOBAL",0)
Global("Know_Dead_Dabus","GLOBAL",0)
~ THEN BEGIN 7 // from:
  SAY #50371 /* ~Widzisz martwe ciało Dabusa. Towarzyszący rozkładowi smród jest nie do zniesienia... A spoglądając na sztywne, nienaturalnie ułożone zwłoki można wywnioskować, że ostateczny zgon nastąpił dość dawno temu. Mimo to, czujesz się dziwnie poruszony tą sceną.~ */
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #50372 /* ~Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.~ */ GOTO 1
  IF ~~ THEN REPLY #50373 /* ~Pozwól mu spocząć w pokoju.~ */ EXIT
END

IF ~  GlobalGT("Alley_Dabus_SC","GLOBAL",0)
Global("Know_Dead_Dabus","GLOBAL",1)
~ THEN BEGIN 8 // from:
  SAY #50374 /* ~Martwy dabus nie ma ci nic więcej do powiedzenia. Spróbuj ze mną pogadać, jak Steve wrzuci ostateczną wersję dialogu.[Tymczasowy tekst Steve'a Bokkesa]~ */
  IF ~~ THEN REPLY #50375 /* ~Odejdź.~ */ EXIT
END
