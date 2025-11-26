// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : WDRGUARD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~WDRGUARD~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Zap","GLOBAL",1)
Global("Rat_Guard","GLOBAL",0)
!NearbyDialog("DAnnah")
~ THEN BEGIN 0 // from:
  SAY #48221 /* ~Этот с виду скучающий крысооборотень, похоже, рад любому поводу развеять скуку. «Чего те, мясо?»~ */
  IF ~~ THEN REPLY #48222 /* ~«Мне нужно выбраться».~ */ DO ~SetGlobal("Rat_Guard","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #48223 /* ~«Мне просто нужно с тобой поговорить».~ */ DO ~SetGlobal("Rat_Guard","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #48224 /* ~«Ничего. Забудь».~ */ DO ~SetGlobal("Rat_Guard","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 10.0 12.1
  SAY #48225 /* ~«Да ну? И что же может стоить того, чтобы ослушаться Мантуока и рискнуть разозлить крыс, а?»~ */
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #48226 /* ~«Ваши жизни. Если ты меня выпустишь, я оставлю вас в живых».~ */ DO ~SetGlobal("Zap","GlOBAL",3)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("a1600d10")
~ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #48227 /* ~«Ваши жизни. Если ты меня выпустишь, я оставлю вас в живых».~ */ GOTO 4
  IF ~~ THEN REPLY #48228 /* ~«Обещание того, что никто никогда не узнает о том, что я сделаю... и, пожалуй, обещание нескольких монет позже».~ */ DO ~SetGlobal("Zap","GLOBAL",2)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #48229 /* ~«И как они узнают?»~ */ GOTO 11
  IF ~~ THEN REPLY #48230 /* ~«Как насчет звенелок?»~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #48231 /* ~«Подумай вот о чем: я, несомненно, представляю для вас опасность, и все же говорю с вами на равных. Ты же не думаешь, что эти стены меня удержат, если я захочу выйти? Говорю безо всяких угроз: в твоих же интересах выпустить меня».~ */ DO ~SetGlobal("Zap","GLOBAL",2)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #48232 /* ~«Потому что я когда-нибудь отсюда выберусь, и тогда здесь будет заварушка».~ */ GOTO 4
  IF ~~ THEN REPLY #48233 /* ~«Сам подумай, я вот не могу ничего сообразить».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 11.0
  SAY #48234 /* ~Раймон внимательно осматривает тебя сверху донизу. Заметив жестокость в твоих глазах и размеры твоих мускулов, он очень осторожно отпирает и открывает дверь. Затем он отступает в сторону и отводит от тебя взгляд.~ */
  IF ~~ THEN REPLY #48235 /* ~«Спасибо, приятель».~ */ DO ~AddexperienceParty(3750)
~ GOTO 3
  IF ~~ THEN REPLY #48236 /* ~«Пока».~ */ DO ~AddexperienceParty(3750)
~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0 2.1
  SAY #48237 /* ~Он отводит от тебя взгляд. «Прошу, не трогай меня, знаток... Я только делал свою работу».~ */
  IF ~~ THEN REPLY #48238 /* ~«Я подумаю над этим. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 1.6 4.4 11.1 11.4
  SAY #48239 /* ~Он внимательно осматривает тебя и фыркает. «Ты че, думаешь, можешь мне навредить? Поищи-ка сперва другой выход!»~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #48240 /* ~«Что, если я пообещаю, что никто никогда не узнает о том, что я сделаю... и, пожалуй, еще несколько монет позже».~ */ DO ~SetGlobal("Zap","GLOBAL",2)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #48241 /* ~«Почему бы тебе просто не выпустить меня?»~ */ GOTO 11
  IF ~~ THEN REPLY #48242 /* ~«Что, если я дам тебе пару монет?»~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #48243 /* ~«Подумай вот о чем: я, несомненно, представляю для вас опасность, и все же говорю с вами на равных. Ты же не думаешь, что эти стены меня удержат, если я захочу выйти? Говорю безо всяких угроз: в твоих же интересах выпустить меня».~ */ DO ~SetGlobal("Zap","GLOBAL",2)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #48244 /* ~«Потому что я когда-нибудь отсюда выберусь, и тогда здесь будет заварушка».~ */ GOTO 4
  IF ~~ THEN REPLY #48245 /* ~«Что ж, я подумаю над этим. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2 1.5 4.0 4.3 11.3
  SAY #48246 /* ~«В общем, звучит неплохо. В любом случае клал я на Мантуока, — он отпирает дверь, открывает ее и отходит в сторону. — А теперь проваливай отсюда, пока я еще могу делать вид, что не вижу тебя».~ */
  IF ~~ THEN REPLY #48247 /* ~«Да пожалуйста. Прощай».~ */ DO ~AddexperienceParty(3750)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.4 4.2 11.2
  SAY #48248 /* ~«Вот чего еще... чего-то у тебя кошелек приятно так позвякивает. Сотня монет — уверен, ею ты можешь поделиться — и можешь идти».~ */
  IF ~~ THEN REPLY #48249 /* ~«По рукам».~ */ GOTO 7
  IF ~~ THEN REPLY #48250 /* ~«Забудь».~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #48251 /* ~«Брось через решетку, и тогда я тебя выпущу. И пока ты не спросил: тебе остается только поверить мне, верно, Шаддеус?» — он ухмыляется своему напарнику.~ */
  IF ~  PartyGoldGT(99)
~ THEN REPLY #48252 /* ~«Хорошо. Держи».~ */ DO ~SetGlobal("Zap","GLOBAL",2)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
TakePartyGold(100)
AddexperienceParty(3750)
~ GOTO 8
  IF ~  PartyGoldLT(100)
~ THEN REPLY #48253 /* ~«У меня нет столько...»~ */ GOTO 9
  IF ~~ THEN REPLY #48254 /* ~«Забудь».~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #48255 /* ~Он тщательно пересчитывает монеты. Когда он, наконец, убеждается, что они все на месте, он отпирает тебе дверь. «А теперь проваливай!»~ */
  IF ~~ THEN REPLY #48256 /* ~«Хорошо, хорошо». ~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY #48257 /* ~«Тогда ты отсюда не выберешься, так ведь?» Его смех напоминает чириканье. Он отворачивается.~ */
  IF ~~ THEN REPLY #48258 /* ~«Проклятье...»~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 0.1 12.0
  SAY #48259 /* ~«Ты просто хочешь поговорить, так? Вот только не получится у тебя разговора с Раймоном, эт уж точно!» — он отворачивается от тебя.~ */
  IF ~~ THEN REPLY #48264 /* ~«Если ты выпустишь меня отсюда, я оставлю тебе жизнь».~ */ GOTO 1
  IF ~~ THEN REPLY #48261 /* ~«Вот и отлично».~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.3 4.1
  SAY #48262 /* ~Он презрительно тебе усмехается. «Будто бы я тебе поверил? — его усы дергаются. — Попробуй еще разок».~ */
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #48263 /* ~«Если ты выпустишь меня отсюда, я оставлю тебе жизнь».~ */ DO ~SetGlobal("Zap","GLOBAL",3)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
~ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #48264 /* ~«Если ты выпустишь меня отсюда, я оставлю тебе жизнь».~ */ GOTO 4
  IF ~~ THEN REPLY #48265 /* ~«Как насчет звенелок?»~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #48266 /* ~«Подумай вот о чем: я, несомненно, представляю для вас опасность, и все же говорю с вами на равных. Ты же не думаешь, что эти стены меня удержат, если я захочу выйти? Говорю безо всяких угроз: в твоих же интересах выпустить меня».~ */ DO ~SetGlobal("Zap","GLOBAL",2)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #48267 /* ~«Потому что я когда-нибудь отсюда выберусь, и тогда здесь будет заварушка».~ */ GOTO 4
  IF ~~ THEN REPLY #48268 /* ~«Забудь».~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 17 even though they appear after this state */
~  Global("Zap","GLOBAL",1)
Global("Rat_Guard","GLOBAL",1)
!NearbyDialog("DAnnah")
~ THEN BEGIN 12 // from:
  SAY #48269 /* ~«Чего тебе еще, пустоголовый?»~ */
  IF ~~ THEN REPLY #48270 /* ~«Я хочу поговорить с тобой».~ */ GOTO 10
  IF ~~ THEN REPLY #48271 /* ~«Я хочу обсудить варианты своего выхода отсюда».~ */ GOTO 1
  IF ~~ THEN REPLY #48272 /* ~«Ничего. Забудь».~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 17 even though they appear after this state */
~  Global("Zap","GLOBAL",1)
NearbyDialog("DAnnah")
~ THEN BEGIN 13 // from:
  SAY #48273 /* ~Когда ты приближаешься к прутьям, блестит серебро, и один из охранников-оборотней кидается на другого со ошеломляющей жестокостью!~ */
  IF ~~ THEN DO ~SetAnimState("Shad",ANIM_MIMEATTACK1)
SetAnimState("Raimon",ANIM_MIMEDIE)
Kill("Raimon")
~ GOTO 16
END

IF ~~ THEN BEGIN 14 // from:
  SAY #48275 /* ~«Вот так, — он берет с тела Раймона ключи, отпирает дверь и открывает ее тебе. — А теперь пошевеливайся». Он отвешивает быстрый поклон и убегает.~ */
  IF ~~ THEN REPLY #48276 /* ~«Конечно. Спасибо».~ */ DO ~SetGlobal("Zap","GLOBAL",5)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
~ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #48277 /* ~«Тебя удивляет, почему я это сделал, ведь так? Когда-то я жил в Погребенной деревне. Меня звали Шаддеус. Я не хочу быть крысооборотнем, и не считаю, что эта зараза делает меня менее человечным. Уходи. Сейчас же». Он отпирает дверь, открывает ее тебе и убегает прочь.~ */
  IF ~~ THEN REPLY #48278 /* ~«Спасибо, Шаддеус. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 13.0
  SAY #48279 /* ~Прикончив своего приятеля-оборотня, этот парень смотрит прямо на Анну: «Анна, это Шаддеус. Я выпускаю тебя. Я не могу видеть тебя вот так, в клетке. Замолви за меня словечко, если вернешься в деревню, и скажи им, что тут происходит нечто зловещее. Пока не могу сказать, что, но... ты же сама это знаешь».~ */
  IF ~~ THEN EXTERN ~DANNAH~ 160
END

IF WEIGHT #1 ~  Global("Zap","GLOBAL",1)
Global("Rat_Guard","GLOBAL",1)
!NearbyDialog("DAnnah")
PartyGoldLT(100)
CheckStatLT(Protagonist,13,STR)
CheckStatLT(Protagonist,13,CHR)
CheckStatLT(Protagonist,13,INT)
~ THEN BEGIN 17 // from:
  SAY #48280 /* ~Когда ты приближаешься к прутьям, блестит серебро, и один из охранников-оборотней кидается на другого со ошеломляющей жестокостью!~ */
  IF ~~ THEN DO ~SetAnimState("Shad",ANIM_MIMEATTACK1)
SetAnimState("Raimon",ANIM_MIMEDIE)
Kill("Raimon")
~ EXTERN ~DSHAD~ 8
END
