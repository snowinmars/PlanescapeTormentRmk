// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVVAR6.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVVAR6~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #49016 /* ~Widzisz kobietę, wygląda na zmartwioną.~ */
  IF ~~ THEN REPLY #49017 /* ~"Witaj."~ */ GOTO 2
  IF ~~ THEN REPLY #49018 /* ~Zostaw ją w spokoju.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #49019 /* ~Kobieta wzdycha. "Mój mąż znowu wyszedł."~ */
  IF ~~ THEN REPLY #49020 /* ~"Wygląda na to, że jest zajętym człowiekiem."~ */ GOTO 4
  IF ~~ THEN REPLY #49021 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #49022 /* ~"Czekam, aż wróci mój mąż. Nie ma go już przez jakiś czas i zaczynam się martwić."~ */
  IF ~~ THEN REPLY #49023 /* ~"Z pewnością wkrótce wróci."~ */ GOTO 3
  IF ~~ THEN REPLY #49024 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #49025 /* ~"Jestem pewna, że masz rację. Och... zobacz, która godzina; przepraszam, mam coś do zrobienia."~ */
  IF ~~ THEN REPLY #49026 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0
  SAY #49027 /* ~"Tak, i ja także jestem zajęta... więc wyjdź, jeśli możesz."~ */
  IF ~~ THEN REPLY #49028 /* ~"Żegnaj."~ */ EXIT
END
