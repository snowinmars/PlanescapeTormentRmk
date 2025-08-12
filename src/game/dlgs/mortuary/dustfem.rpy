init 10 python:
    from game.dlgs.mortuary.dustfem_logic import DustfemLogic
    dustfemLogic = DustfemLogic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/DUSTFEM.DLG
# ###

# dustfem_s22
label start_dustfem_talk_first:
    call dustfem_init
    jump dustfem_s3
label start_dustfem_talk:
    call dustfem_init
    jump dustfem_s0
label start_dustfem_kill_first:
    call dustfem_init
    jump dustfem_kill_first
label start_dustfem_kill:
    call dustfem_init
    jump dustfem_kill
label dustfem_init:
    $ dustfemLogic.dustfem_init()
    scene bg mortuary_f3r6
    show dustfem_img default at center_left_down
    return
label dustfem_dispose:
    hide dustfem_img
    jump graphics_menu


# s0 # say298
label dustfem_s0:  # - # IF ~  Global("Appearance","GLOBAL",1)
    nr 'Тленная не обращает на тебя внимания. Должно быть, она спутала тебя с одним из мертвых рабочих.'

    menu:
        '«Приветствую».':
            # r0 # reply299
            jump dustfem_s1

        '«Кто ты?»':
            # r1 # reply318
            jump dustfem_s1

        '«Что это за место?»':
            # r2 # reply1168
            jump dustfem_s1

        '«У меня есть пара вопросов…»':
            # r3 # reply1169
            jump dustfem_s1

        'Оставить ее в покое.':
            # r4 # reply1170
            jump dustfem_dispose


# s1 # say1171
label dustfem_s1:  # from 0.0 0.1 0.2 0.3
    nr 'Тленная подпрыгивает от неожиданности. Затем она поворачивает к тебе голову. Она выглядит потрясенной: должно быть, маскировка у тебя весьма неплохая.'

    menu:
        'Воспользоваться эффектом неожиданности и свернуть ей шею, пока она не позвала на помощь.':
            # r5 # reply1172
            jump dustfem_s41

        '«У меня есть несколько вопросов».':
            # r6 # reply1174
            jump dustfem_s2

        'Уйти. Быстро.':
            # r7 # reply1175
            jump dustfem_s2


# s2 # say1176
label dustfem_s2:  # from 1.1 1.2 4.3 5.2 5.3 6.4 19.6 20.4 47.2 47.3 51.4
    nr 'Тленная отступает на шаг, затем быстро хлопает в ладони три раза. В ответ во всем Морге раздается звон огромного железного колокола.'

    menu:
        '«Ну хорошо…»':
            # r8 # reply1225
            $ dustfemLogic.r1225_action()
            jump dustfem_dispose


# s3 # say1177
label dustfem_s3:  # -
    nr 'Эта бледная женщина одета в длинную темную мантию. От нее слегка отдает плесенью. Ее лицо ничего не выражает; кажется, она поглощена своими обязанностями.'

    menu:
        '«Приветствую».':
            # r9 # reply1226
            jump dustfem_s4

        '«Кто ты?»':
            # r10 # reply1227
            jump dustfem_s4

        '«Что это за место?»':
            # r11 # reply1228
            jump dustfem_s4

        '«У меня есть пара вопросов…»':
            # r12 # reply1229
            jump dustfem_s4

        'Оставить ее в покое.':
            # r13 # reply1230
            jump dustfem_dispose


# s4 # say1178
label dustfem_s4:  # from 3.0 3.1 3.2 3.3 40.2 40.3
    nr 'Тленная медленно поднимает свою голову и оборачивается к тебе.'
    dustfem '«Ты потерялся?»'

    menu:
        '«Да».':
            # r14 # reply1231
            jump dustfem_s5

        '«Нет».':
            # r15 # reply1232
            jump dustfem_s6

        '«Нет, я не потерялся. У меня есть несколько вопросов…»':
            # r16 # reply1233
            jump dustfem_s6

        '«Прощай».':
            # r17 # reply1234
            jump dustfem_s2


# s5 # say1179
label dustfem_s5:  # from 4.0 16.2 51.1
    dustfem '«Я позову стражу, они тебя живо выведут. Погоди минутку».'

    menu:
        'Свернуть ей шею до того, как она сможет позвать на помощь.' if dustfemLogic.r1235_condition():
            # r18 # reply1235
            jump dustfem_s44

        'Свернуть ей шею до того, как она сможет позвать на помощь.' if dustfemLogic.r1236_condition():
            # r19 # reply1236
            jump dustfem_s41

        'Уйти. Быстро.':
            # r20 # reply1237
            jump dustfem_s2

        'Подождать.':
            # r21 # reply1238
            jump dustfem_s2


# s6 # say1180
label dustfem_s6:  # from 4.1 4.2 51.2 51.3
    dustfem '«Если ты не потерялся, то что же ты здесь делаешь?»'

    menu:
        '«Это тебя не касается».':
            # r22 # reply1239
            jump dustfem_s7

        '«Я очнулся на одной из плит в вашей препараторской».':
            # r23 # reply1240
            jump dustfem_s8

        '«Я хочу повидаться кое с кем».':
            # r24 # reply1241
            jump dustfem_s9

        '«Я пришел сюда на похороны, но, похоже, произошла ошибка».' if dustfemLogic.r1242_condition():
            # r25 # reply1242
            jump dustfem_s16

        'Уйти. Быстро.':
            # r26 # reply1243
            jump dustfem_s2


# s7 # say1181
label dustfem_s7:  # from 6.0 9.0 20.0
    dustfem '«Боюсь, что меня касается. Может, стражники развяжут твой язык».'
    nr 'Тленная делает шаг назад, кажется, она собирается позвать стражников.'

    menu:
        'Свернуть ей шею до того, как она сможет позвать на помощь.' if dustfemLogic.r1244_condition():
            # r27 # reply1244
            jump dustfem_s44

        'Свернуть ей шею до того, как она сможет позвать на помощь.' if dustfemLogic.r1245_condition():
            # r28 # reply1245
            jump dustfem_s41

        '«Давай, зови их. Буду рад с ними встретиться».':
            # r29 # reply1246
            $ dustfemLogic.r1246_action()
            jump dustfem_dispose


# s8 # say1182
label dustfem_s8:  # from 6.1 16.0 20.1
    dustfem '«Любишь пошутить? Тогда может поделишься своими шутками со стражниками».'
    nr 'Тленная отступает на шаг; кажется, она собирается позвать стражников.'

    menu:
        'Свернуть ей шею до того, как она сможет позвать на помощь.' if dustfemLogic.r1247_condition():
            # r30 # reply1247
            jump dustfem_s44

        'Свернуть ей шею до того, как она сможет позвать на помощь.' if dustfemLogic.r1248_condition():
            # r31 # reply1248
            jump dustfem_s41

        '«Давай, зови их. Буду рад с ними встретиться».':
            # r32 # reply1249
            $ dustfemLogic.r1249_action()
            jump dustfem_dispose


# s9 # say1183
label dustfem_s9:  # from 6.2 20.2
    dustfem '«Кого ты хочешь увидеть?»'

    menu:
        '«Это не твое дело».':
            # r33 # reply1251
            jump dustfem_s7

        '«Я хочу повидаться с Дхоллом».' if dustfemLogic.r1253_condition():
            # r34 # reply1253
            jump dustfem_s10

        '«Я хочу повидаться с Дхоллом».' if dustfemLogic.r1255_condition():
            # r35 # reply1255
            jump dustfem_s11

        '«Я хочу повидаться с Дейонаррой».' if dustfemLogic.r1258_condition():
            # r36 # reply1258
            jump dustfem_s13

        '«Я хочу повидаться с Дейонаррой».' if dustfemLogic.r4336_condition():
            # r37 # reply4336
            jump dustfem_s12

        '«Я хочу повидаться с Соэго».' if dustfemLogic.r33224_condition():
            # r38 # reply33224
            jump dustfem_s15

        '«Я хочу повидаться с Соэго».' if dustfemLogic.r33226_condition():
            # r39 # reply33226
            jump dustfem_s14

        'Ложь: «Э-э… с Аданом. Он все еще работает здесь?..»' if dustfemLogic.r33227_condition():
            # r40 # reply33227
            $ dustfemLogic.r33227_action()
            jump dustfem_s21

        'Ложь: «Э-э… с Аданом. Он все еще работает здесь?..»' if dustfemLogic.r33229_condition():
            # r41 # reply33229
            jump dustfem_s21

        '«Ой, нет. Я оговорился».':
            # r42 # reply33231
            jump dustfem_s20


# s10 # say1184
label dustfem_s10:  # from 9.1
    dustfem '«Дхолла можно найти в приемной комнате на этом этаже. Должна предупредить… Дхолл очень занят, а здоровье у него подкошено».'
    dustfem '«Если у тебя к нему несрочное дело, то лучше не беспокоить его».'

    menu:
        '«Хорошо. Спасибо за информацию».':
            # r43 # reply1259
            jump dustfem_s48


# s11 # say1185
label dustfem_s11:  # from 9.2
    dustfem '«Дхолл скорее всего в приемной комнате на втором этаже. Он очень занят, а здоровье у него подкошено».'
    dustfem '«Если у тебя к нему несрочное дело, то лучше не беспокоить его».'

    menu:
        '«Хорошо. Спасибо за информацию».':
            # r44 # reply1260
            jump dustfem_s48


# s12 # say1186
label dustfem_s12:  # from 9.4 19.1
    dustfem '«Дейонаррой? На первом этаже в мемориальном зале похоронена женщина. Может быть, это она?»'

    menu:
        '«Скорее всего. Спасибо».':
            # r45 # reply1261
            jump dustfem_s48


# s13 # say1187
label dustfem_s13:  # from 9.3
    dustfem '«Дейонаррой? В северо-западном мемориальном зале похоронена женщина. Может быть, это она?»'

    menu:
        '«Скорее всего. Спасибо».':
            # r46 # reply1262
            jump dustfem_s48


# s14 # say1188
label dustfem_s14:  # from 9.6
    dustfem '«Скорее всего, Соэго находится у главных ворот на первом этаже. Он работает проводником в часы антипика».'

    menu:
        '«Отлично. Спасибо».':
            # r47 # reply1263
            jump dustfem_s48


# s15 # say1189
label dustfem_s15:  # from 9.5
    dustfem '«Скорее всего, Соэго находится у главных ворот. Он работает проводником в часы антипика».'

    menu:
        '«Отлично. Спасибо».':
            # r48 # reply1264
            jump dustfem_s48


# s16 # say1190
label dustfem_s16:  # from 6.3 20.3
    dustfem '«Кто был погребен? Возможно, служба проводится в другом конце Морга».'

    menu:
        '«Ты не понимаешь… ошибка в том, что похоронить собирались МЕНЯ».':
            # r49 # reply1265
            jump dustfem_s8

        '«Может быть. Где еще проводят службу?»':
            # r50 # reply1266
            jump dustfem_s17

        '«Ты можешь указать выход отсюда?»':
            # r51 # reply1267
            jump dustfem_s5


# s17 # say1191
label dustfem_s17:  # from 16.1
    dustfem '«По всему периметру Морга расположены погребальные залы. Они расположены вдоль стены на первом и втором этажах. Тебе известно имя усопшего?»'

    menu:
        '«Нет».':
            # r52 # reply1268
            jump dustfem_s18

        '«Да».':
            # r53 # reply1269
            jump dustfem_s19


# s18 # say1192
label dustfem_s18:  # from 17.0
    dustfem '«Тогда тебе стоит поговорить с одним из проводников у главных ворот. Они тебе помогут».'

    menu:
        '«Отлично. Спасибо».':
            # r54 # reply1270
            jump dustfem_dispose


# s19 # say1193
label dustfem_s19:  # from 17.1
    nr 'Тленная ждет.'

    menu:
        '«Прошу прощения… Я оговорился. Мне неизвестно имя усопшего».':
            # r55 # reply1271
            jump dustfem_s20

        '«Это имя — Дейонарра».' if dustfemLogic.r1272_condition():
            # r56 # reply1272
            jump dustfem_s12

        'Ложь: «Имя… э-э, Адан».' if dustfemLogic.r1273_condition():
            # r57 # reply1273
            $ dustfemLogic.r1273_action()
            jump dustfem_s21

        'Ложь: «Имя… э-э, Адан».' if dustfemLogic.r1274_condition():
            # r58 # reply1274
            jump dustfem_s21

        'Наклониться вперед, будто собираясь прошептать ей что-то на ухо, а затем свернуть ей шею.' if dustfemLogic.r1275_condition():
            # r59 # reply1275
            jump dustfem_s44

        'Наклониться вперед, будто собираясь прошептать ей что-то на ухо, а затем свернуть ей шею.' if dustfemLogic.r1276_condition():
            # r60 # reply1276
            jump dustfem_s45

        'Убежать от нее.':
            # r61 # reply1277
            jump dustfem_s2


# s20 # say1194
label dustfem_s20:  # from 9.9 19.0
    dustfem '«Понятно. И что же ты здесь делаешь?»'

    menu:
        '«Это не твое дело».':
            # r62 # reply1278
            jump dustfem_s7

        '«Я очнулся на одной из плит в вашей препараторской».':
            # r63 # reply1279
            jump dustfem_s8

        '«Я хочу повидаться кое с кем».':
            # r64 # reply1280
            jump dustfem_s9

        '«Я пришел сюда на похороны, но, похоже, произошла ошибка».' if dustfemLogic.r1281_condition():
            # r65 # reply1281
            jump dustfem_s16

        'Убежать от нее.':
            # r66 # reply1282
            jump dustfem_s2


# s21 # say1195
label dustfem_s21:  # from 9.7 9.8 19.2 19.3
    dustfem '«Это имя мне незнакомо. Справься у одного из проводников у главных ворот… они смогут сориентировать тебя лучше, чем я».'

    menu:
        '«Хорошо. Я так и сделаю. Прощай».':
            # r67 # reply1283
            jump dustfem_dispose


# s22 # say1196
label dustfem_s22:  # - # IF ~  Global("Appearance","GLOBAL",2)
    nr 'Эта бледная женщина одета в длинную темную мантию. От нее слегка отдает плесенью. Ее лицо ничего не выражает; кажется, она поглощена своими обязанностями.'

    menu:
        '«Приветствую».':
            # r68 # reply1284
            jump dustfem_s23

        'Оставить ее в покое.':
            # r69 # reply1285
            jump dustfem_dispose


# s23 # say1197
label dustfem_s23:  # from 22.0
    nr 'Она медленно оборачивается, ее взгляд мельком скользит по твоей одежде.'
    dustfem '«Приветствую тебя, посвященный».'

    menu:
        '«Кто ты?»':
            # r70 # reply1286
            jump dustfem_s24

        '«Что это за место?»':
            # r71 # reply1287
            jump dustfem_s25

        '«У меня есть пара вопросов…»':
            # r72 # reply1288
            jump dustfem_s26

        'Оставить ее в покое.':
            # r73 # reply1289
            jump dustfem_dispose


# s24 # say1198
label dustfem_s24:  # from 23.0
    dustfem '«У меня такой же вопрос. Твое лицо мне незнакомо. Как тебя зовут?»'

    menu:
        'Ложь: «Имя… э-э, Адан».' if dustfemLogic.r1290_condition():
            # r74 # reply1290
            $ dustfemLogic.r1290_action()
            jump dustfem_s49

        'Ложь: «Имя… э-э, Адан».' if dustfemLogic.r1291_condition():
            # r75 # reply1291
            jump dustfem_s49

        '«Как меня зовут — не твое дело. Я должен идти. Прощай».' if dustfemLogic.r1292_condition():
            # r76 # reply1292
            jump dustfem_s47

        '«Как меня зовут — не твое дело. Я должен идти. Прощай».' if dustfemLogic.r1293_condition():
            # r77 # reply1293
            jump dustfem_s46


# s25 # say1199
label dustfem_s25:  # from 23.1
    dustfem '«Это Морг…»'
    nr 'Тленная какое-то время смотрит на тебя, как бы оценивая только что тобою сказанное.'
    dustfem '«Как, ты сказал, тебя зовут?»'

    menu:
        'Ложь: «Имя… э-э, Адан».' if dustfemLogic.r1294_condition():
            # r78 # reply1294
            $ dustfemLogic.r1294_action()
            jump dustfem_s49

        'Ложь: «Имя… э-э, Адан».' if dustfemLogic.r1295_condition():
            # r79 # reply1295
            jump dustfem_s49

        '«Как меня зовут — не твое дело. Я должен идти. Прощай».' if dustfemLogic.r1296_condition():
            # r80 # reply1296
            jump dustfem_s47

        '«Как меня зовут — не твое дело. Я должен идти. Прощай».' if dustfemLogic.r1297_condition():
            # r81 # reply1297
            jump dustfem_s46


# s26 # say1200
label dustfem_s26:  # from 23.2 27.0 28.2 30.3 31.3 34.2 36.1 39.0 50.0
    nr 'Тленная терпеливо ждет твоего продолжения.'

    menu:
        '«Можешь показать мне, где выход?»':
            # r82 # reply1298
            jump dustfem_s27

        '«Ты знаешь кого-нибудь по имени Фарод?»':
            # r83 # reply1299
            jump dustfem_s28

        '«Я потерял дневник. Тебе ничего такого не попадалось?»':
            # r84 # reply1300
            jump dustfem_s39

        '«Неважно. Извини за беспокойство».':
            # r85 # reply1328
            jump dustfem_s48


# s27 # say1201
label dustfem_s27:  # from 26.0
    dustfem '«Ты можешь просто выйти через главные ворота. Они на первом этаже».'

    menu:
        '«У меня есть другие вопросы…»':
            # r86 # reply1329
            jump dustfem_s26

        '«Спасибо. Прощай».':
            # r87 # reply1330
            jump dustfem_s48


# s28 # say1202
label dustfem_s28:  # from 26.1
    dustfem '«Это имя…»'
    nr 'Тленная на секунду умолкает.'
    dustfem '«Это имя *звучит* знакомо… Кажется, я припоминаю сборщика с таким именем. Писец Дхолл может знать о нем больше».'

    menu:
        '«Сборщика?»':
            # r88 # reply1331
            jump dustfem_s29

        '«Дхолл?»':
            # r89 # reply1334
            jump dustfem_s30

        '«У меня есть другие вопросы…»':
            # r90 # reply1338
            jump dustfem_s26

        '«Спасибо за уделенное время. Прощай».':
            # r91 # reply1395
            jump dustfem_s48


# s29 # say1203
label dustfem_s29:  # from 28.0
    dustfem '«Сборщики… они собирают тех, кто умер на улицах Сигила, и доставляют их в Морг…»'
    nr 'Тленная умолкает, хмуря брови.'
    dustfem '«Ты нездешний. Кто ты?»'

    menu:
        '«Я недавно посвящен. Прости мое невежество».' if dustfemLogic.r1396_condition():
            # r92 # reply1396
            jump dustfem_s50

        '«Я… недавно здесь. Я… пытаюсь изучить обстановку».' if dustfemLogic.r1397_condition():
            # r93 # reply1397
            jump dustfem_s47

        '«Ну… к чему имена? Храни веру, э-э, посвященная».' if dustfemLogic.r1398_condition():
            # r94 # reply1398
            jump dustfem_s47

        '«Если ты не можешь помочь мне, я поищу кого-нибудь, кто сможет. Прощай».' if dustfemLogic.r1399_condition():
            # r95 # reply1399
            jump dustfem_s46


# s30 # say1204
label dustfem_s30:  # from 28.1
    dustfem '«Дхолл — один из самых уважаемых членов нашей фракции. Наверное, никто не размышлял о сущности Истинной Смерти и не заслужил ее больше, чем он».'
    dustfem '«У него много знаний, которыми он может поделиться. Если ты незнаком с ним, то я советую тебе как можно раньше воспользоваться этой возможностью».'
    dustfem '«Ему осталось не так долго жить в тени этого существования».'

    menu:
        '«Ему еще недолго жить в тени этого существования?»':
            # r96 # reply4280
            jump dustfem_s31

        '«Где я могу найти Дхолла?»' if dustfemLogic.r4281_condition():
            # r97 # reply4281
            jump dustfem_s32

        '«Где я могу найти Дхолла?»' if dustfemLogic.r4282_condition():
            # r98 # reply4282
            jump dustfem_s33

        '«У меня есть другие вопросы…»':
            # r99 # reply4283
            jump dustfem_s26

        '«Спасибо за информацию. Я поговорю с ним».':
            # r100 # reply33245
            jump dustfem_s48


# s31 # say1205
label dustfem_s31:  # from 30.0 32.0 33.0
    nr 'Кивок.'
    dustfem '«Дхолл болен. Он стар, даже по меркам гитцераев. Несомненно, смерть последует за болезнью, которую он подхватил. Ему повезло».'

    menu:
        '«По меркам гитцераев?»':
            # r101 # reply4284
            jump dustfem_s34

        '«Что это еще за *гитцераи*?»':
            # r102 # reply4285
            jump dustfem_s35

        '«Повезло?»':
            # r103 # reply4286
            jump dustfem_s36

        '«Понятно. У меня есть другие вопросы…»':
            # r104 # reply4287
            jump dustfem_s26

        '«Спасибо за уделенное время. Мне нужно идти».':
            # r105 # reply4337
            jump dustfem_s48


# s32 # say1206
label dustfem_s32:  # from 30.1
    dustfem '«Дхолл находится в приемной комнате в северо-западной части этого этажа. Должна предупредить… Дхолл очень занят…»'
    dustfem '«…то время, которое он не занят своими обязанностями, отбирает у него болезнь».'

    menu:
        '«Дхолл болен?»':
            # r106 # reply4288
            jump dustfem_s31

        '«Спасибо за уделенное время. Мне нужно идти. Прощай».':
            # r107 # reply4289
            jump dustfem_s48


# s33 # say1207
label dustfem_s33:  # from 30.2
    dustfem '«Дхолл скорее всего в приемной комнате на втором этаже. Лучше не отвлекай его слишком сильно — он очень занят…»'
    dustfem '«…то время, которое он не занят своими обязанностями, отбирает у него болезнь».'

    menu:
        '«Дхолл болен?»':
            # r108 # reply4290
            jump dustfem_s31

        '«Спасибо за уделенное время. Мне нужно идти. Прощай».':
            # r109 # reply4291
            jump dustfem_s48


# s34 # say1208
label dustfem_s34:  # from 31.0
    dustfem '«Да, гитцераи живут гораздо дольше, чем люди».'

    menu:
        '«Что это еще за *гитцераи*?»':
            # r110 # reply4292
            jump dustfem_s35

        '«Как это Дхоллу повезло? От него хотят избавиться?»':
            # r111 # reply4293
            jump dustfem_s36

        '«О, у меня есть другие вопросы…»':
            # r112 # reply4294
            jump dustfem_s26

        '«Спасибо за уделенное время. Прощай».':
            # r113 # reply4295
            jump dustfem_s48


# s35 # say1209
label dustfem_s35:  # from 31.1 34.0
    dustfem '«Гитцерай — это…»'
    nr 'Тленная умолкает, пристально глядя на тебя.'
    dustfem '«Ты ведь нездешний. Кто ты?»'

    menu:
        '«Я недавно посвящен. Прости мое невежество».' if dustfemLogic.r4296_condition():
            # r114 # reply4296
            jump dustfem_s50

        '«Я… недавно здесь. Я… пытаюсь изучить обстановку».' if dustfemLogic.r4297_condition():
            # r115 # reply4297
            jump dustfem_s47

        '«Ну… к чему имена? Храни веру, э-э, посвященная».' if dustfemLogic.r4298_condition():
            # r116 # reply4298
            jump dustfem_s47

        '«Если ты не можешь помочь мне, я поищу кого-нибудь, кто сможет. Прощай».' if dustfemLogic.r4300_condition():
            # r117 # reply4300
            jump dustfem_s46


# s36 # say1210
label dustfem_s36:  # from 31.2 34.1
    dustfem '«Ему повезло в том, что он достигнет Истинной Смерти. Он больше не будет странствовать в тени этого существования».'

    menu:
        '«И… это хорошо?»':
            # r118 # reply4299
            jump dustfem_s37

        '«Понятно. И правда, очень повезло. У меня есть другие вопросы…»':
            # r119 # reply4301
            jump dustfem_s26

        '«Понятно. Ну что ж, мне нужно идти. Прощай».':
            # r120 # reply4302
            jump dustfem_s48


# s37 # say1211
label dustfem_s37:  # from 36.0
    nr 'Тленная кивает.'
    dustfem '«Да».'
    nr 'Она хмурится, затем пристально смотрит на тебя.'
    dustfem '«Ты нездешний. Кто ты?»'

    menu:
        '«Я недавно посвящен. Прости мое невежество».' if dustfemLogic.r4303_condition():
            # r121 # reply4303
            jump dustfem_s50

        '«Я… недавно здесь. Я… пытаюсь изучить обстановку».' if dustfemLogic.r4304_condition():
            # r122 # reply4304
            jump dustfem_s47

        '«Ну… к чему имена? Храни веру, э-э, посвященная».' if dustfemLogic.r4305_condition():
            # r123 # reply4305
            jump dustfem_s47

        '«Если ты не можешь помочь мне, я поищу кого-нибудь, кто сможет. Прощай».' if dustfemLogic.r4306_condition():
            # r124 # reply4306
            jump dustfem_s46


# s38 # say1212
label dustfem_s38:  # -
    dustfem '«Ты не из наших. Кто ты? Что ты здесь делаешь?»'
    dustfem '«Ты из анархистов? Или шпион другой фракции?»'
    nr 'Тленная отступает на шаг.'
    dustfem '«Стража! Стража!»'

    menu:
        '«Проклятье!»':
            # r125 # reply4307
            $ dustfemLogic.r4307_action()
            jump dustfem_dispose

        '«Тс-с-с! Я не смогу тебе ответить под такой крик!»' if dustfemLogic.r4308_condition():
            # r126 # reply4308
            $ dustfemLogic.r4308_action()
            jump dustfem_dispose

        '«Тс-с-с! Я не смогу тебе ответить под такой крик!»' if dustfemLogic.r4309_condition():
            # r127 # reply4309
            $ dustfemLogic.r4309_action()
            jump dustfem_dispose


# s39 # say1213
label dustfem_s39:  # from 26.2
    dustfem '«Дневник? Не встречала такого».'

    menu:
        '«У меня есть другие вопросы…»':
            # r128 # reply4310
            jump dustfem_s26

        '«Я должен идти. Прощай».':
            # r129 # reply4311
            jump dustfem_s48


# s40 # say1214
label dustfem_s40:  # -
    nr 'Эта бледная женщина одета в длинную темную мантию. От нее слегка отдает плесенью. Ее лицо ничего не выражает; кажется, она поглощена своими обязанностями.'

    menu:
        '«Приветствую».' if dustfemLogic.r4312_condition():
            # r130 # reply4312
            jump morte_s81  # EXTERN

        '«Приветствую».' if dustfemLogic.r4313_condition():
            # r131 # reply4313
            jump morte_s83  # EXTERN

        '«Приветствую».' if dustfemLogic.r4314_condition():
            # r132 # reply4314
            jump dustfem_s4

        '«Приветствую».' if dustfemLogic.r4315_condition():
            # r133 # reply4315
            jump dustfem_s4

        'Оставить ее в покое.':
            # r134 # reply4316
            jump dustfem_dispose


# s41 # say1215
label dustfem_s41:  # from 1.0 5.1 7.1 8.1 47.1
    nr 'Тленная не успевает и слова вымолвить, как твои руки хватают ее голову за виски и резко сворачивают ее влево.'

    menu:
        '«Нельзя дать тебе предупредить своих друзей…»':
            # r135 # reply4317
            $ dustfemLogic.r4317_action()
            jump dustfem_s42


# s42 # say1216
label dustfem_s42:  # from 41.0 45.0
    nr 'В шее раздается характерный хруст, и тело тленной безвольно падает в твои объятия.'

    menu:
        '«Лучше ты, чем я, трухлявка».' if dustfemLogic.r4318_condition():
            # r136 # reply4318
            $ dustfemLogic.r4318_action()
            jump dustfem_s43

        '«Лучше ты, чем я, трухлявка».' if dustfemLogic.r4319_condition():
            # r137 # reply4319
            $ dustfemLogic.r4319_action()
            jump dustfem_dispose


# s43 # say1217
label dustfem_s43:  # from 42.0
    nr 'К своему удивлению, это действие происходит практически инстинктивно, будто ты проделывал это уже много раз…'
    nr '…с этой мыслью всплывает воспоминание, но оно недостаточно сильно для того, чтобы за него зацепиться.'

    menu:
        'Оставить тело, уйти.':
            # r138 # reply4320
            $ dustfemLogic.r4320_action()
            jump dustfem_dispose


# s44 # say1218
label dustfem_s44:  # from 5.0 7.0 8.0 19.4 47.0
    nr 'Ты недостаточно быстр, и тленная уворачивается от твоего выпада. Отступив на шаг, она быстро хлопает в ладони три раза.'
    nr 'В ответ во всем Морге раздается звон огромного железного колокола.'

    menu:
        '«Ну хорошо…»':
            # r139 # reply4321
            $ dustfemLogic.r4321_action()
            jump dustfem_dispose


# s45 # say1219
label dustfem_s45:  # from 19.5
    nr 'Ты наклоняешься, чтобы шепнуть ей что-то на ухо, тленная тоже наклоняется.'
    nr 'Как только она оказывается на расстоянии вытянутой руки, ты хватаешь ее за виски и резко сворачиваешь голову влево.'

    menu:
        '«Нельзя дать тебе предупредить своих друзей…»':
            # r140 # reply4322
            $ dustfemLogic.r4322_action()
            jump dustfem_s42


# s46 # say1220
label dustfem_s46:  # from 24.3 25.3 29.3 35.3 37.3 49.3 50.1
    nr 'Тленная явно что-то подозревает. Похоже, она хочет что-то сказать, затем едва заметно качает головой и возвращается к своим обязанностям.'

    menu:
        'Уйти прочь.':
            # r141 # reply4323
            jump dustfem_dispose


# s47 # say1221
label dustfem_s47:  # from 24.2 25.2 29.1 29.2 35.1 35.2 37.1 37.2 49.1 49.2
    nr 'Тленная внимательно тебя осматривает.'
    dustfem '«Ты не из наших. Что ты здесь делаешь? Ты из анархистов? Или шпион другой фракции? Кажется, здесь есть дело для стражников…»'

    menu:
        'Свернуть ей шею до того, как она сможет позвать на помощь.' if dustfemLogic.r4324_condition():
            # r142 # reply4324
            jump dustfem_s44

        'Свернуть ей шею до того, как она сможет позвать на помощь.' if dustfemLogic.r4325_condition():
            # r143 # reply4325
            jump dustfem_s41

        'Уйти. Быстро.':
            # r144 # reply4326
            jump dustfem_s2

        '«Нет-нет… не он, э-э… то есть, я хотел сказать, не шпион… понимаешь, я пробудился на одной из плит… и…»':
            # r145 # reply4327
            jump dustfem_s2


# s48 # say1222
label dustfem_s48:  # from 10.0 11.0 12.0 13.0 14.0 15.0 26.3 27.1 28.3 30.4 31.4 32.1 33.1 34.3 36.2 39.1
    nr 'Тленная кивает и возвращается к своим делам.'

    menu:
        'Уйти прочь.':
            # r146 # reply4328
            jump dustfem_dispose


# s49 # say1223
label dustfem_s49:  # from 24.0 24.1 25.0 25.1
    nr 'Тленная хмурится.'
    dustfem '«Это имя мне незнакомо».'

    menu:
        '«Я недавно посвящен. Прости мое невежество».' if dustfemLogic.r4329_condition():
            # r147 # reply4329
            jump dustfem_s50

        '«Я… недавно здесь. Я… пытаюсь изучить порядки».' if dustfemLogic.r4331_condition():
            # r148 # reply4331
            jump dustfem_s47

        '«Ну… к чему имена? Храни веру, э-э, посвященная».' if dustfemLogic.r4332_condition():
            # r149 # reply4332
            jump dustfem_s47

        '«Если ты не можешь помочь мне, я поищу кого-нибудь, кто сможет. Прощай».' if dustfemLogic.r4333_condition():
            # r150 # reply4333
            jump dustfem_s46


# s50 # say1224
label dustfem_s50:  # from 29.0 35.0 37.0 49.0
    nr 'Тленная продолжает хмуриться, но затем слегка кивает.'
    dustfem '«Ну хорошо. Что я могу сделать для тебя, посвященный?»'

    menu:
        '«У меня есть пара вопросов…»':
            # r151 # reply4334
            jump dustfem_s26

        '«На этот раз — ничего. Прощай».':
            # r152 # reply4335
            jump dustfem_s46


# s51 # say66683
label dustfem_s51:  # - # IF ~  Global("Appearance","GLOBAL",0)
    nr 'Тленная бросает на тебя каменный взгляд.'
    dustfem '«Ты потерялся?»'

    menu:
        '«Нет, я член фракции. Я просто осматриваю Морг».' if dustfemLogic.r66684_condition():
            # r153 # reply66684
            jump dustfem_s52

        '«Да».' if dustfemLogic.r66685_condition():
            # r154 # reply66685
            jump dustfem_s5

        '«Нет».' if dustfemLogic.r66686_condition():
            # r155 # reply66686
            jump dustfem_s6

        '«Нет, я не потерялся. У меня есть несколько вопросов…»' if dustfemLogic.r66687_condition():
            # r156 # reply66687
            jump dustfem_s6

        '«Прощай».' if dustfemLogic.r66688_condition():
            # r157 # reply66688
            jump dustfem_s2


# s52 # say66689
label dustfem_s52:  # from 51.0
    nr 'Тленная какое-то время пристально на тебя смотрит, затем кивает.'
    dustfem '«Хорошо. Если тебе нужна помощь, дай мне знать».'

    menu:
        '«Конечно. Прощай».':
            # r158 # reply66690
            jump dustfem_dispose


label dustfem_kill:
    nr 'Todo.'

    menu:
        'Уйти.':
            jump dustfem_dispose
        'Убить.':
            jump dustfem_killed


label dustfem_killed:
    $ dustfemLogic.kill_dustfem()
    nr 'Whose motorcycle is this?'
    nr 'Its a chopper, baby.'
    nr 'Whose chopper is this?'
    nr 'dustfems.'
    nr 'Who is dustfem?'
    nr 'dustfem is dead, baby, dustfem is dead.'
    jump dustfem_dispose


label dustfem_kill_first:
    nr 'Todo.'

    menu:
        'Уйти.':
            jump dustfem_dispose
        'Убить.':
            jump dustfem_killed_first


label dustfem_killed_first:
    $ dustfemLogic.kill_dustfem()
    nr 'Whose motorcycle is this?'
    nr 'Its a chopper, baby.'
    nr 'Whose chopper is this?'
    nr 'dustfems.'
    nr 'Who is dustfem?'
    nr 'dustfem is dead, baby, dustfem is dead.'
    jump dustfem_dispose
