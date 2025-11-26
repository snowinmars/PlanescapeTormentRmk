// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJARYM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DJARYM~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 1 2 3 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #47884 /* ~"Was...? Wer...?"~ */
  IF ~~ THEN REPLY #47885 /* ~"Sei gegrüßt."~ */ GOTO 4
  IF ~~ THEN REPLY #47886 /* ~"Leb wohl."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 2 3 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #47887 /* ~"Du schon wieder?!"~ */
  IF ~~ THEN REPLY #47888 /* ~"Sei gegrüßt."~ */ GOTO 4
  IF ~~ THEN REPLY #47889 /* ~"Leb wohl."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 3 even though they appear after this state */
~  Global("GemQuest","Global",1)
~ THEN BEGIN 2 // from:
  SAY #47890 /* ~"Du bist zurück. Hast du eins gefunden?"~ */
  IF ~~ THEN REPLY #47891 /* ~"Nein. Ich suche noch."~ */ GOTO 6
  IF ~~ THEN REPLY #47892 /* ~"Wonach sollte ich doch gleich suchen?"~ */ GOTO 7
  IF ~  PartyHasItem("DGem")
~ THEN REPLY #47893 /* ~"Ist es das hier, wonach du suchst?"~ */ DO ~TakePartyItem("DGem")
~ GOTO 8
END

IF WEIGHT #0 ~  Global("GemQuest","Global",2)
~ THEN BEGIN 3 // from:
  SAY #47894 /* ~"Hallo. Tut mir leid, wenn ich etwas schroff gewesen bin, aber jetzt, da ich das Juwel hab, muß ich an dem Zauber weiterarbeiten."~ */
  IF ~~ THEN REPLY #47895 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.0 1.0
  SAY #47896 /* ~"Ich hab wirklich keine Zeit, um mit dir zu sprechen. Wie du siehst, versuche ich herauszufinden, wie ich meinen Zauber ohne den wichtigsten Bestandteil vollenden kann."~ */
  IF ~~ THEN REPLY #47897 /* ~"Vielleicht kann ich helfen."~ */ GOTO 5
  IF ~~ THEN REPLY #47898 /* ~"Dann geh ich eben. Leb wohl." ~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #47899 /* ~Jarym hält einen Moment inne. "Ich denke, es könnte nicht schaden. Ich brauche einen Rubin, um meinen Zauber zu vollenden. Er muß von außergewöhnlicher Qualität sein; nicht so ein Schund, wie sie ihn auf dem Markt verkaufen. Wenn du einen finden solltest, bring ihn mir, und ich werde mich erkenntlich zeigen."~ */
  IF ~~ THEN REPLY #47900 /* ~"Leb wohl."~ */ DO ~SetGlobal("GemQuest","Global",1)
~ JOURNAL #47842 /* ~Ein Zauberwirker namens Jarym ist auf der Suche nach einem Rubin, um einen seiner Zauber vervollständigen zu können. Er hat mir versichert, daß es der Mühe wert sei, wenn ich ihm einen zu seinem Haus am Lumpensammler-Platz bringen würde.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.0
  SAY #47901 /* ~"Gib nicht auf. Hier muß irgendwo ein Rubin sein."~ */
  IF ~~ THEN REPLY #47902 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.1
  SAY #47903 /* ~"Du sollst nach einem Rubin suchen, schon vergessen? Wenn du einen findest, bring ihn hierher."~ */
  IF ~~ THEN REPLY #47904 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY #47905 /* ~"Perfekt! Wo hast du... ist ja auch egal! Hier!" Jarym nimmt das Juwel von dir entgegen und gibt dir eine beträchtliche Menge von Münzen. "Wenn du nichts dagegen hast, würde ich jetzt gern an meinem Zauber weiterarbeiten."~ */
  IF ~~ THEN REPLY #47906 /* ~"Leb wohl."~ */ DO ~GivePartyGold(200)
AddexperienceParty(500)
SetGlobal("GemQuest","Global",2)
~ JOURNAL #47841 /* ~Jarym scheint der Rubin zu gefallen, den ich ihm gebracht habe. Ich frage mich, ob dies auch der Fall wäre, wenn er wüßte, daß dies der Edelstein aus Moridors Kästchen ist?~ */ EXIT
END
