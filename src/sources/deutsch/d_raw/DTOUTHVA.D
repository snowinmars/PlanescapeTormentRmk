// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTOUTHVA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DTOUTHVA~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #33670 /* ~Der laute, dreckige Typ schlendert auf dich zu und verbeugt sich kurz. "Grüß dich, Schleifer! Meine Schlepper-Dienste für nur eine Kupfermünze! Willst du von mir Tips haben?"~ */
  IF ~~ THEN REPLY #33678 /* ~"Was ist ein Schlepper?"~ */ GOTO 2
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33679 /* ~"Okay... hier hast du ein Kupferstück."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33680 /* ~"Im Moment gar nichts. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #33671 /* ~Der laute, dreckige Typ bemerkt sofort, daß er deine Aufmerksamkeit erregt hat. "Sei wieder gegrüßt, Schleifer! Meine Schlepper-Dienste für nur eine Kupfermünze! Willst du von mir Tips haben?"~ */
  IF ~~ THEN REPLY #33681 /* ~"Was ist ein Schlepper?"~ */ GOTO 2
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33682 /* ~"Okay... hier hast du ein Kupferstück."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33683 /* ~"Im Moment gar nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #33672 /* ~Der Mann zieht eine Augenbraue hoch und zuckt dann die Schultern. "Ein Führer, Schleifer... ich gebe dir Tips, damit du dich in diesem Stock zurechtfindest."~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33684 /* ~"Na gut... hier hast du ein Kupferstück.~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33685 /* ~"Danke, aber im Moment brauche ich weder einen Führer noch Tips. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.0
  SAY #33673 /* ~Der Mann nimmt die Münze und verbeugt sich. "In diesem Stock hier gibt's Tore, die nach Osten, Norden und Südwesten führen. Hier ist auch die Spelunke, wo sich müde Vollblüter ausruhen können."~ */
  IF ~~ THEN REPLY #33686 /* ~"Wo ist die Spelunke?"~ */ GOTO 4
  IF ~~ THEN REPLY #33687 /* ~"Wohin kommt man durch das Nordtor?"~ */ GOTO 5
  IF ~~ THEN REPLY #33688 /* ~"Wohin kommt man durch das Osttor?"~ */ GOTO 6
  IF ~~ THEN REPLY #33689 /* ~"Wohin kommt man durch das Südwesttor?"~ */ GOTO 7
  IF ~~ THEN REPLY #33690 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0 6.0 7.0
  SAY #33674 /* ~"Mitten in diesem Stock, Schleifer... ein langes, schmales Gebäude. Die Tür zeigt nach Südosten. Guter Platz als Absteige für eine Nacht, wenn du so richtig groggy bist."~ */
  IF ~~ THEN REPLY #33691 /* ~"Wohin kommt man durch das Nordtor?"~ */ GOTO 5
  IF ~~ THEN REPLY #33692 /* ~"Wohin kommt man durch das Osttor?"~ */ GOTO 6
  IF ~~ THEN REPLY #33693 /* ~"Wohin kommt man durch das Südwesttor?"~ */ GOTO 7
  IF ~~ THEN REPLY #33694 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0 6.1 7.1
  SAY #33675 /* ~"Zum Lumpensammler-Platz, Schleifer... wo alle Sammler ihre Absteige haben."~ */
  IF ~~ THEN REPLY #33695 /* ~"Wo ist die Spelunke?"~ */ GOTO 4
  IF ~~ THEN REPLY #33696 /* ~"Wohin kommt man durch das Osttor?"~ */ GOTO 6
  IF ~~ THEN REPLY #33697 /* ~"Wohin kommt man durch das Südwesttor?"~ */ GOTO 7
  IF ~~ THEN REPLY #33698 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.1 5.1 7.2
  SAY #33676 /* ~"Zu einem anderen Teil des Stocks, Schleifer. Wo die Leichenhalle und die Bar 'Zum Staubfänger' ist. Da heben die Staubmenschen gerne einen. Außerdem ist da noch ein Mausoleum und das große Staubmenschen-Denkmal."~ */
  IF ~~ THEN REPLY #33699 /* ~"Wo ist die Spelunke?"~ */ GOTO 4
  IF ~~ THEN REPLY #33700 /* ~"Wohin kommt man durch das Nordtor?"~ */ GOTO 5
  IF ~~ THEN REPLY #33701 /* ~"Wohin kommt man durch das Südwesttor?"~ */ GOTO 7
  IF ~~ THEN REPLY #33702 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.3 4.2 5.2 6.2
  SAY #33677 /* ~"Zu einem anderen Teil des Stocks, Schleifer. Das Büro für Schädlings- und Seuchenbekämpfung ist da, und ein großer Markt."~ */
  IF ~~ THEN REPLY #33703 /* ~"Wo ist die Spelunke?"~ */ GOTO 4
  IF ~~ THEN REPLY #33704 /* ~"Wohin kommt man durch das Nordtor?"~ */ GOTO 5
  IF ~~ THEN REPLY #33705 /* ~"Wohin kommt man durch das Osttor?"~ */ GOTO 6
  IF ~~ THEN REPLY #33706 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END
