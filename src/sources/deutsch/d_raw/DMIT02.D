// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMIT02.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMIT02~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #43002 /* ~Diese Person trägt ein Bündel Papierblätter und offene Schriftrollen. Sie hält gelegentlich inne, um einen Blick darauf zu werfen und ein paar Sätze laut vorzulesen. Dabei übt sie kunstvolle Handbewegungen. Als du dich vor sie stellst, blickt sie auf. "Sei gegrüßt..."~ */
  IF ~~ THEN REPLY #43003 /* ~"Sei gegrüßt Wo sind wir hier?"~ */ GOTO 1
  IF ~~ THEN REPLY #43004 /* ~"Bin nur zufällig vorbeigekommen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #43005 /* ~"Dies ist ein Ort, an den angehende Zauberer zum Üben und Lernen kommen. Viele haben hier ihre ersten Schritte als Nachwuchsmagier unternommen."~ */
  IF ~  Global("Thorncombe","GLOBAL",0)
~ THEN REPLY #43006 /* ~"Wo ist die Ausbilderin?"~ */ DO ~SetGlobal("Thorncombe","GLOBAL",1)
~ JOURNAL #66871 /* ~Ich bin in den Magietrainingsraum in der Städtischen Festhalle gegangen, habe aber keinen Lehrer gefunden. Einer der Zauberlehrlinge dort hat mir gesagt, ich solle Lady Dornenkamm - die Lehrerein - in den Sinnsorien der Festhalle suchen.~ */ GOTO 2
  IF ~  GlobalGT("Thorncombe","GLOBAL",0)
GlobalLT("Thorncombe","GLOBAL",3)
~ THEN REPLY #66870 /* ~"Wo ist die Ausbilderin?"~ */ GOTO 2
  IF ~~ THEN REPLY #43007 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #43008 /* ~"Ich weiß nicht, wo Lady Dornenkamm hingegangen ist. Versuch's doch mal in den Sinnsorien... sie verbringt dort einen Großteil ihrer Zeit." Dann senkt die Gestalt ihre Stimme und flüstert dir mit gerunzelter Stirn zu: "Vielleicht einen zu großen Teil."~ */
  IF ~~ THEN REPLY #43009 /* ~"Die Sinnsorien?"~ */ GOTO 3
  IF ~~ THEN REPLY #43010 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #43011 /* ~"Frag Splitter, am Eingang der Festhalle, nach ihnen. Du kannst nicht alle zu ihnen gelangen, aber er wird dich hinführen."~ */
  IF ~~ THEN REPLY #43012 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END
