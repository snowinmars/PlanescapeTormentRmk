init 10 python:
    from game.dlgs.mortuary.dustfem_logic import DustfemLogic
    dustfemLogic = DustfemLogic(renpy.store.global_state_manager)


# ###
# Original:  DLG/DDUSTFEM.DLG
# ###




# s0 # say298
label dustfem_s0: # - # IF ~  Global("Appearance","GLOBAL",1)
    nr 'Тленная не обращает на тебя внимания. Должно быть, она спутала тебя с одним из мертвых рабочих.'

    menu:
        '«Приветствую».':
            # a0 # r299
            jump dustfem_s1

        '«Кто ты?»':
            # a1 # r318
            jump dustfem_s1

        '«Что это за место?»':
            # a2 # r1168
            jump dustfem_s1

        '«У меня есть пара вопросов…»':
            # a3 # r1169
            jump dustfem_s1

        'Оставить ее в покое.':
            # a4 # r1170
            jump dustfem_dispose


# s1 # say1171
label dustfem_s1: # from 0.0 0.1 0.2 0.3
    nr 'Тленная подпрыгивает от неожиданности. Затем она поворачивает к тебе голову. Она выглядит потрясенной: должно быть, маскировка у тебя весьма неплохая.'

    menu:
        'Воспользоваться эффектом неожиданности и свернуть ей шею, пока она не позвала на помощь.':
            # a5 # r1172
            jump dustfem_s41

        '«У меня есть несколько вопросов».':
            # a6 # r1174
            jump dustfem_s2

        'Уйти. Быстро.':
            # a7 # r1175
            jump dustfem_s2


# s2 # say1176
label dustfem_s2: # from 1.1 1.2 4.3 5.2 5.3 6.4 19.6 20.4 47.2 47.3 51.4
    nr 'Тленная отступает на шаг, затем быстро хлопает в ладони три раза. В ответ во всем Морге раздается звон огромного железного колокола.'

    menu:
        '«Ну хорошо…»':
            # a8 # r1225
            $ dustfemLogic.r1225_action()
            jump dustfem_dispose


# s3 # say1177
label dustfem_s3: # externs morte_s84
    nr 'Эта бледная женщина одета в длинную темную мантию. От нее слегка отдает плесенью. Ее лицо ничего не выражает; кажется, она поглощена своими обязанностями.'

    menu:
        '«Приветствую».':
            # a9 # r1226
            jump dustfem_s4

        '«Кто ты?»':
            # a10 # r1227
            jump dustfem_s4

        '«Что это за место?»':
            # a11 # r1228
            jump dustfem_s4

        '«У меня есть пара вопросов…»':
            # a12 # r1229
            jump dustfem_s4

        'Оставить ее в покое.':
            # a13 # r1230
            jump dustfem_dispose


# s4 # say1178
label dustfem_s4: # from 3.0 3.1 3.2 3.3 40.2 40.3
    nr 'Тленная медленно поднимает свою голову и оборачивается к тебе.'
    dustfem '«Ты потерялся?»'

    menu:
        '«Да».':
            # a14 # r1231
            jump dustfem_s5

        '«Нет».':
            # a15 # r1232
            jump dustfem_s6

        '«Нет, я не потерялся. У меня есть несколько вопросов…»':
            # a16 # r1233
            jump dustfem_s6

        '«Прощай».':
            # a17 # r1234
            jump dustfem_s2


# s5 # say1179
label dustfem_s5: # from 4.0 16.2 51.1
    dustfem '«Я позову стражу, они тебя живо выведут. Погоди минутку».'

    menu:
        'Свернуть ей шею до того, как она сможет позвать на помощь.' if dustfemLogic.r1235_condition():
            # a18 # r1235
            jump dustfem_s44

        'Свернуть ей шею до того, как она сможет позвать на помощь.' if dustfemLogic.r1236_condition():
            # a19 # r1236
            jump dustfem_s41

        'Уйти. Быстро.':
            # a20 # r1237
            jump dustfem_s2

        'Подождать.':
            # a21 # r1238
            jump dustfem_s2


# s6 # say1180
label dustfem_s6: # from 4.1 4.2 51.2 51.3
    dustfem '«Если ты не потерялся, то что же ты здесь делаешь?»'

    menu:
        '«Это тебя не касается».':
            # a22 # r1239
            jump dustfem_s7

        '«Я очнулся на одной из плит в вашей препараторской».':
            # a23 # r1240
            jump dustfem_s8

        '«Я хочу повидаться кое с кем».':
            # a24 # r1241
            jump dustfem_s9

        '«Я пришел сюда на похороны, но, похоже, произошла ошибка».' if dustfemLogic.r1242_condition():
            # a25 # r1242
            jump dustfem_s16

        'Уйти. Быстро.':
            # a26 # r1243
            jump dustfem_s2


# s7 # say1181
label dustfem_s7: # from 6.0 9.0 20.0
    dustfem '«Боюсь, что меня касается. Может, стражники развяжут твой язык».'
    nr 'Тленная делает шаг назад, кажется, она собирается позвать стражников.'

    menu:
        'Свернуть ей шею до того, как она сможет позвать на помощь.' if dustfemLogic.r1244_condition():
            # a27 # r1244
            jump dustfem_s44

        'Свернуть ей шею до того, как она сможет позвать на помощь.' if dustfemLogic.r1245_condition():
            # a28 # r1245
            jump dustfem_s41

        '«Давай, зови их. Буду рад с ними встретиться».':
            # a29 # r1246
            $ dustfemLogic.r1246_action()
            jump dustfem_dispose


# s8 # say1182
label dustfem_s8: # from 6.1 16.0 20.1
    dustfem '«Любишь пошутить? Тогда может поделишься своими шутками со стражниками».'
    nr 'Тленная отступает на шаг; кажется, она собирается позвать стражников.'

    menu:
        'Свернуть ей шею до того, как она сможет позвать на помощь.' if dustfemLogic.r1247_condition():
            # a30 # r1247
            jump dustfem_s44

        'Свернуть ей шею до того, как она сможет позвать на помощь.' if dustfemLogic.r1248_condition():
            # a31 # r1248
            jump dustfem_s41

        '«Давай, зови их. Буду рад с ними встретиться».':
            # a32 # r1249
            $ dustfemLogic.r1249_action()
            jump dustfem_dispose


# s9 # say1183
label dustfem_s9: # from 6.2 20.2
    dustfem '«Кого ты хочешь увидеть?»'

    menu:
        '«Это не твое дело».':
            # a33 # r1251
            jump dustfem_s7

        '«Я хочу повидаться с Дхоллом».' if dustfemLogic.r1253_condition():
            # a34 # r1253
            jump dustfem_s10

        '«Я хочу повидаться с Дхоллом».' if dustfemLogic.r1255_condition():
            # a35 # r1255
            jump dustfem_s11

        '«Я хочу повидаться с Дейонаррой».' if dustfemLogic.r1258_condition():
            # a36 # r1258
            jump dustfem_s13

        '«Я хочу повидаться с Дейонаррой».' if dustfemLogic.r4336_condition():
            # a37 # r4336
            jump dustfem_s12

        '«Я хочу повидаться с Соэго».' if dustfemLogic.r33224_condition():
            # a38 # r33224
            jump dustfem_s15

        '«Я хочу повидаться с Соэго».' if dustfemLogic.r33226_condition():
            # a39 # r33226
            jump dustfem_s14

        'Ложь: «Э-э… с Аданом. Он все еще работает здесь?..»' if dustfemLogic.r33227_condition():
            # a40 # r33227
            $ dustfemLogic.r33227_action()
            jump dustfem_s21

        'Ложь: «Э-э… с Аданом. Он все еще работает здесь?..»' if dustfemLogic.r33229_condition():
            # a41 # r33229
            jump dustfem_s21

        '«Ой, нет. Я оговорился».':
            # a42 # r33231
            jump dustfem_s20


# s10 # say1184
label dustfem_s10: # from 9.1
    dustfem '«Дхолла можно найти в приемной комнате на этом этаже. Должна предупредить… Дхолл очень занят, а здоровье у него подкошено».'
    dustfem '«Если у тебя к нему несрочное дело, то лучше не беспокоить его».'

    menu:
        '«Хорошо. Спасибо за информацию».':
            # a43 # r1259
            jump dustfem_s48


# s11 # say1185
label dustfem_s11: # from 9.2
    dustfem '«Дхолл скорее всего в приемной комнате на втором этаже. Он очень занят, а здоровье у него подкошено».'
    dustfem '«Если у тебя к нему несрочное дело, то лучше не беспокоить его».'

    menu:
        '«Хорошо. Спасибо за информацию».':
            # a44 # r1260
            jump dustfem_s48


# s12 # say1186
label dustfem_s12: # from 9.4 19.1
    dustfem '«Дейонаррой? На первом этаже в мемориальном зале похоронена женщина. Может быть, это она?»'

    menu:
        '«Скорее всего. Спасибо».':
            # a45 # r1261
            jump dustfem_s48


# s13 # say1187
label dustfem_s13: # from 9.3
    dustfem '«Дейонаррой? В северо-западном мемориальном зале похоронена женщина. Может быть, это она?»'

    menu:
        '«Скорее всего. Спасибо».':
            # a46 # r1262
            jump dustfem_s48


# s14 # say1188
label dustfem_s14: # from 9.6
    dustfem '«Скорее всего, Соэго находится у главных ворот на первом этаже. Он работает проводником в часы антипика».'

    menu:
        '«Отлично. Спасибо».':
            # a47 # r1263
            jump dustfem_s48


# s15 # say1189
label dustfem_s15: # from 9.5
    dustfem '«Скорее всего, Соэго находится у главных ворот. Он работает проводником в часы антипика».'

    menu:
        '«Отлично. Спасибо».':
            # a48 # r1264
            jump dustfem_s48


# s16 # say1190
label dustfem_s16: # from 6.3 20.3
    dustfem '«Кто был погребен? Возможно, служба проводится в другом конце Морга».'

    menu:
        '«Ты не понимаешь… ошибка в том, что похоронить собирались МЕНЯ».':
            # a49 # r1265
            jump dustfem_s8

        '«Может быть. Где еще проводят службу?»':
            # a50 # r1266
            jump dustfem_s17

        '«Ты можешь указать выход отсюда?»':
            # a51 # r1267
            jump dustfem_s5


# s17 # say1191
label dustfem_s17: # from 16.1
    dustfem '«По всему периметру Морга расположены погребальные залы. Они расположены вдоль стены на первом и втором этажах. Тебе известно имя усопшего?»'

    menu:
        '«Нет».':
            # a52 # r1268
            jump dustfem_s18

        '«Да».':
            # a53 # r1269
            jump dustfem_s19


# s18 # say1192
label dustfem_s18: # from 17.0
    dustfem '«Тогда тебе стоит поговорить с одним из проводников у главных ворот. Они тебе помогут».'

    menu:
        '«Отлично. Спасибо».':
            # a54 # r1270
            jump dustfem_dispose


# s19 # say1193
label dustfem_s19: # from 17.1
    nr 'Тленная ждет.'

    menu:
        '«Прошу прощения… Я оговорился. Мне неизвестно имя усопшего».':
            # a55 # r1271
            jump dustfem_s20

        '«Это имя — Дейонарра».' if dustfemLogic.r1272_condition():
            # a56 # r1272
            jump dustfem_s12

        'Ложь: «Имя… э-э, Адан».' if dustfemLogic.r1273_condition():
            # a57 # r1273
            $ dustfemLogic.r1273_action()
            jump dustfem_s21

        'Ложь: «Имя… э-э, Адан».' if dustfemLogic.r1274_condition():
            # a58 # r1274
            jump dustfem_s21

        'Наклониться вперед, будто собираясь прошептать ей что-то на ухо, а затем свернуть ей шею.' if dustfemLogic.r1275_condition():
            # a59 # r1275
            jump dustfem_s44

        'Наклониться вперед, будто собираясь прошептать ей что-то на ухо, а затем свернуть ей шею.' if dustfemLogic.r1276_condition():
            # a60 # r1276
            jump dustfem_s45

        'Убежать от нее.':
            # a61 # r1277
            jump dustfem_s2


# s20 # say1194
label dustfem_s20: # from 9.9 19.0
    dustfem '«Понятно. И что же ты здесь делаешь?»'

    menu:
        '«Это не твое дело».':
            # a62 # r1278
            jump dustfem_s7

        '«Я очнулся на одной из плит в вашей препараторской».':
            # a63 # r1279
            jump dustfem_s8

        '«Я хочу повидаться кое с кем».':
            # a64 # r1280
            jump dustfem_s9

        '«Я пришел сюда на похороны, но, похоже, произошла ошибка».' if dustfemLogic.r1281_condition():
            # a65 # r1281
            jump dustfem_s16

        'Убежать от нее.':
            # a66 # r1282
            jump dustfem_s2


# s21 # say1195
label dustfem_s21: # from 9.7 9.8 19.2 19.3
    dustfem '«Это имя мне незнакомо. Справься у одного из проводников у главных ворот… они смогут сориентировать тебя лучше, чем я».'

    menu:
        '«Хорошо. Я так и сделаю. Прощай».':
            # a67 # r1283
            jump dustfem_dispose


# s22 # say1196
label dustfem_s22: # - # IF ~  Global("Appearance","GLOBAL",2)
    nr 'Эта бледная женщина одета в длинную темную мантию. От нее слегка отдает плесенью. Ее лицо ничего не выражает; кажется, она поглощена своими обязанностями.'

    menu:
        '«Приветствую».':
            # a68 # r1284
            jump dustfem_s23

        'Оставить ее в покое.':
            # a69 # r1285
            jump dustfem_dispose


# s23 # say1197
label dustfem_s23: # from 22.0
    nr 'Она медленно оборачивается, ее взгляд мельком скользит по твоей одежде.'
    dustfem '«Приветствую тебя, посвященный».'

    menu:
        '«Кто ты?»':
            # a70 # r1286
            jump dustfem_s24

        '«Что это за место?»':
            # a71 # r1287
            jump dustfem_s25

        '«У меня есть пара вопросов…»':
            # a72 # r1288
            jump dustfem_s26

        'Оставить ее в покое.':
            # a73 # r1289
            jump dustfem_dispose


# s24 # say1198
label dustfem_s24: # from 23.0
    dustfem '«У меня такой же вопрос. Твое лицо мне незнакомо. Как тебя зовут?»'

    menu:
        'Ложь: «Имя… э-э, Адан».' if dustfemLogic.r1290_condition():
            # a74 # r1290
            $ dustfemLogic.r1290_action()
            jump dustfem_s49

        'Ложь: «Имя… э-э, Адан».' if dustfemLogic.r1291_condition():
            # a75 # r1291
            jump dustfem_s49

        '«Как меня зовут — не твое дело. Я должен идти. Прощай».' if dustfemLogic.r1292_condition():
            # a76 # r1292
            jump dustfem_s47

        '«Как меня зовут — не твое дело. Я должен идти. Прощай».' if dustfemLogic.r1293_condition():
            # a77 # r1293
            jump dustfem_s46


# s25 # say1199
label dustfem_s25: # from 23.1
    dustfem '«Это Морг…»'
    nr 'Тленная какое-то время смотрит на тебя, как бы оценивая только что тобою сказанное.'
    dustfem '«Как, ты сказал, тебя зовут?»'

    menu:
        'Ложь: «Имя… э-э, Адан».' if dustfemLogic.r1294_condition():
            # a78 # r1294
            $ dustfemLogic.r1294_action()
            jump dustfem_s49

        'Ложь: «Имя… э-э, Адан».' if dustfemLogic.r1295_condition():
            # a79 # r1295
            jump dustfem_s49

        '«Как меня зовут — не твое дело. Я должен идти. Прощай».' if dustfemLogic.r1296_condition():
            # a80 # r1296
            jump dustfem_s47

        '«Как меня зовут — не твое дело. Я должен идти. Прощай».' if dustfemLogic.r1297_condition():
            # a81 # r1297
            jump dustfem_s46


# s26 # say1200
label dustfem_s26: # from 23.2 27.0 28.2 30.3 31.3 34.2 36.1 39.0 50.0
    nr 'Тленная терпеливо ждет твоего продолжения.'

    menu:
        '«Можешь показать мне, где выход?»':
            # a82 # r1298
            jump dustfem_s27

        '«Ты знаешь кого-нибудь по имени Фарод?»':
            # a83 # r1299
            jump dustfem_s28

        '«Я потерял дневник. Тебе ничего такого не попадалось?»':
            # a84 # r1300
            jump dustfem_s39

        '«Неважно. Извини за беспокойство».':
            # a85 # r1328
            jump dustfem_s48


# s27 # say1201
label dustfem_s27: # from 26.0
    dustfem '«Ты можешь просто выйти через главные ворота. Они на первом этаже».'

    menu:
        '«У меня есть другие вопросы…»':
            # a86 # r1329
            jump dustfem_s26

        '«Спасибо. Прощай».':
            # a87 # r1330
            jump dustfem_s48


# s28 # say1202
label dustfem_s28: # from 26.1
    dustfem '«Это имя…»'
    nr 'Тленная на секунду умолкает.'
    dustfem '«Это имя *звучит* знакомо… Кажется, я припоминаю сборщика с таким именем. Писец Дхолл может знать о нем больше».'

    menu:
        '«Сборщика?»':
            # a88 # r1331
            jump dustfem_s29

        '«Дхолл?»':
            # a89 # r1334
            jump dustfem_s30

        '«У меня есть другие вопросы…»':
            # a90 # r1338
            jump dustfem_s26

        '«Спасибо за уделенное время. Прощай».':
            # a91 # r1395
            jump dustfem_s48


# s29 # say1203
label dustfem_s29: # from 28.0
    dustfem '«Сборщики… они собирают тех, кто умер на улицах Сигила, и доставляют их в Морг…»'
    nr 'Тленная умолкает, хмуря брови.'
    dustfem '«Ты нездешний. Кто ты?»'

    menu:
        '«Я недавно посвящен. Прости мое невежество».' if dustfemLogic.r1396_condition():
            # a92 # r1396
            jump dustfem_s50

        '«Я… недавно здесь. Я… пытаюсь изучить обстановку».' if dustfemLogic.r1397_condition():
            # a93 # r1397
            jump dustfem_s47

        '«Ну… к чему имена? Храни веру, э-э, посвященная».' if dustfemLogic.r1398_condition():
            # a94 # r1398
            jump dustfem_s47

        '«Если ты не можешь помочь мне, я поищу кого-нибудь, кто сможет. Прощай».' if dustfemLogic.r1399_condition():
            # a95 # r1399
            jump dustfem_s46


# s30 # say1204
label dustfem_s30: # from 28.1
    dustfem '«Дхолл — один из самых уважаемых членов нашей фракции. Наверное, никто не размышлял о сущности Истинной Смерти и не заслужил ее больше, чем он».'
    dustfem '«У него много знаний, которыми он может поделиться. Если ты незнаком с ним, то я советую тебе как можно раньше воспользоваться этой возможностью».'
    dustfem '«Ему осталось не так долго жить в тени этого существования».'

    menu:
        '«Ему еще недолго жить в тени этого существования?»':
            # a96 # r4280
            jump dustfem_s31

        '«Где я могу найти Дхолла?»' if dustfemLogic.r4281_condition():
            # a97 # r4281
            jump dustfem_s32

        '«Где я могу найти Дхолла?»' if dustfemLogic.r4282_condition():
            # a98 # r4282
            jump dustfem_s33

        '«У меня есть другие вопросы…»':
            # a99 # r4283
            jump dustfem_s26

        '«Спасибо за информацию. Я поговорю с ним».':
            # a100 # r33245
            jump dustfem_s48


# s31 # say1205
label dustfem_s31: # from 30.0 32.0 33.0
    nr 'Кивок.'
    dustfem '«Дхолл болен. Он стар, даже по меркам гитцераев. Несомненно, смерть последует за болезнью, которую он подхватил. Ему повезло».'

    menu:
        '«По меркам гитцераев?»':
            # a101 # r4284
            jump dustfem_s34

        '«Что это еще за *гитцераи*?»':
            # a102 # r4285
            jump dustfem_s35

        '«Повезло?»':
            # a103 # r4286
            jump dustfem_s36

        '«Понятно. У меня есть другие вопросы…»':
            # a104 # r4287
            jump dustfem_s26

        '«Спасибо за уделенное время. Мне нужно идти».':
            # a105 # r4337
            jump dustfem_s48


# s32 # say1206
label dustfem_s32: # from 30.1
    dustfem '«Дхолл находится в приемной комнате в северо-западной части этого этажа. Должна предупредить… Дхолл очень занят…»'
    dustfem '«…то время, которое он не занят своими обязанностями, отбирает у него болезнь».'

    menu:
        '«Дхолл болен?»':
            # a106 # r4288
            jump dustfem_s31

        '«Спасибо за уделенное время. Мне нужно идти. Прощай».':
            # a107 # r4289
            jump dustfem_s48


# s33 # say1207
label dustfem_s33: # from 30.2
    dustfem '«Дхолл скорее всего в приемной комнате на втором этаже. Лучше не отвлекай его слишком сильно — он очень занят…»'
    dustfem '«…то время, которое он не занят своими обязанностями, отбирает у него болезнь».'

    menu:
        '«Дхолл болен?»':
            # a108 # r4290
            jump dustfem_s31

        '«Спасибо за уделенное время. Мне нужно идти. Прощай».':
            # a109 # r4291
            jump dustfem_s48


# s34 # say1208
label dustfem_s34: # from 31.0
    dustfem '«Да, гитцераи живут гораздо дольше, чем люди».'

    menu:
        '«Что это еще за *гитцераи*?»':
            # a110 # r4292
            jump dustfem_s35

        '«Как это Дхоллу повезло? От него хотят избавиться?»':
            # a111 # r4293
            jump dustfem_s36

        '«О, у меня есть другие вопросы…»':
            # a112 # r4294
            jump dustfem_s26

        '«Спасибо за уделенное время. Прощай».':
            # a113 # r4295
            jump dustfem_s48


# s35 # say1209
label dustfem_s35: # from 31.1 34.0
    dustfem '«Гитцерай — это…»'
    nr 'Тленная умолкает, пристально глядя на тебя.'
    dustfem '«Ты ведь нездешний. Кто ты?»'

    menu:
        '«Я недавно посвящен. Прости мое невежество».' if dustfemLogic.r4296_condition():
            # a114 # r4296
            jump dustfem_s50

        '«Я… недавно здесь. Я… пытаюсь изучить обстановку».' if dustfemLogic.r4297_condition():
            # a115 # r4297
            jump dustfem_s47

        '«Ну… к чему имена? Храни веру, э-э, посвященная».' if dustfemLogic.r4298_condition():
            # a116 # r4298
            jump dustfem_s47

        '«Если ты не можешь помочь мне, я поищу кого-нибудь, кто сможет. Прощай».' if dustfemLogic.r4300_condition():
            # a117 # r4300
            jump dustfem_s46


# s36 # say1210
label dustfem_s36: # from 31.2 34.1
    dustfem '«Ему повезло в том, что он достигнет Истинной Смерти. Он больше не будет странствовать в тени этого существования».'

    menu:
        '«И… это хорошо?»':
            # a118 # r4299
            jump dustfem_s37

        '«Понятно. И правда, очень повезло. У меня есть другие вопросы…»':
            # a119 # r4301
            jump dustfem_s26

        '«Понятно. Ну что ж, мне нужно идти. Прощай».':
            # a120 # r4302
            jump dustfem_s48


# s37 # say1211
label dustfem_s37: # from 36.0
    nr 'Тленная кивает.'
    dustfem '«Да».'
    nr 'Она хмурится, затем пристально смотрит на тебя.'
    dustfem '«Ты нездешний. Кто ты?»'

    menu:
        '«Я недавно посвящен. Прости мое невежество».' if dustfemLogic.r4303_condition():
            # a121 # r4303
            jump dustfem_s50

        '«Я… недавно здесь. Я… пытаюсь изучить обстановку».' if dustfemLogic.r4304_condition():
            # a122 # r4304
            jump dustfem_s47

        '«Ну… к чему имена? Храни веру, э-э, посвященная».' if dustfemLogic.r4305_condition():
            # a123 # r4305
            jump dustfem_s47

        '«Если ты не можешь помочь мне, я поищу кого-нибудь, кто сможет. Прощай».' if dustfemLogic.r4306_condition():
            # a124 # r4306
            jump dustfem_s46


# s38 # say1212
label dustfem_s38: # -
    dustfem '«Ты не из наших. Кто ты? Что ты здесь делаешь?»'
    dustfem '«Ты из анархистов? Или шпион другой фракции?»'
    nr 'Тленная отступает на шаг.'
    dustfem '«Стража! Стража!»'

    menu:
        '«Проклятье!»':
            # a125 # r4307
            $ dustfemLogic.r4307_action()
            jump dustfem_dispose

        '«Тс-с-с! Я не смогу тебе ответить под такой крик!»' if dustfemLogic.r4308_condition():
            # a126 # r4308
            $ dustfemLogic.r4308_action()
            jump dustfem_dispose

        '«Тс-с-с! Я не смогу тебе ответить под такой крик!»' if dustfemLogic.r4309_condition():
            # a127 # r4309
            $ dustfemLogic.r4309_action()
            jump dustfem_dispose


# s39 # say1213
label dustfem_s39: # from 26.2
    dustfem '«Дневник? Не встречала такого».'

    menu:
        '«У меня есть другие вопросы…»':
            # a128 # r4310
            jump dustfem_s26

        '«Я должен идти. Прощай».':
            # a129 # r4311
            jump dustfem_s48


# s40 # say1214
label dustfem_s40: # -
    nr 'Эта бледная женщина одета в длинную темную мантию. От нее слегка отдает плесенью. Ее лицо ничего не выражает; кажется, она поглощена своими обязанностями.'

    menu:
        '«Приветствую».' if dustfemLogic.r4312_condition():
            # a130 # r4312
            jump morte_s81  # EXTERN

        '«Приветствую».' if dustfemLogic.r4313_condition():
            # a131 # r4313
            jump morte_s83  # EXTERN

        '«Приветствую».' if dustfemLogic.r4314_condition():
            # a132 # r4314
            jump dustfem_s4

        '«Приветствую».' if dustfemLogic.r4315_condition():
            # a133 # r4315
            jump dustfem_s4

        'Оставить ее в покое.':
            # a134 # r4316
            jump dustfem_dispose


# s41 # say1215
label dustfem_s41: # from 1.0 5.1 7.1 8.1 47.1
    nr 'Тленная не успевает и слова вымолвить, как твои руки хватают ее голову за виски и резко сворачивают ее влево.'

    menu:
        '«Нельзя дать тебе предупредить своих друзей…»':
            # a135 # r4317
            $ dustfemLogic.r4317_action()
            jump dustfem_s42


# s42 # say1216
label dustfem_s42: # from 41.0 45.0
    nr 'В шее раздается характерный хруст, и тело тленной безвольно падает в твои объятия.'

    menu:
        '«Лучше ты, чем я, трухлявка».' if dustfemLogic.r4318_condition():
            # a136 # r4318
            $ dustfemLogic.r4318_action()
            jump dustfem_s43

        '«Лучше ты, чем я, трухлявка».' if dustfemLogic.r4319_condition():
            # a137 # r4319
            $ dustfemLogic.r4319_action()
            jump dustfem_dispose


# s43 # say1217
label dustfem_s43: # from 42.0
    nr 'К своему удивлению, это действие происходит практически инстинктивно, будто ты проделывал это уже много раз…'
    nr '…с этой мыслью всплывает воспоминание, но оно недостаточно сильно для того, чтобы за него зацепиться.'

    menu:
        'Оставить тело, уйти.':
            # a138 # r4320
            $ dustfemLogic.r4320_action()
            jump dustfem_dispose


# s44 # say1218
label dustfem_s44: # from 5.0 7.0 8.0 19.4 47.0
    nr 'Ты недостаточно быстр, и тленная уворачивается от твоего выпада. Отступив на шаг, она быстро хлопает в ладони три раза.'
    nr 'В ответ во всем Морге раздается звон огромного железного колокола.'

    menu:
        '«Ну хорошо…»':
            # a139 # r4321
            $ dustfemLogic.r4321_action()
            jump dustfem_dispose


# s45 # say1219
label dustfem_s45: # from 19.5
    nr 'Ты наклоняешься, чтобы „шепнуть“ ей что-то на ухо, тленная тоже наклоняется.'
    nr 'Как только она оказывается на расстоянии вытянутой руки, ты хватаешь ее за виски и резко сворачиваешь голову влево.'

    menu:
        '«Нельзя дать тебе предупредить своих друзей…»':
            # a140 # r4322
            $ dustfemLogic.r4322_action()
            jump dustfem_s42


# s46 # say1220
label dustfem_s46: # from 24.3 25.3 29.3 35.3 37.3 49.3 50.1
    nr 'Тленная явно что-то подозревает. Похоже, она хочет что-то сказать, затем едва заметно качает головой и возвращается к своим обязанностям.'

    menu:
        'Уйти прочь.':
            # a141 # r4323
            jump dustfem_dispose


# s47 # say1221
label dustfem_s47: # from 24.2 25.2 29.1 29.2 35.1 35.2 37.1 37.2 49.1 49.2
    nr 'Тленная внимательно тебя осматривает.'
    dustfem '«Ты не из наших. Что ты здесь делаешь? Ты из анархистов? Или шпион другой фракции? Кажется, здесь есть дело для стражников…»'

    menu:
        'Свернуть ей шею до того, как она сможет позвать на помощь.' if dustfemLogic.r4324_condition():
            # a142 # r4324
            jump dustfem_s44

        'Свернуть ей шею до того, как она сможет позвать на помощь.' if dustfemLogic.r4325_condition():
            # a143 # r4325
            jump dustfem_s41

        'Уйти. Быстро.':
            # a144 # r4326
            jump dustfem_s2

        '«Нет-нет… не он, э-э… то есть, я хотел сказать, не шпион… понимаешь, я пробудился на одной из плит… и…»':
            # a145 # r4327
            jump dustfem_s2


# s48 # say1222
label dustfem_s48: # from 10.0 11.0 12.0 13.0 14.0 15.0 26.3 27.1 28.3 30.4 31.4 32.1 33.1 34.3 36.2 39.1
    nr 'Тленная кивает и возвращается к своим делам.'

    menu:
        'Уйти прочь.':
            # a146 # r4328
            jump dustfem_dispose


# s49 # say1223
label dustfem_s49: # from 24.0 24.1 25.0 25.1
    nr 'Тленная хмурится.'
    dustfem '«Это имя мне незнакомо».'

    menu:
        '«Я недавно посвящен. Прости мое невежество».' if dustfemLogic.r4329_condition():
            # a147 # r4329
            jump dustfem_s50

        '«Я… недавно здесь. Я… пытаюсь изучить порядки».' if dustfemLogic.r4331_condition():
            # a148 # r4331
            jump dustfem_s47

        '«Ну… к чему имена? Храни веру, э-э, посвященная».' if dustfemLogic.r4332_condition():
            # a149 # r4332
            jump dustfem_s47

        '«Если ты не можешь помочь мне, я поищу кого-нибудь, кто сможет. Прощай».' if dustfemLogic.r4333_condition():
            # a150 # r4333
            jump dustfem_s46


# s50 # say1224
label dustfem_s50: # from 29.0 35.0 37.0 49.0
    nr 'Тленная продолжает хмуриться, но затем слегка кивает.'
    dustfem '«Ну хорошо. Что я могу сделать для тебя, посвященный?»'

    menu:
        '«У меня есть пара вопросов…»':
            # a151 # r4334
            jump dustfem_s26

        '«На этот раз — ничего. Прощай».':
            # a152 # r4335
            jump dustfem_s46


# s51 # say66683
label dustfem_s51: # - # IF ~  Global("Appearance","GLOBAL",0)
    nr 'Тленная бросает на тебя каменный взгляд.'
    dustfem '«Ты потерялся?»'

    menu:
        '«Нет, я член фракции. Я просто осматриваю Морг».' if dustfemLogic.r66684_condition():
            # a153 # r66684
            jump dustfem_s52

        '«Да».' if dustfemLogic.r66685_condition():
            # a154 # r66685
            jump dustfem_s5

        '«Нет».' if dustfemLogic.r66686_condition():
            # a155 # r66686
            jump dustfem_s6

        '«Нет, я не потерялся. У меня есть несколько вопросов…»' if dustfemLogic.r66687_condition():
            # a156 # r66687
            jump dustfem_s6

        '«Прощай».' if dustfemLogic.r66688_condition():
            # a157 # r66688
            jump dustfem_s2


# s52 # say66689
label dustfem_s52: # from 51.0
    nr 'Тленная какое-то время пристально на тебя смотрит, затем кивает.'
    dustfem '«Хорошо. Если тебе нужна помощь, дай мне знать».'

    menu:
        '«Конечно. Прощай».':
            # a158 # r66690
            jump dustfem_dispose
