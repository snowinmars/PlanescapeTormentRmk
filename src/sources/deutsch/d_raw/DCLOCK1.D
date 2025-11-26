// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCLOCK1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCLOCK1~

IF ~  Global("Clock_1","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #64225 /* ~Diese riesige Uhr sieht aus, als wäre sie teilweise mit dem schwarzen Stein in ihrer Umgebung verschmolzen... Aber der Boden um sie herum sieht etwas mitgenommen aus, als wäre 'in letzter Zeit' jemand darauf herumgelaufen - vielleicht in den letzten Jahren.~ */
  IF ~~ THEN DO ~SetGlobal("Clock_1","GLOBAL",1)
~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #64226 /* ~Auf die Vorderseite der Uhr hat jemand etwas grob eingeritzt. Du fühlst plötzlich ein merkwürdiges Gefühl in deinem Hinterkopf hochkriechen - du weißt, daß das, was auf der Uhr steht, eine Nachricht für dich ist... von dir.~ */
  IF ~~ THEN REPLY #64229 /* ~Betrachte deine Schrift.~ */ JOURNAL #63983 /* ~Ich habe eine Nachricht an mich gefunden, die mir von einer meiner früheren Inkarnationen hinterlassen wurde. Sie ist auf die Oberfläche einer Uhr im Gewölbe der Festung gekratzt. Da steht: "RENNE - TÜREN sind LÜGEN - VERWENDE Kanonen - dann PORTAL." Ein Pfeil zeigt, glaube ich, in die nordöstliche Ecke des Uhrenraums, als ob dort etwas wäre.~ */ GOTO 2
  IF ~~ THEN REPLY #64230 /* ~Laß die Uhr in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0
  SAY #64227 /* ~Die Nachricht auf der Uhr sieht aus, als wäre sie mit einem Dolch eingeritzt worden:

LAUF - TÜREN sind LÜGEN - VERWENDE Kanonen - dann PORTAL

Es sieht aus, als wäre die Nachricht in ziemlicher Eile geschrieben worden. Nach der Nachricht ist ein grober Pfeil eingeritzt, der in die entgegengesetzte Richtung zeigt, wie der lange Zeiger der Uhr.~ */
  IF ~~ THEN REPLY #64231 /* ~"Danke für den Rat..."~ */ EXIT
END

IF ~  Global("Clock_1","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #64228 /* ~Diese riesige Uhr sieht aus, als wäre sie teilweise mit dem schwarzen Stein in ihrer Umgebung verschmolzen... Aber der Boden um sie herum sieht etwas mitgenommen aus, als wäre 'in letzter Zeit' jemand darauf herumgelaufen - vielleicht in den letzten Jahren... Auf ihrer Oberfläche steht eine Nachricht von dir selbst... an dich. ~ */
  IF ~~ THEN REPLY #64232 /* ~Betrachte deine Schrift.~ */ JOURNAL #63983 /* ~Ich habe eine Nachricht an mich gefunden, die mir von einer meiner früheren Inkarnationen hinterlassen wurde. Sie ist auf die Oberfläche einer Uhr im Gewölbe der Festung gekratzt. Da steht: "RENNE - TÜREN sind LÜGEN - VERWENDE Kanonen - dann PORTAL." Ein Pfeil zeigt, glaube ich, in die nordöstliche Ecke des Uhrenraums, als ob dort etwas wäre.~ */ GOTO 2
  IF ~~ THEN REPLY #64233 /* ~Laß die Uhr in Ruhe.~ */ EXIT
END
