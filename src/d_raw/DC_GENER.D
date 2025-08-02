// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_GENER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_GENER~

IF ~  NumTimesTalkedTo(0)
RandomNum(4,1)
~ THEN BEGIN 0 // from:
  SAY #67980 /* ~Этот человек поворачивается к тебе, бросив на тебя сердитый взгляд из-за того, что ты его прервал. «Мы *знакомы*? Вот именно... Я так не думаю. А теперь оставь меня в покое, счастливо».~ */
  IF ~~ THEN REPLY #67981 /* ~Уйти.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
RandomNum(4,2)
~ THEN BEGIN 1 // from:
  SAY #67982 /* ~Когда ты пытаешься привлечь внимание этого человека, он останавливается и поворачивается к тебе. «Без обид, рубака, но я не разговариваю с теми, кого не знаю, а тебя я и знать не хочу. Найди кого-нибудь другого для своих вопросов, ладно? Прощай».~ */
  IF ~~ THEN REPLY #67983 /* ~Уйти.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
RandomNum(4,3)
~ THEN BEGIN 2 // from:
  SAY #67984 /* ~Он ухмыляется, прерывая твое приветствие. «И слышать не хочу — ни слова. Найди другого бедолагу для допросов, лады?»~ */
  IF ~~ THEN REPLY #67985 /* ~Уйти.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 3 // from:
  SAY #67986 /* ~Он нервно улыбается тебе, предусмотрительно подняв руки. «Знаток, я пытаюсь держаться подальше от неприятностей, а если судить по твоему виду, ты — ходячая неприятность. Просто оставь меня в покое... пожалуйста».~ */
  IF ~~ THEN REPLY #67987 /* ~Уйти.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #67988 /* ~Этому субъекту нечего больше сказать тебе.~ */
  IF ~~ THEN REPLY #67989 /* ~Уйти.~ */ EXIT
END
