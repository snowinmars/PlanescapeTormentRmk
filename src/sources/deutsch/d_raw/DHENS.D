// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHENS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DHENS~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3074 /* ~Ich bin eine Schlampe, eine Lügnerin, eine Diebin. Ich bin deine Mutter. Ich bin eine Pestbeule... nein, warte, das ist Meredith Brooks. Ich bin ein lügender Verkäufer, und durch meine Lügen kannst du zur Wahrheit gelangen. Vielleicht.~ */
  IF ~~ THEN REPLY #3366 /* ~Bin gespannt, wie der Designer das hinkriegt. Wird bestimmt lustig!~ */ EXIT
END
