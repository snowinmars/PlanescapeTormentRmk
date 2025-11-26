// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDREAM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DDREAM~

IF ~  Global("Dream_Sequence","AR3017",0)
~ THEN BEGIN 0 // from:
  SAY #56043 /* ~Ты оказываешься под висельной петлей. Замогильный голос кряхтит из темноты: «Ты снова видишь сон? Снова! Снова!»~ */
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #56044 /* ~Твое тело кажется необычайно легким и воздушным, как будто ты потерял над ним контроль, как будто ветер несет тебя, куда захочет.~ */
  IF ~~ THEN DO ~IncrementGlobal("Dream_Sequence","AR3017",1)
StartCutSceneMode()
StartCutSceneEx("3017cut1",FALSE)
~ EXIT
END

IF ~  Global("Dream_Sequence","AR3017",1)
~ THEN BEGIN 2 // from:
  SAY #56045 /* ~Ты обнаруживаешь себя летящим через лабиринт переплетенных растений с черными шипами, которые впиваются в твое иллюзорное тело.~ */
  IF ~~ THEN DO ~IncrementGlobal("Dream_Sequence","AR3017",1)
StartCutSceneMode()
StartCutSceneEx("3017cut2",FALSE)
~ EXIT
END

IF ~  Global("Dream_Sequence","AR3017",2)
~ THEN BEGIN 3 // from:
  SAY #56046 /* ~Кошмарные существа появляются из-под земли и из стен. Они разрывают твое тело. От их яростной атаки ты теряешь сознание.~ */
  IF ~~ THEN DO ~IncrementGlobal("Dream_Sequence","AR3017",1)
StartCutSceneMode()
StartCutSceneEx("3017cut3",FALSE)
~ EXIT
END

IF ~  Global("Dream_Sequence","AR3017",3)
~ THEN BEGIN 4 // from:
  SAY #56047 /* ~Ты стоишь перед башней из черепов, что-то бормочущих тебе, но ты не можешь разобрать слов. Тебя отвлекает грохот за твоей спиной, и ты видишь армию нечисти, несущуюся на тебя.~ */
  IF ~~ THEN DO ~IncrementGlobal("Dream_Sequence","AR3017",1)
StartCutSceneMode()
StartCutSceneEx("3017cut5",FALSE)
~ EXIT
END

IF ~  Global("Dream_Sequence","AR3017",4)
~ THEN BEGIN 5 // from:
  SAY #56048 /* ~Ты снова стоишь в лабиринте, тебя окружает вонь смерти. Ты понимаешь, что убил их всех. И снова тишину разрывает кряхтящий голос.~ */
  IF ~~ THEN DO ~IncrementGlobal("Dream_Sequence","AR3017",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #56049 /* ~«О, моя маленькая прелестная головоломка, ты убил их, и еще стольких, что я потеряла им счет». Ты онемел и не можешь ответить.~ */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #56050 /* ~«Иди ко мне, крошка... иди к Равель в ее лабиринт черных шипов. Увидим сны вместе».~ */
  IF ~~ THEN REPLY #56051 /* ~Разбудить себя.~ */ DO ~TeleportParty("AR0502",[544.1539],14)
~ EXIT
END
