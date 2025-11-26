// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLOOTER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DLOOTER~

IF ~  !Dead("Jujog")
~ THEN BEGIN 0 // from:
  SAY #53202 /* ~Dieser Mensch zuckt förmlich vor eifriger Erregung. Seine Augen brennen in bösartiger Erwartung. Als du ihn ansprichst, richtet sich sein Blick auf dich und er grinst: "Was?"~ */
  IF ~~ THEN REPLY #53203 /* ~"Was geht hier vor sich?"~ */ GOTO 1
  IF ~~ THEN REPLY #53204 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53205 /* ~"Wenn du ein bißchen bei dem Treiben hier mitmachen willst, mußt du mit Jujog sprechen. Und jetzt verschwinde!"~ */
  IF ~~ THEN REPLY #53206 /* ~"Moment mal... wer ist Jujog?"~ */ GOTO 2
  IF ~~ THEN REPLY #53207 /* ~"Na gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53208 /* ~Sie werfen dir einen ärgerlichen Blick zu und deuten vage eine Richtung an. "Die Wache dort, mit der Rüstung."~ */
  IF ~~ THEN REPLY #53209 /* ~Geh weg.~ */ EXIT
END

IF ~  Dead("Jujog")
~ THEN BEGIN 3 // from:
  SAY #53210 /* ~Dieser Mensch ist in Panik, schreit und scheint unfähig, einen klaren Gedanken zu fassen. "Jujog ist tot! Was machen wir jetzt? Wir müssen hier raus!"~ */
  IF ~~ THEN REPLY #53211 /* ~Geh weg.~ */ EXIT
END
