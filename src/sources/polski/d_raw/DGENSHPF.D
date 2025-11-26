// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGENSHPF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DGENSHPF~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36034 /* ~Widzisz kobietę, która spokojnie ogląda towary.~ */
  IF ~~ THEN REPLY #36035 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #36036 /* ~Zignoruj tę kobietę.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36037 /* ~Spogląda na ciebie. "Tak, śmiałku?"~ */
  IF ~~ THEN REPLY #36038 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #36039 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #36040 /* ~Odprawia cię ręką. "Nie mam na to czasu, śmiałku. Zostaw mnie w spokoju." Odwraca się.~ */
  IF ~~ THEN REPLY #36041 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #36042 /* ~Klientka zauważa twoje przyjście i obraca się do ciebie plecami. Nie reaguje na twoje próby porozmawiania z nią.~ */
  IF ~~ THEN REPLY #36043 /* ~Odejdź.~ */ EXIT
END
