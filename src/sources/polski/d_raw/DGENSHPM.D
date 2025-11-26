// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGENSHPM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DGENSHPM~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36044 /* ~Widzisz mężczyznę spokojnie oglądającego towary.~ */
  IF ~~ THEN REPLY #36045 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #36046 /* ~Zignoruj tego mężczyznę.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36047 /* ~Spogląda na ciebie. "Tak, śmiałku?"~ */
  IF ~~ THEN REPLY #36048 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #36049 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #36050 /* ~Marszczył brwi i odprawia cię ręką. "Nie mam na to czasu, śmiałku. Zostaw mnie w spokoju." Odwraca się.~ */
  IF ~~ THEN REPLY #36051 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #36052 /* ~Klient odwraca się, żeby na ciebie popatrzyć, po czym natychmiast odwraca się do ciebie plecami. Nie reaguje na twoje próby porozmawiania z nim.~ */
  IF ~~ THEN REPLY #36053 /* ~Odejdź.~ */ EXIT
END
