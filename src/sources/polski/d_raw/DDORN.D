// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDORN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DDORN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #57946 /* ~Widzisz mężczyznę w średnim wieku. Patrzy na ciebie z uwagą, gdy się doń zbliżasz. "Dzień dobry, śmiałku."~ */
  IF ~~ THEN REPLY #57947 /* ~"Witaj..."~ */ GOTO 1
  IF ~~ THEN REPLY #57948 /* ~Zignoruj go.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #57949 /* ~Kłania się nieznacznie. "Jam jest Dorn. Czy mogę zaprezentować ci moje towary?"~ */
  IF ~~ THEN REPLY #57950 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #57951 /* ~"Pokaż mi, co masz."~ */ DO ~StartStore("CrstG3",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #57952 /* ~"Nie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #57953 /* ~Potrząsa głową. "W tej chwili nie mam akurat czasu na pytania. Może kiedy indziej."~ */
  IF ~~ THEN REPLY #57954 /* ~"Pokaż mi swoje towary."~ */ DO ~StartStore("CrstG3",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #57955 /* ~"Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #57958 /* ~Widzisz Dorna, sprzedawcę. Uśmiecha się do ciebie. "Znów się spotykamy. Czym mogę ci służyć?"~ */
  IF ~~ THEN REPLY #57960 /* ~"Pokaż mi swoje towary."~ */ DO ~StartStore("CrstG3",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #57962 /* ~"Żegnaj."~ */ EXIT
END
