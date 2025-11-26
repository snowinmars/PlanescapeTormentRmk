// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSWORDOW.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DSWORDOW~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #50430 /* ~Miecz z Why'nn, zwany również Ostrzem Oszustów, bardziej przypomina ozdobny sztylet, niżeli przydatny w walce wręcz oręż. Chociaż nie jest zbyt dobrze wyważony, został opatrzony silnymi zaklęciami i przez to więcej znaczy w walce od zwykłego noża. Wszelako największa siła Miecza z Why'nn leży w tym, że potrafi on nadać swemu właścicielowi moc szczęśliwego oszukiwania. Dość jest wznieść miecz ku niebu w odpowiednio melodramatycznym geście, a można być pewnym pokonania każdego przeciwnika w każdej grze.~ */
  IF ~~ THEN REPLY #50436 /* ~Oszukaj: stań z nogami lekko rozchylonymi, napnij wszystkie mięśnie i wznieś miecz ku niebu w triumfalnym geście.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_SwordoW_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~~ THEN REPLY #50437 /* ~Odłóż na razie sztylet na swoje miejsce.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #50438 /* ~Przez ostrze Miecza z Wh'ynn przepływa fala magicznej mocy. Gdzieś w oddali rozlega się odgłos gromu. W chwilę później, bliski jesteś wygranej.~ */
  IF ~~ THEN REPLY #50439 /* ~Obserwuj.~ */ EXIT
END
