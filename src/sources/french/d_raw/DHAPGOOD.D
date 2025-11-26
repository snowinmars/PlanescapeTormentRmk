// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHAPGOOD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DHAPGOOD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2839 /* ~Nous sommes les frères qui gardons les portes des Dédales d'Ordures et du Village Enseveli dessous. Tu devras nous piéger ou nous vaincre si tu veux passer.~ */
  IF ~~ THEN REPLY #2840 /* ~Ça a l'air fascinant. J'ai hâte de voir ce que ça donnera quand le CREATEUR aura FINI. Sheesh. Bonne JOURNEE, messieurs.~ */ EXIT
END
