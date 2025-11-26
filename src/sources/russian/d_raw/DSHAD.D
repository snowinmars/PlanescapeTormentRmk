// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSHAD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DSHAD~

IF ~  Global("Zap","GLOBAL",1)
NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #23915 /* ~«Не разговаривай со мной. Поговори с Раймоном». Крысооборотень избегает твоего взгляда.~ */
  IF ~~ THEN REPLY #23931 /* ~«Хорошо».~ */ EXIT
END

IF ~  Global("Zap","GLOBAL",1)
NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #23309 /* ~«Я же сказал, не разговаривать со мной». Крысооборотень не смотрит в твою сторону.~ */
  IF ~~ THEN REPLY #23933 /* ~«Отлично».~ */ EXIT
END

IF ~  Global("Zap","GLOBAL",2)
~ THEN BEGIN 2 // from:
  SAY #23310 /* ~«Ты не можешь сходить в другое место? Например, не в это?» Голос крысооборотня спокоен и расслаблен.~ */
  IF ~~ THEN REPLY #23934 /* ~«Наверное, так и следует поступить. Прощай».~ */ EXIT
END

IF ~  Global("Zap","GLOBAL",3)
~ THEN BEGIN 3 // from:
  SAY #23916 /* ~«Типа крутой, да? Давай, продолжай, пока Раймон не наберется смелости и не позовет подмогу». Этот крысооборотень почему-то ничем не обеспокоен.~ */
  IF ~~ THEN REPLY #23935 /* ~«А если я буду угрожать ТЕБЕ?»~ */ GOTO 4
  IF ~~ THEN REPLY #23936 /* ~«Тогда я ухожу».~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #23917 /* ~Он пожимает плечами.~ */
  IF ~~ THEN REPLY #23937 /* ~Атаковать его.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #23938 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~  Global("Zap","GLOBAL",4)
~ THEN BEGIN 5 // from:
  SAY #23918 /* ~«Ай, во имя любви... Кажется, сейчас ты умрешь, пень...»~ */
  IF ~~ THEN REPLY #23939 /* ~«Можешь попробовать».~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  NearbyDialog("DAnnah")
~ THEN BEGIN 6 // from:
  SAY #23919 /* ~Прикончив своего приятеля-оборотня, этот парень смотрит прямо на Анну: «Анна, это Шаддеус. Я выпускаю тебя. Я не могу видеть тебя вот так, в клетке. Замолви за меня словечко, если вернешься в деревню, и скажи им, что тут происходит нечто зловещее. Пока не могу сказать, что, но... ты же сама это знаешь».~ */
  IF ~~ THEN EXTERN ~DANNAH~ 160
END

IF ~~ THEN BEGIN 7 // from:
  SAY #23920 /* ~«Вот так, — он берет с тела Раймона ключи, отпирает дверь и открывает ее тебе. — А теперь пошевеливайся». Он отвешивает быстрый поклон и убегает.~ */
  IF ~~ THEN REPLY #23434 /* ~«Конечно. Спасибо».~ */ DO ~SetGlobal("Zap","GLOBAL",5)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
EscapeArea()
~ EXIT
END

IF ~  !NearbyDialog("DAnnah")
~ THEN BEGIN 8 // from:
  SAY #23921 /* ~«Тебя удивляет, почему я это сделал, ведь так? Когда-то я жил в Погребенной деревне. Меня звали Шаддеус. Я не хочу быть крысооборотнем, и не считаю, что эта зараза делает меня менее человечным. Уходи. Сейчас же». Он отпирает дверь, открывает ее тебе и убегает прочь.~ */
  IF ~~ THEN REPLY #23940 /* ~«Спасибо, Шаддеус. Прощай».~ */ DO ~SetGlobal("Zap","GLOBAL",5)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
EscapeArea()
~ EXIT
END
