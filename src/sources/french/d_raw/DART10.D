// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART10.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DART10~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34202 /* ~Ce tableau représente un coucher de soleil sur la mer : un grand soleil rouge orangé disparaît derrière une péninsule ou une grande jetée. La scène, malgré sa banalité, est impressionnante - sur l'eau, le miroitement de la lumière du jour déclinant est superbement rendu -, mais si tu regardes le soleil trop longtemps, tes yeux te font mal. Une pancarte annonce : 'Surface de la Thalassie'.~ */
  IF ~~ THEN REPLY #42674 /* ~Touche le tableau.~ */ DO ~SetGlobal("View_Art_10","AR0608",1)
~ GOTO 1
  IF ~~ THEN REPLY #42675 /* ~Pars.~ */ DO ~SetGlobal("View_Art_10","AR0608",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42676 /* ~Curieusement, la surface du tableau n'a rien d'insolite.~ */
  IF ~~ THEN REPLY #42677 /* ~Pars.~ */ EXIT
END
