// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGILDEA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DGILDEA~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58500 /* ~Widzisz przed sobą młodą kobietę. Wygląda na to, że bardzo się nudzi. Kiedy do niej podchodzisz, jej wzrok zatrzymuje się na twojej postaci. "Życzę dobrego dnia, śmiałku. Mogę w czymś pomóc?"~ */
  IF ~~ THEN REPLY #58501 /* ~"Witaj."~ */ EXIT
  IF ~~ THEN REPLY #58502 /* ~Nie zwracaj na nią uwagi.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY #58503 /* ~Na twarzy dziewczyny pojawia się uśmiech. "Jestem Gildea. Chciałbyś zobaczyć, co mam do sprzedania?"~ */
  IF ~~ THEN REPLY #58504 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58505 /* ~"Co masz do sprzedania?"~ */ DO ~StartStore("CrstG2",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58506 /* ~"Nie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #58507 /* ~Dziewczyna kręci przecząco głową. "Jestem tylko prostą handlarką, nie potrafię odpowiedzieć na twoje pytania."~ */
  IF ~~ THEN REPLY #58508 /* ~"Co masz do sprzedania?"~ */ DO ~StartStore("CrstG2",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58509 /* ~"Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #58510 /* ~Widzisz przed sobą handlarkę o imieniu Gildea. Dziewczyna uśmiecha się do ciebie. "Witaj znowu. Co mogę dla ciebie zrobić?"~ */
  IF ~~ THEN REPLY #58511 /* ~"Co masz do sprzedania?"~ */ DO ~StartStore("CrstG2",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58512 /* ~"Nic, żegnaj."~ */ EXIT
END
