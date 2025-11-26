// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLIMX.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DLIMX~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #20723 /* ~Dieses seltsame kleine Wesen scheint eine Kreuzung aus Insekt und Säugetier zu sein. Seine Beine sind übergroß, aber seine Arme sind kurz, fast verkümmert, und auf dem Rücken trägt es einen leuchtend gefleckten Halbpanzer. Außerdem hat es zwei Paar insektenähnliche Flügel, winzige, schwarze Augen und ein Maul, daß immer freundlich zu grinsen scheint.~ */
  IF ~~ THEN REPLY #21872 /* ~Tätschel das Lim-Lim.~ */ GOTO 1
  IF ~~ THEN REPLY #21873 /* ~Gib dem Lim-Lim einen Tritt.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 2
  IF ~~ THEN REPLY #21874 /* ~Laß das Lim-Lim in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 1.0 3.0
  SAY #21867 /* ~"Pijo! Pijo!" Das Lim-Lim hüpft fröhlich herum, seine Flügel summen. Es scheint die Zuwendung ganz besonders zu genießen.~ */
  IF ~~ THEN REPLY #21875 /* ~Tätschel das Lim-Lim noch mal.~ */ GOTO 1
  IF ~~ THEN REPLY #21876 /* ~Gib dem Lim-Lim einen Tritt.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 2
  IF ~~ THEN REPLY #21877 /* ~Laß das Lim-Lim in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.1 3.1
  SAY #21869 /* ~Du versuchst, das Lim-Lim mit einem schnellen Tritt zu treffen, aber es springt wendig aus dem Weg. "Pijo!" Es dreht sich um und flüchtet mit summenden Flügeln.~ */
  IF ~~ THEN REPLY #21878 /* ~Laß es gehen.~ */ DO ~EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #21879 /* ~Jag ihm hinterher und versuch, es noch mal zu treten.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #21871 /* ~Das Lim-Lim sieht zu dir auf. "Piyo! Piyo!" Seine Flügel surren glücklich, als es bemerkt, daß du ihm Beachtung schenkst. "Piyo!"~ */
  IF ~~ THEN REPLY #21880 /* ~Tätschel das Lim-Lim.~ */ GOTO 1
  IF ~~ THEN REPLY #21881 /* ~Gib dem Lim-Lim einen Tritt.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 2
  IF ~~ THEN REPLY #21882 /* ~Laß das Lim-Lim in Ruhe.~ */ EXIT
END
