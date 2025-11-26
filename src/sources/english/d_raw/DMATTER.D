// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMATTER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMATTER~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2893 /* ~This giant of a man wears an equally immense suit of ornate red armor. He regards you cautiously but without fear as you approach him.~ */
  IF ~~ THEN REPLY #2894 /* ~A booming voice echoes from within his great helm: "Greetings, citizen. I am Matter-Of-Course... bodyguard to Diligence, Fourth Magistrate of the Ward. You must excuse me, for my duties lie at her side. Farewell."~ */ EXIT
END
