// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSTANDSH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DSTANDSH~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #46108 /* ~Ten niewielki człowieczek w popłochu krząta się po Sklepie z Osobliwościami, ścierając kurze, katalogując i przesuwając przedmioty na właściwe dla nich miejsca. Czujesz się od niego lekką woń cebuli i zapach lęku przed właścicielką tego przybytku. Kiedy się doń zbliżasz, patrzy na ciebie z podenerwowaniem. "O, panie... Błagam. Nie mogę z tobą rozmawiać. Mam wiele do roboty, a moja pani nie pozwoli na to, abym odrywał się od swoich obowiązków."~ */
  IF ~~ THEN REPLY #46109 /* ~"Mam tylko kilka pytań..."~ */ GOTO 1
  IF ~~ THEN REPLY #46110 /* ~"A więc żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #46111 /* ~"Wybacz, panie, ale nie mogę. Błagam, odejdź, zanim moja pani zobaczy, że z tobą rozmawiam..."~ */
  IF ~~ THEN REPLY #46112 /* ~"Twoja pani?"~ */ GOTO 2
  IF ~~ THEN REPLY #46113 /* ~"A więc żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #46114 /* ~Człowieczek kiwa głową. "Tak... Pani Vriszika. Ja jestem Kałamarz, jej sługa... jej niewolnik. Złamałem prawo i skazano mnie na utratę wolności, a potem wystawiono na sprzedaż w Niższej Dzielnicy, jak wielu innych niewolników. Pani Vriszika większość z nich trzyma w swojej posiadłości. A teraz błagam, odejdź, bo jeśli moja pani dostrzeże, że poświęcam ci czas, wpadnie w gniew i bezlitośnie złoi mi skórę!"~ */
  IF ~~ THEN REPLY #46115 /* ~"W porządku... żegnaj, Kałamarzu."~ */ EXIT
END
