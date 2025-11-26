// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DYBGANG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DYBGANG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #46105 /* ~Le jeune homme en colère a de moins en moins l'air d'un malfrat. On dirait plutôt un gosse cherchant à passer pour un dur. "Va caguer, bige ! lance-t-il d'un air narquois en te voyant approcher. Tu peux peut-être parler avec les nantis, mais compte pas sur moi pour te jouer la chansonnette."~ */
  IF ~~ THEN REPLY #46106 /* ~"Euh, d'accord. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #46107 /* ~Pars.~ */ EXIT
END
