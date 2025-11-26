// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLWTALKA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DLWTALKA~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3038 /* ~Ich gehöre wahrscheinlich zu den wenigen Leuten im Unteren Bezirk, die sich ohne weiteres mit Fremden abgeben. Ich bin eine seltene Ausnahme.~ */
  IF ~~ THEN REPLY #3039 /* ~Was auch immer. Vielleicht können wir uns ja mal unterhalten, wenn du implementiert bist. Dann werden wir ja sehen, ob du eine Ausnahme bist oder nicht.~ */ EXIT
END
