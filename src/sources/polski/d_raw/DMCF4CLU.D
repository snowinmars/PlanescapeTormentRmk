// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMCF4CLU.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMCF4CLU~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37185 /* ~Widzisz niczym nie wyróżniającą się kobietę. Wygląda na to, że jest jeszcze jedną klientką na targu.~ */
  IF ~~ THEN REPLY #37193 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #37194 /* ~Zignoruj ją.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37186 /* ~Odwraca się słysząc twoje pozdrowienie. "Tak..."~ */
  IF ~~ THEN REPLY #37195 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37196 /* ~"Nieważne."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.0 5.0 6.0
  SAY #37187 /* ~Spogląda na ciebie znudzona. "W porządku..."~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #37197 /* ~"Szukam kogoś o imieniu Lotar, zwanego również Panem Kości..."~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37198 /* ~"Miałem czaszkę i mi ją skradziono. Wiesz może, kto mógłby coś takiego zrobić?"~ */ GOTO 4
  IF ~~ THEN REPLY #37199 /* ~"Gdzie mogę kupić broń?"~ */ GOTO 5
  IF ~~ THEN REPLY #37200 /* ~"Gdzie mogę kupić coś z magii?"~ */ GOTO 5
  IF ~~ THEN REPLY #37201 /* ~"Co możesz mi powiedzieć o tej dzielnicy?"~ */ GOTO 6
  IF ~~ THEN REPLY #37202 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37188 /* ~"Nigdy o nim nie słyszałam. Pamiętałabym taki tytuł - *Pan Kości*. Takich rzeczy się nie zapomina." Dalej patrzy na ciebie znudzona.~ */
  IF ~~ THEN REPLY #37203 /* ~"Mam kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37204 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #37189 /* ~Przygląda ci się przez chwilę. "Szukasz czaszki... no, no, takich rzeczy nie słyszy się co dzień. Nie potrafię ci nic powiedzieć." Wzrusza ramionami.~ */
  IF ~~ THEN REPLY #37205 /* ~"Mam kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37206 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2 2.3
  SAY #37190 /* ~Patrzy na ciebie znudzona, po czym rozgląda się po targu. "Właśnie tutaj, śmiałku. Poświęć chwilkę i popytaj kupców. Pewna jestem, że znajdziesz to, czego szukasz."~ */
  IF ~~ THEN REPLY #37207 /* ~"Mam kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37208 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.4
  SAY #37191 /* ~Wzdycha. "Niewiele... to jednak jedyny dom jaki ja, czy ktokolwiek z nas zna. Trzeba nauczyć się go kochać, jeśli się z niego nie ma zamiaru odejść."~ */
  IF ~~ THEN REPLY #37209 /* ~"Mam kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37210 /* ~"Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from:
  SAY #37192 /* ~Kiedy nadchodzisz odwraca się i marszczy brwi. "Poświęciłam ci już mój czas. Więcej poświęcać nie mogę, śmiałku." Odwraca się od ciebie.~ */
  IF ~~ THEN REPLY #37211 /* ~Odejdź.~ */ EXIT
END
