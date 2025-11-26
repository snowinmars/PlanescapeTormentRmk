// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHAUNT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DHAUNT~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2929 /* ~Ich bin ein möglicher Spuk, der Sigil und einige andere Gegenden unsicher macht. Ich weiß nicht, ob ich letztendlich implementiert werde oder nicht.~ */
  IF ~~ THEN REPLY #2930 /* ~Das Leben ist voller Ungewißheiten... und es sieht nicht so aus, als ob sich das nach deinem Ableben bessern würde.~ */ EXIT
END
