// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBARIH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DBARIH~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9708 /* ~Dieses Wesen hat den Körper eines Widders und den Oberkörper eines Mannes. Aus seinem zotteligen Kopf sprießen gewundene Hörner, und in sein Fell sind komplizierte Muster gefärbt und geschoren. Farbige Perlen und einfacher Schmuck sind in sein Haar geflochten und baumeln von seinen Hörnern. Es scheint dich nicht zu bemerken.~ */
  IF ~~ THEN REPLY #7544 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #7565 /* ~Laß ihn in Frieden.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2725 /* ~Entweder hat es dich nicht gehört, oder es tut nur so. Es scheint, als wolle das Wesen weitergehen.~ */
  IF ~~ THEN REPLY #7623 /* ~"Ich sagte, 'Sei gegrüßt'."~ */ GOTO 2
  IF ~~ THEN REPLY #7646 /* ~Laß ihn vorbei.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #2734 /* ~Seine Augen folgen dir argwöhnisch... das Wesen scheint mißtrauisch, aber nicht furchtsam zu sein.~ */
  IF ~~ THEN REPLY #12334 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #12335 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #2743 /* ~Die Stimme des Wesens ist tief und klangvoll: "In den Straßen des Stocks? Hier ist nicht der Ort für solche Dinge. Laß mich in Ruhe; vielleicht treffen wir uns dann mal an einem besseren Ort wieder und unterhalten uns dort."~ */
  IF ~~ THEN REPLY #12336 /* ~"Ich wollte dir nur ein paar Fragen stellen..."~ */ GOTO 4
  IF ~~ THEN REPLY #12337 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #2753 /* ~"Ein anderes Mal, Zweibeiner... ein anderes Mal." Das Wesen beginnt wegzugehen.~ */
  IF ~~ THEN REPLY #12339 /* ~Greif ihn an, während er weggeht.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #12340 /* ~Laß ihn los.~ */ EXIT
END
