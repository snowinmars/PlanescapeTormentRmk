// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBARKP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DBARKP~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #50470 /* ~Gdy się zbliżyłeś, ten uśmiechnięty mężczyzna skinął radośnie głową w twoją stronę. "Witaj w mojej kawiarni, dobry panie. Czym mogę służyć? Może wina?"~ */
  IF ~~ THEN REPLY #50866 /* ~"Wina nie, ale mam kilka pytań..."~ */ GOTO 1
  IF ~~ THEN REPLY #50867 /* ~"Nic, dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #50868 /* ~Mężczyzna rzuca ci żałosne spojrzenie. "Bardzo przepraszam, panie, ale z zasady serwuję jeno napitek i nic więcej. Obawiam się, że jeśli chcesz porozmawiać, będziesz musiał poszukać gdzieś indziej. Czy jesteś pewien, że nie chcesz nic do picia? Albo może chleba i sera?~ */
  IF ~~ THEN REPLY #50869 /* ~"Nie, nic nie potrzebuję. Żegnaj."~ */ EXIT
END
