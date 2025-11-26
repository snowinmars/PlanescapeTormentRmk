// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLECTURE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DLECTURE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #50862 /* ~Die Person dreht sich um und wirft dir einen leicht verärgerten Blick zu. "Ich höre mir diesen Vortrag an, mein Herr. Ihr werdet sicher so gütig sein, mich dabei nicht zu stören. Lebt wohl."~ */
  IF ~~ THEN REPLY #50863 /* ~Geh weg.~ */ EXIT
END
