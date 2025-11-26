// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGHOCITM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DGHOCITM~

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("DMorte")
~ THEN BEGIN 0 // from:
  SAY #19675 /* ~Dieser geifernde, gelbäugige Ghul stinkt nach Blut und Aas. Er stochert mit seinen langen, dreckigen Krallen in seinen schiefen Reißzähnen und schnuppert dabei ständig in der Luft herum. Sein Fleisch hat eine kranke, grüne Farbe angenommen, und er ist mit Fäulnis und nässenden Schwären übersät.~ */
  IF ~~ THEN REPLY #19683 /* ~"Sei gegrüßt..."~ */ GOTO 1
  IF ~~ THEN REPLY #19684 /* ~Laß den Ghul in Ruhe.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 6.0
  SAY #19676 /* ~Der Ghul kneift die Augen zusammen und knurrt dich an. Seine Zunge - die zwei Handlängen lang ist - kommt aus seinem Mund geringelt und leckt über seine aufgesprungenen Lippen.~ */
  IF ~~ THEN REPLY #19685 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #19686 /* ~"Ich muß mich verabschieden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #19677 /* ~Der Ghul beäugt dich weiter hungrig. Er ballt und öffnet seine bekrallten Fäuste, als ob er gegen den Drang ankämpft, sich auf dich zu stürzen und dich zu verspeisen.~ */
  IF ~~ THEN REPLY #19687 /* ~"Beruhige dich, und beantworte meine Fragen."~ */ GOTO 3
  IF ~~ THEN REPLY #19688 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #19678 /* ~Der Ghul zischt dich an: "Schweig, Fleisch! Sei ruhig! Ich hör kein Fleischding an! Ich hör nur dein Herz, Blut in den Venen des Fleischdings, süßes, leckeres Blut... schmackhaftes, reichhaltiges Herzfleisch..." Geifer läuft aus seinem Maul und platscht auf die staubigen Fliesen. "NICHT REDEN!"~ */
  IF ~~ THEN REPLY #19689 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #19679 /* ~Der Ghul zischt dich an, als du näherkommst: "Weg! Geh weg! Ich *rede* nicht mit Fleischdingern, ich *höre* nicht zu, Fleisch! GEH!"~ */
  IF ~~ THEN REPLY #19690 /* ~Geh.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
Global("Morte_DN_Warn","AR1500",0)
~ THEN BEGIN 5 // from:
  SAY #19680 /* ~Dieser geifernde, gelbäugige Ghul stinkt nach Blut und Aas. Er stochert mit seinen langen, dreckigen Krallen in seinen schiefen Reißzähnen und schnuppert dabei ständig in der Luft herum. Sein Fleisch hat eine kranke, grüne Farbe angenommen, und er ist mit Fäulnis und nässenden Schwären übersät.~ */
  IF ~~ THEN DO ~SetGlobal("Morte_DN_Warn","AR1500",1)
~ EXTERN ~DMORTE~ 202
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
Global("Morte_DN_Warn","AR1500",1)
~ THEN BEGIN 6 // from:
  SAY #50419 /* ~Dieser geifernde, gelbäugige Ghul stinkt nach Blut und Aas. Er stochert mit seinen langen, dreckigen Krallen in seinen schiefen Reißzähnen und schnuppert dabei ständig in der Luft herum. Sein Fleisch hat eine kranke, grüne Farbe angenommen, und er ist mit Fäulnis und nässenden Schwären übersät.~ */
  IF ~~ THEN REPLY #50420 /* ~"Sei gegrüßt..."~ */ GOTO 1
  IF ~~ THEN REPLY #50421 /* ~Laß den Ghul in Ruhe.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END
