// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAALEK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DAALEK~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #33862 /* ~Widzisz starca o długich białych włosach i zniszczonej żółtej skórze. Jest wysoki pomimo podeszłego wieku. Uśmiecha się i kłania się nieznacznie.~ */
  IF ~~ THEN REPLY #33863 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #33864 /* ~Zignoruj go.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #33865 /* ~"I tobie również, śmiałku. Czym mogę służyć?" Wznosi brwi w oczekiwaniu na twoją odpowiedź.~ */
  IF ~~ THEN REPLY #33866 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #33867 /* ~"Interesują mnie zaklęcia."~ */ GOTO 5
  IF ~~ THEN REPLY #33868 /* ~"Jestem zainteresowany tym, co masz do sprzedania."~ */ DO ~StartStore("Alekstr",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #33869 /* ~"Nieważne. Do widzenia."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #33870 /* ~"Wybacz, śmiałku," marszczy się "ale sprzedaję magiczne przedmioty, a nie informacje. Jeśli potrzeba ci tego ostatniego, to musisz zdobyć je gdzie indziej."~ */
  IF ~~ THEN REPLY #33871 /* ~"Interesują mnie zaklęcia."~ */ GOTO 5
  IF ~~ THEN REPLY #33872 /* ~"Pokaż mi, co masz na sprzedaż."~ */ DO ~StartStore("Alekstr",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #33873 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY #33874 /* ~.~ */
  IF ~~ THEN EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #33877 /* ~Widzisz Aaleka, handlarza magią. "Witaj, śmiałku. Miło znów cię widzieć. Czym mogę służyć?"~ */
  IF ~~ THEN REPLY #33878 /* ~"Pokaż mi ponownie swoje towary."~ */ DO ~StartStore("Alekstr",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #33879 /* ~"Nieważne. Do widzenia."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1 2.0
  SAY #33880 /* ~Kiwa głową i rozgląda się po targu. "Wybacz mi, śmiałku, ale sprzedaję tylko magiczne przedmioty. Powinieneś porozmawiać z Żarem. Jego kram jest obok pieca, niedaleko wyjścia."~ */
  IF ~~ THEN REPLY #33881 /* ~"Pokaż mi, co masz na sprzedaż."~ */ DO ~StartStore("Alekstr",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #33882 /* ~"Dzięki, żegnaj."~ */ EXIT
END
