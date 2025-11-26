// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : BATHUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~BATHUG~

IF ~  GlobalGT("RW","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY #34568 /* ~"Zapłaciłeś, zabijając tę dziwkę Krystal. Szefowi to wystarczy. A ja ciągle myślę, że powinniśmy cię wykończyć. Wynoś się stąd."~ */
  IF ~~ THEN REPLY #34569 /* ~"Wzruszające. Żegnaj."~ */ EXIT
END

IF ~  Global("Paid_DAS","AR0301",0)
~ THEN BEGIN 1 // from:
  SAY #34570 /* ~"Będziemy od ciebie chcieli kilka monet. Monet albo krwi. Idź i pogadaj z tym, co pobiera opłaty - i nie próbuj się wymigiwać. Zrozumiano?"~ */
  IF ~~ THEN REPLY #34571 /* ~"Nie sądzę."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34572 /* ~"Dobrze."~ */ EXIT
  IF ~~ THEN REPLY #34573 /* ~Uciekaj.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  Global("Paid_DAS","AR0301",1)
~ THEN BEGIN 2 // from:
  SAY #34574 /* ~"Już zapłaciłeś, no to czego się w końcu nie odszpicujesz? Już cię tu nie potrzebujemy."~ */
  IF ~~ THEN REPLY #34575 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END
