// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGT1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGT1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #33548 /* ~"Bei Shivas stinkenden Eingeweiden! Was ist denn *dieses* faulig riechende Teil?"~ */
  IF ~~ THEN EXTERN ~DTHUGT2~ 1
END

IF ~~ THEN BEGIN 1 // from:
  SAY #33549 /* ~"Vielleicht sollten wir die Leiche einsacken und gegen eine Belohnung zurückbringen, was?" Er sieht seinen Kumpel an und wackelt mit den Augenbrauen.~ */
  IF ~~ THEN REPLY #33565 /* ~"Sehr witzig... und jetzt geht mir aus dem Weg."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #33566 /* ~"Geht mir aus dem Weg oder ich lege euch beide um."~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #33567 /* ~"Geht mir aus dem Weg oder ich lege euch beide um."~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #33568 /* ~"Ich will keinen Ärger.... laßt mich vorbei."~ */ EXTERN ~DTHUGT2~ 5
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #33569 /* ~"Ich will keinen Ärger.... laßt mich vorbei."~ */ EXTERN ~DTHUGT2~ 6
  IF ~~ THEN REPLY #33570 /* ~Stöhne wie ein Untoter: "Oooooohhh..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Taunter_1","GLOBALLaw",-1)
~ EXTERN ~DTHUGT2~ 7
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #33550 /* ~Der Mann zieht die Augenbrauen hoch. "He! 'Geht mir aus dem Weg', hat er gesagt..."~ */
  IF ~~ THEN EXTERN ~DTHUGT2~ 2
END

IF ~~ THEN BEGIN 3 // from: 1.1 7.1
  SAY #33551 /* ~Der Mann hebt die Hände. "Mal halblang, Schleifer! War nur'n Scherz! Und jetzt mach, daß du hier wegkommst..."~ */
  IF ~~ THEN DO ~SetGlobal("Thug_Escape","GLOBAL",1)
~ EXTERN ~DTHUGT2~ 3
END

IF ~~ THEN BEGIN 4 // from: 1.2 7.2
  SAY #33552 /* ~Der Gesichtsausdruck des Mannes verfinstert sich plötzlich. Sein Mund verzieht sich zu einem spöttischen Grinsen. "Das möchte ich gern mal sehen, Leiche!"~ */
  IF ~~ THEN DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXTERN ~DTHUGT2~ 4
END

IF ~~ THEN BEGIN 5 // from:
  SAY #33553 /* ~"Genug mit der Knochenschüssel geklappert, Junge. Lassen wir den Dussel in Ruhe. Komm, laß uns gehen."~ */
  IF ~~ THEN REPLY #33571 /* ~Laß sie gehen.~ */ DO ~SetGlobal("Thug_Escape","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY #33554 /* ~Die beiden Männer ziehen ihre Messer...~ */
  IF ~~ THEN REPLY #33572 /* ~Kämpfe mit ihnen.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #33573 /* ~Flieh.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY #33555 /* ~"Nun... krieg dich wieder ein..."~ */
  IF ~~ THEN REPLY #33574 /* ~Sabbere und schau sie hungrig an.~ */ EXTERN ~DTHUGT2~ 8
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #33575 /* ~"Geht mir aus dem Weg oder ich lege euch beide um."~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #33576 /* ~"Geht mir aus dem Weg oder ich lege euch beide um."~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #33577 /* ~"Laßt mich durch. Ich will keinen Ärger."~ */ EXTERN ~DTHUGT2~ 5
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #33578 /* ~"Laßt mich durch. Ich will keinen Ärger."~ */ EXTERN ~DTHUGT2~ 6
END
