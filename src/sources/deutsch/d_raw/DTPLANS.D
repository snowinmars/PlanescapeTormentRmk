// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTPLANS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DTPLANS~

IF ~  Global("Current_Area","GLOBAL",1800)
~ THEN BEGIN 0 // from:
  SAY #61864 /* ~Aus den Plänen geht hervor, daß das Grab mit vielen Fallen versehen ist, ihre genauen Positionen aber sind nicht angegeben. Doch du siehst an einer Seite eine Anmerkung, die auf eine besonders tödliche Falle hinweist, die in jedem Raum eingebaut ist. Unten steht eine in einer anderen Handschrift gekritzelte Notiz. Sie sieht aus wie deine Handschrift.~ */
  IF ~~ THEN REPLY #61869 /* ~Lies die Notiz.~ */ DO ~Explore()
~ GOTO 2
  IF ~~ THEN REPLY #61870 /* ~Geschafft.~ */ DO ~Explore()
~ EXIT
END

IF ~  !Global("Current_Area","GLOBAL",1800)
~ THEN BEGIN 1 // from:
  SAY #61866 /* ~Die Pläne wären besser zu verstehen, wenn du dich im Grab selbst befinden würdest. Dann könntest du die Pläne und ihre Umsetzung direkt vergleichen.~ */
  IF ~~ THEN REPLY #61867 /* ~Geschafft.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #61868 /* ~"Die Falle ist scharfgemacht, jetzt muß ich nur noch warten, bis mein Folterer in ihre Mauern tritt. Doch fällt mir ein, daß ich eine Möglichkeit haben muß, die Leiche herauszubekommen, ohne selbst die Fallen überwinden zu müssen... Hmm. Eine Verzauberung vielleicht, die die Leiche zurück an den Anfang transportiert..."~ */
  IF ~~ THEN EXIT
END
