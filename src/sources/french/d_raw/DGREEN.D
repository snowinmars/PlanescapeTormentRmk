// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGREEN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGREEN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #51177 /* ~Tu vois quelque chose qui ressemble à un Lim-Lim ordinaire. Tu as du mal à croire que cette adorable petite créature a massacré cinq apprentis magiciens avec tant de facilité.~ */
  IF ~~ THEN REPLY #51178 /* ~Donne un coup de pied au Lim-Lim.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #60321 /* ~Pars.~ */ EXIT
END
