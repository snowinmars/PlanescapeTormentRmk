// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART04.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DART04~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34192 /* ~Eine belebte blutige Eisenkette, die sich in sich selbst zusammen- und wieder auseinanderrollt. Die Kette selbst scheint sich zu biegen und winden wie die Wirbelsäule einer Schlange. Auf einer kleinen Plakette steht: Belebte Kette einer Kyton, aus Klimpernder Hiter.'~ */
  IF ~~ THEN REPLY #42657 /* ~Berühre die Kette.~ */ DO ~SetGlobal("View_Art_04","AR0608",1)
~ GOTO 1
  IF ~~ THEN REPLY #42658 /* ~Geh weg.~ */ DO ~SetGlobal("View_Art_04","AR0608",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42656 /* ~Die Kette fühlt sich leicht warm an, als wäre sie lebendig. Dir fällt auf, daß mehrere winzige Stacheln und andere spitze Gegenstände auf der gesamten Kette festgeschweißt sind.~ */
  IF ~~ THEN REPLY #42659 /* ~Geh weg.~ */ EXIT
END
