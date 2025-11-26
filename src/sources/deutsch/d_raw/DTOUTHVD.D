// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTOUTHVD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DTOUTHVD~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #33815 /* ~Die attraktive, spärlich bekleidete Frau ruft, als du näherkommst. "Hallo, Hallo! Entschuldigung! Du siehst aus, als ob du dich verirrt hast, wenn ich das so unverblümt sagen darf... brauchst du vielleicht die Dienste eines Schleppers? Nur eine Kupfermünze..."~ */
  IF ~~ THEN REPLY #33824 /* ~"Was ist ein Schlepper?"~ */ GOTO 2
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33825 /* ~"Okay... hier hast du ein Kupferstück."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33826 /* ~"Im Moment gar nichts. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #33816 /* ~"Brauchst du die Dienste eines Schleppers, guter Mann? Kostet dich nur eine Kupfermünze..."~ */
  IF ~~ THEN REPLY #33827 /* ~"Was ist ein Schlepper?"~ */ GOTO 2
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33828 /* ~"Okay... hier hast du ein Kupferstück."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33829 /* ~"Im Moment gar nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #33817 /* ~"Ein Führer, der dir den Weg durch diesen Teil des Stocks zeigt."~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33830 /* ~"Na gut... hier hast du ein Kupferstück.~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33831 /* ~"Danke, aber im Moment brauche ich weder einen Führer noch Tips. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.0
  SAY #33818 /* ~"Ich danke dir... das Geld ist gut angelegt." Sie steckt die Kupfermünze ein. "Zwei Tore führen hier raus, beide auf der ganz westlichen Seite, eins im Norden und eins im Süden. Zwei Orte, die für dich interessant sein könnten, sind die Bar 'Zur Schwelenden Leiche' und ein Tatöwierladen. Schließlich gibt's da noch mehrere Gebäude, die oft als Mietshaus der Schläger bezeichnet werden... ein sehr, sehr gefährlicher Ort."~ */
  IF ~~ THEN REPLY #33832 /* ~"Wo ist die Bar 'Zur Schwelenden Leiche'?"~ */ GOTO 4
  IF ~~ THEN REPLY #33833 /* ~"Wo ist der Tätowierladen?"~ */ GOTO 5
  IF ~~ THEN REPLY #33834 /* ~"Wohin kommt man durch das Nordwesttor?"~ */ GOTO 6
  IF ~~ THEN REPLY #33835 /* ~"Wo ist dieses Mietshaus der Schläger?"~ */ GOTO 8
  IF ~~ THEN REPLY #33836 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0 6.0 7.0 8.0
  SAY #33819 /* ~"Genau in der Mitte des Gebiets... ein quadratisches Gebäude mit einer Kuppel. Geh die südlichste Ost-West-Straße runter, dann siehst du den Eingang, der nach Süden zeigt."~ */
  IF ~~ THEN REPLY #33837 /* ~"Wo ist der Tätowierladen?"~ */ GOTO 5
  IF ~~ THEN REPLY #33838 /* ~"Wohin kommt man durch das Nordwesttor?"~ */ GOTO 6
  IF ~~ THEN REPLY #33839 /* ~"Wohin kommt man durch das Südwesttor?"~ */ GOTO 7
  IF ~~ THEN REPLY #33840 /* ~"Wo ist dieses Mietshaus der Schläger?"~ */ GOTO 8
  IF ~~ THEN REPLY #33841 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0 6.1 7.1 8.1
  SAY #33820 /* ~"Der Laden ist am östlichen Ende dieser Gegend... ein Kuppelgebäude mit gußeisernem Geflecht oben drauf... der Eingang zeigt nach Südwesten."~ */
  IF ~~ THEN REPLY #33842 /* ~"Wo ist die Bar 'Zur Schwelenden Leiche'?"~ */ GOTO 4
  IF ~~ THEN REPLY #33843 /* ~"Wohin kommt man durch das Nordwesttor?"~ */ GOTO 6
  IF ~~ THEN REPLY #33844 /* ~"Wohin kommt man durch das Südwesttor?"~ */ GOTO 7
  IF ~~ THEN REPLY #33845 /* ~"Wo ist dieses Mietshaus der Schläger?"~ */ GOTO 8
  IF ~~ THEN REPLY #33846 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.1 5.1 7.2 8.2
  SAY #33821 /* ~"Zu dem Teil des Stocks, in dem die Leichenhalle ist. Da ist auch die Bar 'Zum Staubfänger', das Staubmenschen-Denkmal und ein Mausoleum."~ */
  IF ~~ THEN REPLY #33847 /* ~"Wo ist die Bar 'Zur Schwelenden Leiche'?"~ */ GOTO 4
  IF ~~ THEN REPLY #33848 /* ~"Wo ist der Tätowierladen?"~ */ GOTO 5
  IF ~~ THEN REPLY #33849 /* ~"Wohin kommt man durch das Südwesttor?"~ */ GOTO 7
  IF ~~ THEN REPLY #33850 /* ~"Wo ist dieses Mietshaus der Schläger?"~ */ GOTO 8
  IF ~~ THEN REPLY #33851 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 5.2 6.2 8.3
  SAY #33822 /* ~"Das Tor führt zu dem Teil des Stocks, in dem sich das Büro zur Schädlings- und Seuchenbekämpfung und ein ziemlich großer Markt befinden."~ */
  IF ~~ THEN REPLY #33852 /* ~"Wo ist die Bar 'Zur Schwelenden Leiche'?"~ */ GOTO 4
  IF ~~ THEN REPLY #33853 /* ~"Wo ist der Tätowierladen?"~ */ GOTO 5
  IF ~~ THEN REPLY #33854 /* ~"Wohin kommt man durch das Nordwesttor?"~ */ GOTO 6
  IF ~~ THEN REPLY #33855 /* ~"Wo ist dieses Mietshaus der Schläger?"~ */ GOTO 8
  IF ~~ THEN REPLY #33856 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.3 4.3 5.3 6.3 7.3
  SAY #33823 /* ~Sie nickt. "Es handelt sich dabei um eine Ansammlung von Gebäuden entlang der Nordseite dieser Gegend... mach da lieber einen großen Bogen drum. Außer natürlich, wenn du scharf auf eine Schlägerei bist."~ */
  IF ~~ THEN REPLY #33857 /* ~"Wo ist die Bar 'Zur Schwelenden Leiche'?"~ */ GOTO 4
  IF ~~ THEN REPLY #33858 /* ~"Wo ist der Tätowierladen?"~ */ GOTO 5
  IF ~~ THEN REPLY #33859 /* ~"Wohin kommt man durch das Nordwesttor?"~ */ GOTO 6
  IF ~~ THEN REPLY #33860 /* ~"Wohin kommt man durch das Südwesttor?"~ */ GOTO 7
  IF ~~ THEN REPLY #33861 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END
