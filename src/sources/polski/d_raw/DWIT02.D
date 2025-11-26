// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DWIT02.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DWIT02~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #43025 /* ~Osobnik ten oddycha niezwykle ciężko, a całe ciało ma zroszone potem, jakby przed chwilą zakończył bardzo wyczerpujące ćwiczenia. Kiedy się zbliżasz, odwraca się do ciebie. "Tak?"~ */
  IF ~~ THEN REPLY #43026 /* ~"Co to za miejsce?"~ */ GOTO 1
  IF ~~ THEN REPLY #43027 /* ~"Nic... Akurat tędy przechodziłem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #43028 /* ~Mężczyzna kiwa głową w kierunku kukieł treningowych. "To komnata ćwiczebna wojowników."~ */
  IF ~  Global("Qui_Sai","GLOBAL",0)
~ THEN REPLY #43029 /* ~"Gdzie jest trener?"~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",1)
~ JOURNAL #66874 /* ~Odnalazłem w Miejskim Gmachu Rozrywki komnatę ćwiczebną wojowników, ale w środku nie było wychowawcy wojowników. Jeden z pochłoniętych treningiem młodych wojowników poinformował mnie, że Qui-Sai, ich wychowawca, najprawdopodobniej przebywa gdzieś na terenie Miejskiego Gmachu Rozrywki, a nie rozpoznać go jest dużą sztuką, bowiem skóra jego, barwy szarego głazu, zdecydowanie odcina się na tle karnacji innych osób.~ */ GOTO 2
  IF ~  GlobalGT("Qui_Sai","GLOBAL",0)
GlobalLT("Qui_Sai","GLOBAL",4)
~ THEN REPLY #66875 /* ~"Gdzie jest trener?"~ */ GOTO 2
  IF ~~ THEN REPLY #43030 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #43031 /* ~"Qui-Sai?" Mężczyzna wzrusza ramionami i ściera strugi potu z twarzy. "Zapewne jest gdzieś w Gmachu Rozrywki. Nietrudno go spostrzec. Jego skóra ma barwę szarego kamienia."~ */
  IF ~~ THEN REPLY #43032 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END
