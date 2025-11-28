init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.mortuary.dustfem_logic import DustfemLogic
    dustfemLogic = DustfemLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DDUSTFEM.DLG
# ###




# s0 # say298
label dustfem_s0: # - # IF ~  Global("Appearance","GLOBAL",1)
    nr 'Тленная не обращает на тебя внимания. Должно быть, она спутала тебя с одним из мертвых рабочих.{#dustfem_s0_1}'

    menu:
        '«Приветствую».{#dustfem_s0_r299}':
            # a0 # r299
            jump dustfem_s1

        '«Кто ты?»{#dustfem_s0_r318}':
            # a1 # r318
            jump dustfem_s1

        '«Что это за место?»{#dustfem_s0_r1168}':
            # a2 # r1168
            jump dustfem_s1

        '«У меня есть пара вопросов…»{#dustfem_s0_r1169}':
            # a3 # r1169
            jump dustfem_s1

        'Оставить ее в покое.{#dustfem_s0_r1170}':
            # a4 # r1170
            jump dustfem_dispose


# s1 # say1171
label dustfem_s1: # from 0.0 0.1 0.2 0.3
    nr 'Тленная подпрыгивает от неожиданности. Затем она поворачивает к тебе голову. Она выглядит потрясенной: должно быть, маскировка у тебя весьма неплохая.{#dustfem_s1_1}'

    menu:
        'Воспользоваться эффектом неожиданности и свернуть ей шею, пока она не позвала на помощь.{#dustfem_s1_r1172}':
            # a5 # r1172
            jump dustfem_s41

        '«У меня есть несколько вопросов».{#dustfem_s1_r1174}':
            # a6 # r1174
            jump dustfem_s2

        'Уйти. Быстро.{#dustfem_s1_r1175}':
            # a7 # r1175
            jump dustfem_s2


# s2 # say1176
label dustfem_s2: # from 1.1 1.2 4.3 5.2 5.3 6.4 19.6 20.4 47.2 47.3 51.4
    nr 'Тленная отступает на шаг, затем быстро хлопает в ладони три раза. В ответ во всем Морге раздается звон огромного железного колокола.{#dustfem_s2_1}'

    menu:
        '«Ну хорошо…»{#dustfem_s2_r1225}':
            # a8 # r1225
            $ dustfemLogic.r1225_action()
            jump dustfem_dispose


# s3 # say1177
label dustfem_s3: # externs morte_s84
    nr 'Эта бледная женщина одета в длинную темную мантию. От нее слегка отдает плесенью. Ее лицо ничего не выражает; кажется, она поглощена своими обязанностями.{#dustfem_s3_1}'

    menu:
        '«Приветствую».{#dustfem_s3_r1226}':
            # a9 # r1226
            jump dustfem_s4

        '«Кто ты?»{#dustfem_s3_r1227}':
            # a10 # r1227
            jump dustfem_s4

        '«Что это за место?»{#dustfem_s3_r1228}':
            # a11 # r1228
            jump dustfem_s4

        '«У меня есть пара вопросов…»{#dustfem_s3_r1229}':
            # a12 # r1229
            jump dustfem_s4

        'Оставить ее в покое.{#dustfem_s3_r1230}':
            # a13 # r1230
            jump dustfem_dispose


# s4 # say1178
label dustfem_s4: # from 3.0 3.1 3.2 3.3 40.2 40.3
    nr 'Тленная медленно поднимает свою голову и оборачивается к тебе.{#dustfem_s4_1}'
    dustfem '«Ты потерялся?»{#dustfem_s4_}'

    menu:
        '«Да».{#dustfem_s4_r1231}':
            # a14 # r1231
            jump dustfem_s5

        '«Нет».{#dustfem_s4_r1232}':
            # a15 # r1232
            jump dustfem_s6

        '«Нет, я не потерялся. У меня есть несколько вопросов…»{#dustfem_s4_r1233}':
            # a16 # r1233
            jump dustfem_s6

        '«Прощай».{#dustfem_s4_r1234}':
            # a17 # r1234
            jump dustfem_s2


# s5 # say1179
label dustfem_s5: # from 4.0 16.2 51.1
    dustfem '«Я позову стражу, они тебя живо выведут. Погоди минутку».{#dustfem_s5_1}'

    menu:
        'Свернуть ей шею до того, как она сможет позвать на помощь.{#dustfem_s5_r1235}' if dustfemLogic.r1235_condition():
            # a18 # r1235
            jump dustfem_s44

        'Свернуть ей шею до того, как она сможет позвать на помощь.{#dustfem_s5_r1236}' if dustfemLogic.r1236_condition():
            # a19 # r1236
            jump dustfem_s41

        'Уйти. Быстро.{#dustfem_s5_r1237}':
            # a20 # r1237
            jump dustfem_s2

        'Подождать.{#dustfem_s5_r1238}':
            # a21 # r1238
            jump dustfem_s2


# s6 # say1180
label dustfem_s6: # from 4.1 4.2 51.2 51.3
    dustfem '«Если ты не потерялся, то что же ты здесь делаешь?»{#dustfem_s6_1}'

    menu:
        '«Это тебя не касается».{#dustfem_s6_r1239}':
            # a22 # r1239
            jump dustfem_s7

        '«Я очнулся на одной из плит в вашей препараторской».{#dustfem_s6_r1240}':
            # a23 # r1240
            jump dustfem_s8

        '«Я хочу повидаться кое с кем».{#dustfem_s6_r1241}':
            # a24 # r1241
            jump dustfem_s9

        '«Я пришел сюда на похороны, но, похоже, произошла ошибка».{#dustfem_s6_r1242}' if dustfemLogic.r1242_condition():
            # a25 # r1242
            jump dustfem_s16

        'Уйти. Быстро.{#dustfem_s6_r1243}':
            # a26 # r1243
            jump dustfem_s2


# s7 # say1181
label dustfem_s7: # from 6.0 9.0 20.0
    dustfem '«Боюсь, что меня касается. Может, стражники развяжут твой язык».{#dustfem_s7_1}'
    nr 'Тленная делает шаг назад, кажется, она собирается позвать стражников.{#dustfem_s7_2}'

    menu:
        'Свернуть ей шею до того, как она сможет позвать на помощь.{#dustfem_s7_r1244}' if dustfemLogic.r1244_condition():
            # a27 # r1244
            jump dustfem_s44

        'Свернуть ей шею до того, как она сможет позвать на помощь.{#dustfem_s7_r1245}' if dustfemLogic.r1245_condition():
            # a28 # r1245
            jump dustfem_s41

        '«Давай, зови их. Буду рад с ними встретиться».{#dustfem_s7_r1246}':
            # a29 # r1246
            $ dustfemLogic.r1246_action()
            jump dustfem_dispose


# s8 # say1182
label dustfem_s8: # from 6.1 16.0 20.1
    dustfem '«Любишь пошутить? Тогда может поделишься своими шутками со стражниками».{#dustfem_s8_1}'
    nr 'Тленная отступает на шаг; кажется, она собирается позвать стражников.{#dustfem_s8_2}'

    menu:
        'Свернуть ей шею до того, как она сможет позвать на помощь.{#dustfem_s8_r1247}' if dustfemLogic.r1247_condition():
            # a30 # r1247
            jump dustfem_s44

        'Свернуть ей шею до того, как она сможет позвать на помощь.{#dustfem_s8_r1248}' if dustfemLogic.r1248_condition():
            # a31 # r1248
            jump dustfem_s41

        '«Давай, зови их. Буду рад с ними встретиться».{#dustfem_s8_r1249}':
            # a32 # r1249
            $ dustfemLogic.r1249_action()
            jump dustfem_dispose


# s9 # say1183
label dustfem_s9: # from 6.2 20.2
    dustfem '«Кого ты хочешь увидеть?»{#dustfem_s9_1}'

    menu:
        '«Это не твое дело».{#dustfem_s9_r1251}':
            # a33 # r1251
            jump dustfem_s7

        '«Я хочу повидаться с Дхоллом».{#dustfem_s9_r1253}' if dustfemLogic.r1253_condition():
            # a34 # r1253
            jump dustfem_s10

        '«Я хочу повидаться с Дхоллом».{#dustfem_s9_r1255}' if dustfemLogic.r1255_condition():
            # a35 # r1255
            jump dustfem_s11

        '«Я хочу повидаться с Дейонаррой».{#dustfem_s9_r1258}' if dustfemLogic.r1258_condition():
            # a36 # r1258
            jump dustfem_s13

        '«Я хочу повидаться с Дейонаррой».{#dustfem_s9_r4336}' if dustfemLogic.r4336_condition():
            # a37 # r4336
            jump dustfem_s12

        '«Я хочу повидаться с Соэго».{#dustfem_s9_r33224}' if dustfemLogic.r33224_condition():
            # a38 # r33224
            jump dustfem_s15

        '«Я хочу повидаться с Соэго».{#dustfem_s9_r33226}' if dustfemLogic.r33226_condition():
            # a39 # r33226
            jump dustfem_s14

        'Ложь: «Э-э… с Аданом. Он все еще работает здесь?..»{#dustfem_s9_r33227}' if dustfemLogic.r33227_condition():
            # a40 # r33227
            $ dustfemLogic.r33227_action()
            jump dustfem_s21

        'Ложь: «Э-э… с Аданом. Он все еще работает здесь?..»{#dustfem_s9_r33229}' if dustfemLogic.r33229_condition():
            # a41 # r33229
            jump dustfem_s21

        '«Ой, нет. Я оговорился».{#dustfem_s9_r33231}':
            # a42 # r33231
            jump dustfem_s20


# s10 # say1184
label dustfem_s10: # from 9.1
    dustfem '«Дхолла можно найти в приемной комнате на этом этаже. Должна предупредить… Дхолл очень занят, а здоровье у него подкошено. Если у тебя к нему несрочное дело, то лучше не беспокоить его».{#dustfem_s10_1}'

    menu:
        '«Хорошо. Спасибо за информацию».{#dustfem_s10_r1259}':
            # a43 # r1259
            jump dustfem_s48


# s11 # say1185
label dustfem_s11: # from 9.2
    dustfem '«Дхолл скорее всего в приемной комнате на втором этаже. Он очень занят, а здоровье у него подкошено. Если у тебя к нему несрочное дело, то лучше не беспокоить его».{#dustfem_s11_1}'

    menu:
        '«Хорошо. Спасибо за информацию».{#dustfem_s11_r1260}':
            # a44 # r1260
            jump dustfem_s48


# s12 # say1186
label dustfem_s12: # from 9.4 19.1
    dustfem '«Дейонаррой? На первом этаже в мемориальном зале похоронена женщина. Может быть, это она?»{#dustfem_s12_1}'

    menu:
        '«Скорее всего. Спасибо».{#dustfem_s12_r1261}':
            # a45 # r1261
            jump dustfem_s48


# s13 # say1187
label dustfem_s13: # from 9.3
    dustfem '«Дейонаррой? В северо-западном мемориальном зале похоронена женщина. Может быть, это она?»{#dustfem_s13_1}'

    menu:
        '«Скорее всего. Спасибо».{#dustfem_s13_r1262}':
            # a46 # r1262
            jump dustfem_s48


# s14 # say1188
label dustfem_s14: # from 9.6
    dustfem '«Скорее всего, Соэго находится у главных ворот на первом этаже. Он работает проводником в часы антипика».{#dustfem_s14_1}'

    menu:
        '«Отлично. Спасибо».{#dustfem_s14_r1263}':
            # a47 # r1263
            jump dustfem_s48


# s15 # say1189
label dustfem_s15: # from 9.5
    dustfem '«Скорее всего, Соэго находится у главных ворот. Он работает проводником в часы антипика».{#dustfem_s15_1}'

    menu:
        '«Отлично. Спасибо».{#dustfem_s15_r1264}':
            # a48 # r1264
            jump dustfem_s48


# s16 # say1190
label dustfem_s16: # from 6.3 20.3
    dustfem '«Кто был погребен? Возможно, служба проводится в другом конце Морга».{#dustfem_s16_1}'

    menu:
        '«Ты не понимаешь… ошибка в том, что похоронить собирались МЕНЯ».{#dustfem_s16_r1265}':
            # a49 # r1265
            jump dustfem_s8

        '«Может быть. Где еще проводят службу?»{#dustfem_s16_r1266}':
            # a50 # r1266
            jump dustfem_s17

        '«Ты можешь указать выход отсюда?»{#dustfem_s16_r1267}':
            # a51 # r1267
            jump dustfem_s5


# s17 # say1191
label dustfem_s17: # from 16.1
    dustfem '«По всему периметру Морга расположены погребальные залы. Они расположены вдоль стены на первом и втором этажах. Тебе известно имя усопшего?»{#dustfem_s17_1}'

    menu:
        '«Нет».{#dustfem_s17_r1268}':
            # a52 # r1268
            jump dustfem_s18

        '«Да».{#dustfem_s17_r1269}':
            # a53 # r1269
            jump dustfem_s19


# s18 # say1192
label dustfem_s18: # from 17.0
    dustfem '«Тогда тебе стоит поговорить с одним из проводников у главных ворот. Они тебе помогут».{#dustfem_s18_1}'

    menu:
        '«Отлично. Спасибо».{#dustfem_s18_r1270}':
            # a54 # r1270
            jump dustfem_dispose


# s19 # say1193
label dustfem_s19: # from 17.1
    nr 'Тленная ждет.{#dustfem_s19_1}'

    menu:
        '«Прошу прощения… Я оговорился. Мне неизвестно имя усопшего».{#dustfem_s19_r1271}':
            # a55 # r1271
            jump dustfem_s20

        '«Это имя — Дейонарра».{#dustfem_s19_r1272}' if dustfemLogic.r1272_condition():
            # a56 # r1272
            jump dustfem_s12

        'Ложь: «Имя… э-э, Адан».{#dustfem_s19_r1273}' if dustfemLogic.r1273_condition():
            # a57 # r1273
            $ dustfemLogic.r1273_action()
            jump dustfem_s21

        'Ложь: «Имя… э-э, Адан».{#dustfem_s19_r1274}' if dustfemLogic.r1274_condition():
            # a58 # r1274
            jump dustfem_s21

        'Наклониться вперед, будто собираясь прошептать ей что-то на ухо, а затем свернуть ей шею.{#dustfem_s19_r1275}' if dustfemLogic.r1275_condition():
            # a59 # r1275
            jump dustfem_s44

        'Наклониться вперед, будто собираясь прошептать ей что-то на ухо, а затем свернуть ей шею.{#dustfem_s19_r1276}' if dustfemLogic.r1276_condition():
            # a60 # r1276
            jump dustfem_s45

        'Убежать от нее.{#dustfem_s19_r1277}':
            # a61 # r1277
            jump dustfem_s2


# s20 # say1194
label dustfem_s20: # from 9.9 19.0
    dustfem '«Понятно. И что же ты здесь делаешь?»{#dustfem_s20_1}'

    menu:
        '«Это не твое дело».{#dustfem_s20_r1278}':
            # a62 # r1278
            jump dustfem_s7

        '«Я очнулся на одной из плит в вашей препараторской».{#dustfem_s20_r1279}':
            # a63 # r1279
            jump dustfem_s8

        '«Я хочу повидаться кое с кем».{#dustfem_s20_r1280}':
            # a64 # r1280
            jump dustfem_s9

        '«Я пришел сюда на похороны, но, похоже, произошла ошибка».{#dustfem_s20_r1281}' if dustfemLogic.r1281_condition():
            # a65 # r1281
            jump dustfem_s16

        'Убежать от нее.{#dustfem_s20_r1282}':
            # a66 # r1282
            jump dustfem_s2


# s21 # say1195
label dustfem_s21: # from 9.7 9.8 19.2 19.3
    dustfem '«Это имя мне незнакомо. Справься у одного из проводников у главных ворот… они смогут сориентировать тебя лучше, чем я».{#dustfem_s21_1}'

    menu:
        '«Хорошо. Я так и сделаю. Прощай».{#dustfem_s21_r1283}':
            # a67 # r1283
            jump dustfem_dispose


# s22 # say1196
label dustfem_s22: # - # IF ~  Global("Appearance","GLOBAL",2)
    nr 'Эта бледная женщина одета в длинную темную мантию. От нее слегка отдает плесенью. Ее лицо ничего не выражает; кажется, она поглощена своими обязанностями.{#dustfem_s22_1}'

    menu:
        '«Приветствую».{#dustfem_s22_r1284}':
            # a68 # r1284
            jump dustfem_s23

        'Оставить ее в покое.{#dustfem_s22_r1285}':
            # a69 # r1285
            jump dustfem_dispose


# s23 # say1197
label dustfem_s23: # from 22.0
    nr 'Она медленно оборачивается, ее взгляд мельком скользит по твоей одежде.{#dustfem_s23_1}'
    dustfem '«Приветствую тебя, посвященный».{#dustfem_s23_}'

    menu:
        '«Кто ты?»{#dustfem_s23_r1286}':
            # a70 # r1286
            jump dustfem_s24

        '«Что это за место?»{#dustfem_s23_r1287}':
            # a71 # r1287
            jump dustfem_s25

        '«У меня есть пара вопросов…»{#dustfem_s23_r1288}':
            # a72 # r1288
            jump dustfem_s26

        'Оставить ее в покое.{#dustfem_s23_r1289}':
            # a73 # r1289
            jump dustfem_dispose


# s24 # say1198
label dustfem_s24: # from 23.0
    dustfem '«У меня такой же вопрос. Твое лицо мне незнакомо. Как тебя зовут?»{#dustfem_s24_1}'

    menu:
        'Ложь: «Имя… э-э, Адан».{#dustfem_s24_r1290}' if dustfemLogic.r1290_condition():
            # a74 # r1290
            $ dustfemLogic.r1290_action()
            jump dustfem_s49

        'Ложь: «Имя… э-э, Адан».{#dustfem_s24_r1291}' if dustfemLogic.r1291_condition():
            # a75 # r1291
            jump dustfem_s49

        '«Как меня зовут — не твое дело. Я должен идти. Прощай».{#dustfem_s24_r1292}' if dustfemLogic.r1292_condition():
            # a76 # r1292
            jump dustfem_s47

        '«Как меня зовут — не твое дело. Я должен идти. Прощай».{#dustfem_s24_r1293}' if dustfemLogic.r1293_condition():
            # a77 # r1293
            jump dustfem_s46


# s25 # say1199
label dustfem_s25: # from 23.1
    dustfem '«Это Морг…»{#dustfem_s25_1}'
    nr 'Тленная какое-то время смотрит на тебя, как бы оценивая только что тобою сказанное.{#dustfem_s25_2}'
    dustfem '«Как, ты сказал, тебя зовут?»{#dustfem_s25_3}'

    menu:
        'Ложь: «Имя… э-э, Адан».{#dustfem_s25_r1294}' if dustfemLogic.r1294_condition():
            # a78 # r1294
            $ dustfemLogic.r1294_action()
            jump dustfem_s49

        'Ложь: «Имя… э-э, Адан».{#dustfem_s25_r1295}' if dustfemLogic.r1295_condition():
            # a79 # r1295
            jump dustfem_s49

        '«Как меня зовут — не твое дело. Я должен идти. Прощай».{#dustfem_s25_r1296}' if dustfemLogic.r1296_condition():
            # a80 # r1296
            jump dustfem_s47

        '«Как меня зовут — не твое дело. Я должен идти. Прощай».{#dustfem_s25_r1297}' if dustfemLogic.r1297_condition():
            # a81 # r1297
            jump dustfem_s46


# s26 # say1200
label dustfem_s26: # from 23.2 27.0 28.2 30.3 31.3 34.2 36.1 39.0 50.0
    nr 'Тленная терпеливо ждет твоего продолжения.{#dustfem_s26_1}'

    menu:
        '«Можешь показать мне, где выход?»{#dustfem_s26_r1298}':
            # a82 # r1298
            jump dustfem_s27

        '«Ты знаешь кого-нибудь по имени Фарод?»{#dustfem_s26_r1299}':
            # a83 # r1299
            jump dustfem_s28

        '«Я потерял дневник. Тебе ничего такого не попадалось?»{#dustfem_s26_r1300}':
            # a84 # r1300
            jump dustfem_s39

        '«Неважно. Извини за беспокойство».{#dustfem_s26_r1328}':
            # a85 # r1328
            jump dustfem_s48


# s27 # say1201
label dustfem_s27: # from 26.0
    dustfem '«Ты можешь просто выйти через главные ворота. Они на первом этаже».{#dustfem_s27_1}'

    menu:
        '«У меня есть другие вопросы…»{#dustfem_s27_r1329}':
            # a86 # r1329
            jump dustfem_s26

        '«Спасибо. Прощай».{#dustfem_s27_r1330}':
            # a87 # r1330
            jump dustfem_s48


# s28 # say1202
label dustfem_s28: # from 26.1
    dustfem '«Это имя…»{#dustfem_s28_1}'
    nr 'Тленная на секунду умолкает.{#dustfem_s28_2}'
    dustfem '«Это имя *звучит* знакомо… Кажется, я припоминаю сборщика с таким именем. Писец Дхолл может знать о нем больше».{#dustfem_s28_3}'

    menu:
        '«Сборщика?»{#dustfem_s28_r1331}':
            # a88 # r1331
            jump dustfem_s29

        '«Дхолл?»{#dustfem_s28_r1334}':
            # a89 # r1334
            jump dustfem_s30

        '«У меня есть другие вопросы…»{#dustfem_s28_r1338}':
            # a90 # r1338
            jump dustfem_s26

        '«Спасибо за уделенное время. Прощай».{#dustfem_s28_r1395}':
            # a91 # r1395
            jump dustfem_s48


# s29 # say1203
label dustfem_s29: # from 28.0
    dustfem '«Сборщики… они собирают тех, кто умер на улицах Сигила, и доставляют их в Морг…»{#dustfem_s29_1}'
    nr 'Тленная умолкает, хмуря брови.{#dustfem_s29_2}'
    dustfem '«Ты нездешний. Кто ты?»{#dustfem_s29_3}'

    menu:
        '«Я недавно посвящен. Прости мое невежество».{#dustfem_s29_r1396}' if dustfemLogic.r1396_condition():
            # a92 # r1396
            jump dustfem_s50

        '«Я… недавно здесь. Я… пытаюсь изучить обстановку».{#dustfem_s29_r1397}' if dustfemLogic.r1397_condition():
            # a93 # r1397
            jump dustfem_s47

        '«Ну… к чему имена? Храни веру, э-э, посвященная».{#dustfem_s29_r1398}' if dustfemLogic.r1398_condition():
            # a94 # r1398
            jump dustfem_s47

        '«Если ты не можешь помочь мне, я поищу кого-нибудь, кто сможет. Прощай».{#dustfem_s29_r1399}' if dustfemLogic.r1399_condition():
            # a95 # r1399
            jump dustfem_s46


# s30 # say1204
label dustfem_s30: # from 28.1
    dustfem '«Дхолл — один из самых уважаемых членов нашей фракции. Наверное, никто не размышлял о сущности Истинной Смерти и не заслужил ее больше, чем он. У него много знаний, которыми он может поделиться. Если ты незнаком с ним, то я советую тебе как можно раньше воспользоваться этой возможностью. Ему осталось не так долго жить в тени этого существования».{#dustfem_s30_1}'

    menu:
        '«Ему еще недолго жить в тени этого существования?»{#dustfem_s30_r4280}':
            # a96 # r4280
            jump dustfem_s31

        '«Где я могу найти Дхолла?»{#dustfem_s30_r4281}' if dustfemLogic.r4281_condition():
            # a97 # r4281
            jump dustfem_s32

        '«Где я могу найти Дхолла?»{#dustfem_s30_r4282}' if dustfemLogic.r4282_condition():
            # a98 # r4282
            jump dustfem_s33

        '«У меня есть другие вопросы…»{#dustfem_s30_r4283}':
            # a99 # r4283
            jump dustfem_s26

        '«Спасибо за информацию. Я поговорю с ним».{#dustfem_s30_r33245}':
            # a100 # r33245
            jump dustfem_s48


# s31 # say1205
label dustfem_s31: # from 30.0 32.0 33.0
    nr 'Кивок.{#dustfem_s31_1}'
    dustfem '«Дхолл болен. Он стар, даже по меркам гитцераев. Несомненно, смерть последует за болезнью, которую он подхватил. Ему повезло».{#dustfem_s31_2}'

    menu:
        '«По меркам гитцераев?»{#dustfem_s31_r4284}':
            # a101 # r4284
            jump dustfem_s34

        '«Что это еще за *гитцераи*?»{#dustfem_s31_r4285}':
            # a102 # r4285
            jump dustfem_s35

        '«Повезло?»{#dustfem_s31_r4286}':
            # a103 # r4286
            jump dustfem_s36

        '«Понятно. У меня есть другие вопросы…»{#dustfem_s31_r4287}':
            # a104 # r4287
            jump dustfem_s26

        '«Спасибо за уделенное время. Мне нужно идти».{#dustfem_s31_r4337}':
            # a105 # r4337
            jump dustfem_s48


# s32 # say1206
label dustfem_s32: # from 30.1
    dustfem '«Дхолл находится в приемной комнате в северо-западной части этого этажа. Должна предупредить… Дхолл очень занят… то время, которое он не занят своими обязанностями, отбирает у него болезнь».{#dustfem_s32_1}'

    menu:
        '«Дхолл болен?»{#dustfem_s32_r4288}':
            # a106 # r4288
            jump dustfem_s31

        '«Спасибо за уделенное время. Мне нужно идти. Прощай».{#dustfem_s32_r4289}':
            # a107 # r4289
            jump dustfem_s48


# s33 # say1207
label dustfem_s33: # from 30.2
    dustfem '«Дхолл скорее всего в приемной комнате на втором этаже. Лучше не отвлекай его слишком сильно — он очень занят… то время, которое он не занят своими обязанностями, отбирает у него болезнь».{#dustfem_s33_1}'

    menu:
        '«Дхолл болен?»{#dustfem_s33_r4290}':
            # a108 # r4290
            jump dustfem_s31

        '«Спасибо за уделенное время. Мне нужно идти. Прощай».{#dustfem_s33_r4291}':
            # a109 # r4291
            jump dustfem_s48


# s34 # say1208
label dustfem_s34: # from 31.0
    dustfem '«Да, гитцераи живут гораздо дольше, чем люди».{#dustfem_s34_}'

    menu:
        '«Что это еще за *гитцераи*?»{#dustfem_s34_r4292}':
            # a110 # r4292
            jump dustfem_s35

        '«Как это Дхоллу повезло? От него хотят избавиться?»{#dustfem_s34_r4293}':
            # a111 # r4293
            jump dustfem_s36

        '«О, у меня есть другие вопросы…»{#dustfem_s34_r4294}':
            # a112 # r4294
            jump dustfem_s26

        '«Спасибо за уделенное время. Прощай».{#dustfem_s34_r4295}':
            # a113 # r4295
            jump dustfem_s48


# s35 # say1209
label dustfem_s35: # from 31.1 34.0
    dustfem '«Гитцерай — это…»{#dustfem_s35_1}'
    nr 'Тленная умолкает, пристально глядя на тебя.{#dustfem_s35_2}'
    dustfem '«Ты ведь нездешний. Кто ты?»{#dustfem_s35_3}'

    menu:
        '«Я недавно посвящен. Прости мое невежество».{#dustfem_s35_r4296}' if dustfemLogic.r4296_condition():
            # a114 # r4296
            jump dustfem_s50

        '«Я… недавно здесь. Я… пытаюсь изучить обстановку».{#dustfem_s35_r4297}' if dustfemLogic.r4297_condition():
            # a115 # r4297
            jump dustfem_s47

        '«Ну… к чему имена? Храни веру, э-э, посвященная».{#dustfem_s35_r4298}' if dustfemLogic.r4298_condition():
            # a116 # r4298
            jump dustfem_s47

        '«Если ты не можешь помочь мне, я поищу кого-нибудь, кто сможет. Прощай».{#dustfem_s35_r4300}' if dustfemLogic.r4300_condition():
            # a117 # r4300
            jump dustfem_s46


# s36 # say1210
label dustfem_s36: # from 31.2 34.1
    dustfem '«Ему повезло в том, что он достигнет Истинной Смерти. Он больше не будет странствовать в тени этого существования».{#dustfem_s36_1}'

    menu:
        '«И… это хорошо?»{#dustfem_s36_r4299}':
            # a118 # r4299
            jump dustfem_s37

        '«Понятно. И правда, очень повезло. У меня есть другие вопросы…»{#dustfem_s36_r4301}':
            # a119 # r4301
            jump dustfem_s26

        '«Понятно. Ну что ж, мне нужно идти. Прощай».{#dustfem_s36_r4302}':
            # a120 # r4302
            jump dustfem_s48


# s37 # say1211
label dustfem_s37: # from 36.0
    nr 'Тленная кивает.{#dustfem_s37_1}'
    dustfem '«Да».{#dustfem_s37_2}'
    nr 'Она хмурится, затем пристально смотрит на тебя.{#dustfem_s37_3}'
    dustfem '«Ты нездешний. Кто ты?»{#dustfem_s37_4}'

    menu:
        '«Я недавно посвящен. Прости мое невежество».{#dustfem_s37_r4303}' if dustfemLogic.r4303_condition():
            # a121 # r4303
            jump dustfem_s50

        '«Я… недавно здесь. Я… пытаюсь изучить обстановку».{#dustfem_s37_r4304}' if dustfemLogic.r4304_condition():
            # a122 # r4304
            jump dustfem_s47

        '«Ну… к чему имена? Храни веру, э-э, посвященная».{#dustfem_s37_r4305}' if dustfemLogic.r4305_condition():
            # a123 # r4305
            jump dustfem_s47

        '«Если ты не можешь помочь мне, я поищу кого-нибудь, кто сможет. Прощай».{#dustfem_s37_r4306}' if dustfemLogic.r4306_condition():
            # a124 # r4306
            jump dustfem_s46


# s38 # say1212
label dustfem_s38: # -
    dustfem '«Ты не из наших. Кто ты? Что ты здесь делаешь? Ты из анархистов? Или шпион другой фракции?»{#dustfem_s38_1}'
    nr 'Тленная отступает на шаг.{#dustfem_s38_2}'
    dustfem '«Стража! Стража!»{#dustfem_s38_3}'

    menu:
        '«Проклятье!»{#dustfem_s38_r4307}':
            # a125 # r4307
            $ dustfemLogic.r4307_action()
            jump dustfem_dispose

        '«Тс-с-с! Я не смогу тебе ответить под такой крик!»{#dustfem_s38_r4308}' if dustfemLogic.r4308_condition():
            # a126 # r4308
            $ dustfemLogic.r4308_action()
            jump dustfem_dispose

        '«Тс-с-с! Я не смогу тебе ответить под такой крик!»{#dustfem_s38_r4309}' if dustfemLogic.r4309_condition():
            # a127 # r4309
            $ dustfemLogic.r4309_action()
            jump dustfem_dispose


# s39 # say1213
label dustfem_s39: # from 26.2
    dustfem '«Дневник? Не встречала такого».{#dustfem_s39_1}'

    menu:
        '«У меня есть другие вопросы…»{#dustfem_s39_r4310}':
            # a128 # r4310
            jump dustfem_s26

        '«Я должен идти. Прощай».{#dustfem_s39_r4311}':
            # a129 # r4311
            jump dustfem_s48


# s40 # say1214
label dustfem_s40: # -
    nr 'Эта бледная женщина одета в длинную темную мантию. От нее слегка отдает плесенью. Ее лицо ничего не выражает; кажется, она поглощена своими обязанностями.{#dustfem_s40_1}'

    menu:
        '«Приветствую».{#dustfem_s40_r4312}' if dustfemLogic.r4312_condition():
            # a130 # r4312
            jump morte_s81  # EXTERN

        '«Приветствую».{#dustfem_s40_r4313}' if dustfemLogic.r4313_condition():
            # a131 # r4313
            jump morte_s83  # EXTERN

        '«Приветствую».{#dustfem_s40_r4314}' if dustfemLogic.r4314_condition():
            # a132 # r4314
            jump dustfem_s4

        '«Приветствую».{#dustfem_s40_r4315}' if dustfemLogic.r4315_condition():
            # a133 # r4315
            jump dustfem_s4

        'Оставить ее в покое.{#dustfem_s40_r4316}':
            # a134 # r4316
            jump dustfem_dispose


# s41 # say1215
label dustfem_s41: # from 1.0 5.1 7.1 8.1 47.1
    nr 'Тленная не успевает и слова вымолвить, как твои руки хватают ее голову за виски и резко сворачивают ее влево.{#dustfem_s41_1}'

    menu:
        '«Нельзя дать тебе предупредить своих друзей…»{#dustfem_s41_r4317}':
            # a135 # r4317
            $ dustfemLogic.r4317_action()
            jump dustfem_s42


# s42 # say1216
label dustfem_s42: # from 41.0 45.0
    nr 'В шее раздается характерный хруст, и тело тленной безвольно падает в твои объятия.{#dustfem_s42_1}'

    menu:
        '«Лучше ты, чем я, трухлявка».{#dustfem_s42_r4318}' if dustfemLogic.r4318_condition():
            # a136 # r4318
            $ dustfemLogic.r4318_action()
            jump dustfem_s43

        '«Лучше ты, чем я, трухлявка».{#dustfem_s42_r4319}' if dustfemLogic.r4319_condition():
            # a137 # r4319
            $ dustfemLogic.r4319_action()
            jump dustfem_dispose


# s43 # say1217
label dustfem_s43: # from 42.0
    nr 'К своему удивлению, это действие происходит практически инстинктивно, будто ты проделывал это уже много раз… с этой мыслью всплывает воспоминание, но оно недостаточно сильно для того, чтобы за него зацепиться.{#dustfem_s43_1}'

    menu:
        'Оставить тело, уйти.{#dustfem_s43_r4320}':
            # a138 # r4320
            $ dustfemLogic.r4320_action()
            jump dustfem_dispose


# s44 # say1218
label dustfem_s44: # from 5.0 7.0 8.0 19.4 47.0
    nr 'Ты недостаточно быстр, и тленная уворачивается от твоего выпада. Отступив на шаг, она быстро хлопает в ладони три раза. В ответ во всем Морге раздается звон огромного железного колокола.{#dustfem_s44_1}'

    menu:
        '«Ну хорошо…»{#dustfem_s44_r4321}':
            # a139 # r4321
            $ dustfemLogic.r4321_action()
            jump dustfem_dispose


# s45 # say1219
label dustfem_s45: # from 19.5
    nr 'Ты наклоняешься, чтобы „шепнуть“ ей что-то на ухо, тленная тоже наклоняется. Как только она оказывается на расстоянии вытянутой руки, ты хватаешь ее за виски и резко сворачиваешь голову влево.{#dustfem_s45_1}'

    menu:
        '«Нельзя дать тебе предупредить своих друзей…»{#dustfem_s45_r4322}':
            # a140 # r4322
            $ dustfemLogic.r4322_action()
            jump dustfem_s42


# s46 # say1220
label dustfem_s46: # from 24.3 25.3 29.3 35.3 37.3 49.3 50.1
    nr 'Тленная явно что-то подозревает. Похоже, она хочет что-то сказать, затем едва заметно качает головой и возвращается к своим обязанностям.{#dustfem_s46_1}'

    menu:
        'Уйти прочь.{#dustfem_s46_r4323}':
            # a141 # r4323
            jump dustfem_dispose


# s47 # say1221
label dustfem_s47: # from 24.2 25.2 29.1 29.2 35.1 35.2 37.1 37.2 49.1 49.2
    nr 'Тленная внимательно тебя осматривает.{#dustfem_s47_1}'
    dustfem '«Ты не из наших. Что ты здесь делаешь? Ты из анархистов? Или шпион другой фракции? Кажется, здесь есть дело для стражников…»{#dustfem_s47_}'

    menu:
        'Свернуть ей шею до того, как она сможет позвать на помощь.{#dustfem_s47_r4324}' if dustfemLogic.r4324_condition():
            # a142 # r4324
            jump dustfem_s44

        'Свернуть ей шею до того, как она сможет позвать на помощь.{#dustfem_s47_r4325}' if dustfemLogic.r4325_condition():
            # a143 # r4325
            jump dustfem_s41

        'Уйти. Быстро.{#dustfem_s47_r4326}':
            # a144 # r4326
            jump dustfem_s2

        '«Нет-нет… не он, э-э… то есть, я хотел сказать, не шпион… понимаешь, я пробудился на одной из плит… и…»{#dustfem_s47_r4327}':
            # a145 # r4327
            jump dustfem_s2


# s48 # say1222
label dustfem_s48: # from 10.0 11.0 12.0 13.0 14.0 15.0 26.3 27.1 28.3 30.4 31.4 32.1 33.1 34.3 36.2 39.1
    nr 'Тленная кивает и возвращается к своим делам.{#dustfem_s48_1}'

    menu:
        'Уйти прочь.{#dustfem_s48_r4328}':
            # a146 # r4328
            jump dustfem_dispose


# s49 # say1223
label dustfem_s49: # from 24.0 24.1 25.0 25.1
    nr 'Тленная хмурится.{#dustfem_s49_1}'
    dustfem '«Это имя мне незнакомо».{#dustfem_s49_2}'

    menu:
        '«Я недавно посвящен. Прости мое невежество».{#dustfem_s49_r4329}' if dustfemLogic.r4329_condition():
            # a147 # r4329
            jump dustfem_s50

        '«Я… недавно здесь. Я… пытаюсь изучить порядки».{#dustfem_s49_r4331}' if dustfemLogic.r4331_condition():
            # a148 # r4331
            jump dustfem_s47

        '«Ну… к чему имена? Храни веру, э-э, посвященная».{#dustfem_s49_r4332}' if dustfemLogic.r4332_condition():
            # a149 # r4332
            jump dustfem_s47

        '«Если ты не можешь помочь мне, я поищу кого-нибудь, кто сможет. Прощай».{#dustfem_s49_r4333}' if dustfemLogic.r4333_condition():
            # a150 # r4333
            jump dustfem_s46


# s50 # say1224
label dustfem_s50: # from 29.0 35.0 37.0 49.0
    nr 'Тленная продолжает хмуриться, но затем слегка кивает.{#dustfem_s50_1}'
    dustfem '«Ну хорошо. Что я могу сделать для тебя, посвященный?»{#dustfem_s50_2}'

    menu:
        '«У меня есть пара вопросов…»{#dustfem_s50_r4334}':
            # a151 # r4334
            jump dustfem_s26

        '«На этот раз — ничего. Прощай».{#dustfem_s50_r4335}':
            # a152 # r4335
            jump dustfem_s46


# s51 # say66683
label dustfem_s51: # - # IF ~  Global("Appearance","GLOBAL",0)
    nr 'Тленная бросает на тебя каменный взгляд.{#dustfem_s51_1}'
    dustfem '«Ты потерялся?»{#dustfem_s51_2}'

    menu:
        '«Нет, я член фракции. Я просто осматриваю Морг».{#dustfem_s51_r66684}' if dustfemLogic.r66684_condition():
            # a153 # r66684
            jump dustfem_s52

        '«Да».{#dustfem_s51_r66685}' if dustfemLogic.r66685_condition():
            # a154 # r66685
            jump dustfem_s5

        '«Нет».{#dustfem_s51_r66686}' if dustfemLogic.r66686_condition():
            # a155 # r66686
            jump dustfem_s6

        '«Нет, я не потерялся. У меня есть несколько вопросов…»{#dustfem_s51_r66687}' if dustfemLogic.r66687_condition():
            # a156 # r66687
            jump dustfem_s6

        '«Прощай».{#dustfem_s51_r66688}' if dustfemLogic.r66688_condition():
            # a157 # r66688
            jump dustfem_s2


# s52 # say66689
label dustfem_s52: # from 51.0
    nr 'Тленная какое-то время пристально на тебя смотрит, затем кивает.{#dustfem_s52_1}'
    dustfem '«Хорошо. Если тебе нужна помощь, дай мне знать».{#dustfem_s52_}'

    menu:
        '«Конечно. Прощай».{#dustfem_s52_r66690}':
            # a158 # r66690
            jump dustfem_dispose
