// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTPAINT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DTPAINT~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36403 /* ~Widzisz szczupłą dziewczynę diabelstwo, która stoi odwrócona do ciebie plecami. Zarówno jej obie dłonie, jak i postawiona przed nią tablica pokryte są świeżą warstwą czegoś przypominającego różową farbę. Dziewczyna wydaje się być całkowicie nieświadoma twojej obecności.~ */
  IF ~~ THEN REPLY #36406 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #36407 /* ~Nie zwracaj uwagi na dziewczynę i ruszaj dalej.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36404 /* ~Na dźwięk twojego głosu, dziewczyna odwraca głowę, aby poszukać cię spojrzeniem. Jej twarz, chociaż niezbyt czysta i nakrapiana plamkami różowej farby jest uderzająca piękna. Dostrzegłszy cię, dziewczyna posyła ci szeroki, figlarny uśmiech, ale niemal zaraz potem powraca do swego prowizorycznego warsztatu malarskiego.~ */
  IF ~~ THEN REPLY #36408 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #36409 /* ~Pozwól, niechaj maluje w spokoju.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from: 1.0
  SAY #36405 /* ~Dziewczyna wydaje się bezgranicznie pochłonięta swoją pracą. Nie obdarza cię ani cieniem uwagi.~ */
  IF ~~ THEN REPLY #36410 /* ~Pozwól, niechaj maluje w spokoju.~ */ EXIT
END
