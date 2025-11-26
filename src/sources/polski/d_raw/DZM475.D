// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZM475.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DZM475~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #6584 /* ~Wygląda na to, że nieco zniekształcona głowa tego trupa trzyma się dzięki kilku wąskim metalowym obręczom przybitym bezpośrednio do czaszki. Zardzewiała żelazna płytka nad lewym okiem ma wyryty numer „475”. Usta truposza są zabite gwoździami. Poza tym cały cuchnie płynem balsamującym.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #6587 /* ~"Więc jak... widziałeś, żeby działo się tu coś interesującego?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #6588 /* ~"Więc jak... widziałeś, żeby działo się tu coś interesującego?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #6589 /* ~"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6590 /* ~Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.~ */ GOTO 2
  IF ~~ THEN REPLY #6591 /* ~"Miło było z tobą pogadać. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #6592 /* ~Zostaw truposza w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #6585 /* ~Trup wciąż się w ciebie wpatruje.~ */
  IF ~~ THEN REPLY #6593 /* ~Zostaw truposza w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #6586 /* ~Trup nie odpowiada. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.~ */
  IF ~~ THEN REPLY #6594 /* ~Zostaw truposza w spokoju.~ */ EXIT
END
