// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHENS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DHENS~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3074 /* ~Je suis une chienne, une menteuse, une voleuse ; je suis ta mère ; je suis une plaie suintante que l'on ne peut ignorer… attends, c'est Meredith Brooks. Moi, je suis un commercial qui ment ; à travers mes mensonges, tu peux trouver la vérité. Peut-être.~ */
  IF ~~ THEN REPLY #3366 /* ~Je voudrais bien voir si le dessinateur peut enlever ça. Ça promet !~ */ EXIT
END
