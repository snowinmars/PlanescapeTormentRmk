// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWMIMEF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWMIMEF~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #49739 /* ~Ta młoda kobieta, obserwująca występy jakiegoś artysty, wydaję się być nieco zmieszana. Gdy podchodzisz bliżej, odwraca się w twoją stronę.~ */
  IF ~~ THEN REPLY #49740 /* ~"Witaj..."~ */ GOTO 1
  IF ~~ THEN REPLY #49741 /* ~Zostaw kobietę w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49742 /* ~"Nigdy czegoś podobnego nie widziałam. Jego pokaz irytuje mnie i zarazem dziwnie zaciekawia."~ */
  IF ~~ THEN REPLY #49743 /* ~"Co się dzieję?"~ */ DO ~SetGlobal("Know_Salabesh","AR0600",1)
~ GOTO 4
  IF ~~ THEN REPLY #49744 /* ~"Mniejsza z tym. Mam kilka pytań do ciebie..."~ */ GOTO 2
  IF ~~ THEN REPLY #49745 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 4.0
  SAY #49746 /* ~Kontynuuje przyglądanie się mężczyźnie, który sprawia wrażenie, jakby był zamknięty w niewidzialnym pudle bądź klatce. "Może innym razem, panie. Chciałabym, żebyś mnie przez chwilę zostawił samą."~ */
  IF ~~ THEN REPLY #49747 /* ~"Poczekaj... Powiedz mi przynajmniej, co tu się dzieje."~ */ DO ~SetGlobal("Know_Salabesh","AR0600",1)
~ GOTO 4
  IF ~~ THEN REPLY #49748 /* ~"Mam tylko parę pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #49749 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #49750 /* ~Kobieta przeszywa cię pełnym złości spojrzeniem. "Nie obchodzi mnie, co *ty* możesz sobie myśleć, panie, ale nie będę poświęcała czasu obcemu, który zaczepia mnie na ulicy i zamęcza pytaniami. Zostaw mnie."~ */
  IF ~~ THEN REPLY #49751 /* ~"Poczekaj... Powiedz mi przynajmniej, co tu się dzieje."~ */ DO ~SetGlobal("Know_Salabesh","AR0600",1)
~ GOTO 4
  IF ~~ THEN REPLY #49752 /* ~Odjedź.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 2.0 3.0
  SAY #49753 /* ~"Nie jestem zupełnie pewna, czy dobrze to rozumiem. W swym występie mężczyzna ów wciela się w rozmaite postacie, rozśmiesza gestami, jednak nigdy nie wypowiada choćby jednego słowa. Wcześniej pojawił się tu pewien mag, który przechodził akurat przypadkiem. Mimowi udało się w doskonały sposób naśladować jego niezwykły sposób poruszania się. Rozzłościło to maga i rzucił on na niego klątwę... Jak sądzę, to właśnie sprawiło, iż utracił on zdolność mówienia i został uwięziony w takiej samej niewidzialnej klatce, w jakiej udawał wcześniej, że jest zamknięty. Początkowo wprawiło go to w przerażenie, ale po pewnym czasie uspokoił się i teraz kontynuuje swoje występy."~ */
  IF ~~ THEN REPLY #49754 /* ~"Chcę jeszcze o coś zapytać..."~ */ GOTO 2
  IF ~~ THEN REPLY #49755 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END
