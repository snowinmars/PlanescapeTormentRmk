// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : WERERAT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~WERERAT~

IF ~  Dead("Mantuok")
~ THEN BEGIN 0 // from:
  SAY #29298 /* ~"Meeeenschlicher Abschaum! STIIIIIIIIRB!" Die Werratte stürzt sich auf dich.~ */
  IF ~~ THEN REPLY #29304 /* ~"Himmel Arsch und Zwirn! Ich wollte doch nur reden!"~ */ DO ~Enemy()
~ EXIT
END

IF ~  True()
~ THEN BEGIN 1 // from:
  SAY #29299 /* ~Der häßliche Rattenmensch zischt dich an: "Was willst du, Mensch?"~ */
  IF ~~ THEN REPLY #29305 /* ~"Wer bist du?"~ */ GOTO 2
  IF ~~ THEN REPLY #29306 /* ~"Wo ist Lothar?"~ */ GOTO 3
  IF ~~ THEN REPLY #29307 /* ~"Wo bin ich hier?"~ */ GOTO 4
  IF ~~ THEN REPLY #29308 /* ~"Kennst du Mantuok?"~ */ GOTO 5
  IF ~~ THEN REPLY #29309 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #29300 /* ~Die Werratte mustert dich verachtungsvoll von Kopf bis Fuß. "Geht dich nichts aaaaaan, Mensch." Sie gibt ein zischendes Lachen von sich.~ */
  IF ~~ THEN REPLY #29310 /* ~"Na gut. Wo ist Lothar?"~ */ GOTO 3
  IF ~~ THEN REPLY #29311 /* ~"Was ist das für ein Ort hier?"~ */ GOTO 4
  IF ~~ THEN REPLY #29312 /* ~"Wo ist Mantuok?"~ */ GOTO 5
  IF ~~ THEN REPLY #29313 /* ~"Vergiß es einfach."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0 5.0
  SAY #29301 /* ~"Der Meister ... ist hier. Er beobachtet dich... bestimmt gerade." Die Schnurrhaare der Werratte zucken. "Verschwinde jetzt! Ich will nicht mehr mit dir sprechen!"~ */
  IF ~~ THEN REPLY #29314 /* ~"Nun gut."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.1 5.1
  SAY #29302 /* ~"Das ist unser Nest. Du wirst doch nicht öfter zu uns kommen, Mensch? Solche wie dich brauchen wir hier nicht."~ */
  IF ~~ THEN REPLY #29315 /* ~"Keine Sorge. Der Gestank würde mich wahrscheinlich ohnehin umhauen. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #29316 /* ~"Wahrscheinlich nicht. Ist ja nicht gerade ein angenehmer Ort. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.3 2.2
  SAY #29303 /* ~"Mantuok? Was willst du von Mantuok? Mantuok wird dich schon finden, wenn du Mantuok brauchst." Die Werratte zischt und weicht vor dir zurück.~ */
  IF ~~ THEN REPLY #29317 /* ~"Dann sag mir, wo Lothar ist."~ */ GOTO 3
  IF ~~ THEN REPLY #29318 /* ~"Dann erzähl mir was über diesen Ort."~ */ GOTO 4
  IF ~~ THEN REPLY #29319 /* ~"Na gut. Leb wohl."~ */ EXIT
END
