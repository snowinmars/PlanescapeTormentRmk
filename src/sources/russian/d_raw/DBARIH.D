// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBARIH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DBARIH~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9708 /* ~У этого существа тело барана и торс мужчины. Из косматой головы торчат закрученные рога, шерсть окрашена и на ней выстрижены замысловатые узоры. Цветные бусины и простые драгоценности вплетены в его волосы и свисают с рогов. Похоже, оно тебя не замечает.~ */
  IF ~~ THEN REPLY #7544 /* ~«Приветствую».~ */ GOTO 1
  IF ~~ THEN REPLY #7565 /* ~Оставить его в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2725 /* ~Оно то ли не слышит тебя, то ли притворяется, что не слышит. Похоже, существо собирается уйти.~ */
  IF ~~ THEN REPLY #7623 /* ~«Приветствую, говорю».~ */ GOTO 2
  IF ~~ THEN REPLY #7646 /* ~Дать ему пройти.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #2734 /* ~Оно осторожно смотрит на тебя... кажется, существо это подозрительное, но тебя не боится.~ */
  IF ~~ THEN REPLY #12334 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 3
  IF ~~ THEN REPLY #12335 /* ~«Неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #2743 /* ~Голос у существа низкий и звучный: «На улицах Улья? Здесь нет места подобным вещам. Предоставь меня моим делам. Возможно, мы еще встретимся в лучшем месте, и тогда поговорим».~ */
  IF ~~ THEN REPLY #12336 /* ~«Я лишь хотел задать пару вопросов...»~ */ GOTO 4
  IF ~~ THEN REPLY #12337 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #2753 /* ~«В другой раз, двухногий... в другой раз». Существо начинает удаляться.~ */
  IF ~~ THEN REPLY #12339 /* ~Атаковать его, пока он отходит.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #12340 /* ~Позволить ему уйти.~ */ EXIT
END
