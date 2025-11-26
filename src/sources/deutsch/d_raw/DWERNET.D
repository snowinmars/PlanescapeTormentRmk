// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DWERNET.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DWERNET~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58937 /* ~Du siehst einen stämmigen Schläger. Die Narben und Falten in seinem Gesicht erzählen zahllose Geschichten der Gewalt, und seine Stimme klingt wie Kies, der durch ein Flußbett geschoben wird. "Was willste, Dussel?"~ */
  IF ~  Global("Caretaker","GLOBAL",2)
~ THEN REPLY #66327 /* ~"Ich möchte mit dir über Kyse, den Müllhalden-Verwalter, sprechen.~ */ DO ~SetGlobal("Caretaker","GLOBAL",3)
~ GOTO 2
  IF ~~ THEN REPLY #66328 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #66329 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #66324 /* ~"Was, du schon wieder?" Er rülpst.~ */
  IF ~  Global("Caretaker","GLOBAL",2)
~ THEN REPLY #66330 /* ~"Ich möchte mit dir über Kyse, den Müllhalden-Verwalter, sprechen."~ */ DO ~SetGlobal("Caretaker","GLOBAL",3)
~ GOTO 2
  IF ~~ THEN REPLY #66331 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #66332 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #66325 /* ~"Oooh, hat der arme kleine Mann mitbekommen, daß wir sein Geld holen kommen?" Er kratzt sich. "Geh zu ihm, und sag ihm, daß er aufgeben soll. Sonst ist er ein toter Mann. Und jetzt geh weiter."~ */
  IF ~~ THEN REPLY #66333 /* ~"Ich hätte da erst ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #66334 /* ~"Na gut. Leb wohl."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.0
  SAY #66326 /* ~"Ich bin doch kein stinkender Schlepper. Wenn du jemand brauchst, der Fragen beantwortet, dann frag jemand, der was dafür übrig hat. Ich jedenfalls nicht. Jetzt verzieh dich von hier, bevor ich meine Jungs auf dich hetze."~ */
  IF ~  Global("Caretaker","GLOBAL",3)
~ THEN REPLY #66335 /* ~"Na gut. Dann leb wohl."~ */ DO ~EscapeArea()
~ EXIT
  IF ~  GlobalLT("Caretaker","GLOBAL",3)
~ THEN REPLY #66336 /* ~"Na gut. Dann leb wohl."~ */ EXIT
END
