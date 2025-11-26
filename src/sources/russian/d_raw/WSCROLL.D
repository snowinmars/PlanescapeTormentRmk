// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : WSCROLL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~WSCROLL~

IF ~  !Class(Protagonist,MAGE)
~ THEN BEGIN 0 // from:
  SAY #62359 /* ~Свиток исписан загадочными текущими рунами, у которых ты не можешь найти ни начала, ни конца. Возможно, какой-нибудь маг сможет разгадать содержащийся в них смысл.~ */
  IF ~~ THEN REPLY #62360 /* ~Отложить свиток.~ */ EXIT
END

IF ~  CheckStatLT(Protagonist,18,INT)
~ THEN BEGIN 1 // from:
  SAY #62361 /* ~Свиток исписан магическими текущими рунами. Ты пробегаешься глазами по их светящимся очертаниям, и твой разум наполняется ощущением безотлагательности и могущества. К несчастью, смысл свитка слишком сложен для твоего уровня интеллекта.~ */
  IF ~~ THEN REPLY #62362 /* ~Отложить свиток.~ */ EXIT
END

IF ~  ClassLevelLT(Protagonist,MAGE,12)
~ THEN BEGIN 2 // from:
  SAY #62363 /* ~Свиток исписан магическими текущими рунами. Ты пробегаешься глазами по их светящимся очертаниям, и твой разум наполняется ощущением безотлагательности и могущества. Совершенно очевидно, что это свиток «Желание»... К сожалению, ты недостаточно опытен, чтобы воспользоваться им.~ */
  IF ~~ THEN REPLY #62364 /* ~Отложить свиток.~ */ EXIT
END

IF ~  True()
~ THEN BEGIN 3 // from:
  SAY #62365 /* ~Свиток исписан магическими текущими рунами. Ты пробегаешься глазами по их светящимся очертаниям, и твой разум наполняется ощущением безотлагательности и могущества. Совершенно очевидно, что это свиток «Желание»... Чего ты желаешь?~ */
  IF ~~ THEN REPLY #62366 /* ~«Я желаю улучшить свои атрибуты...»~ */ GOTO 4
  IF ~~ THEN REPLY #62367 /* ~«Я желаю владеть могущественным предметом...»~ */ DO ~GiveItemCreate("Wring",Protagonist,1,0,0)
DestroyPartyItem("Wscroll",TRUE)
~ GOTO 6
  IF ~~ THEN REPLY #62368 /* ~«Я желаю сказочного богатства...»~ */ DO ~GiveGoldForce(10000)
DestroyPartyItem("Wscroll",TRUE)
~ GOTO 7
  IF ~  False()
~ THEN REPLY #62369 /* ~«Я желаю знаний и опыта, в которых лежит истинное могущество...»~ */ DO ~PermanentStatChange(Protagonist,LEVEL,RAISE,1)
DestroyPartyItem("Wscroll",TRUE)
~ GOTO 8
  IF ~~ THEN REPLY #62370 /* ~«Я желаю видеть себя и своих спутников в полном здравии...»~ */ DO ~FullHeal(Player1)
FullHeal(Player2)
FullHeal(Player3)
FullHeal(Player4)
FullHeal(Player5)
FullHeal(Player6)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
DestroyPartyItem("Wscroll",TRUE)
~ GOTO 9
  IF ~~ THEN REPLY #62371 /* ~«Я желаю тайных знаний и могущества, которые они принесут с собой...»~ */ DO ~GiveItemCreate("SPWI705",Protagonist,1,1,0)
GiveItemCreate("SPWI802",Protagonist,1,1,0)
GiveItemCreate("SPWI909",Protagonist,1,1,0)
DestroyPartyItem("Wscroll",TRUE)
~ GOTO 10
  IF ~~ THEN REPLY #62372 /* ~Отложить свиток.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #62373 /* ~Руны начинают светиться и пульсировать. В твоем разуме появляется образ тебя самого, образ, который ты можешь менять по своему желанию... Какой атрибут ты хочешь увеличить?~ */
  IF ~~ THEN REPLY #62374 /* ~Сила.~ */ DO ~DestroyPartyItem("Wscroll",TRUE)
PermanentStatChange(Protagonist,STR,RAISE,2)
~ GOTO 5
  IF ~~ THEN REPLY #62375 /* ~Интеллект.~ */ DO ~DestroyPartyItem("Wscroll",TRUE)
PermanentStatChange(Protagonist,INT,RAISE,2)
~ GOTO 5
  IF ~~ THEN REPLY #62376 /* ~Мудрость.~ */ DO ~DestroyPartyItem("Wscroll",TRUE)
PermanentStatChange(Protagonist,WIS,RAISE,2)
~ GOTO 5
  IF ~~ THEN REPLY #62377 /* ~Ловкость.~ */ DO ~DestroyPartyItem("Wscroll",TRUE)
PermanentStatChange(Protagonist,DEX,RAISE,2)
~ GOTO 5
  IF ~~ THEN REPLY #62378 /* ~Телосложение.~ */ DO ~DestroyPartyItem("Wscroll",TRUE)
PermanentStatChange(Protagonist,CON,RAISE,2)
~ GOTO 5
  IF ~~ THEN REPLY #62379 /* ~Обаяние.~ */ DO ~DestroyPartyItem("Wscroll",TRUE)
PermanentStatChange(Protagonist,CHR,RAISE,2)
~ GOTO 5
  IF ~~ THEN REPLY #62380 /* ~Отложить свиток.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1 4.2 4.3 4.4 4.5
  SAY #62381 /* ~В своем воображении ты рисуешь себя таким, какой ты есть, и таким, каким ты хочешь стать. Сила свитка наполняет тебя, и действительность подстраивается под тот образ, что ты создал. Свиток исчезает в энергетической вспышке.~ */
  IF ~~ THEN REPLY #62382 /* ~Готово.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY #62383 /* ~В своем воображении ты рисуешь свою руку, плотно сжатую в кулак. Сила в руке приобретает форму предмета, который делает тебя лучше, чем прежде. Сила свитка наполняет тебя, и действительность подстраивается под тот образ, что ты создал. Свиток исчезает в энергетической вспышке.~ */
  IF ~~ THEN REPLY #62384 /* ~Готово.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.2
  SAY #62385 /* ~В своем воображении ты рисуешь себя богатым: сказочные сокровища лежат у твоих ног. Сила свитка наполняет тебя, и действительность подстраивается под тот образ, что ты создал. Свиток исчезает в энергетической вспышке.~ */
  IF ~~ THEN REPLY #62386 /* ~Готово.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.3
  SAY #62387 /* ~В своем воображении ты рисуешь себя, переживающим много событий. Образы ускользают нераспознанными, но ты всегда извлекаешь из них какой-нибудь опыт. Сила свитка наполняет тебя, и действительность подстраивается под тот образ, что ты создал. Свиток исчезает в энергетической вспышке.~ */
  IF ~~ THEN REPLY #62388 /* ~Готово.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.4
  SAY #62389 /* ~В своем воображении ты рисуешь себя и своих спутников страдающими от множества ран. Внезапно раны начинают затягиваться и вы снова становитесь здоровыми. Сила свитка наполняет тебя, и действительность подстраивается под тот образ, что ты создал. Свиток исчезает в энергетической вспышке.~ */
  IF ~~ THEN REPLY #62390 /* ~Готово.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 3.5
  SAY #62391 /* ~В своем воображении ты рисуешь себя в древней, заполненной знаниями библиотеке архимага. Ты хватаешь сразу несколько свитков с ближайшей полки. Сила свитка наполняет тебя, и действительность подстраивается под тот образ, что ты создал. Свиток исчезает в энергетической вспышке.~ */
  IF ~~ THEN REPLY #62392 /* ~Готово.~ */ EXIT
END
