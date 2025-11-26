// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGREEN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DGREEN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #51177 /* ~You see what appears to be an ordinary Lim-Lim. It's hard to believe that this cute little creature slaughtered five wizard apprentices with such ease. ~ */
  IF ~~ THEN REPLY #51178 /* ~Kick Lim-Lim.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #60321 /* ~Leave it alone.~ */ EXIT
END
