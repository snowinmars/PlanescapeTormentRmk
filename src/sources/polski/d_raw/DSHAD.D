// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSHAD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DSHAD~

IF ~  Global("Zap","GLOBAL",1)
NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #23915 /* ~"Nie rozmawiaj ze mną. Pogadaj z Raimonem." Szczurołak zdaje się unikać twego wzroku.~ */
  IF ~~ THEN REPLY #23931 /* ~"Dobrze."~ */ EXIT
END

IF ~  Global("Zap","GLOBAL",1)
NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #23309 /* ~"Mówiłem ci, żebyś ze mną nie rozmawiał." Szczurołak dalej nie chce na ciebie spojrzeć.~ */
  IF ~~ THEN REPLY #23933 /* ~"Dobrze."~ */ EXIT
END

IF ~  Global("Zap","GLOBAL",2)
~ THEN BEGIN 2 // from:
  SAY #23310 /* ~"Nie możesz iść sobie gdzie indziej?" W głosie szczurołaka nie ma ani cienia zainteresowania.~ */
  IF ~~ THEN REPLY #23934 /* ~"Chyba tak. Żegnaj."~ */ EXIT
END

IF ~  Global("Zap","GLOBAL",3)
~ THEN BEGIN 3 // from:
  SAY #23916 /* ~"Wielki człowiek, co? Uciekaj stąd, zanim Raimon zbierze się na odwagę i zawoła po posiłki." Szczurołak wydaje się być dziwnie niezainteresowany.~ */
  IF ~~ THEN REPLY #23935 /* ~"A gdybym tak ja TOBIE zagroził?"~ */ GOTO 4
  IF ~~ THEN REPLY #23936 /* ~"W takim razie już mnie nie ma."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #23917 /* ~Szczurołak wzrusza ramionami.~ */
  IF ~~ THEN REPLY #23937 /* ~Zaatakuj go.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #23938 /* ~"W takim razie, żegnaj."~ */ EXIT
END

IF ~  Global("Zap","GLOBAL",4)
~ THEN BEGIN 5 // from:
  SAY #23918 /* ~"Ach, na miłość mo... Chyba musisz umrzeć, trepie..."~ */
  IF ~~ THEN REPLY #23939 /* ~"Możesz spróbować."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  NearbyDialog("DAnnah")
~ THEN BEGIN 6 // from:
  SAY #23919 /* ~Po zabiciu innego szczurołaka, mężczyzna spogląda na Annę. "Anno, jestem Szadeusz. Uwalniam cię. Nie mogę już patrzyć na to, jak jesteś więziona. Powiedz o mnie dobre słowo, kiedy wrócisz do Wioski, i daj im znać, że tutaj dzieje się coś złego. Jeszcze nie wiem dokładnie co, ale... ty też to widzisz."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 160
END

IF ~~ THEN BEGIN 7 // from:
  SAY #23920 /* ~Szczurołak zabiera klucze z ciała Raimona, i otwiera przed tobą drzwi. "Ruszajcie." Kłania ci się lekko i odbiega.~ */
  IF ~~ THEN REPLY #23434 /* ~"Zrobimy to. Dziękuję."~ */ DO ~SetGlobal("Zap","GLOBAL",5)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
EscapeArea()
~ EXIT
END

IF ~  !NearbyDialog("DAnnah")
~ THEN BEGIN 8 // from:
  SAY #23921 /* ~"Zastanawiasz się, dlaczego to zrobiłem, prawda? Kiedyś byłem mieszkańcem Zakopanej Wioski. Nazywałem się Szadeusz. Nie chcę być szczurołakiem, a już na pewno nie jestem przez tę chorobę mniej lojalny w stosunku do ludzi. Teraz wychodź." Szczurołak otwiera przed tobą drzwi i odbiega.~ */
  IF ~~ THEN REPLY #23940 /* ~"Dziękuję. Żegnaj, Szadeuszu."~ */ DO ~SetGlobal("Zap","GLOBAL",5)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
EscapeArea()
~ EXIT
END
