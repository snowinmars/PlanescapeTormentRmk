// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLIMX.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DLIMX~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #20723 /* ~Cette créature à l'apparence mi-animale mi-insecte est de petite taille et a l'air très bizarre. Ses jambes sont disproportionnées, mais ses bras sont petits et presque inexistants, et son dos est orné d'une coquille brillante tachetée. Elle a deux paires d'ailes d'insecte et de minuscules yeux noirs, ainsi qu'une bouche qui paraît toujours sourire joyeusement.~ */
  IF ~~ THEN REPLY #21872 /* ~Caresse le Lim-Lim.~ */ GOTO 1
  IF ~~ THEN REPLY #21873 /* ~Donne un coup de pied au Lim-Lim.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 2
  IF ~~ THEN REPLY #21874 /* ~Laisse le Lim-Lim tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 1.0 3.0
  SAY #21867 /* ~"Piyo ! Piyo !" Le Lim-Lim rebondit joyeusement, ses ailes bourdonnant. Il semble apprécier grandement cette affection.~ */
  IF ~~ THEN REPLY #21875 /* ~Caresse encore le Lim-Lim.~ */ GOTO 1
  IF ~~ THEN REPLY #21876 /* ~Donne un coup de pied au Lim-Lim.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 2
  IF ~~ THEN REPLY #21877 /* ~Laisse le Lim-Lim tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.1 3.1
  SAY #21869 /* ~Tu essaies de décrocher un coup de pied au Lim-Lim, mais il saute agilement hors de portée. "Piyo !" Il se retourne et détale, faisant bourdonner ses ailes.~ */
  IF ~~ THEN REPLY #21878 /* ~Laisse-le partir.~ */ DO ~EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #21879 /* ~Poursuis-le et essaie de lui redonner un coup de pied.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #21871 /* ~Le Lim-Lim lève la tête vers toi. "Piyo ! Piyo !" Ses ailes se mettent à bourdonner joyeusement lorsqu'il s'aperçoit que tu le regardes. "Piyo !"~ */
  IF ~~ THEN REPLY #21880 /* ~Caresse le Lim-Lim.~ */ GOTO 1
  IF ~~ THEN REPLY #21881 /* ~Donne un coup de pied au Lim-Lim.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 2
  IF ~~ THEN REPLY #21882 /* ~Laisse le Lim-Lim tranquille.~ */ EXIT
END
