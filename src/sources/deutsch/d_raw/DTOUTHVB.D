// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTOUTHVB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DTOUTHVB~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #33707 /* ~Die lächelnde Frau mittleren Alters trabt auf dich zu und macht einen Knicks. "'Hallo, und sei gegrüßt! Für nur eine Kupermünze kann ich dir meine Dienste als Schlepper anbieten. Kann ich dir ein paar Tips geben?"~ */
  IF ~~ THEN REPLY #33717 /* ~"Was ist ein Schlepper?"~ */ GOTO 2
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33718 /* ~"Okay... hier hast du ein Kupferstück."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33719 /* ~"Im Moment gar nichts. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #33708 /* ~Die lächelnde Frau mittleren Alters winkt fröhlich, als sie dich näherkommen sieht. "Grüß dich! Für nur eine Kupfermünze kann ich dir meine Dienste als Schlepper anbieten. Kann ich dir ein paar Tips geben?"~ */
  IF ~~ THEN REPLY #33720 /* ~"Was ist ein Schlepper?"~ */ GOTO 2
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33721 /* ~"Okay... hier hast du ein Kupferstück."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33722 /* ~"Im Moment gar nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #33709 /* ~Die Frau sieht dich skeptisch an, dann zuckt sie die Schultern. "Ein Schlepper ist eine Art Führer. Ich kann dir ein paar Tips über diesen Stock geben."~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33723 /* ~"Na gut... hier hast du ein Kupferstück.~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33724 /* ~"Danke, aber im Moment brauche ich weder einen Führer noch Tips. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.0
  SAY #33710 /* ~Die Frau nimmt die Münze und macht einen Knicks. "In diesem Stock hier gibt's Tore, die nach Westen und Süden führen. Hier ist auch die Leichenhalle, die Bar 'Zum Staubfänger', das Staubmenschen-Denkmal und ein Mausoleum. Halte dich von einer bestimmten Gasse fern, die nach Südwesten führt. Da lümmeln sich nämlich haufenweise gefährliche Schläger."~ */
  IF ~~ THEN REPLY #33725 /* ~"Wo ist die Leichenhalle?"~ */ GOTO 4
  IF ~~ THEN REPLY #33726 /* ~"Wo ist die Bar 'Zum Staubfänger'?"~ */ GOTO 5
  IF ~~ THEN REPLY #33727 /* ~"Wo ist das Denkmal?"~ */ GOTO 6
  IF ~~ THEN REPLY #33728 /* ~"Wo ist das Mausoleum?"~ */ GOTO 7
  IF ~~ THEN REPLY #33729 /* ~"Wohin kommt man durch das Westtor?"~ */ GOTO 8
  IF ~~ THEN REPLY #33730 /* ~"Wohin kommt man durch das Südtor?"~ */ GOTO 9
  IF ~~ THEN REPLY #33731 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0 6.0 7.0 8.0 9.0
  SAY #33711 /* ~"Die Leichenhalle ist das riesige, kuppelförmige Gebäude im nordöstlichen Teil dieser Gegend. Die Staubmenschen werden dich aber nicht reinlassen, außer, wenn du da geschäftlich zu tun hast. Oder wenn du tot bist, nehme ich an." Sie lächelt dich an.~ */
  IF ~~ THEN REPLY #33732 /* ~"Wo ist die Bar 'Zum Staubfänger'?"~ */ GOTO 5
  IF ~~ THEN REPLY #33733 /* ~"Wo ist das Denkmal?"~ */ GOTO 6
  IF ~~ THEN REPLY #33734 /* ~"Wo ist das Mausoleum?"~ */ GOTO 7
  IF ~~ THEN REPLY #33735 /* ~"Wohin kommt man durch das Westtor?"~ */ GOTO 8
  IF ~~ THEN REPLY #33736 /* ~"Wohin kommt man durch das Südtor?"~ */ GOTO 9
  IF ~~ THEN REPLY #33737 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0 6.1 7.1 8.1
  SAY #33712 /* ~"Die ist in der südwestlichen Ecke dieser Gegend... ein kuppelförmiges Gebäude. Die Tür zeigt nach Südosten. Die Bar 'Zum Staubfänger' ist eine der sichereren, ruhigeren Tavernen im Stock."~ */
  IF ~~ THEN REPLY #33738 /* ~"Wo ist die Leichenhalle?"~ */ GOTO 4
  IF ~~ THEN REPLY #33739 /* ~"Wo ist das Denkmal?"~ */ GOTO 6
  IF ~~ THEN REPLY #33740 /* ~"Wo ist das Mausoleum?"~ */ GOTO 7
  IF ~~ THEN REPLY #33741 /* ~"Wohin kommt man durch das Westtor?"~ */ GOTO 8
  IF ~~ THEN REPLY #33742 /* ~"Wohin kommt man durch das Südtor?"~ */ GOTO 9
  IF ~~ THEN REPLY #33743 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.1 5.1 7.2 8.2 9.1
  SAY #33713 /* ~"Ungefähr in der Mitte der nördlichen Hälfte dieser Gegend.... eine Art Hof mit Mauern drum herum und einem offenen Torbogen in jeder Mauer. Normalerweise trifft man in der Nähe des Südosteingangs auf Staubmenschen, die dort zum Trauern hingehen."~ */
  IF ~~ THEN REPLY #33744 /* ~"Wo ist die Leichenhalle?"~ */ GOTO 4
  IF ~~ THEN REPLY #33745 /* ~"Wo ist die Bar 'Zum Staubfänger'?"~ */ GOTO 5
  IF ~~ THEN REPLY #33746 /* ~"Wo ist das Mausoleum?"~ */ GOTO 7
  IF ~~ THEN REPLY #33747 /* ~"Wohin kommt man durch das Westtor?"~ */ GOTO 8
  IF ~~ THEN REPLY #33748 /* ~"Wohin kommt man durch das Südtor?"~ */ GOTO 9
  IF ~~ THEN REPLY #33749 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.3 4.2 5.2 6.2 8.3 9.2
  SAY #33714 /* ~"Das Mausoleum ist in der nordwestliche Ecke dieser Gegend. Ein großes, altes und quadratisches Gebäude, das aussieht wie ein Turm."~ */
  IF ~~ THEN REPLY #33750 /* ~"Wo ist die Leichenhalle?"~ */ GOTO 4
  IF ~~ THEN REPLY #33751 /* ~"Wo ist die Bar 'Zum Staubfänger'?"~ */ GOTO 5
  IF ~~ THEN REPLY #33752 /* ~"Wo ist das Denkmal?"~ */ GOTO 6
  IF ~~ THEN REPLY #33753 /* ~"Wohin kommt man durch das Westtor?"~ */ GOTO 8
  IF ~~ THEN REPLY #33754 /* ~"Wohin kommt man durch das Südtor?"~ */ GOTO 9
  IF ~~ THEN REPLY #33755 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.4 4.3 5.3 6.3 7.3 9.3
  SAY #33715 /* ~"Zu noch 'nem Teil vom Stock. Da ist eine Spelunke, wo du dich ausruhen kannst, wenn du müde bist."~ */
  IF ~~ THEN REPLY #33756 /* ~"Wo ist die Leichenhalle?"~ */ GOTO 4
  IF ~~ THEN REPLY #33757 /* ~"Wo ist die Bar 'Zum Staubfänger'?"~ */ GOTO 5
  IF ~~ THEN REPLY #33758 /* ~"Wo ist das Denkmal?"~ */ GOTO 6
  IF ~~ THEN REPLY #33759 /* ~"Wo ist das Mausoleum?"~ */ GOTO 7
  IF ~~ THEN REPLY #33760 /* ~"Wohin kommt man durch das Südtor?"~ */ GOTO 9
  IF ~~ THEN REPLY #33761 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.5 4.4 5.4 6.4 7.4 8.4
  SAY #33716 /* ~"Zu noch 'nem Teil vom Stock. In diesem Teil befindet sich ein Tätowierladen und die Bar zur 'Schwelenden Leiche'. Und auch 'ne Menge üble Typen... ein ganzes Gebäude voll."~ */
  IF ~~ THEN REPLY #33762 /* ~"Wo ist die Leichenhalle?"~ */ GOTO 4
  IF ~~ THEN REPLY #33763 /* ~"Wo ist das Denkmal?"~ */ GOTO 6
  IF ~~ THEN REPLY #33764 /* ~"Wo ist das Mausoleum?"~ */ GOTO 7
  IF ~~ THEN REPLY #33765 /* ~"Wohin kommt man durch das Westtor?"~ */ GOTO 8
  IF ~~ THEN REPLY #33766 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END
