// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMCF2NUE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DMCF2NUE~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37137 /* ~Перед тобой старая женщина в простой одежде, с бледно-желтой выветренной кожей. Она скучающе смотрит на тебя.~ */
  IF ~~ THEN REPLY #37146 /* ~«Приветствую».~ */ GOTO 1
  IF ~~ THEN REPLY #37147 /* ~Игнорировать ее.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37138 /* ~«И тебе привет, сынок. Что тебе нужно от старой Беллы?»~ */
  IF ~~ THEN REPLY #37148 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 2
  IF ~~ THEN REPLY #37149 /* ~«Ничего. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0
  SAY #37139 /* ~Она хмурится, ее лицо почти теряется под сетью морщин: «У меня есть немного времени, так что давай побыстрее».~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #37150 /* ~«Я ищу кое-кого по имени Лотар, он же Повелитель Костей...»~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37151 /* ~«У меня был череп, который украли. Ты не знаешь кого-нибудь, кто бы мог это сделать?»~ */ GOTO 5
  IF ~~ THEN REPLY #37152 /* ~«Можешь рассказать об этом районе?»~ */ GOTO 6
  IF ~~ THEN REPLY #37153 /* ~«Неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37140 /* ~«Лотар... что-то не припомню никого с таким именем».~ */
  IF ~~ THEN REPLY #37154 /* ~«Понятно. А ты не знаешь, кто может помочь мне?»~ */ GOTO 4
  IF ~~ THEN REPLY #37155 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0
  SAY #37141 /* ~«Нет». Она качает головой, скучающе глядя на тебя.~ */
  IF ~~ THEN REPLY #37156 /* ~«У меня есть другие вопросы...»~ */ GOTO 2
  IF ~~ THEN REPLY #37157 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #37142 /* ~«Череп, значит, потерял... — она громко смеется. — Не могу сказать, что раньше слышала такое. Не знаю, что и сказать даже».~ */
  IF ~~ THEN REPLY #37158 /* ~«Понятно. А ты не знаешь, кто может помочь мне?»~ */ GOTO 4
  IF ~~ THEN REPLY #37159 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY #37143 /* ~Она вздыхает. «Слушай, сынок. Я сюда пришла за покупками, а ты не продавец. Чуешь, куда я клоню?»~ */
  IF ~~ THEN REPLY #37160 /* ~«У меня есть другие вопросы...»~ */ GOTO 7
  IF ~~ THEN REPLY #37161 /* ~«Понятно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #37144 /* ~«А у меня нет больше ответов. Всего хорошего». Она отворачивается от тебя.~ */
  IF ~~ THEN REPLY #37162 /* ~«Прощай».~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 8 // from:
  SAY #37145 /* ~Перед тобой старая женщина в простой одежде, с бледной желтоватой и выветренной кожей. Она скучающе смотрит на тебя. «Почему ты продолжаешь докучать? Уходи!» Она отворачивается.~ */
  IF ~~ THEN REPLY #37163 /* ~Уйти.~ */ EXIT
END
