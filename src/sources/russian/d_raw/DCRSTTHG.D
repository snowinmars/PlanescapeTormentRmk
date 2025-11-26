// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSTTHG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSTTHG~

IF ~~ THEN BEGIN 0 // from:
  SAY #3164 /* ~Ты видишь молодого человека, примеряющего неподходящие вещи. Он смотрит на тебя скучающим взглядом.~ */
  IF ~~ THEN REPLY #3165 /* ~«Приветствую».~ */ EXIT
END
