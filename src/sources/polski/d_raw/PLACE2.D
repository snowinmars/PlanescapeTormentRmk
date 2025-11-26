// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : PLACE2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~PLACE2~

IF ~  Global("Jhelai","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #38700 /* ~Widzisz przed sobą chudego mężczyznę w poplamionym ubraniu. Ma haczykowaty nos, a z czoła wystają mu dwa grube rogi. Chodzi w koło i coś do siebie mruczy... Śmierdzi wodą z ogórków, wymiocinami i tanim winem.~ */
  IF ~  Global("Craddock_Quest","GLOBAL",1)
~ THEN REPLY #38701 /* ~"Witaj."~ */ DO ~SetGlobal("Jhelai","GLOBAL",1)
SetGlobal("Craddock_Quest","GLOBAL",2)
~ GOTO 1
  IF ~~ THEN REPLY #38702 /* ~"Czy ty jesteś Jhelai? Jeśli tak, Kradok potrzebuje cię na targu."~ */ JOURNAL #30880 /* ~Abel Myśliciel powiedział mi, że Ravela została zesłana do jednego z labiryntów Pani Bólu. Kluczem do portalu prowadzącego do labiryntu ma być podobno coś należące do niej. Niezbyt to pomocne.~ */ EXIT
  IF ~~ THEN REPLY #38703 /* ~Przejdź obok.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #38704 /* ~"Co?" Mężczyzna spogląda na ciebie spod przymrużonych oczu. "Czego? Co jest?"~ */
  IF ~~ THEN REPLY #38705 /* ~"Czy ty jesteś Jhelai? Jeśli tak, Kradok potrzebuje cię na targu."~ */ EXIT
  IF ~~ THEN REPLY #38706 /* ~"Mniejsza z tym. Nie przeszkadzaj sobie."~ */ EXIT
END
