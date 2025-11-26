// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCHEKKA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DCHEKKA~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #48041 /* ~Перед тобой пьяный стражник. Он облачен в доспехи защитника Проклятого, однако, похоже, что его выпивка — единственное, что он будет защищать. Он смотрит на тебя без особого интереса.~ */
  IF ~~ THEN REPLY #48042 /* ~«Кто ты?»~ */ GOTO 2
  IF ~~ THEN REPLY #48043 /* ~«Что ты здесь делаешь?»~ */ GOTO 3
  IF ~~ THEN REPLY #48044 /* ~«Забудь. Прощай».~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #48045 /* ~Чек-ка Плут внимательно и осторожно, насколько может это сделать пьяный человек, осматривает тебя. Презрительно усмехнувшись, он возвращается к своей кружке.~ */
  IF ~~ THEN REPLY #48046 /* ~«Кто ты?»~ */ GOTO 2
  IF ~~ THEN REPLY #48047 /* ~«Что ты здесь делаешь?»~ */ GOTO 3
  IF ~~ THEN REPLY #48048 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 3.0
  SAY #48049 /* ~«Чек-ка Плут. Элита Проклятого». Он отрыгивает.~ */
  IF ~~ THEN REPLY #48050 /* ~«Что ты здесь делаешь?»~ */ GOTO 3
  IF ~~ THEN REPLY #48051 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.0
  SAY #48084 /* ~Он указывает на Гниющего Копчика. «Слежу за ним. Говорят, у него здесь туннель есть, вот я и хочу выяснить, правда ли это. Жду. Слежу. А теперь проваливай. Мне нужно следить».~ */
  IF ~~ THEN REPLY #48085 /* ~«Кто ты?»~ */ GOTO 2
  IF ~~ THEN REPLY #48086 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #48087 /* ~Пьяный стражник с ревом бросается на тебя. Очевидно, он хочет видеть тебя мертвым.~ */
  IF ~~ THEN REPLY #48088 /* ~Сражаться.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
