// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPETLIMI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DPETLIMI~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #39448 /* ~To Lim-Lim, twoje zwierzątko. Gdy widzi, że na niego patrzysz, ćwierka do ciebie: "Pijo!"~ */
  IF ~~ THEN REPLY #39449 /* ~Przyjrzyj się uważnie Lim-Limowi.~ */ GOTO 1
  IF ~~ THEN REPLY #42748 /* ~Postaw go na ziemi, żeby trochę się rozruszał.~ */ DO ~DestroyPartyItem("LimLim",FALSE)
CreateCreatureAtFeet("Pet_Lim")
~ EXIT
  IF ~~ THEN REPLY #42749 /* ~Pogłaskaj Lim-Lima.~ */ GOTO 2
  IF ~~ THEN REPLY #42750 /* ~Kopnij Lim-Lima.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #42751 /* ~Skończ na razie zabawę z Lim-Limem.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42752 /* ~Lim-Lim ma w sobie zarówno cechy owada, jak i zwierzęcia. Jego nogi są przerośnięte, ale ręce ma małe, wręcz zanikające. Na grzbiecie ma jaskrawą, nakrapianą pół-muszlę. Z boku wystaje mu para owadzich skrzydeł. Ma malutkie, czarne oczy i usta, z których nie znika uśmiech.~ */
  IF ~~ THEN REPLY #42753 /* ~Postaw go na ziemi, żeby trochę się rozruszał.~ */ DO ~DestroyPartyItem("LimLim",FALSE)
CreateCreatureAtFeet("Pet_Lim")
~ EXIT
  IF ~~ THEN REPLY #42754 /* ~Pogłaskaj Lim-Lima.~ */ GOTO 2
  IF ~~ THEN REPLY #42755 /* ~Kopnij Lim-Lima.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #42756 /* ~Skończ na razie zabawę z Lim-Limem.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2 1.1 2.1
  SAY #42757 /* ~"Pijo! Pijo!" Lim-Lim podskakuje wesoło, a jego skrzydła wydają przeciągłe buczenie. Wygląda na to, że jest bardzo zadowolony.~ */
  IF ~~ THEN REPLY #42758 /* ~Postaw go na ziemi, żeby trochę się rozruszał.~ */ DO ~DestroyPartyItem("LimLim",FALSE)
CreateCreatureAtFeet("Pet_Lim")
~ EXIT
  IF ~~ THEN REPLY #42759 /* ~Pogłaskaj go jeszcze trochę.~ */ GOTO 2
  IF ~~ THEN REPLY #42760 /* ~Kopnij Lim-Lima.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #42761 /* ~Skończ na razie zabawę z Lim-Limem.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.3 1.2 2.2
  SAY #42762 /* ~Próbujesz dosięgnąć Lim-Lima szybkim kopniakiem, ale on zwinnie wymyka się z twojego uchwytu i zlatuje na ziemię!~ */
  IF ~~ THEN REPLY #42763 /* ~"Ups..."~ */ DO ~DestroyPartyItem("LimLim",FALSE)
CreateCreatureAtFeet("Pet_Lim")
~ EXIT
END
