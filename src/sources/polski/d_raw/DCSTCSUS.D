// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTCSUS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTCSUS~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9977 /* ~Widzisz starszego mężczyznę ubranego w liche szaty. Spostrzega, że się na niego patrzysz i stara się cię wyminąć. Zmieniasz szybko swoją trasę, by go zatrzymać.~ */
  IF ~~ THEN REPLY #9978 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #9979 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9980 /* ~Zdaje się, że zamierza podjąć próbę ucieczki, analizuje jednak swój pomysł nieco wnikliwiej. Nieustannie wodzi wzrokiem wokół, ale ani razu nie koncentruje go na tobie. Masz jednakże wrażenie, iż jest on gotowy do ucieczki w każdej chwili. "Niczego nie mam, co by cię interesowało! Nic ci też nie zrobiłem! Pozwól mi odejść... Proszę!"~ */
  IF ~~ THEN REPLY #9981 /* ~"Uspokój się. Chcę ci jedynie zadać parę pytań. Dobrze?"~ */ GOTO 2
  IF ~~ THEN REPLY #9982 /* ~"Wybacz, że ci przeszkodziłem. Udaj się tam, dokąd zmierzałeś."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #9983 /* ~Po raz pierwszy skupia swój wzrok na tobie. Kiedy lustruje cię od stóp do głowy, jego strach pogłębia się. "Po... Pomógłbym ci, gdybym mógł. Przyrzekam, że nic nie wiem... Nic. Przyrzekam! Puść mnie, proszę."~ */
  IF ~~ THEN REPLY #9984 /* ~"Skąd wiesz, że nie możesz mi pomóc, skoro nie chciałeś nawet wysłuchać pytania?~ */ GOTO 3
  IF ~~ THEN REPLY #9985 /* ~"W porządku. Idź."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9986 /* ~Jego oczy zaczynają wodzić wokoło po raz wtóry - tak, jakby się spodziewał ataku z każdej strony. Zaczyna potrząsać bezradnie rękami i zerkać na ciebie nerwowo, po czym znów koncentruje swą uwagę na otaczającej go ulicy. "Ech... Nie chcę mieć kłopotów, rozumiesz? Dlatego też podkreślam, że nic nie wiem. Z tego powodu nie jestem w stanie ci pomóc. Proszę! Puść mnie!" Jest tak przestraszony, że przypuszczasz, iż zaraz się rozpłacze.~ */
  IF ~~ THEN REPLY #9987 /* ~"W porządku. Przepraszam za najście."~ */ GOTO 4
  IF ~~ THEN REPLY #9988 /* ~"Hmpf. Nic nie wiesz? Nie pleć głupot. Potrzebuję paru odpowiedzi i ty zostałeś wybrany, by mi ich udzielić. Mogę ci w ramach alternatywy pokiereszować trochę twoją facjatę."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Suspicious_1","GLOBALGood",-1)
~ GOTO 5
  IF ~~ THEN REPLY #9989 /* ~"Słuchaj. Przykro mi, iż sprawiłem ci tyle przykrości. Czy jest coś, w czym mogę ci pomóc? Wyglądasz na zmartwionego."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Suspicious_1","GLOBALGood",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 3.0 7.0
  SAY #9990 /* ~Gdy tylko odsuwa się od ciebie, po jego twarzy przemyka cień ulgi. Rozgląda się ostrożnie wokoło, w końcu odwraca się i zaczyna uciekać.~ */
  IF ~~ THEN REPLY #9991 /* ~"Sądzę, że zaczynam rozumieć znaczenie słowa 'świrnięty'."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #9992 /* ~Jego oczy wodzą wokół, z ust jego zaś dobywa się skomlenie. Zakrywa dłońmi twarz, po czym osuwa się na ziemię i zaczyna szlochać. Nie sądzisz, że uda ci się cokolwiek od niego dowiedzieć.~ */
  IF ~~ THEN REPLY #9993 /* ~"Sądzę, że zaczynam rozumieć znaczenie słowa 'świrnięty'."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2
  SAY #9994 /* ~Gdy tylko odsuwa się od ciebie, po jego twarzy przemyka cień ulgi. Rozgląda się wokół ostrożnie, po czym skupia się na tobie. "Ch... chcesz mi pomóc? Mnie? Nieznajomemu? Co ty kombinujesz, trepie?!"~ */
  IF ~~ THEN REPLY #9995 /* ~"Tak. Pomogę ci. Bez żadnych zobowiązań. Po prostu powiedz mi, co potrzebujesz."~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #9996 /* ~Przygląda ci się nieufnie, po czym rozgląda się wokół. Gdy znów na ciebie spogląda, w jego oczach nie widać już tej obsesji, że ktoś na niego poluje. "Dzięki. Nikt inny na twoim miejscu nie zaoferowałby takiemu jak ja pomocy. Nie sądzę jednak, że by można mi było pomóc. O nie... Dzięki... Muszę iść."~ */
  IF ~~ THEN REPLY #9997 /* ~"Rozumiem. Żegnaj."~ */ GOTO 4
END
