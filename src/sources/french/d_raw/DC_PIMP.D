// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_PIMP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_PIMP~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67973 /* ~Le garde costaud t'inspecte de pied en cap. "C'est pas moi que t'es venu voir, matois, mais elles." Il t'indique les femmes attirantes, bien qu'un peu vulgaires, qui se trouvent derrière lui. "Attention à bien te tenir, matois… fais pas de mal à ces dames."~ */
  IF ~~ THEN REPLY #67975 /* ~"En fait, c'est à *toi* que je voulais parler…"~ */ GOTO 1
  IF ~~ THEN REPLY #67976 /* ~"Dans ce cas, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #67974 /* ~Il secoue la tête et, malgré son casque, tu le vois qui lève les yeux aux ciel. Il ne desserre plus les lèvres.~ */
  IF ~~ THEN REPLY #67977 /* ~Pars.~ */ EXIT
END
