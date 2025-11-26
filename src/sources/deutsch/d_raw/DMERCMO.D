// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMERCMO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMERCMO~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9364 /* ~Dieser alte Mann schreit mit hochrotem Kopf in die Menschenmenge. Als du näherkommst, nehmen seine Augen einen hoffnungsvollen Glanz an. "Habt Ihr nicht ein paar Minuten... oder eine Münze übrig? Für eine der schönsten Sachen diesseits von Sigil, Sir?"~ */
  IF ~~ THEN REPLY #9365 /* ~"Laß mich sehen, was du zu bieten hast, wenn ich mich bei Rob Holloway nach den Kaufläden erkundigt habe."~ */ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9366 /* ~"Hmmm. Na gut, kommt wieder, wenn Ihr mit ihm gesprochen habt."~ */
  IF ~~ THEN REPLY #9367 /* ~"Das werde ich."~ */ EXIT
END
