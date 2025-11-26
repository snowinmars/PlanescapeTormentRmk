// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGHOCITF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DGHOCITF~

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("DMorte")
~ THEN BEGIN 0 // from:
  SAY #19696 /* ~Dieser weibliche Ghul riecht nach Blut und Aas. Käfer und Würmer kriechen durch ihr langes, strähniges Haar, das sie sich mit grausam aussehenden Krallen aus den gelben Augen streicht. Ihr Fleisch hat eine kranke, grüne Farbe angenommen und ist mit Fäulnis und nässenden Schwären übersät.~ */
  IF ~~ THEN REPLY #19705 /* ~"Sei gegrüßt..."~ */ GOTO 1
  IF ~~ THEN REPLY #19706 /* ~Laß den Ghul in Ruhe.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 6.0
  SAY #19697 /* ~Die Ghulfrau kneift die Augen zusammen und knurrt dich an. Ihre Zunge - die zwei Handlängen lang ist - kommt aus ihrem Mund geringelt und leckt über ihre aufgesprungenen Lippen.~ */
  IF ~~ THEN REPLY #19707 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #19708 /* ~"Ich muß mich verabschieden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #19698 /* ~Die Ghul-Frau beäugt dich weiter hungrig. Sie ballt und öffnet ihre bekrallten Fäuste, als ob sie gegen den Drang ankämpft, sich auf dich zu stürzen und dich zu verspeisen.~ */
  IF ~~ THEN REPLY #19709 /* ~"Beruhige dich, und beantworte meine Fragen."~ */ GOTO 3
  IF ~~ THEN REPLY #19710 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #19699 /* ~Die Ghul-Frau kreischt dich an: "Schweig, Fleisch! Sei ruhig! Ich hör kein Fleischding an! Ich hör nur dein Herz, Blut in den Venen des Fleischdings, süßes, leckeres Blut... schmackhaftes, reichhaltiges Herzfleisch..." Geifer läuft aus ihrem Maul und platscht auf die staubigen Fliesen. "NICHT REDEN!"~ */
  IF ~~ THEN REPLY #19711 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #19700 /* ~Die Ghul-Frau kreischt dich an, als du näherkommst: "Weg! Geh weg! Ich *rede* nicht mit Fleischdingern, ich *höre* nicht zu, Fleisch! GEH!"~ */
  IF ~~ THEN REPLY #19712 /* ~Geh.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
Global("Morte_DN_Warn","AR1500",0)
~ THEN BEGIN 5 // from:
  SAY #19701 /* ~Dieser weibliche Ghul riecht nach Blut und Aas. Käfer und Würmer kriechen durch ihr langes, strähniges Haar, das sie sich mit grausam aussehenden Krallen aus den gelben Augen streicht. Ihr Fleisch hat eine kranke, grüne Farbe angenommen und ist mit Fäulnis und nässenden Schwären übersät.~ */
  IF ~~ THEN DO ~SetGlobal("Morte_DN_Warn","AR1500",1)
~ EXTERN ~DMORTE~ 204
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
Global("Morte_DN_Warn","AR1500",1)
~ THEN BEGIN 6 // from:
  SAY #50422 /* ~Dieser weibliche Ghul riecht nach Blut und Aas. Käfer und Würmer kriechen durch ihr langes, strähniges Haar, das sie sich mit grausam aussehenden Krallen aus den gelben Augen streicht. Ihr Fleisch hat eine kranke, grüne Farbe angenommen und ist mit Fäulnis und nässenden Schwären übersät.~ */
  IF ~~ THEN REPLY #50423 /* ~"Sei gegrüßt..."~ */ GOTO 1
  IF ~~ THEN REPLY #50425 /* ~Laß den Ghul in Ruhe.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END
