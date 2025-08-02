// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKILNN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DKILNN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #42075 /* ~Лицо этого человека очень напоминает лицо Пестика Килна, только без двигающейся кожи и постоянных мелких мутаций. «Еще раз здрасте... зовут Килн. Чего-нибудь нужно?»~ */
  IF ~  Global("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42076 /* ~«Я надеялся получить немного лечебных смесей».~ */ GOTO 2
  IF ~~ THEN REPLY #42077 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 3
  IF ~~ THEN REPLY #42078 /* ~«Я хотел кое-что купить...»~ */ GOTO 4
  IF ~~ THEN REPLY #42079 /* ~«Я, собственно, просто проходил мимо. Прощай, Килн».~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #42080 /* ~Ты видишь Килна, помощника алхимика. «Еще раз здрасте... чего-нибудь нужно?»~ */
  IF ~  Global("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42081 /* ~«Я надеялся получить немного лечебных смесей».~ */ GOTO 2
  IF ~~ THEN REPLY #42082 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 3
  IF ~~ THEN REPLY #42083 /* ~«Я хотел кое-что купить...»~ */ GOTO 4
  IF ~~ THEN REPLY #42084 /* ~«Я, собственно, просто проходил мимо. Прощай, Килн».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #42085 /* ~«Ты еще с Пестиком не говорил? Он этими делами заведует».~ */
  IF ~~ THEN REPLY #42086 /* ~«Тогда я пойду, поговорю с ним. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1
  SAY #42087 /* ~«Я целый день торчу на складе... Я не подхожу для ответов на твои вопросы».~ */
  IF ~  Global("Dream","GLOBAL",1)
Global("PK_Scraping","AR0612",0)
~ THEN REPLY #42088 /* ~«Старый инженер в Литейной сказал, что мне нужно достать образец своей крови и кожи, чтобы его машина заработала. Мне нужно, чтобы ты мне в этом помог».~ */ GOTO 4
  IF ~~ THEN REPLY #42089 /* ~«Тогда можно здесь что-нибудь купить?»~ */ GOTO 4
  IF ~~ THEN REPLY #42090 /* ~«В таком случае, прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2 1.2 3.0 3.1
  SAY #42091 /* ~«Тебе нужно поговорит с Пестиком, это уж точно. Он этими делами заведует».~ */
  IF ~~ THEN REPLY #42092 /* ~«Тогда я пойду, поговорю с ним. Прощай».~ */ EXIT
END
