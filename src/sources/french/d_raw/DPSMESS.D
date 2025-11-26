// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPSMESS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DPSMESS~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #47024 /* ~Ce jeune homme a l'air extrêmement pressé, comme le montre le regard chargé de ressentiment qu'il te lance. Il ne demande visiblement qu'à partir.~ */
  IF ~~ THEN REPLY #47025 /* ~"J'aurais quelques questions à te poser."~ */ GOTO 1
  IF ~~ THEN REPLY #47026 /* ~"Qui es-tu ?"~ */ GOTO 1
  IF ~~ THEN REPLY #47027 /* ~"Qu'est-ce que tu peux me dire au sujet du quartier ?"~ */ GOTO 1
  IF ~~ THEN REPLY #47031 /* ~"Laisse tomber. Continue à ta façon, si tu préfères."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #47029 /* ~Il s'arrête un instant, mais il est évident qu'il n'a pas fait attention à ce que tu disais. "Sais pas," réplique-t-il avant de repartir.~ */
  IF ~~ THEN REPLY #47030 /* ~"Alors, au revoir."~ */ EXIT
END
