// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBURGHER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DBURGHER~

IF ~  NumTimesTalkedTo(0)
GlobalGT("Berrog_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #57017 /* ~Ты видишь старого гитцерая, застрявшего под колесами фургона, который, должно быть, упал на него во время беспорядков. Сплюнув сгусток крови, он скалится тебе. «Ты ведь не собираешься мне помогать, верно? Именно поэтому мы все сюда попали...» Он обессиленно смеется.~ */
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57018 /* ~«Кто ты?»~ */ EXTERN ~DDAKKON~ 186
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57019 /* ~«Кто ты?»~ */ GOTO 4
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57020 /* ~«Расслабься. Я вытащу тебя».~ */ EXTERN ~DDAKKON~ 187
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57021 /* ~«Расслабься. Я вытащу тебя».~ */ GOTO 5
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57022 /* ~«Нет, не собираюсь».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXTERN ~DDAKKON~ 187
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57023 /* ~«Нет, не собираюсь».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 6
END

IF ~  NumTimesTalkedToGT(0)
GlobalGT("Berrog_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #57024 /* ~Гитцерай снова кашляет. «Опять пришел издеваться надо мной? Я не доставлю тебе такого удовольствия». ~ */
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57025 /* ~«Кто ты?»~ */ EXTERN ~DDAKKON~ 186
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57026 /* ~«Кто ты?»~ */ GOTO 4
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57027 /* ~«Расслабься. Я вытащу тебя».~ */ EXTERN ~DDAKKON~ 187
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57028 /* ~«Расслабься. Я вытащу тебя».~ */ GOTO 5
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57029 /* ~«Нет, не собираюсь».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXTERN ~DDAKKON~ 187
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57030 /* ~«Нет, не собираюсь».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 6
END

IF ~~ THEN BEGIN 2 // from:
  SAY #57031 /* ~«Да, убери клинок, *зертов* пес. Я плюю на твои учения. Носи свои оковы дальше, — гитцерай поворачивает голову к тебе. — Я — Товус Гильяф, был бюргером этого города... пока проклятый дэва не вырвался на свободу».~ */
  IF ~~ THEN REPLY #57032 /* ~«Что ты можешь сказать о дэва?»~ */ GOTO 8
  IF ~~ THEN REPLY #57033 /* ~«Ты был бюргером?»~ */ GOTO 9
  IF ~~ THEN REPLY #57034 /* ~«Не могу сказать о твоем городе ничего хорошего».~ */ GOTO 10
  IF ~~ THEN REPLY #57035 /* ~«Дай-ка я вытащу тебя».~ */ GOTO 5
  IF ~~ THEN REPLY #57036 /* ~«В таком случае, я оставлю тебя умирать. Прощай».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY #57038 /* ~«Да, убей меня, *зертов* пес. Делай, как тебе велит твой хозяин». Старый гитцерай хохочет, пока Даккон не перерезает ему горло.~ */
  IF ~~ THEN REPLY #57039 /* ~«Хороший удар, Даккон».~ */ DO ~SetAnimState("Dakkon",ANIM_MIMEATTACK2)
SetAnimState(Myself,ANIM_MIMEDIE)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1 1.1
  SAY #57040 /* ~«Я — Товус Гильяф, был бюргером этого города... пока проклятый дэва не вырвался на свободу».~ */
  IF ~~ THEN REPLY #57041 /* ~«Что ты можешь сказать о дэва?»~ */ GOTO 8
  IF ~~ THEN REPLY #57042 /* ~«Ты был бюргером?»~ */ GOTO 9
  IF ~~ THEN REPLY #57043 /* ~«Не могу сказать о твоем городе ничего хорошего».~ */ GOTO 10
  IF ~~ THEN REPLY #57044 /* ~«Дай-ка я вытащу тебя».~ */ GOTO 5
  IF ~~ THEN REPLY #57045 /* ~«В таком случае, я оставлю тебя умирать. Прощай».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.3 1.3 2.3 4.3 8.0 9.0 10.0
  SAY #57046 /* ~Его рот сжимается в тонкую линию. «Тогда подними его, черт тебя побери, и дело с концом».~ */
  IF ~~ THEN REPLY #57047 /* ~«Тогда к делу».~ */ DO ~FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
IncrementGlobalOnceEx("GLOBALGood_Burgher_1","GLOBALGood",1)
IncrementGlobal("Curst_Counter","GLOBAL",1)
AddexperienceParty(125000)
SetGlobal("Cart_Trap","GLOBAL",2)
~ GOTO 7
  IF ~~ THEN REPLY #57048 /* ~«Забудь. Может быть, я вернусь позже».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.5 1.5 8.2 9.2 10.2
  SAY #57049 /* ~«Будь ты проклят, человек со шрамами, пусть на тебя падут все чумные напасти в мире». Он плюет в тебя кровавым сгустком, но промахивается.~ */
  IF ~~ THEN REPLY #57050 /* ~«Пока».~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0
  SAY #57051 /* ~Ты наваливаешься всем своим весом на повозку, поднимая ее достаточно высоко, чтобы он выполз из-под нее.

«Спасибо, человек. Мне пора на стены, нужно помочь стражникам. Мой город не должен пасть, — он криво улыбается тебе. — Не завидую я тебе с этим дэва. Он грозный противник. Возьми, это поможет тебе».~ */
  IF ~~ THEN REPLY #57052 /* ~«Прощай».~ */ DO ~GiveItem("SPWI803",Protagonist)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.0 4.0 9.1 10.1
  SAY #57053 /* ~«Мы захватили его... о, как давно это было... много лет назад. Я думал, что мы его надежно спрятали от всех ищеек и предателей. И тут он вдруг выскакивает, весь в огне, из-под земли, а мой дом, мой милый дом... соскальзывает, — он пристально смотрит на тебя. — Я хочу отомстить. Ты ведь освободишь меня, да?»~ */
  IF ~~ THEN REPLY #57054 /* ~«Хорошо. Приготовься».~ */ GOTO 5
  IF ~~ THEN REPLY #57055 /* ~«Ты был бюргером этого города?»~ */ GOTO 9
  IF ~~ THEN REPLY #57056 /* ~«Нет, я так не думаю».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 6
END

IF ~~ THEN BEGIN 9 // from: 2.1 4.1 8.1
  SAY #57057 /* ~«Мои соотечественники... и я... использовали этот город для того, чтобы вернуть себе былую власть... но это уже история для другого раза. Освободи меня!»~ */
  IF ~~ THEN REPLY #57058 /* ~«Хорошо. Приготовься».~ */ GOTO 5
  IF ~~ THEN REPLY #57059 /* ~«Что ты можешь сказать о дэва?»~ */ GOTO 8
  IF ~~ THEN REPLY #57060 /* ~«Нет, я так не думаю».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 6
END

IF ~~ THEN BEGIN 10 // from: 2.2 4.2
  SAY #57061 /* ~«И я тоже... Но он — мой, и видеть то, что вытворяет с ним этот дешевый, самодовольный дэва... это выше моих сил, — он откашливается. — Освободи меня, и я помогу тебе отомстить ему. Мои стражники смогут на время сдержать этих монстров».~ */
  IF ~~ THEN REPLY #57062 /* ~«Хорошо. Приготовься».~ */ GOTO 5
  IF ~~ THEN REPLY #57063 /* ~«Что ты можешь сказать о дэва?»~ */ GOTO 8
  IF ~~ THEN REPLY #57064 /* ~«Нет, я так не думаю».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 6
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 11 // from:
  SAY #57065 /* ~Ты видишь старого гитцерая, застрявшего под колесами фургона, который, должно быть, упал на него во время беспорядков. Сплюнув сгусток крови, он скалится тебе. «Ты ведь не собираешься мне помогать, верно? Именно поэтому мы все сюда попали...» Он обессиленно смеется.~ */
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57066 /* ~«Кто ты?»~ */ EXTERN ~DDAKKON~ 188
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57067 /* ~«Кто ты?»~ */ GOTO 15
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57068 /* ~«Расслабься. Я вытащу тебя».~ */ EXTERN ~DDAKKON~ 189
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57069 /* ~«Расслабься. Я вытащу тебя».~ */ GOTO 16
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57070 /* ~«Нет, не собираюсь».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXTERN ~DDAKKON~ 189
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57071 /* ~«Нет, не собираюсь».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 17
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #57072 /* ~Гитцерай снова кашляет кровью. «Опять пришел издеваться надо мной? Я не доставлю тебе такого удовольствия».~ */
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57073 /* ~«Кто ты?»~ */ EXTERN ~DDAKKON~ 188
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57074 /* ~«Кто ты?»~ */ GOTO 15
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57075 /* ~«Расслабься. Я вытащу тебя».~ */ EXTERN ~DDAKKON~ 189
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57076 /* ~«Расслабься. Я вытащу тебя».~ */ GOTO 16
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57077 /* ~«Нет, не собираюсь».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXTERN ~DDAKKON~ 189
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57078 /* ~«Нет, не собираюсь».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 17
END

IF ~~ THEN BEGIN 13 // from:
  SAY #57079 /* ~«Да, убери клинок, *зертов* пес. Я плюю на твои учения. Носи свои оковы дальше, — гитцерай поворачивает голову к тебе. — Я — Товус Гильяф, был бюргером этого города... пока проклятый дэва не вырвался на свободу».~ */
  IF ~~ THEN REPLY #57080 /* ~«Что ты можешь сказать о дэва?»~ */ GOTO 19
  IF ~~ THEN REPLY #57081 /* ~«Ты был бюргером?»~ */ GOTO 20
  IF ~~ THEN REPLY #57082 /* ~«Не могу сказать о твоем городе ничего хорошего».~ */ GOTO 21
  IF ~~ THEN REPLY #57083 /* ~«Дай-ка я вытащу тебя».~ */ GOTO 16
  IF ~~ THEN REPLY #57084 /* ~«В таком случае, я оставлю тебя умирать. Прощай».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #57085 /* ~«Да, убей меня, *зертов* пес. Делай, как тебе велит твой хозяин». Старый гитцерай хохочет, пока Даккон не перерезает ему горло.~ */
  IF ~~ THEN REPLY #57086 /* ~«Хороший удар, Даккон».~ */ DO ~SetAnimState("Dakkon",ANIM_MIMEATTACK2)
SetAnimState(Myself,ANIM_MIMEDIE)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 11.1 12.1
  SAY #57087 /* ~«Я — Товус Гильяф, был бюргером этого города... пока проклятый дэва не вырвался на свободу».~ */
  IF ~~ THEN REPLY #57088 /* ~«Что ты можешь сказать о дэва?»~ */ GOTO 19
  IF ~~ THEN REPLY #57089 /* ~«Ты был бюргером?»~ */ GOTO 20
  IF ~~ THEN REPLY #57090 /* ~«Не могу сказать о твоем городе ничего хорошего».~ */ GOTO 21
  IF ~~ THEN REPLY #57091 /* ~«Дай-ка я вытащу тебя».~ */ GOTO 16
  IF ~~ THEN REPLY #57092 /* ~«В таком случае, я оставлю тебя умирать. Прощай».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.3 12.3 13.3 15.3 19.0 20.0 21.0
  SAY #57093 /* ~Его рот сжимается в тонкую линию. «Тогда подними его, черт тебя побери, и дело с концом».~ */
  IF ~~ THEN REPLY #57094 /* ~«Тогда к делу».~ */ GOTO 22
  IF ~~ THEN REPLY #57095 /* ~«Забудь. Может быть, я вернусь позже».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 11.5 12.5 19.2 20.2 21.2
  SAY #57096 /* ~«Будь ты проклят, человек со шрамами, пусть на тебя падут все чумные напасти в мире». Он плюет в тебя кровавым сгустком, но промахивается.~ */
  IF ~~ THEN REPLY #57097 /* ~«Пока».~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 25.0
  SAY #57098 /* ~Ты наваливаешься всем своим весом на повозку, поднимая ее достаточно высоко, чтобы он выполз из-под нее. Ты слышишь полный боли вскрик, донесшийся с другой стороны повозки. «Спасибо... человек. Мне пора на стены, нужно помочь стражникам. Мой город не должен пасть, — он криво улыбается тебе. — Не завидую я тебе с этим дэва. Он грозный противник. Возьми, это поможет тебе».~ */
  IF ~~ THEN REPLY #57099 /* ~«Прощай».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_3","GLOBALGood",-3)
AddexperienceParty(125000)
SetGlobal("Cart_Trap","GLOBAL",2)
GiveItem("SPWI803",Protagonist)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 13.0 15.0 20.1 21.1
  SAY #57100 /* ~«Мы захватили его... о, как давно это было... много лет назад. Я думал, что мы его надежно спрятали от всех ищеек и предателей. И тут он вдруг выскакивает, весь в огне, из-под земли, а мой дом, мой милый дом... соскальзывает, — он пристально смотрит на тебя. — Я хочу отомстить. Ты ведь освободишь меня, да?»~ */
  IF ~~ THEN REPLY #57101 /* ~«Хорошо. Приготовься».~ */ GOTO 16
  IF ~~ THEN REPLY #57102 /* ~«Ты был бюргером этого города?»~ */ GOTO 20
  IF ~~ THEN REPLY #57103 /* ~«Нет, я так не думаю».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 17
END

IF ~~ THEN BEGIN 20 // from: 13.1 15.1 19.1
  SAY #57104 /* ~«Мои соотечественники... и я... использовали этот город для того, чтобы вернуть себе былую власть... но это уже история для другого раза. Освободи меня!»~ */
  IF ~~ THEN REPLY #57105 /* ~«Хорошо. Приготовься».~ */ GOTO 16
  IF ~~ THEN REPLY #57106 /* ~«Что ты можешь сказать о дэва?»~ */ GOTO 19
  IF ~~ THEN REPLY #57107 /* ~«Нет, я так не думаю».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 17
END

IF ~~ THEN BEGIN 21 // from: 13.2 15.2
  SAY #57108 /* ~«И я тоже... Но он — мой, и видеть то, что вытворяет с ним этот дешевый, самодовольный дэва... это выше моих сил, — он откашливается. — Освободи меня, и я помогу тебе отомстить ему. Мои стражники смогут на время сдержать этих монстров».~ */
  IF ~~ THEN REPLY #57109 /* ~«Хорошо. Приготовься».~ */ GOTO 16
  IF ~~ THEN REPLY #57110 /* ~«Что ты можешь сказать о дэва?»~ */ GOTO 19
  IF ~~ THEN REPLY #57111 /* ~«Нет, я так не думаю».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 17
END

IF ~~ THEN BEGIN 22 // from: 16.0
  SAY #57112 /* ~Ты готов поднять повозку, но тут слышишь полный боли крик с другой стороны...~ */
  IF ~~ THEN EXTERN ~DBERROG~ 15
END

IF ~~ THEN BEGIN 23 // from:
  SAY #57113 /* ~«Ты давишь на меня, идиот! Ты не сможешь поднять эту повозку, не раздавив одного из нас! Я больше пригожусь, если ты раздавишь его вместо меня!»~ */
  IF ~~ THEN REPLY #57114 /* ~«Каким образом?»~ */ GOTO 24
  IF ~~ THEN REPLY #57115 /* ~«В таком случае, мне следует помочь ему. Похоже, ты — часть того зла, которое удерживает этот город в Карцери».~ */ GOTO 25
  IF ~  NumInPartyGT(2)
CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #57116 /* ~«Как насчет того, чтобы мы вытащили вас обоих? Я и мои компаньоны справимся, если подналяжем вместе».~ */ GOTO 26
  IF ~~ THEN REPLY #57117 /* ~«Тогда я вернусь позже, как только пойму, как решить эту проблему».~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0 28.0
  SAY #57118 /* ~«Я все еще командую стражей Проклятого... Я могу воодушевить их, помочь, замедлить орды монстров, что стоят между тобой и дэва... Освободи меня — и твоя задача облегчится во много раз. Освободишь его, и ты не получишь ничего».~ */
  IF ~~ THEN EXTERN ~DBERROG~ 18
END

IF ~~ THEN BEGIN 25 // from: 23.1
  SAY #57119 /* ~«Это... это все дэва. Этот мелкий воришка по сравнению дэва — ничто. Освободи меня!»~ */
  IF ~~ THEN REPLY #57120 /* ~Поднять телегу на Беррога: «Хорошо».~ */ DO ~Kill("Berrog")
FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
~ GOTO 18
  IF ~~ THEN REPLY #57121 /* ~Приготовиться сдвинуть повозку с Беррога. «Думаю, что лучше вместо этого я освобожу его».~ */ EXTERN ~DBERROG~ 18
  IF ~  NumInPartyGT(2)
CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #57122 /* ~«Как насчет того, чтобы мы вытащили вас обоих? Я и мои компаньоны справимся, если подналяжем вместе».~ */ GOTO 26
  IF ~~ THEN REPLY #57123 /* ~«Я вернусь позже, как только решу, что с этим делать».~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.2 25.2
  SAY #57124 /* ~Ты со своими компаньонами собираетесь вокруг повозки и, приложив общие усилия, поднимаете ее таким образом, что оба застрявших смогли выбраться из-под ее.~ */
  IF ~~ THEN DO ~FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
IncrementGlobalOnceEx("GLOBALGood_Burgher_1","GLOBALGood",1)
IncrementGlobal("Curst_Counter","GLOBAL",1)
AddexperienceParty(225000)
SetGlobal("Cart_Trap","GLOBAL",3)
~ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #57125 /* ~«Спасибо... человек. Мне пора на стены, нужно помочь стражникам. Мой город не должен пасть, — он криво улыбается тебе. — Не завидую я тебе с этим дэва. Он грозный противник. Возьми, это поможет тебе».~ */
  IF ~~ THEN REPLY #57126 /* ~«Прощай».~ */ DO ~GiveItem("SPWI803",Protagonist)
EscapeArea()
EscapeArea()
~ EXTERN ~DBERROG~ 14
END

IF ~~ THEN BEGIN 28 // from:
  SAY #57127 /* ~«Это называется... бюргер, маленький идиот». Он поворачивается к тебе.~ */
  IF ~~ THEN GOTO 24
END
