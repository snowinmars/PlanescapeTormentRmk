// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : FINNOTE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~FINNOTE~

IF ~  Global("P_Journal","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY #50376 /* ~Dies sind die Aufzeichnungen des verstorbenen Linguisten Fin Andlye. Sie enthalten Ergebnisse seiner Forschungsarbeit über die Sprache der Uyo... die der Schrift äußerst ähnelt, die du im dodekaedrischen Rätselkasten vorgefunden hast.~ */
  IF ~~ THEN REPLY #50377 /* ~Lies sie aufmerksam durch, und beobachte, ob sie eine Erinnerung wachrufen.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PlaySoundNotRanged("SPTR_01")
SetGlobal("P_Journal","GLOBAL",4)
~ JOURNAL #50379 /* ~Ich hab die Aufzeichnungen des Linguisten Fin Andlye durchgelesen und festgestellt, daß ich die Sprache, in der die Texte auf dem dodekaedrischen Rätselkasten verfaßt wurden, bereits kannte... es ist die tote Sprache der Uyo. Nun kann ich das Ding endlich lesen~ */ GOTO 1
  IF ~~ THEN REPLY #50378 /* ~Leg sie weg.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #50380 /* ~Als du Fin Andlyes Aufzeichnungen über die ausgestorbene Sprache der Uyo durchliest, spürst du, wie deine Schläfen pulsieren und eine Erinnerung in dir hochkommt... die Erinnerung an diese Sprache.

Du erinnerst dich an Buchstaben, Wörter und Sätze, bis die Sprache - wie durch einen Windstoß, der die giftige Smogdecke über der Großen Gießerei vertreibt - sich dir erneut in ihrer Gesamtheit offenbart. Jetzt müßtest du die Schrift im Dodekaeder lesen können.~ */
  IF ~~ THEN REPLY #50381 /* ~Leg die Aufzeichnungen weg.~ */ EXIT
END

IF ~  !Global("P_Journal","GLOBAL",3)
~ THEN BEGIN 2 // from:
  SAY #50382 /* ~Dies sind die Aufzeichnungen des verstorbenen Linguisten Fin Andlye. Sie enthalten Ergebnisse seiner Forschungsarbeit über die Sprache der Uyo.~ */
  IF ~~ THEN REPLY #50383 /* ~Leg sie weg.~ */ EXIT
END
