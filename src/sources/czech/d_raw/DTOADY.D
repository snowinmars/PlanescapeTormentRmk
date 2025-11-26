// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTOADY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DTOADY~

IF ~  GlobalLT("Sarhava","GLOBAL",4)
~ THEN BEGIN 0 // from:
  SAY #32066 /* ~Mladá šlechtična se ušklíbla, když jsi přišel blíž, ale nic neříká.~ */
  IF ~~ THEN REPLY #32067 /* ~"Zdravím..."~ */ GOTO 1
  IF ~~ THEN REPLY #32073 /* ~Nechej ho být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #32069 /* ~Ignoruje tě.~ */
  IF ~~ THEN REPLY #32074 /* ~Odejdi.~ */ EXIT
END

IF ~  Global("Sarhava","GLOBAL",4)
~ THEN BEGIN 2 // from:
  SAY #32070 /* ~Mladý šlechtic se vyhýbá tvému pohledu, ale hihňá se, zakrývajíc si ústa dlaní.~ */
  IF ~~ THEN REPLY #32075 /* ~"Zdravím..."~ */ GOTO 3
  IF ~~ THEN REPLY #32076 /* ~Nechej ho být.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #32071 /* ~Obrátil oči v sloup a mávl, ať jdeš pryč. Na tvůj pozdrav neodpověděl ani jediným slovem.~ */
  IF ~~ THEN REPLY #32077 /* ~Odejdi.~ */ EXIT
END

IF ~  Global("Sarhava","GLOBAL",6)
~ THEN BEGIN 4 // from:
  SAY #32072 /* ~Mladý šlechtic zdvořile kývl na pozdrav, ale odmítá se s tebou bavit.~ */
  IF ~~ THEN REPLY #32078 /* ~Odejdi.~ */ EXIT
END
