// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCGOON1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCGOON1~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 4 3 even though they appear after this state */
~  NumTimesTalkedTo(0)
CreatureInArea("AR0706")
~ THEN BEGIN 0 // from:
  SAY #53695 /* ~"Słuchaj trepie, lepiej stąd zwiewaj... póki ci życie miłe."~ */
  IF ~~ THEN REPLY #53696 /* ~"Żegnaj więc."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 4 3 even though they appear after this state */
~  NumTimesTalkedTo(1)
CreatureInArea("AR0706")
~ THEN BEGIN 1 // from:
  SAY #53697 /* ~"Być może niedosłyszysz. Zjeżdżaj stąd. Powtarzać tego nie będę."~ */
  IF ~~ THEN REPLY #53698 /* ~"Żegnaj."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 4 3 even though they appear after this state */
~  NumTimesTalkedTo(2)
CreatureInArea("AR0706")
~ THEN BEGIN 2 // from:
  SAY #53699 /* ~"Miałeś szansę, trepie. Powinieneś się zmyć, kiedy mogłeś." Opryszek atakuje!~ */
  IF ~~ THEN REPLY #53700 /* ~Walcz.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF WEIGHT #0 ~  Global("Lynch_Mob","GLOBAL",1)
CreatureInArea("AR0900")
~ THEN BEGIN 3 // from:
  SAY #66759 /* ~"Będziesz tu stał i kłapał jadaczką? A może chcesz nas uratować? Zmywaj się!"~ */
  IF ~~ THEN REPLY #66760 /* ~"W porządku. Żegnaj."~ */ DO ~EscapeArea()
~ EXIT
END

IF WEIGHT #1 ~  Global("Lynch_Mob","GLOBAL",0)
CreatureInArea("AR0900")
~ THEN BEGIN 4 // from:
  SAY #66761 /* ~Ten gęsto owłosiony mężczyzna obrzuca cię pogardliwym spojrzeniem. "Czegoż to, trepie? Nie widzisz, że likwidujemy śmiecia, który nas wpędził do Tartaru? Pozbędziemy się tego skurla i jesteśmy złoci. Wracamy do Krain Zewnętrznych; po kłopocie."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #66769 /* ~"Dzieje się to, że ta wasza zbiorowa mentalność jeszcze bardziej przybliża to miejsce do Tartaru. Wybaczcie mu i działajcie wspólnie, by odrzucić zło, które zawładnęło miastem. Zwiększą się szanse, że zostaniecie 'złoci'."~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #66771 /* ~"Dzieje się to, że ta wasza zbiorowa mentalność jeszcze bardziej przybliża to miejsce do Tartaru. Wybaczcie mu i działajcie wspólnie, by odrzucić zło, które zawładnęło miastem. Zwiększą się szanse, że zostaniecie 'złoci'."~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #66772 /* ~"Czemu sądzisz, że zabicie go rozwiąże problem? Przekonaj tych ludzi, by podjęli obronę miasta przed potworami. Ukazanie swym politykom, że nie mają nad wami władzy, będzie najlepszą zemstą."~ */ DO ~SetGlobal("Lynch_Mob","GLOBAL",2)
~ GOTO 6
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #66773 /* ~"Czemu sądzisz, że zabicie go rozwiąże problem? Przekonaj tych ludzi, by podjęli obronę miasta przed potworami. Ukazanie swym politykom, że nie mają nad wami władzy, będzie najlepszą zemstą."~ */ GOTO 5
  IF ~~ THEN REPLY #66774 /* ~"Nie ruszaj się. Gdy jestem w pobliżu, żadne lincze się nie będą odbywać."~ */ DO ~SetGlobal("Lynch_Mob","GLOBAL",2)
~ GOTO 6
  IF ~~ THEN REPLY #66775 /* ~"Mam inne rzeczy do roboty. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1 4.3
  SAY #66776 /* ~"Ale on... on... Cholera. W porządku. Udało ci się." Mówi głośniej, by tłum mógł go usłyszeć. "Pozwólcie mu odejść! Mamy całe miasto, o które się musimy zatroszczyć!"~ */
  IF ~~ THEN REPLY #66777 /* ~"Dzięki, przyjacielu. Powodzenia."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
SetGlobal("Lynch_Mob","GLOBAL",1)
AddexperienceParty(150000)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.2 4.4
  SAY #66778 /* ~"Stul dzub, trepie. Mamy sprawę do rozwiązania!" Odwraca się do swych pomocników. "Zajmijcie się nim!"~ */
  IF ~~ THEN REPLY #66779 /* ~Zaatakuj.~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #66780 /* ~Przyglądaj się.~ */ EXIT
END
