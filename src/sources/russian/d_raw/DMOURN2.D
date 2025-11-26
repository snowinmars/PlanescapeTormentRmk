// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMOURN2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DMOURN2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #7080 /* ~Эта тленная одета в длинную темную мантию, ее руки вложены в рукава. Она склонила голову и поет в неторопливом темпе с остальными тленными, окружающими ее.~ */
  IF ~~ THEN REPLY #7081 /* ~«Приветствую».~ */ GOTO 1
  IF ~~ THEN REPLY #8241 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.0 4.0
  SAY #8201 /* ~Тленная, скорее всего, услышала тебя, но вида не подала.~ */
  IF ~~ THEN REPLY #8242 /* ~«Я хотел бы немного поговорить с тобой».~ */ GOTO 3
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8243 /* ~Слушать их пение.~ */ GOTO 2
  IF ~  Global("Chant","GLOBAL",1)
~ THEN REPLY #8244 /* ~Слушать их пение.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Chant","GLOBAL",2)
~ THEN REPLY #8245 /* ~Слушать их пение.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 24
  IF ~  Global("Chant","GLOBAL",3)
~ THEN REPLY #8246 /* ~Слушать их пение.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 25
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8247 /* ~Слушать их пение.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 26
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8248 /* ~Слушать их пение.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 27
  IF ~  GlobalGT("Chant","GLOBAL",5)
GlobalLT("Chant","GLOBAL",8)
~ THEN REPLY #8249 /* ~Слушать их пение.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 39
  IF ~~ THEN REPLY #8250 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 4.1 11.0 34.1
  SAY #8202 /* ~Все тленные поют в одном тоне и ритме. Напев каждые несколько минут переходит в крик, после чего медленно стихает, подобно эху. Когда и оно стихает, тленные произносят несколько строк во славу «Истинной Смерти», после чего продолжают петь.~ */
  IF ~~ THEN REPLY #8251 /* ~«Приветствую».~ */ GOTO 1
  IF ~~ THEN REPLY #8252 /* ~Оставить их — пускай себе поют.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 24.0 25.0 26.0 27.0 39.0
  SAY #8203 /* ~Тленная поднимает голову. Она не перестает петь в том же темпе и тоне, что и другие тленные вокруг нее.~ */
  IF ~~ THEN REPLY #8253 /* ~«Что ты делаешь?»~ */ GOTO 4
  IF ~  Global("Mourn","GLOBAL",1)
~ THEN REPLY #8254 /* ~«Я оплакиваю покойника».~ */ GOTO 5
  IF ~  Global("Mourn","GLOBAL",1)
~ THEN REPLY #8255 /* ~«Я здесь ради того, кто потерял другого».~ */ GOTO 35
  IF ~~ THEN REPLY #8256 /* ~«Извини за беспокойство. Прощай».~ */ GOTO 12
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #8204 /* ~Тленная не обращает на тебя внимания — вместо этого она кивает и продолжает петь.~ */
  IF ~~ THEN REPLY #8257 /* ~«Я хотел бы поговорить с тобой».~ */ GOTO 1
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8258 /* ~Слушать их пение.~ */ GOTO 2
  IF ~  Global("Chant","GLOBAL",1)
~ THEN REPLY #8259 /* ~Слушать их пение.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Chant","GLOBAL",2)
~ THEN REPLY #8260 /* ~Слушать их пение.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 24
  IF ~  Global("Chant","GLOBAL",3)
~ THEN REPLY #8261 /* ~Слушать их пение.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 25
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8262 /* ~Слушать их пение.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 26
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8263 /* ~Слушать их пение.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 27
  IF ~  GlobalGT("Chant","GLOBAL",5)
GlobalLT("Chant","GLOBAL",8)
~ THEN REPLY #8264 /* ~Слушать их пение.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #8265 /* ~Оставить ее в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 20.2
  SAY #8205 /* ~Плакальщица внезапно останавливается и рассматривает тебя. «Скорбишь ли ты по усопшему?»~ */
  IF ~~ THEN REPLY #8266 /* ~«Нет. Смерть не тревожит мои чувства».~ */ GOTO 11
  IF ~  Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #8267 /* ~Правда: «Да... Мне кажется, что я в ответе за смерть невинной женщины, Дейонарры. Меня не дает покоя не только это: я чувствую вину за то горе, которое причинил ее отцу».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mourn_1","GLOBALGood",3)
~ GOTO 6
  IF ~  Global("Xachariah","GLOBAL",2)
~ THEN REPLY #8268 /* ~Правда: «Да... Я в ответе за смерть невинного мужчины, Захарии. Его смерть не дает мне покоя».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mourn_2","GLOBALGood",2)
~ GOTO 7
  IF ~  GlobalGT("Nature","GLOBAL",0)
~ THEN REPLY #8269 /* ~Правда: «Да... Я в ответе за смерть множества невинных на многих планах. Я едва выношу страдания, причиняемые осознанием этого факта».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mourn_3","GLOBALGood",5)
~ GOTO 8
  IF ~  Global("Wife_of_Angyar","GLOBAL",2)
~ THEN REPLY #8270 /* ~«Не я. Есть женщина, жена Ангиара, которая потеряла своего сына. Скорбь повисла на ней тяжелой ношей».~ */ GOTO 9
  IF ~~ THEN REPLY #8271 /* ~Ложь: «Нет, э-э, я говорю о своем друге, э-э... Адане: он скорбит по умершему».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mourn_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALAdahn_Mourn_1","GLOBALAdahn",4)
~ GOTO 10
  IF ~~ THEN REPLY #8272 /* ~«Да, последняя смерть принесла мне много страданий и боли».~ */ GOTO 36
  IF ~~ THEN REPLY #7855 /* ~«Ну, э-э, прежде чем мы поговорим об этом, у меня есть к тебе несколько вопросов...»~ */ GOTO 20
  IF ~~ THEN REPLY #8273 /* ~«Прошу прощения... Я оговорился. Прощай».~ */ GOTO 12
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #8206 /* ~«Мы будем оплакивать твою боль и боль ее отца, если это не причинит никому обиду».~ */
  IF ~~ THEN REPLY #8274 /* ~«Если это возможно — это бы сильно облегчило мою боль и боль ее отца».~ */ DO ~SetGlobal("Chant","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #8275 /* ~«Нет, в этом нет нужды. Прощай».~ */ GOTO 12
END

IF ~~ THEN BEGIN 7 // from: 5.2
  SAY #8207 /* ~«Мы будем оплакивать твою боль, если таково твое желание».~ */
  IF ~~ THEN REPLY #8276 /* ~«Если это возможно — это бы сильно облегчило мою боль».~ */ DO ~SetGlobal("Chant","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY #8277 /* ~«Нет, в этом нет нужды. Прощай».~ */ GOTO 12
END

IF ~~ THEN BEGIN 8 // from: 5.3
  SAY #8208 /* ~«Мы будем оплакивать твою боль, если таково твое желание».~ */
  IF ~~ THEN REPLY #8278 /* ~«Если это возможно — это бы сильно облегчило мою боль».~ */ DO ~SetGlobal("Chant","GLOBAL",3)
~ GOTO 11
  IF ~~ THEN REPLY #8279 /* ~«Нет, в этом нет нужды. Прощай».~ */ GOTO 12
END

IF ~~ THEN BEGIN 9 // from: 5.4 35.1
  SAY #8209 /* ~«Мы будем оплакивать ее боль, если это не причинит ей обиду».~ */
  IF ~~ THEN REPLY #8280 /* ~«Если это возможно — это бы сильно облегчило ее боль».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mourn_4","GLOBALGood",2)
SetGlobal("Chant","GLOBAL",4)
~ GOTO 11
  IF ~~ THEN REPLY #8281 /* ~«Нет, в этом нет нужды. Прощай».~ */ GOTO 12
END

IF ~~ THEN BEGIN 10 // from: 5.5 35.2
  SAY #8210 /* ~«Мы будем оплакивать его боль, если это не причинит ему обиду».~ */
  IF ~~ THEN REPLY #8282 /* ~«Если это возможно — это бы сильно облегчило его боль».~ */ DO ~SetGlobal("Chant","GLOBAL",5)
~ GOTO 11
  IF ~~ THEN REPLY #8283 /* ~«Нет, в этом нет нужды. Прощай».~ */ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 5.0 6.0 7.0 8.0 9.0 10.0 20.4 35.0 36.0 38.0
  SAY #8211 /* ~Тленная кивает и возвращается к пению.~ */
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8284 /* ~Слушать их пение.~ */ GOTO 2
  IF ~  Global("Chant","GLOBAL",1)
~ THEN REPLY #8285 /* ~Слушать их пение.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Chant","GLOBAL",2)
~ THEN REPLY #8286 /* ~Слушать их пение.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 24
  IF ~  Global("Chant","GLOBAL",3)
~ THEN REPLY #8287 /* ~Слушать их пение.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 25
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8288 /* ~Слушать их пение.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 26
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8289 /* ~Слушать их пение.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 27
  IF ~  GlobalGT("Chant","GLOBAL",5)
GlobalLT("Chant","GLOBAL",8)
~ THEN REPLY #8290 /* ~Слушать их пение.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 39
  IF ~~ THEN REPLY #8291 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 3.3 5.8 6.1 7.1 8.1 9.1 10.1 13.8 14.8 15.8 16.10 17.8 18.9 19.7 20.5 28.1 29.1 30.2 31.2 32.2 33.2 35.4 36.1 37.1 38.1 40.2
  SAY #8212 /* ~Тленная кивает головой и возвращается к пению.~ */
  IF ~~ THEN REPLY #8292 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 20.0
  SAY #8213 /* ~«Мы оплакиваем».~ */
  IF ~~ THEN REPLY #8293 /* ~«Кто умер?»~ */ GOTO 14
  IF ~  False()
Global("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #8294 /* ~«Я считал, что вы, тленные, выше оплакивания и эмоций».~ */ GOTO 14
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8295 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #8296 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8297 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8298 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #8299 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #8300 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 40
  IF ~~ THEN REPLY #8301 /* ~«Это все, что я желал узнать. Прощай».~ */ GOTO 12
END

IF ~~ THEN BEGIN 14 // from: 13.0 13.1
  SAY #8214 /* ~«Мы оплакиваем не мертвых. Мы оплакиваем живых».~ */
  IF ~~ THEN REPLY #8302 /* ~«Живых?»~ */ GOTO 15
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8303 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #8304 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8305 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8306 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #8307 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #8308 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 40
  IF ~~ THEN REPLY #8309 /* ~«Понятно... У меня еще вопросы...» ~ */ GOTO 20
  IF ~~ THEN REPLY #8310 /* ~«Думаю, я выслушал достаточно. Прощай».~ */ GOTO 12
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #8215 /* ~«Мы оплакиваем живых, испытывающих боль утраты».~ */
  IF ~~ THEN REPLY #8311 /* ~«Зачем?»~ */ GOTO 16
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8312 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #8313 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8314 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8315 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #8316 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #8317 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 40
  IF ~~ THEN REPLY #8318 /* ~«Понятно... У меня еще вопросы...» ~ */ GOTO 20
  IF ~~ THEN REPLY #8319 /* ~«Думаю, я выслушал достаточно. Прощай».~ */ GOTO 12
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #8216 /* ~«Уход души к Истинной Смерти часто оставляет ощущение беспокойства. Когда уходит любимый, утрату часто сопровождают скорбь и чувство потери».~ */
  IF ~~ THEN REPLY #8320 /* ~«И это естественно...»~ */ GOTO 17
  IF ~~ THEN REPLY #8321 /* ~«Значит, вы оплакиваете живых, потому что...»~ */ GOTO 17
  IF ~~ THEN REPLY #8322 /* ~«Истинной Смерти?»~ */ GOTO 18
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8323 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #8324 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8325 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8326 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #8327 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #8328 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 40
  IF ~~ THEN REPLY #8329 /* ~«Понятно... У меня еще вопросы...» ~ */ GOTO 20
  IF ~~ THEN REPLY #8330 /* ~«Думаю, я выслушал достаточно. Прощай».~ */ GOTO 12
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1 18.1
  SAY #8217 /* ~«Скорбь и чувство утраты — сильные эмоции. Подобные эмоции привязывают живущего к этому существованию, не позволяя ему достичь Истинной Смерти в тот момент, когда смерть приходит к нему. Мы оплакиваем живых, поглощенных подобными эмоциями».~ */
  IF ~~ THEN REPLY #8331 /* ~«Истинной Смерти?»~ */ GOTO 18
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8332 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #8333 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8334 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8335 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #8336 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #8337 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 40
  IF ~~ THEN REPLY #8338 /* ~«Понятно... У меня еще вопросы...» ~ */ GOTO 20
  IF ~~ THEN REPLY #8339 /* ~«Думаю, я выслушал достаточно. Прощай».~ */ GOTO 12
END

IF ~~ THEN BEGIN 18 // from: 16.2 17.0
  SAY #8218 /* ~«Иногда ее называют последней смертью. Истинная Смерть — это освобождение от серого, полного боли существования. Это освобождение от эмоций, от разума, от этих оболочек».~ */
  IF ~~ THEN REPLY #8340 /* ~«Похоже на забвение».~ */ GOTO 19
  IF ~~ THEN REPLY #8341 /* ~«Поэтому вы оплакиваете живых?»~ */ GOTO 17
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8342 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #8343 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8344 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8345 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #8346 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #8347 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 40
  IF ~~ THEN REPLY #8348 /* ~«Понятно... У меня еще вопросы...» ~ */ GOTO 20
  IF ~~ THEN REPLY #8349 /* ~«Думаю, я выслушал достаточно. Прощай».~ */ GOTO 12
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #8219 /* ~Тленная кивает. «Некоторые это так и называют. Но это не совсем точно».~ */
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8350 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #8351 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8352 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8353 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #8354 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #8355 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 40
  IF ~~ THEN REPLY #8356 /* ~«Неважно. У меня есть другие вопросы...»~ */ GOTO 20
  IF ~~ THEN REPLY #8357 /* ~«Думаю, я выслушал достаточно. Прощай».~ */ GOTO 12
END

IF ~~ THEN BEGIN 20 // from: 5.7 14.7 15.7 16.9 17.7 18.8 19.6 29.0 30.1 31.1 32.1 33.1 34.0 37.0 40.1
  SAY #8220 /* ~Тленная ждет.~ */
  IF ~~ THEN REPLY #8358 /* ~«Что ты делаешь?»~ */ GOTO 13
  IF ~  Global("Chant_Change","GLOBAL",1)
~ THEN REPLY #8359 /* ~«Почему ваши песнопения изменились?»~ */ GOTO 28
  IF ~  Global("Mourn","GLOBAL",1)
~ THEN REPLY #8360 /* ~«Я оплакиваю покойника».~ */ GOTO 5
  IF ~  Global("Mourn","GLOBAL",1)
~ THEN REPLY #8361 /* ~«У меня просьба от того, кто потерял другого».~ */ GOTO 35
  IF ~~ THEN REPLY #8362 /* ~«Я хотел бы послушать ваше пение».~ */ GOTO 11
  IF ~~ THEN REPLY #8363 /* ~«Извини за беспокойство. Прощай».~ */ GOTO 12
END

IF ~~ THEN BEGIN 21 // from: 1.2 4.2 11.1 23.0
  SAY #8221 /* ~Все тленные поют в одном тоне и ритме. В отличие от пения, которое ты слышал, когда впервые подошел к мемориалу, этот напев повторяется словно волна, накатывающая на береговую линию. С этой мыслью в тебе пробуждается воспоминание...~ */
  IF ~  Global("Shore_Memory","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #8364 /* ~Попробовать вспомнить...~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,500)
~ GOTO 22
  IF ~  Global("Shore_Memory","GLOBAL",0)
CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #8365 /* ~Попробовать вспомнить...~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,750)
~ GOTO 22
  IF ~  Global("Shore_Memory","GLOBAL",0)
CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #8366 /* ~Попробовать вспомнить...~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,1000)
~ GOTO 22
  IF ~  Global("Shore_Memory","GLOBAL",1)
~ THEN REPLY #8367 /* ~Попробовать вспомнить...~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 22
  IF ~~ THEN REPLY #33957 /* ~Стряхнуть воспоминание.~ */ GOTO 23
END

IF ~~ THEN BEGIN 22 // from: 21.0 21.1 21.2 21.3
  SAY #8222 /* ~Твое воспоминание смутно: ты стоишь на далеком берегу... где-то в другом месте, далеко отсюда. Рядом с тобой — женщина. Она стоит слева от тебя, как раз за пределами твоего периферийного зрения, поэтому ты не можешь ее различить. При попытке освежить воспоминание оно ускользает...~ */
  IF ~  Global("Shore_Memory","GLOBAL",0)
~ THEN REPLY #8368 /* ~Восстановить самообладание.~ */ DO ~SetGlobal("Shore_Memory","GLOBAL",1)
~ GOTO 23
  IF ~  GlobalGT("Shore_Memory","GLOBAL",0)
~ THEN REPLY #8369 /* ~Восстановить самообладание.~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 21.4 22.0 22.1
  SAY #8223 /* ~...и ты снова стоишь рядом с тленными-плакальщиками. Их пение теперь едва слышно. Они останавливаются, произносят несколько строк во славу «Истинной Смерти», затем снова начинают петь.~ */
  IF ~~ THEN REPLY #8370 /* ~Снова слушать.~ */ GOTO 21
  IF ~~ THEN REPLY #8371 /* ~Оставить их — пускай себе поют.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 1.3 4.3 11.2
  SAY #8224 /* ~Все тленные поют в одном тоне и ритме. В отличие от пения, которое ты слышал, когда впервые подошел к мемориалу, этот напев по тону намного выше, и напоминает свист летящей стрелы или ветер, гуляющий по каньону. Он начинается и заканчивается быстро: после того как тленные умолкают, они произносят несколько строк во славу «Истинной Смерти», а затем начинают петь снова.~ */
  IF ~~ THEN REPLY #8372 /* ~«У меня есть вопросы к тебе...»~ */ GOTO 3
  IF ~~ THEN REPLY #8373 /* ~Оставить их — пускай себе поют.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 1.4 4.4 11.3
  SAY #8225 /* ~Все тленные поют в одном тоне и ритме. В отличие от пения, которое ты слышал, когда впервые подошел к мемориалу, в этом напеве есть некая энергетика и случайность: он непредсказуем, и его высота меняется, едва он проходит через их губы. И сколько бы не менялся напев, все тленные попадают в такт. Как только песнопение, наконец, становится едва слышным, тленные произносят несколько строк во славу «Истинной Смерти», а затем начинают петь снова.~ */
  IF ~~ THEN REPLY #8374 /* ~«У меня есть вопросы к тебе...»~ */ GOTO 3
  IF ~~ THEN REPLY #8375 /* ~Оставить их — пускай себе поют.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 1.5 4.5 11.4
  SAY #8226 /* ~В отличие от пения, которое ты слышал, когда впервые подошел к мемориалу, этот напев состоит из одной единственной ноты, звучащей несколько минут... он напоминает тебе звон большого колокола. После этого тленные некоторое время молчат, затем произносят несколько строк во славу «Истинной Смерти» и продолжают петь.~ */
  IF ~~ THEN REPLY #8376 /* ~«У меня есть вопросы к тебе...»~ */ GOTO 3
  IF ~~ THEN REPLY #8377 /* ~Оставить их — пускай себе поют.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 1.6 4.6 11.5
  SAY #8227 /* ~В отличие от пения, которое ты слышал, когда впервые подошел к мемориалу, этот напев намного нежнее: иногда он звучит настолько тихо, что сливается с шумом улиц. Тленные на несколько минут полностью умолкают, потом произносят несколько строк во славу «Истинной Смерти» и продолжают петь.~ */
  IF ~~ THEN REPLY #8378 /* ~«У меня есть вопросы к тебе...»~ */ GOTO 3
  IF ~~ THEN REPLY #8379 /* ~Оставить их — пускай себе поют.~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 20.1
  SAY #8228 /* ~Тленная изумленно смотрит на тебя. «Наше пение не поменялось. Мы продолжаем один и тот же напев с того момента, как начали петь».~ */
  IF ~~ THEN REPLY #8380 /* ~«Ваше пение изменилось... Я слышу отличия в тоне и ритме».~ */ GOTO 29
  IF ~~ THEN REPLY #8381 /* ~«Ладно, забудь».~ */ GOTO 12
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #8229 /* ~Тленная качает головой. «Возможно, это ты изменился».~ */
  IF ~~ THEN REPLY #8382 /* ~«У меня есть другие вопросы...»~ */ GOTO 20
  IF ~~ THEN REPLY #8383 /* ~«Может оно и так. Прощай».~ */ GOTO 12
END

IF ~~ THEN BEGIN 30 // from: 13.2 14.1 15.1 16.3 17.1 18.2 19.0
  SAY #8230 /* ~«Я оплакиваю Яниса. Его ранила потеря его первой и единственной дочери Дейонарры».~ */
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #8384 /* ~«Дейонарры? Кажется, я слышал о ней. Тебе известно, как она умерла?»~ */ JOURNAL #27450 /* ~Тленные-плакальщики сказали, что они оплакивают мужчину по имени Янис, который является отцом того призрака, которого я встретил в Морге. Возможно, Янис может что-то знать об этой Дейонарре и обо мне...~ */ GOTO 37
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #8385 /* ~«У меня есть другие вопросы...»~ */ JOURNAL #27451 /* ~Тленные-плакальщики сказали, что они оплакивают мужчину по имени Янис, который потерял свою единственную дочь, Дейонарру. Почему-то эти имена кажутся мне знакомыми, но я не могу их вспомнить.~ */ GOTO 20
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #8386 /* ~«Спасибо. Это все, что я желал узнать».~ */ JOURNAL #27451 /* ~Тленные-плакальщики сказали, что они оплакивают мужчину по имени Янис, который потерял свою единственную дочь, Дейонарру. Почему-то эти имена кажутся мне знакомыми, но я не могу их вспомнить.~ */ GOTO 12
END

IF ~~ THEN BEGIN 31 // from: 13.3 13.6 14.2 14.5 15.2 15.5 16.4 16.7 17.2 17.5 18.3 18.6 19.1 19.4
  SAY #8231 /* ~«Мы оплакиваем твою скорбь по усопшим».~ */
  IF ~~ THEN REPLY #8387 /* ~«Я оправился. Кому-то из тех, кого вы оплакивали до меня, помощь нужна больше, чем мне».~ */ GOTO 34
  IF ~~ THEN REPLY #8388 /* ~«У меня есть другие вопросы...»~ */ GOTO 20
  IF ~~ THEN REPLY #8389 /* ~«Спасибо. Это все, что я желал узнать».~ */ GOTO 12
END

IF ~~ THEN BEGIN 32 // from: 13.4 14.3 15.3 16.5 17.3 18.4 19.2
  SAY #8232 /* ~«Мы оплакиваем жену Ангиара, которая скорбит по усопшему».~ */
  IF ~~ THEN REPLY #8390 /* ~«Она оправилась. Кому-то из тех, кого вы оплакивали до ее, помощь нужна больше, чем ей».~ */ GOTO 34
  IF ~~ THEN REPLY #8391 /* ~«У меня есть другие вопросы...»~ */ GOTO 20
  IF ~~ THEN REPLY #8392 /* ~«Спасибо. Это все, что я желал узнать».~ */ GOTO 12
END

IF ~~ THEN BEGIN 33 // from: 13.5 14.4 15.4 16.6 17.4 18.5 19.3
  SAY #8233 /* ~«Мы оплакиваем Адана, который скорбит по усопшему».~ */
  IF ~~ THEN REPLY #8393 /* ~«Э-э... Адан оправился. Кому-то из тех, кого вы оплакивали до его, помощь нужна больше, чем ему».~ */ GOTO 34
  IF ~~ THEN REPLY #8394 /* ~«У меня есть другие вопросы...»~ */ GOTO 20
  IF ~~ THEN REPLY #8395 /* ~«Спасибо. Это все, что я желал узнать».~ */ GOTO 12
END

IF ~~ THEN BEGIN 34 // from: 31.0 32.0 33.0 40.0
  SAY #8234 /* ~Тленная кивает и возвращается к пению.~ */
  IF ~~ THEN REPLY #8396 /* ~«У меня есть другие вопросы...»~ */ DO ~SetGlobal("Chant","GLOBAL",0)
~ GOTO 20
  IF ~~ THEN REPLY #8397 /* ~Слушать.~ */ DO ~SetGlobal("Chant","GLOBAL",0)
~ GOTO 2
  IF ~~ THEN REPLY #8398 /* ~Уйти.~ */ DO ~SetGlobal("Chant","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 3.2 20.3
  SAY #8235 /* ~Плакальщица внезапно останавливается и рассматривает тебя. «Скорбит ли тот, о ком ты говоришь, по усопшему?»~ */
  IF ~~ THEN REPLY #8399 /* ~«Нет. Это не вызывает у них никаких эмоций».~ */ GOTO 11
  IF ~  Global("Wife_of_Angyar","GLOBAL",2)
~ THEN REPLY #8400 /* ~«Да. Женщина, жена Ангиара, потеряла своего сына. Скорбь повисла на ней тяжелой ношей».~ */ GOTO 9
  IF ~~ THEN REPLY #8401 /* ~Ложь: «Э-э, да... мой друг, э-э... Адан... недавно потерял близкого человека. Он скорбит по умершему».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mourn_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALAdahn_Mourn_1","GLOBALAdahn",4)
~ GOTO 10
  IF ~~ THEN REPLY #8402 /* ~«Да, последняя смерть принесла им много страданий и боли».~ */ GOTO 38
  IF ~~ THEN REPLY #8403 /* ~«Прошу прощения... Я оговорился. Прощай».~ */ GOTO 12
END

IF ~~ THEN BEGIN 36 // from: 5.6
  SAY #8236 /* ~«Мы будем оплакивать твою боль, если таково твое желание».~ */
  IF ~~ THEN REPLY #8404 /* ~«Если это возможно — это бы сильно облегчило мою боль».~ */ DO ~SetGlobal("Chant","GLOBAL",6)
~ GOTO 11
  IF ~~ THEN REPLY #8405 /* ~«Нет, в этом нет нужды. Прощай».~ */ GOTO 12
END

IF ~~ THEN BEGIN 37 // from: 30.0
  SAY #8237 /* ~«Подробности ее смерти мне неизвестны».~ */
  IF ~~ THEN REPLY #8406 /* ~«У меня есть другие вопросы...»~ */ GOTO 20
  IF ~~ THEN REPLY #8407 /* ~«Хорошо. Это все, что я желал знать».~ */ GOTO 12
END

IF ~~ THEN BEGIN 38 // from: 35.3
  SAY #8238 /* ~«Мы будем оплакивать их боль, если это не причинит им обиду».~ */
  IF ~~ THEN REPLY #8408 /* ~«Если это возможно — это бы сильно облегчило их боль».~ */ DO ~SetGlobal("Chant","GLOBAL",7)
~ GOTO 11
  IF ~~ THEN REPLY #8409 /* ~«Нет, в этом нет нужды. Прощай».~ */ GOTO 12
END

IF ~~ THEN BEGIN 39 // from: 1.7 11.6
  SAY #8239 /* ~В отличие от пения, которое ты слышал, когда впервые подошел к мемориалу, различить этот напев намного сложнее. Слушая его, ты вдруг понимаешь, что звучит он как-то по-странному приглушенно, как будто сам воздух поглощает его. Песнопение тленных стихает спустя несколько минут. Они произносят несколько строк во славу «Истинной Смерти», затем продолжают петь.~ */
  IF ~~ THEN REPLY #8410 /* ~«У меня есть вопросы к тебе...»~ */ GOTO 3
  IF ~~ THEN REPLY #8411 /* ~Оставить их — пускай себе поют.~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 13.7 14.6 15.6 16.8 17.6 18.7 19.5
  SAY #8240 /* ~«Мы оплакиваем упомянутого тобой, который скорбит по усопшему».~ */
  IF ~~ THEN REPLY #8412 /* ~«Он оправился. Кому-то из тех, кого вы оплакивали до его, помощь нужна больше, чем ему».~ */ GOTO 34
  IF ~~ THEN REPLY #8413 /* ~«У меня есть другие вопросы...»~ */ GOTO 20
  IF ~~ THEN REPLY #8414 /* ~«Спасибо. Это все, что я желал узнать».~ */ GOTO 12
END
