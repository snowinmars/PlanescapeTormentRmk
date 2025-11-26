// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANARCH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DANARCH~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3162 /* ~Osoba ta zerka na ciebie z otwartą nieufnością, po czym odwraca się szybko. Zaczyna cię ignorować i wraca do pracy, którą pozostawiła nieukończoną. Wygląda to, jakby cały tłum przygotowywał jakiś rodzaj zbrojnej rewolty.~ */
  IF ~~ THEN REPLY #3163 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #64388 /* ~Tak jak wcześniej, zostajesz kompletnie zignorowany.~ */
  IF ~~ THEN REPLY #64389 /* ~Odejdź.~ */ EXIT
END
