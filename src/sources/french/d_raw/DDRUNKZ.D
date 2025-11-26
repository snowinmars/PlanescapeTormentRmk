// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDRUNKZ.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDRUNKZ~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9711 /* ~Cet homme oscille, en équilibre précaire, se reprend, puis réussit à adresser un sourire madré à quelque chose qui se trouve derrière ton oreille droite.~ */
  IF ~~ THEN REPLY #9864 /* ~"Bonjour…"~ */ GOTO 1
  IF ~~ THEN REPLY #9866 /* ~Laisse-le.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9855 /* ~Il hoche la tête lentement, puis s'arrache un raclement de gorge et un filet de bave coule sur son menton sale et mal rasé. Il a l'air à peine capable de rester debout, et il est hors de question de discuter avec lui.~ */
  IF ~~ THEN REPLY #9867 /* ~"Peu importe… Au revoir."~ */ EXIT
END
