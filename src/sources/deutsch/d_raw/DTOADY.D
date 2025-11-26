// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTOADY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DTOADY~

IF ~  GlobalLT("Sarhava","GLOBAL",4)
~ THEN BEGIN 0 // from:
  SAY #32066 /* ~Der junge Adlige grinst spöttisch, als du näherkommst, sagt aber nichts.~ */
  IF ~~ THEN REPLY #32067 /* ~"Sei gegrüßt..."~ */ GOTO 1
  IF ~~ THEN REPLY #32073 /* ~Laß ihn in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #32069 /* ~Er ignoriert dich ganz offensichtlich.~ */
  IF ~~ THEN REPLY #32074 /* ~Geh weg.~ */ EXIT
END

IF ~  Global("Sarhava","GLOBAL",4)
~ THEN BEGIN 2 // from:
  SAY #32070 /* ~Der junge Adlige vermeidet es, dir in die Augen zu sehen, als du näherkommst, kichert aber mit vorgehaltener Hand und schüttelt dabei den Kopf.~ */
  IF ~~ THEN REPLY #32075 /* ~"Sei gegrüßt..."~ */ GOTO 3
  IF ~~ THEN REPLY #32076 /* ~Laß ihn in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #32071 /* ~Er verdreht die Augen und bedeutet dir mit einer Handbewegung, wegzugehen. Er ist nicht gewillt, deinen Gruß auch nur mit einem einzigen Wort zu erwidern.~ */
  IF ~~ THEN REPLY #32077 /* ~Verschwinde.~ */ EXIT
END

IF ~  Global("Sarhava","GLOBAL",6)
~ THEN BEGIN 4 // from:
  SAY #32072 /* ~Der junge Adlige nickt höflich zum Gruß, weigert sich aber, mit dir zu sprechen.~ */
  IF ~~ THEN REPLY #32078 /* ~Verschwinde.~ */ EXIT
END
