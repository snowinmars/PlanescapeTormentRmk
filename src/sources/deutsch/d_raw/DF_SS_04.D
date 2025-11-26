// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_04.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_04~

IF ~  !Global("S_Stone","AR0603",4)
!Global("S_Stone","AR0603",11)
~ THEN BEGIN 0 // from:
  SAY #34215 /* ~Dies ist ein ungewöhnlicher grünlich-gelber Stein. Er ist fest an dem Sockel befestigt, auf dem er liegt.~ */
  IF ~~ THEN REPLY #47430 /* ~Geh weg.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",4)
~ THEN BEGIN 1 // from:
  SAY #47431 /* ~Dies ist der grüngelbe Stein, zu dem dir der Kurator den Weg gewiesen hat. In ihm ist die Erfahrung 'Wahres Wunder' eingeschlossen.~ */
  IF ~~ THEN REPLY #47432 /* ~Beginn die Erfahrung.~ */ GOTO 2
  IF ~~ THEN REPLY #47433 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47434 /* ~Zögernd machst du den Mund auf und atmest flach... und Wasser strömt in deine Lunge wie kalte Luft. Du lächelst, atmest tief ein und gaffst in alle Richtungen, als du langsam auf den Grund des Hafenbeckens hinabsinkst, wo Hunderte von bunten Fischen sich durch hin und her windende leuchtende Korallenstreifen schlängeln. Als deine Füße den Grund berühren, schaust du zum Kiel deines Schiffes hinauf, du lachst laut vor Freude, und eine Kette großer Luftblasen schießt an die Wasseroberfläche...~ */
  IF ~  Global("Sensation04","AR0603",0)
~ THEN REPLY #47435 /* ~Lös dich von der Erfahrung.~ */ DO ~SetGlobal("Sensation04","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation04","AR0603",1)
~ THEN REPLY #47436 /* ~Lös dich von der Erfahrung, und geh weg.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",11)
~ THEN BEGIN 3 // from:
  SAY #47437 /* ~Dies ist der grüngelbe Stein, zu dem dir der Kurator den Weg gewiesen hat. In ihm liegt die Erfahrung 'Reine Freude' eingeschlossen.~ */
  IF ~~ THEN REPLY #47438 /* ~Beginn die Erfahrung.~ */ GOTO 4
  IF ~~ THEN REPLY #47439 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47440 /* ~Im Rhythmus der strammen Festmusik der Waldelfen tanzt und hüpfst du mit einem Dutzend anderer Tänzer wie ein wirbelnder Derwisch auf der Waldlichtung und grinst und lachst dabei wie verrückt. Als die fröhlichen Waldbewohner neben dir jauchzen, tanzen und in die Hände klatschen, sausen Feengeister über euren Köpfen durch die Luft und hinterlassen funkensprühende Spuren farbigen Lichts...~ */
  IF ~  Global("Sensation11","AR0603",0)
~ THEN REPLY #47441 /* ~Lös dich von der Erfahrung.~ */ DO ~SetGlobal("Sensation11","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation11","AR0603",1)
~ THEN REPLY #47442 /* ~Lös dich von der Erfahrung, und geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0 4.0
  SAY #47443 /* ~Die Erfahrung scheint eine längst vergessene ähnliche Erinnerung in dir wachgerüttelt zu haben. Du hast das Gefühl, daß du irgendwie vom Gebrauch des Sinnessteins profitiert hast.~ */
  IF ~~ THEN REPLY #47444 /* ~Geh weg.~ */ EXIT
END
