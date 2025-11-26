// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJARCK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DJARCK~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3071 /* ~Ich bin Jarckel mit den drei Gesichtern. Theoretisch bekommst du mich in dreifacher Ausführung und mußt Rätsel lösen, die von dem Trunk abhängen, den du mir gibt. Dafür bekommst du von mir vielleicht was Cooles.~ */
  IF ~~ THEN REPLY #3368 /* ~Vielleicht? Vielleicht hau ich dir sonst eine in dein rattenartiges, zombiemäßiges, dummes menschliches Gesicht.~ */ EXIT
  IF ~~ THEN EXIT
END
