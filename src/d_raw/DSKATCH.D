// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSKATCH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DSKATCH~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #50896 /* ~Перед тобой офицер Гармониума, облаченный в церемониальные доспехи. Похоже, он во главе работорговцев Гармониума. Похоже, он — особенно злой и высокомерный представитель этого сообщества. «Чего ты хочешь?»~ */
  IF ~  Global("Curst_Key","GLOBAL",1)
~ THEN REPLY #50897 /* ~«Я пришел за дочерью Гниющего Копчика».~ */ GOTO 1
  IF ~~ THEN REPLY #50898 /* ~«Что ты здесь делаешь?»~ */ GOTO 2
  IF ~~ THEN REPLY #50899 /* ~«Кто ты?»~ */ GOTO 5
  IF ~~ THEN REPLY #50900 /* ~«Ничего. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #50901 /* ~Он ухмыляется. «Вот как? И что же ты будешь делать, если я ее убью?» Он делает знак своим людям. «Убить ее!» Он обнажает клинок и бросается на тебя!~ */
  IF ~~ THEN REPLY #50902 /* ~Сражаться.~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #50903 /* ~«Ну, я со своими людьми вербую людей, чтобы учить их, что хорошо, а что плохо. Как видишь, они этого не всегда хотят... но в конечном счете мы заставим их прозреть, — он окидывает тебя взглядом, — На вид ты нам подходишь».~ */
  IF ~~ THEN REPLY #50904 /* ~«Мне неинтересно».~ */ GOTO 3
  IF ~~ THEN REPLY #50905 /* ~«Расскажи мне еще».~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0
  SAY #50906 /* ~«Очень жаль, — он делает знак своим людям. — Забудьте про девчонку. Взять его».~ */
  IF ~~ THEN REPLY #50907 /* ~Сражаться.~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 5.1
  SAY #50908 /* ~«С радостью. Мы возьмем тебя в Аркадию и раскроем тебе истину, — он делает знак своим людям. — Взять его».~ */
  IF ~~ THEN REPLY #50909 /* ~Сражаться.~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.2
  SAY #50910 /* ~«Я — Скатч, Вторая ступень Гармониума, — он кивает. — Я со своими людьми занимаюсь вербовкой. Хочешь узнать побольше о пути Гармониума?»~ */
  IF ~~ THEN REPLY #50911 /* ~«Нет».~ */ GOTO 3
  IF ~~ THEN REPLY #50912 /* ~«Расскажи мне еще».~ */ GOTO 4
  IF ~~ THEN REPLY #50913 /* ~«Как по мне, это работорговля. Может, в этот раз вы меня просто отпустите?»~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.2
  SAY #50914 /* ~«Ты не очень-то смышленый, да? Нет, этому не бывать. Есть наш путь, а есть неверный путь. Те, кто идут по нему, должны быть... наказаны». Указывая на тебя, он кричит своим людям: «Взять его!»~ */
  IF ~~ THEN REPLY #50915 /* ~Сражаться.~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END
