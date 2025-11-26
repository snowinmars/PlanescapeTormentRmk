// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMCM4CLU.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMCM4CLU~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37727 /* ~Widzisz niczym nie wyróżniającego się mężczyznę. Wygląda na to, że jest jeszcze jednym klientem na targu. Chodzi znudzony między innymi kupującymi.~ */
  IF ~~ THEN REPLY #37737 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #37738 /* ~Zignoruj go.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37728 /* ~Odwraca się słysząc twoje pozdrowienie, a jego znudzenie staje się jeszcze bardziej zauważalne. "Tak..."~ */
  IF ~~ THEN REPLY #37739 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37740 /* ~"Nieważne."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.0 5.0 6.0
  SAY #37729 /* ~Patrzy na ciebie lekko zirytowany. "W porządku..."~ */
  IF ~  !Global("AR0508_Visited","GLOBAL",1)
Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37741 /* ~"Szukam kogoś o imieniu Lotar, zwanego również Panem Kości..."~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37742 /* ~"Miałem czaszkę i mi ją skradziono. Wiesz może, kto mógłby coś takiego zrobić?"~ */ GOTO 4
  IF ~~ THEN REPLY #37743 /* ~"Gdzie mogę kupić broń?"~ */ GOTO 5
  IF ~~ THEN REPLY #37744 /* ~"Gdzie mogę kupić coś z magii?"~ */ GOTO 5
  IF ~~ THEN REPLY #37745 /* ~"Co możesz mi powiedzieć o tej dzielnicy?"~ */ GOTO 6
  IF ~~ THEN REPLY #37746 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37730 /* ~"Nigdy o nim nie słyszałem. Pamiętałbym taki tytuł - *Pan Kości*. Takich rzeczy się nie zapomina." Dalej patrzy na ciebie z irytacją.~ */
  IF ~~ THEN REPLY #37747 /* ~"Mam kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37748 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #37731 /* ~Przygląda ci się przez chwilę. "Szukasz czaszki... a to ci dopiero. To złodzieje w Sigil nie mają już lepszych rzeczy do kradzenia. Nie potrafię ci nic powiedzieć." Wzrusza ramionami.~ */
  IF ~~ THEN REPLY #37749 /* ~"Mam kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37750 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2 2.3
  SAY #37732 /* ~Patrzy na ciebie znudzony, po czym rozgląda się po targu. "Właśnie tutaj, śmiałku." Pokazuje niewyraźnie. "Poświęć chwilkę i popytaj kupców. Pewien jestem, że znajdziesz to, czego szukasz."~ */
  IF ~~ THEN REPLY #37751 /* ~"Mam kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37752 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.4
  SAY #37733 /* ~Wzdycha. "Niewiele... to jednak jedyny dom jaki znam. Może i powinienem nauczyć się go kochać, skoro nie mam zamiaru z niego odejść."~ */
  IF ~~ THEN REPLY #37753 /* ~"Mam kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37754 /* ~"Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from:
  SAY #37734 /* ~Kiedy nadchodzisz, odwraca się i marszczy brwi. "Poświęciłem ci już mój czas. Więcej tego nie zrobię, śmiałku." Odwraca się od ciebie.~ */
  IF ~~ THEN REPLY #37735 /* ~Odejdź.~ */ EXIT
END
