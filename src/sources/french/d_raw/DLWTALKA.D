// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLWTALKA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DLWTALKA~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3038 /* ~Je suis peut-être l'une des seules personnes du Bas Quartier qui n'a pas peur de parler à un étranger. Je suis une exception rare.~ */
  IF ~~ THEN REPLY #3039 /* ~Peu importe. Nous aurons peut-être une autre conversation quand tu seras prêt. Je verrai alors si tu es une exception ou non.~ */ EXIT
END
