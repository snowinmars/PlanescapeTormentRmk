// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVLASK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DVLASK~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 1 even though they appear after this state */
~  Global("Vlask","Global",0)
~ THEN BEGIN 0 // from:
  SAY #45717 /* ~Im Unterschied zu den anderen Sammlern, die du kennst, scheint dieses Exemplar eine Robe von erlesenster Qualität zu tragen. "Ah, da ist schon der nächste Totenbüchler. Entschuldige die *Unordnung*: Meine Kollegen hatten leider noch keine Zeit aufzuräumen."~ */
  IF ~~ THEN REPLY #45718 /* ~"Es gibt keinen Ausgang..."~ */ DO ~SetGlobal("Vlask","GLOBAL",1)
~ GOTO 2
END

IF WEIGHT #0 ~  Global("Vlask","Global",1)
~ THEN BEGIN 1 // from:
  SAY #45719 /* ~Vlask lacht leise vor sich hin. "Du schon wieder! Meine Freunde und ich bekommen nur selten Folgeaufträge. Aber kommen wir gleich zur Sache: Der Schlüssel kostet jetzt zweihundert Kupfermünzen."~ */
  IF ~~ THEN REPLY #45720 /* ~"Ich bin zurückgekommen, um dich zu töten."~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  PartyGoldGT(199)
~ THEN REPLY #45722 /* ~"Nimm das Geld."~ */ DO ~TakePartyGold(200)
GiveItemCreate("Vkey",Protagonist,1,0,0)
~ GOTO 5
  IF ~~ THEN REPLY #45723 /* ~"Soviel hab ich nicht."~ */ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #45724 /* ~"Natürlich gibt's einen, und zwar die Tür da drüben. Aber um das Portal zu aktivieren, brauchst du das hier." Er zeigt dir einen Gegenstand, der wie eine kleine Glasperle aussieht. "Sprechen wir über den Preis".~ */
  IF ~~ THEN REPLY #45725 /* ~"Ich glaub, ich sollte dich lieber töten."~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #45726 /* ~"Ich höre..."~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #45727 /* ~"Ganz einfach. Du gibst mir und meinen Kameraden hundert Kupfermünzen, dann kriegst du von mir den Schlüssel für das Portal."~ */
  IF ~~ THEN REPLY #45728 /* ~"Und wenn ich nicht zahlen will?"~ */ GOTO 4
  IF ~  PartyGoldGT(99)
~ THEN REPLY #45729 /* ~"Hier ist das Geld. Gib mir den Schlüssel."~ */ DO ~GiveItemCreate("Vkey",Protagonist,1,0,0)
TakePartyGold(100)
~ GOTO 5
  IF ~  PartyGoldLT(100)
~ THEN REPLY #45732 /* ~"Soviel hab ich nicht."~ */ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #45734 /* ~"Dann sehen wir uns leider gezwungen, dein Knochengerüst den Staubmenschen zu verkaufen. Irgendwie müssen wir ja zu unserem Geld kommen."~ */
  IF ~~ THEN REPLY #45735 /* ~"Ich glaube, ich sollte dich lieber töten."~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  PartyGoldGT(99)
~ THEN REPLY #45736 /* ~"Hier ist das Geld. Gib mir den Schlüssel."~ */ DO ~GiveItemCreate("Vkey",Protagonist,1,0,0)
TakePartyGold(100)
~ GOTO 5
  IF ~  PartyGoldLT(100)
~ THEN REPLY #45737 /* ~"Soviel hab ich nicht."~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 1.1 3.1 4.1
  SAY #45738 /* ~"Meine Kameraden und ich freuen sich, mit dir ins Geschäft zu kommen. Um das Portal zu aktivieren, brauchst du einfach nur die Glasperle zu zerquetschen." ~ */
  IF ~~ THEN REPLY #45739 /* ~"Leb wohl."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("3006CUT2",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.2 3.2 4.2
  SAY #45740 /* ~"Wie bedauerlich. Jungs, macht ihn fertig für die Staubmenschen."~ */
  IF ~~ THEN REPLY #45741 /* ~"Bereite dich schon mal auf den Tod vor..."~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
~ EXIT
END
