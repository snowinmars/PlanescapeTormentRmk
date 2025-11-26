// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPSMESS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DPSMESS~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #47024 /* ~Dieser Typ sieht aus, als hätte er es eilig. Er sieht dich grollend an, als du ihn aufhältst. Er will offensichtlich schnell weg.~ */
  IF ~~ THEN REPLY #47025 /* ~"Ich hätte da ein paar Fragen an dich."~ */ GOTO 1
  IF ~~ THEN REPLY #47026 /* ~"Wer bist du?"~ */ GOTO 1
  IF ~~ THEN REPLY #47027 /* ~"Was kannst du mir über diese Gegend erzählen?"~ */ GOTO 1
  IF ~~ THEN REPLY #47031 /* ~"Vergiß es. Geh ruhig weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #47029 /* ~Er hält kurz inne, doch es ist offensichtlich, daß er dir gar nicht richtig zugehört hat. "Weiß nicht", sagt er und geht.~ */
  IF ~~ THEN REPLY #47030 /* ~"Dann leb wohl."~ */ EXIT
END
