// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPETLIMC.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DPETLIMC~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #39450 /* ~To Lim-Lim, twoje zwierzątko. Gdy widzi, że na niego patrzysz, ćwierka do ciebie: "Pijo!"~ */
  IF ~~ THEN REPLY #42733 /* ~Przyjrzyj się uważnie Lim-Limowi.~ */ GOTO 1
  IF ~~ THEN REPLY #42734 /* ~Podnieś Lim-Lima z powrotem.~ */ DO ~GiveItemCreate("LimLim",Protagonist,1,0,0)
DestroySelf()
~ EXIT
  IF ~~ THEN REPLY #42735 /* ~Pogłaskaj Lim-Lima.~ */ GOTO 2
  IF ~~ THEN REPLY #42736 /* ~Kopnij Lim-Lima.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #42737 /* ~Skończ na razie zabawę z Lim-Limem.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42730 /* ~Lim-Lim ma w sobie zarówno cechy owada, jak i zwierzęcia. Jego nogi są przerośnięte, ale ręce ma małe, wręcz zanikające. Na grzbiecie ma jaskrawą, nakrapianą pół-muszlę. Z boku wystaje mu para owadzich skrzydeł. Ma malutkie, czarne oczy i usta, z których nie znika uśmiech.~ */
  IF ~~ THEN REPLY #42738 /* ~Podnieś Lim-Lima z powrotem.~ */ DO ~GiveItemCreate("LimLim",Protagonist,1,0,0)
DestroySelf()
~ EXIT
  IF ~~ THEN REPLY #42739 /* ~Pogłaskaj Lim-Lima.~ */ GOTO 2
  IF ~~ THEN REPLY #42740 /* ~Kopnij Lim-Lima.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #42741 /* ~Skończ na razie zabawę z Lim-Limem.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2 1.1 2.1
  SAY #42731 /* ~"Pijo! Pijo!" Lim-Lim podskakuje wesoło, a jego skrzydła wydają przeciągłe buczenie. Wygląda na to, że jest bardzo zadowolony.~ */
  IF ~~ THEN REPLY #42742 /* ~Podnieś Lim-Lima z powrotem.~ */ DO ~GiveItemCreate("LimLim",Protagonist,1,0,0)
DestroySelf()
~ EXIT
  IF ~~ THEN REPLY #42743 /* ~Pogłaszcz go jeszcze trochę.~ */ GOTO 2
  IF ~~ THEN REPLY #42744 /* ~Kopnij Lim-Lima.~ */ GOTO 3
  IF ~~ THEN REPLY #42745 /* ~Skończ na razie zabawę z Lim-Limem.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.3 1.2 2.2
  SAY #42732 /* ~Próbujesz dosięgnąć Lim-Lima szybkim kopniakiem, ale on zwinnie odskakuje na bok. "Pijo!" Odwraca się i odlatuje.~ */
  IF ~~ THEN REPLY #42746 /* ~Pozwól mu odejść.~ */ DO ~SetGlobal("Buy_LL","GLOBAL",2)
EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #42747 /* ~Spróbuj go dogonić i kopnąć jeszcze raz.~ */ DO ~SetGlobal("Buy_LL","GLOBAL",2)
EscapeArea()
~ EXIT
END
