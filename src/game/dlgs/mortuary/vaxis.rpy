init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.mortuary.vaxis_logic import VaxisLogic
    vaxisLogic = VaxisLogic(runtime.global_state_manager)

    def logic_get_know_vaxis_name():
        return vaxis if vaxisLogic.get_know_vaxis_name() else vaxis_unknown


# ###
# Original:  DLG/DVAXIS.DLG
# ###


# s0 # say453
label vaxis_s0: # - # IF ~  Global("Vaxis","GLOBAL",0)
    nr 'Неуклюжий труп смотрит на тебя пустым взглядом. На его лбу вырезан номер «821», а его губы крепко зашиты. От тела исходит легкий запах формальдегида.{#vaxis_s0_1}'

    menu:
        '«Итак… что тут у нас интересного?»{#vaxis_s0_r454}' if vaxisLogic.r454_condition():
            # a0 # r454
            $ vaxisLogic.r454_action()
            jump vaxis_s5

        '«Итак… что тут у нас интересного?»{#vaxis_s0_r455}' if vaxisLogic.r455_condition():
            # a1 # r455
            jump vaxis_s5

        '«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».{#vaxis_s0_r456}' if vaxisLogic.r456_condition():
            # a2 # r456
            jump vaxis_s5

        'Использовать на трупе свою способность «История костей».{#vaxis_s0_r457}' if vaxisLogic.r457_condition():
            # a3 # r457
            jump vaxis_s1

        '«Было приятно поболтать с тобой. Прощай».{#vaxis_s0_r458}':
            # a4 # r458
            jump vaxis_s5

        'Оставить труп в покое.{#vaxis_s0_r459}':
            # a5 # r459
            jump vaxis_dispose


# s1 # say460
label vaxis_s1: # from 0.3 # IF ~  False()
    nr 'Довольно странно, но твоя способность не работает с этим трупом.{#vaxis_s1_1}'

    menu:
        'Ткнуть его в глаз.{#vaxis_s1_r461}':
            # a6 # r461
            $ vaxisLogic.r461_action()
            jump vaxis_s2

        'Оставить труп в покое.{#vaxis_s1_r462}':
            # a7 # r462
            jump vaxis_dispose


# s2 # say463
label vaxis_s2: # from 1.0
    nr 'После твоего тычка в глаз труп, рефлекторно закрыв руками лицо, издает нечленораздельный вопль. Он начинает что-то невнятно бормотать, сыпля проклятиями в твой адрес.{#vaxis_s2_1}'

    menu:
        '«Ты не зомби! Кто ты?»{#vaxis_s2_r464}':
            # a8 # r464
            $ vaxisLogic.j64513_s2_r464_action()
            jump vaxis_s6

        '«Зачем ты замаскировался под зомби?»{#vaxis_s2_r465}':
            # a9 # r465
            $ vaxisLogic.j64513_s2_r465_action()
            jump vaxis_s6

        'Уйти. Быстро.{#vaxis_s2_r466}':
            # a10 # r466
            $ vaxisLogic.j64513_s2_r466_action()
            jump vaxis_s3


# s3 # say467
label vaxis_s3: # from 2.2 5.2
    nr 'Ты уже почти отвернулся, как „зомби“ начинает что-то бормотать… кажется, он пытается что-то сказать, но с зашитым ртом это сделать трудно.{#vaxis_s3_1}'
    vaxis_unknown '«Фто ТЫ? Фто тее нао?»{#vaxis_s3_2}'

    menu:
        '«Я ищу выход отсюда. Ты можешь мне помочь?»{#vaxis_s3_r468}' if vaxisLogic.r468_condition():
            # a11 # r468
            jump vaxis_s7

        '«Кто ты?»{#vaxis_s3_r469}':
            # a12 # r469
            jump vaxis_s7

        '«Рассказывай, кто ты такой, или я позову стражу».{#vaxis_s3_r470}':
            # a13 # r470
            jump vaxis_s7

        'Ложь: «Чего… Я искал тебя».{#vaxis_s3_r472}' if vaxisLogic.r472_condition():
            # a14 # r472
            $ vaxisLogic.r472_action()
            jump vaxis_s24

        '«*Зомби*, вопросы здесь задаю я. Рассказывай, что ты здесь делаешь, или я сделаю эту маскировку настоящей».{#vaxis_s3_r473}':
            # a15 # r473
            $ vaxisLogic.r473_action()
            jump vaxis_s7

        '«Извини, что побеспокоил тебя… кем бы ты ни был. Прощай».{#vaxis_s3_r474}':
            # a16 # r474
            jump vaxis_s4


# s4 # say471
label vaxis_s4: # from 3.5 6.5 7.8 8.5 10.4 11.4 12.2 13.5 14.4 15.2 16.4 17.2 18.1 19.3 20.1 25.6 27.6 31.6 32.5 34.2 35.6 59.1 74.1 75.3 76.1
    $ x = logic_get_know_vaxis_name()
    nr 'Ты уже почти отвернулся, как зомби начинает издавать низкое протяжное ворчание:{#vaxis_s4_1}'
    x '«Никоу ничео не говои пво МЕЯ. Моучи. Не говои НИФЕО твуфявым».{#vaxis_s4_2}'
    nr 'Он прикладывает палец к губам.{#vaxis_s4_3}'
    x '«Фффф».{#vaxis_s4_4}'
    nr 'После этого он проводит пальцем по горлу.{#vaxis_s4_5}'
    x '«Или ты уфнефь нафегда. ПОЯЛ мея?»{#vaxis_s4_6}'

    menu:
        '«Ты пытаешься меня ЗАПУГАТЬ? Ну все… готовься к смерти».{#vaxis_s4_r475}':
            # a17 # r475
            $ vaxisLogic.r475_action()
            jump vaxis_dispose

        'Ложь: «Я даже и *не думал* ничего говорить тленным о тебе».{#vaxis_s4_r476}':
            # a18 # r476
            $ vaxisLogic.r476_action()
            jump vaxis_dispose

        'Правда: «Обещаю, что я ничего не скажу о тебе тленным».{#vaxis_s4_r477}':
            # a19 # r477
            $ vaxisLogic.r477_action()
            jump vaxis_dispose

        '«Как хочешь. У тебя свои дела, у меня — свои».{#vaxis_s4_r478}':
            # a20 # r478
            jump vaxis_dispose


# s5 # say479
label vaxis_s5: # from 0.0 0.1 0.2 0.4
    nr 'Зомби от неожиданности моргает при твоем обращении.{#vaxis_s5_1}'
    vaxis_unknown '«А? Фто?»{#vaxis_s5_2}'

    menu:
        '«Ты не зомби! Кто ты?»{#vaxis_s5_r480}':
            # a21 # r480
            $ vaxisLogic.j64513_s5_r480_action()
            $ vaxisLogic.r480_action()
            jump vaxis_s6

        '«Зачем ты замаскировался под зомби?»{#vaxis_s5_r481}':
            # a22 # r481
            $ vaxisLogic.j64513_s5_r481_action()
            $ vaxisLogic.r481_action()
            jump vaxis_s6

        'Уйти. Быстро.{#vaxis_s5_r482}':
            # a23 # r482
            $ vaxisLogic.j64513_s5_r482_action()
            $ vaxisLogic.r482_action()
            jump vaxis_s3


# s6 # say483
label vaxis_s6: # from 2.0 2.1 5.0 5.1
    $ x = logic_get_know_vaxis_name()
    nr '„Зомби“ пытается что-то сказать сквозь зашитые губы. На его лице странная смесь испуга и злобы.{#vaxis_s6_1}'
    x '«Фто ТЫ? Фего тее нао?»{#vaxis_s6_2}'

    menu:
        '«Я ищу выход отсюда. Ты можешь мне помочь?»{#vaxis_s6_r484}' if vaxisLogic.r484_condition():
            # a24 # r484
            jump vaxis_s7

        '«Кто ты?»{#vaxis_s6_r485}':
            # a25 # r485
            jump vaxis_s7

        '«Рассказывай, кто ты такой, или я позову стражу».{#vaxis_s6_r486}':
            # a26 # r486
            jump vaxis_s7

        'Ложь: «Чего… Я искал тебя».{#vaxis_s6_r487}' if vaxisLogic.r487_condition():
            # a27 # r487
            $ vaxisLogic.r487_action()
            jump vaxis_s24

        '«*Зомби*, вопросы здесь задаю я. Рассказывай, что ты здесь делаешь, или я сделаю эту маскировку настоящей».{#vaxis_s6_r488}':
            # a28 # r488
            $ vaxisLogic.r488_action()
            jump vaxis_s7

        '«Извини, что побеспокоил тебя… кем бы ты ни был. Прощай».{#vaxis_s6_r489}':
            # a29 # r489
            jump vaxis_s4


# s7 # say490
label vaxis_s7: # from 3.0 3.1 3.2 3.4 6.0 6.1 6.2 6.4
    $ x = logic_get_know_vaxis_name()
    nr 'Кажется, зомби не расслышал тебя. Он осматривает тебя с ног до головы, затем хмурится.{#vaxis_s7_1}'
    x '«Фто ты фдефь делаефь?»{#vaxis_s7_2}'
    nr 'Его глаза недоверчиво сужаются.{#vaxis_s7_3}'
    x '«Фпионифь за Мертфяками?»{#vaxis_s7_4}'

    menu:
        '«Нет. Я пытаюсь сбежать отсюда».{#vaxis_s7_r491}' if vaxisLogic.r491_condition():
            # a30 # r491
            jump vaxis_s12

        '«Я не шпион. Меня случайно здесь заперли. Ты поможешь мне выбраться отсюда?»{#vaxis_s7_r492}' if vaxisLogic.r492_condition():
            # a31 # r492
            jump vaxis_s31

        'Ложь: «Да, я шпионю здесь за… трухлявыми».{#vaxis_s7_r493}' if vaxisLogic.r493_condition():
            # a32 # r493
            $ vaxisLogic.r493_action()
            jump vaxis_s8

        'Ложь: «Да, я шпионю здесь за… трухлявыми».{#vaxis_s7_r494}' if vaxisLogic.r494_condition():
            # a33 # r494
            $ vaxisLogic.r494_action()
            jump vaxis_s9

        '«Почему бы тебе не рассказать мне, что ТЫ здесь делаешь, пока я не позвал стражу».{#vaxis_s7_r495}' if vaxisLogic.r495_condition():
            # a34 # r495
            jump vaxis_s21

        '«Почему бы тебе не рассказать мне, что ТЫ здесь делаешь, пока я не позвал стражу».{#vaxis_s7_r496}' if vaxisLogic.r496_condition():
            # a35 # r496
            jump vaxis_s17

        '«Слушай, *зомби*, вопросы здесь задаю я. Рассказывай, что ты здесь делаешь, или я сделаю эту маскировку настоящей».{#vaxis_s7_r1306}' if vaxisLogic.r1306_condition():
            # a36 # r1306
            $ vaxisLogic.r1306_action()
            jump vaxis_s19

        '«Слушай, *зомби*, вопросы здесь задаю я. Рассказывай, что ты здесь делаешь, или я сделаю эту маскировку настоящей».{#vaxis_s7_r1348}' if vaxisLogic.r1348_condition():
            # a37 # r1348
            $ vaxisLogic.r1348_action()
            jump vaxis_s22

        '«Я должен идти. Прощай».{#vaxis_s7_r1349}':
            # a38 # r1349
            jump vaxis_s4


# s8 # say1350
label vaxis_s8: # from 7.2
    $ x = logic_get_know_vaxis_name()
    nr 'Он изучает тебя более пристально.{#vaxis_s8_1}'
    x '«Ты фпион? Ты иф яфейки?»{#vaxis_s8_2}'

    menu:
        '«А?»{#vaxis_s8_r4671}':
            # a39 # r4671
            jump vaxis_s10

        '«Яфейки?»{#vaxis_s8_r1352}':
            # a40 # r1352
            jump vaxis_s10

        'Ложь: «Да… Я искал тебя. И очень рад, что нашел».{#vaxis_s8_r1359}' if vaxisLogic.r1359_condition():
            # a41 # r1359
            $ vaxisLogic.r1359_action()
            jump vaxis_s24

        'Ложь: «Да… но я не могу сейчас об этом говорить, если ты понимаешь, что я имею в виду. Какова *твоя* миссия здесь?»{#vaxis_s8_r1360}' if vaxisLogic.r1360_condition():
            # a42 # r1360
            $ vaxisLogic.r1360_action()
            jump vaxis_s28

        'Ложь: «Да… но я не могу говорить об этом сейчас. Что ты делаешь здесь?»{#vaxis_s8_r1361}' if vaxisLogic.r1361_condition():
            # a43 # r1361
            $ vaxisLogic.r1361_action()
            jump vaxis_s28

        '«Э-э, сейчас у меня нет времени на разговоры… может, как-нибудь в другой раз».{#vaxis_s8_r1362}':
            # a44 # r1362
            jump vaxis_s4


# s9 # say1363
label vaxis_s9: # from 7.3
    $ x = logic_get_know_vaxis_name()
    nr 'Он изучает тебя более пристально.{#vaxis_s9_1}'
    x '«Ты фпион? Ты иф яфейки?»{#vaxis_s9_2}'

    menu:
        '«А?»{#vaxis_s9_r4359}':
            # a45 # r4359
            jump morte_s85  # EXTERN

        '«Яфейки?»{#vaxis_s9_r4360}':
            # a46 # r4360
            jump morte_s85  # EXTERN


# s10 # say4361
label vaxis_s10: # from 8.0 8.1
    $ x = logic_get_know_vaxis_name()
    nr 'Хмурясь, он шипит на тебя.{#vaxis_s10_1}'
    x '«Ты не фпион!»{#vaxis_s10_2}'
    nr 'Он гонит тебя прочь.{#vaxis_s10_3}'
    x '«Профь! Профь!»{#vaxis_s10_4}'

    menu:
        '«Сперва ты расскажешь мне, что ты здесь делаешь, или я позову стражу».{#vaxis_s10_r4362}' if vaxisLogic.r4362_condition():
            # a47 # r4362
            jump vaxis_s21

        '«Сперва ты расскажешь мне, что ты здесь делаешь, или я позову стражу».{#vaxis_s10_r4363}' if vaxisLogic.r4363_condition():
            # a48 # r4363
            jump vaxis_s17

        '«Отвечай на мои чертовы вопросы, или не успеешь пройти и трех шагов, как я сделаю эту маскировку настоящей».{#vaxis_s10_r4364}' if vaxisLogic.r4364_condition():
            # a49 # r4364
            $ vaxisLogic.r4364_action()
            jump vaxis_s19

        '«Отвечай на мои чертовы вопросы, или не успеешь пройти и трех шагов, как я сделаю эту маскировку настоящей».{#vaxis_s10_r4365}' if vaxisLogic.r4365_condition():
            # a50 # r4365
            $ vaxisLogic.r4365_action()
            jump vaxis_s22

        '«Ну хорошо, хорошо… Я ухожу».{#vaxis_s10_r4367}':
            # a51 # r4367
            jump vaxis_s4


# s11 # say4366
label vaxis_s11: # externs morte_s86
    nr 'Зомби согласно кивает. Кажется, ты замечаешь, что под слоем маскировки его распирает от гордости.{#vaxis_s11_1}'

    menu:
        '«Ты поможешь мне выбраться отсюда?»{#vaxis_s11_r4368}' if vaxisLogic.r4368_condition():
            # a52 # r4368
            jump vaxis_s12

        '«Так что же ты делаешь здесь?»{#vaxis_s11_r4369}':
            # a53 # r4369
            jump vaxis_s28

        'Ложь: «Так ты шпионишь для анархистов? Я тоже шпионю за трухлявыми… Но сейчас я не могу об этом говорить, если ты понимаешь, о чем я. Какова *твоя* миссия здесь?»{#vaxis_s11_r4370}' if vaxisLogic.r4370_condition():
            # a54 # r4370
            $ vaxisLogic.r4370_action()
            jump vaxis_s28

        'Ложь: «Так ты шпионишь для анархистов? Я тоже шпионю за трухлявыми… Но сейчас я не могу об этом говорить. Что ты здесь делаешь?»{#vaxis_s11_r4371}' if vaxisLogic.r4371_condition():
            # a55 # r4371
            $ vaxisLogic.r4371_action()
            jump vaxis_s28

        '«Э-э, сейчас у меня нет времени на разговоры… может, как-нибудь в другой раз».{#vaxis_s11_r4372}':
            # a56 # r4372
            jump vaxis_s4


# s12 # say4373
label vaxis_s12: # from 7.0 11.0
    $ x = logic_get_know_vaxis_name()
    nr 'Зомби выглядит заинтересованным.{#vaxis_s12_1}'
    x '«Пвоулемы? Фево ты натвовил?»{#vaxis_s12_2}'

    menu:
        '«Я очнулся на одной из плит на верхнем этаже».{#vaxis_s12_r4374}':
            # a57 # r4374
            jump vaxis_s13

        '«Каким-то образом я… оказался здесь запертым. Ты поможешь мне выбраться?»{#vaxis_s12_r4375}':
            # a58 # r4375
            jump vaxis_s31

        '«Поговорим об этом в другой раз».{#vaxis_s12_r4376}':
            # a59 # r4376
            jump vaxis_s4


# s13 # say4377
label vaxis_s13: # from 12.0
    $ x = logic_get_know_vaxis_name()
    nr 'Зомби смотрит на тебя как на умалишенного.{#vaxis_s13_1}'
    x '«Ты фпятил?»{#vaxis_s13_2}'

    menu:
        '«Да, я фпятил. Я окончательно фпятил».{#vaxis_s13_r4378}':
            # a60 # r4378
            jump vaxis_s14

        '«Фпятил? Что это значит?»{#vaxis_s13_r4379}' if vaxisLogic.r4379_condition():
            # a61 # r4379
            jump vaxis_s16

        '«Фпятил? Что это значит?»{#vaxis_s13_r4380}' if vaxisLogic.r4380_condition():
            # a62 # r4380
            jump morte_s87  # EXTERN

        '«Я знаю, в это трудно поверить, но я говорю правду: я очнулся из мертвых на одной из плит на верхнем этаже».{#vaxis_s13_r4381}':
            # a63 # r4381
            $ vaxisLogic.r4381_action()
            jump vaxis_s14

        '«Э-э, нет… На самом деле, я каким-то образом оказался здесь заперт. Ты поможешь мне выбраться?»{#vaxis_s13_r4382}':
            # a64 # r4382
            jump vaxis_s31

        '«Забудь о нашем разговоре. Мне нужно идти».{#vaxis_s13_r4383}':
            # a65 # r4383
            jump vaxis_s4


# s14 # say4384
label vaxis_s14: # from 13.0 13.3 15.0
    $ x = logic_get_know_vaxis_name()
    nr 'Он смотрит на тебя, затем начинает шипеть и отмахиваться от тебя.{#vaxis_s14_1}'
    x '«Ты фпятил! Профь от мея!»{#vaxis_s14_2}'

    menu:
        '«Я никуда не уйду. Рассказывай, что ты здесь делаешь, или я позову стражу».{#vaxis_s14_r4385}' if vaxisLogic.r4385_condition():
            # a66 # r4385
            jump vaxis_s21

        '«Я никуда не уйду. Рассказывай, что ты здесь делаешь, или я позову стражу».{#vaxis_s14_r4386}' if vaxisLogic.r4386_condition():
            # a67 # r4386
            jump vaxis_s17

        '«Сначала ты ответишь на мои чертовы вопросы, или я сделаю твою маскировку настоящей».{#vaxis_s14_r4387}' if vaxisLogic.r4387_condition():
            # a68 # r4387
            $ vaxisLogic.r4387_action()
            jump vaxis_s19

        '«Сначала ты ответишь на мои чертовы вопросы, или я сделаю твою маскировку настоящей».{#vaxis_s14_r4388}' if vaxisLogic.r4388_condition():
            # a69 # r4388
            $ vaxisLogic.r4388_action()
            jump vaxis_s22

        '«Ну ладно, ладно… прощай».{#vaxis_s14_r4389}':
            # a70 # r4389
            jump vaxis_s4


# s15 # say4390
label vaxis_s15: # externs morte_s88
    nr 'Фальшивый зомби недоверчиво смотрит на вас обоих.{#vaxis_s15_1}'

    menu:
        '«Это правда — я очнулся на одной из здешних плит».{#vaxis_s15_r4391}':
            # a71 # r4391
            $ vaxisLogic.r4391_action()
            jump vaxis_s14

        '«Э-э, прошу прощения… На самом деле, я оказался здесь заперт. Ты поможешь мне выбраться?»{#vaxis_s15_r4392}':
            # a72 # r4392
            jump vaxis_s31

        '«Неважно. Мне нужно идти».{#vaxis_s15_r4393}':
            # a73 # r4393
            jump vaxis_s4


# s16 # say4394
label vaxis_s16: # from 13.1
    $ x = logic_get_know_vaxis_name()
    nr 'Он смотрит на тебя, затем начинает шипеть и отмахиваться от тебя.{#vaxis_s16_1}'
    x '«Пуфтогоовый! Приурок! Профь от мея, пей! Профь!»{#vaxis_s16_2}'

    menu:
        '«Я никуда не уйду. Рассказывай, что ты здесь делаешь, или я позову стражу».{#vaxis_s16_r4395}' if vaxisLogic.r4395_condition():
            # a74 # r4395
            jump vaxis_s21

        '«Я никуда не уйду. Рассказывай, что ты здесь делаешь, или я позову стражу».{#vaxis_s16_r4396}' if vaxisLogic.r4396_condition():
            # a75 # r4396
            jump vaxis_s17

        '«Сначала ты ответишь на мои чертовы вопросы, или я сделаю твою маскировку настоящей».{#vaxis_s16_r4397}' if vaxisLogic.r4397_condition():
            # a76 # r4397
            $ vaxisLogic.r4397_action()
            jump vaxis_s19

        '«Сначала ты ответишь на мои чертовы вопросы, или я сделаю твою маскировку настоящей».{#vaxis_s16_r4398}' if vaxisLogic.r4398_condition():
            # a77 # r4398
            $ vaxisLogic.r4398_action()
            jump vaxis_s22

        '«Ну хорошо, хорошо… Я ухожу».{#vaxis_s16_r4399}':
            # a78 # r4399
            jump vaxis_s4


# s17 # say4400
label vaxis_s17: # from 7.5 10.1 14.1 16.1 25.3 27.3
    $ x = logic_get_know_vaxis_name()
    nr 'На миг он кажется испуганным, потом осматривает тебя, и по его лицу расползается ухмылка.{#vaxis_s17_1}'
    x '«Ты подеиффя фо мной фвоим фекветом, я подеюфь фвоим ф *тоой*. Фдефь у мея пряфуффа друфья, у тея фдефь *никоо*. Тее фдефь не мефто. Твуфьявые тея уют. Я фбегу».{#vaxis_s17_2}'

    menu:
        '«Ты не сможешь сбежать, если я УБЬЮ тебя. А теперь отвечай, или я сделаю твою маскировку настоящей».{#vaxis_s17_r4401}' if vaxisLogic.r4401_condition():
            # a79 # r4401
            $ vaxisLogic.r4401_action()
            jump vaxis_s18

        '«Ты не сможешь сбежать, если я УБЬЮ тебя. А теперь отвечай, или я сделаю твою маскировку настоящей».{#vaxis_s17_r4402}' if vaxisLogic.r4402_condition():
            # a80 # r4402
            $ vaxisLogic.r4402_action()
            jump vaxis_s22

        '«Тогда гори в аду. Я ухожу».{#vaxis_s17_r4403}':
            # a81 # r4403
            jump vaxis_s4


# s18 # say4404
label vaxis_s18: # from 17.0
    $ x = logic_get_know_vaxis_name()
    nr 'Глаза зомби превращаются в щелочки, он шипит на тебя:{#vaxis_s18_1}'
    x '«Ты ПЫТАЕФФЯ фапифать мея ф кьигу мертфых? У мея фдефь пвяфуффа двуфья, у тея фдефь *никоо*. Твониф мея — они тея пвиконфят».{#vaxis_s18_2}'

    menu:
        '«Я рискну. Готовься к смерти».{#vaxis_s18_r4405}':
            # a82 # r4405
            $ vaxisLogic.r4405_action()
            jump vaxis_attack

        '«Тогда гори в аду. Я ухожу. Тебе лучше быть настороже… *зомби*».{#vaxis_s18_r4406}':
            # a83 # r4406
            jump vaxis_s4


# s19 # say4407
label vaxis_s19: # from 7.6 10.2 14.2 16.2 25.4 27.4
    $ x = logic_get_know_vaxis_name()
    nr 'На миг он кажется испуганным, потом осматривает тебя, и по его лицу расползается ухмылка.{#vaxis_s19_1}'
    x '«ТЫ пытаеффя фапифать МЕЯ ф кьигу мертфых? У мея фдефь пвячуффа двуфья, у тея фдефь *никоо*. Твонеф мея — они тея пвиконфят».{#vaxis_s19_2}'

    menu:
        '«Я рискну. Готовься к смерти».{#vaxis_s19_r4408}':
            # a84 # r4408
            $ vaxisLogic.r4408_action()
            jump vaxis_attack

        '«Что, если я раскрою твою маскировку перед стражей?»{#vaxis_s19_r4409}' if vaxisLogic.r4409_condition():
            # a85 # r4409
            jump vaxis_s21

        '«Что, если я раскрою твою маскировку перед стражей?»{#vaxis_s19_r4410}' if vaxisLogic.r4410_condition():
            # a86 # r4410
            jump vaxis_s20

        '«Тогда гори в аду. Я ухожу. Тебе лучше быть настороже… *зомби*».{#vaxis_s19_r4411}':
            # a87 # r4411
            jump vaxis_s4


# s20 # say4412
label vaxis_s20: # from 19.2
    $ x = logic_get_know_vaxis_name()
    nr 'Глаза зомби превращаются в щелочки, он шипит на тебя:{#vaxis_s20_1}'
    x '«Ты подеилфя фо мной фвоим фекретом, я подеюфь фоим ф *тоой*. Фдефь у мея прячуффа друфья, у тея фдефь *никоо*. Твуфьявые тея уют. Я фбегу».{#vaxis_s20_2}'

    menu:
        '«Это был твой последний шанс, труп. Готовься к смерти».{#vaxis_s20_r4413}':
            # a88 # r4413
            $ vaxisLogic.r4413_action()
            jump vaxis_attack

        '«Тогда гори в аду. Я ухожу. Тебе лучше быть настороже, *зомби*».{#vaxis_s20_r4414}':
            # a89 # r4414
            jump vaxis_s4


# s21 # say4415
label vaxis_s21: # from 7.4 10.0 14.0 16.0 19.1 25.2 27.2
    $ x = logic_get_know_vaxis_name()
    nr 'Недобрый блеск в твоих глазах не оставляет от его самонадеянности и следа.{#vaxis_s21_1}'
    x '«Не-не-не! Не наа фвать фтражу!»{#vaxis_s21_2}'
    nr 'Он явно напуган.{#vaxis_s21_3}'
    x '«Я-я-я фпионю фа твуфявыми, говою, фео увиву. Ни-нифео больфе».{#vaxis_s21_4}'

    menu:
        '«Шпионишь? Для кого?»{#vaxis_s21_r4416}':
            # a90 # r4416
            jump vaxis_s23

        '«И чем же, по твоим наблюдениям, занимаются тленные?»{#vaxis_s21_r4417}':
            # a91 # r4417
            jump vaxis_s29

        '«У меня есть другие вопросы…»{#vaxis_s21_r4418}':
            # a92 # r4418
            jump vaxis_s43

        '«Это все, что я хотел узнать. Прощай, *зомби*».{#vaxis_s21_r4419}':
            # a93 # r4419
            jump vaxis_dispose


# s22 # say4420
label vaxis_s22: # from 7.7 10.3 14.3 16.3 17.1 25.5 27.5
    $ x = logic_get_know_vaxis_name()
    x '«Не-не-не! Не твогаи мея!»{#vaxis_s22_1}'
    nr 'Факт того, что ты явно превосходишь зомби в грубой силе, очевидно, повлиял на его решение, и от его самонадеянности не осталось и следа.{#vaxis_s22_2}'
    x '«Я-я-я фпионю за твуфьявыми, говою, фео увиву. Ни-нифео больфе».{#vaxis_s22_3}'

    menu:
        '«Шпионишь? Для кого?»{#vaxis_s22_r4421}':
            # a94 # r4421
            jump vaxis_s23

        '«И чем же, по твоим наблюдениям, занимаются тленные?»{#vaxis_s22_r4422}':
            # a95 # r4422
            jump vaxis_s29

        '«У меня есть другие вопросы…»{#vaxis_s22_r4423}':
            # a96 # r4423
            jump vaxis_s43

        '«Это все, что я хотел знать. А теперь прочь с дороги, *зомби*».{#vaxis_s22_r4424}':
            # a97 # r4424
            jump vaxis_dispose


# s23 # say4425
label vaxis_s23: # from 21.0 22.0
    nr 'Зомби в страхе умолкает, ничего не желая говорить.{#vaxis_s23_1}'

    menu:
        '«Ну же, для кого ты следишь за этим местом?»{#vaxis_s23_r4426}' if vaxisLogic.r4426_condition():
            # a98 # r4426
            jump vaxis_s70

        '«Ну же, для кого ты следишь за этим местом?»{#vaxis_s23_r4427}' if vaxisLogic.r4427_condition():
            # a99 # r4427
            jump morte_s89  # EXTERN

        '«Если ты скажешь мне прямо сейчас, для кого ты шпионишь, будет ГОРАЗДО меньше боли».{#vaxis_s23_r4428}' if vaxisLogic.r4428_condition():
            # a100 # r4428
            $ vaxisLogic.r4428_action()
            jump vaxis_s70

        '«Если ты скажешь мне прямо сейчас, для кого ты шпионишь, будет ГОРАЗДО меньше боли».{#vaxis_s23_r4429}' if vaxisLogic.r4429_condition():
            # a101 # r4429
            $ vaxisLogic.r4429_action()
            jump morte_s89  # EXTERN

        '«Тогда неважно. Так чем же, по твоим наблюдениям, занимаются тленные?»{#vaxis_s23_r4430}':
            # a102 # r4430
            jump vaxis_s29

        '«Есть еще кое-что, что я хочу узнать…»{#vaxis_s23_r4431}':
            # a103 # r4431
            jump vaxis_s43

        '«Тогда забудь об этом. Прощай, *зомби*».{#vaxis_s23_r4432}':
            # a104 # r4432
            jump vaxis_dispose


# s24 # say4433
label vaxis_s24: # from 3.3 6.3 8.2
    $ x = logic_get_know_vaxis_name()
    x '«Иффефь мея? Вафем?»{#vaxis_s24_1}'
    nr 'Он искоса смотрит на тебя.{#vaxis_s24_2}'
    x '«У тея соофение двя мея?»{#vaxis_s24_3}'

    menu:
        'Ложь: «Да, у меня есть сообщение для тебя».{#vaxis_s24_r4434}':
            # a105 # r4434
            $ vaxisLogic.r4434_action()
            jump vaxis_s26

        '«Сообщение от кого?»{#vaxis_s24_r4435}':
            # a106 # r4435
            jump vaxis_s27

        '«Нет, у меня нет сообщений».{#vaxis_s24_r4436}':
            # a107 # r4436
            jump vaxis_s25


# s25 # say4437
label vaxis_s25: # from 24.2
    $ x = logic_get_know_vaxis_name()
    nr 'Яростно шепчет.{#vaxis_s25_1}'
    x '«Тада фео тее *надо*, пей?!»{#vaxis_s25_2}'

    menu:
        '«Я ищу выход отсюда. Ты можешь мне помочь?»{#vaxis_s25_r4438}' if vaxisLogic.r4438_condition():
            # a108 # r4438
            jump vaxis_s31

        '«Мне нужны кое-какие сведения…»{#vaxis_s25_r4439}':
            # a109 # r4439
            jump vaxis_s43

        '«Рассказывай, что ты здесь делаешь, или я позову стражу».{#vaxis_s25_r4440}' if vaxisLogic.r4440_condition():
            # a110 # r4440
            jump vaxis_s21

        '«Рассказывай, что ты здесь делаешь, или я позову стражу».{#vaxis_s25_r4441}' if vaxisLogic.r4441_condition():
            # a111 # r4441
            jump vaxis_s17

        '«Отвечай на мои чертовы вопросы, или не успеешь пройти и трех шагов, как я сделаю эту маскировку настоящей».{#vaxis_s25_r4442}' if vaxisLogic.r4442_condition():
            # a112 # r4442
            $ vaxisLogic.r4442_action()
            jump vaxis_s19

        '«Отвечай на мои чертовы вопросы, или не успеешь пройти и трех шагов, как я сделаю эту маскировку настоящей».{#vaxis_s25_r4443}' if vaxisLogic.r4443_condition():
            # a113 # r4443
            $ vaxisLogic.r4443_action()
            jump vaxis_s22

        '«Извини, что побеспокоил тебя… кем бы ты ни был. Прощай».{#vaxis_s25_r4444}':
            # a114 # r4444
            jump vaxis_s4


# s26 # say4445
label vaxis_s26: # from 24.0
    $ x = logic_get_know_vaxis_name()
    x '«Какое фоофение?»{#vaxis_s26_1}'

    menu:
        '«Ты должен сообщить мне свое задание».{#vaxis_s26_r4446}' if vaxisLogic.r4446_condition():
            # a115 # r4446
            jump vaxis_s28

        'Ложь: «У меня к тебе новые распоряжения».{#vaxis_s26_r4447}' if vaxisLogic.r4447_condition():
            # a116 # r4447
            $ vaxisLogic.r4447_action()
            jump vaxis_s30

        'Ложь: «У меня… к тебе новые распоряжения».{#vaxis_s26_r4448}' if vaxisLogic.r4448_condition():
            # a117 # r4448
            $ vaxisLogic.r4448_action()
            jump vaxis_s30

        '«Извини, у меня нет сообщений».{#vaxis_s26_r4449}':
            # a118 # r4449
            jump vaxis_s27

        '«Неважно. Извини за беспокойство. Прощай».{#vaxis_s26_r4450}':
            # a119 # r4450
            jump vaxis_s27


# s27 # say4451
label vaxis_s27: # from 24.1 26.3 26.4
    $ x = logic_get_know_vaxis_name()
    nr 'Его глаза в ярости сужаются.{#vaxis_s27_1}'
    x '«Ты не фьяфной. Фто ты?»{#vaxis_s27_2}'

    menu:
        '«Я ищу выход отсюда. Ты можешь мне помочь?»{#vaxis_s27_r4452}' if vaxisLogic.r4452_condition():
            # a120 # r4452
            jump vaxis_s31

        '«Мне нужны кое-какие сведения…»{#vaxis_s27_r4453}':
            # a121 # r4453
            jump vaxis_s43

        '«Рассказывай, что ты здесь делаешь, или я позову стражу».{#vaxis_s27_r4454}' if vaxisLogic.r4454_condition():
            # a122 # r4454
            jump vaxis_s21

        '«Рассказывай, что ты здесь делаешь, или я позову стражу».{#vaxis_s27_r4455}' if vaxisLogic.r4455_condition():
            # a123 # r4455
            jump vaxis_s17

        '«*Зомби*, вопросы здесь задаю я. Рассказывай, что ты здесь делаешь, или я сделаю эту маскировку настоящей».{#vaxis_s27_r4456}' if vaxisLogic.r4456_condition():
            # a124 # r4456
            $ vaxisLogic.r4456_action()
            jump vaxis_s19

        '«*Зомби*, вопросы здесь задаю я. Рассказывай, что ты здесь делаешь, или я сделаю эту маскировку настоящей».{#vaxis_s27_r4457}' if vaxisLogic.r4457_condition():
            # a125 # r4457
            $ vaxisLogic.r4457_action()
            jump vaxis_s22

        '«Извини, что побеспокоил тебя… кем бы ты ни был. Прощай».{#vaxis_s27_r4458}':
            # a126 # r4458
            jump vaxis_s4


# s28 # say4459
label vaxis_s28: # from 8.3 8.4 11.1 11.2 11.3 26.0 30.0 43.5
    $ x = logic_get_know_vaxis_name()
    x '«Я фпионю фа твуфьявыми. Говою, чео вифу. Нифео больфе».{#vaxis_s28_1}'

    menu:
        '«И чем же, по твоим наблюдениям, занимаются тленные?»{#vaxis_s28_r4460}':
            # a127 # r4460
            jump vaxis_s29

        '«Понятно. Я хотел спросить у тебя еще кое-что…»{#vaxis_s28_r4461}':
            # a128 # r4461
            jump vaxis_s43

        '«Это все, что я хотел узнать. Прощай».{#vaxis_s28_r4462}':
            # a129 # r4462
            jump vaxis_dispose


# s29 # say4463
label vaxis_s29: # from 21.1 22.1 23.4 28.0 70.1 71.2
    $ x = logic_get_know_vaxis_name()
    x '«Нифео. Они нифео ни деают. Нифео не нафол. Твупы, твупы, пвофто твупы. Твуфьявые *нифео* ни деают».{#vaxis_s29_1}'
    nr 'Его глаза деловито сужаются.{#vaxis_s29_2}'
    x '«Буу дальфе фледить».{#vaxis_s29_3}'

    menu:
        '«Понятно. Я хотел спросить у тебя еще кое-что…»{#vaxis_s29_r4464}':
            # a130 # r4464
            jump vaxis_s43

        '«Это все, что я хотел узнать. Прощай».{#vaxis_s29_r4465}':
            # a131 # r4465
            jump vaxis_dispose


# s30 # say4466
label vaxis_s30: # from 26.1 26.2
    $ x = logic_get_know_vaxis_name()
    nr 'Он сужает глаза, будто пытаясь тебя вычислить.{#vaxis_s30_1}'
    x '«Какие вафповявения?»{#vaxis_s30_2}'

    menu:
        '«Доложи свою миссию».{#vaxis_s30_r4467}':
            # a132 # r4467
            jump vaxis_s28

        '«Мне нужно найти выход, через который можно уйти незамеченным».{#vaxis_s30_r4468}':
            # a133 # r4468
            jump vaxis_s49

        '«Я твой сменщик. Сообщи все, что тебе удалось узнать, отдай все вещи и покинь это место».{#vaxis_s30_r4469}' if vaxisLogic.r4469_condition():
            # a134 # r4469
            $ vaxisLogic.j64517_s30_r4469_action()
            $ vaxisLogic.r4469_action()
            jump vaxis_s72

        '«Я здесь, чтобы помочь тебе во всем, в чем ты будешь нуждаться».{#vaxis_s30_r4470}':
            # a135 # r4470
            jump vaxis_s35

        '«Твои распоряжения будут переданы в свое время. Я вернусь».{#vaxis_s30_r4471}':
            # a136 # r4471
            jump vaxis_dispose


# s31 # say4472
label vaxis_s31: # from 7.1 12.1 13.4 15.1 25.0 27.0 50.0
    $ x = logic_get_know_vaxis_name()
    nr 'Он на секунду умолкает, затем медленно, будто бы понимающе кивает.{#vaxis_s31_1}'
    x '«Пофеу я доувен помоать тее?»{#vaxis_s31_2}'

    menu:
        '«Потому что мне нужна твоя помощь».{#vaxis_s31_r4473}':
            # a137 # r4473
            jump vaxis_s32

        '«Мы можем помочь друг другу. Что ты хочешь взамен?»{#vaxis_s31_r4474}' if vaxisLogic.r4474_condition():
            # a138 # r4474
            $ vaxisLogic.r4474_action()
            jump vaxis_s35

        '«Потому что я не хотел бы *раскрывать* твою маскировочку… если только ты не поможешь мне».{#vaxis_s31_r4475}' if vaxisLogic.r4475_condition():
            # a139 # r4475
            jump vaxis_s33

        '«Потому что я не хотел бы *раскрывать* твою маскировочку… если только ты не поможешь мне».{#vaxis_s31_r4476}' if vaxisLogic.r4476_condition():
            # a140 # r4476
            jump vaxis_s34

        '«Тебе, похоже, больше по душе маскироваться под труп, чем БЫТЬ им. Годится такая причина?»{#vaxis_s31_r4477}' if vaxisLogic.r4477_condition():
            # a141 # r4477
            $ vaxisLogic.r4477_action()
            jump vaxis_s75

        '«Тебе, похоже, больше по душе маскироваться под труп, чем БЫТЬ им. Годится такая причина?»{#vaxis_s31_r4478}' if vaxisLogic.r4478_condition():
            # a142 # r4478
            $ vaxisLogic.r4478_action()
            jump vaxis_s33

        '«Забудь о нашей встрече. Я должен идти. Прощай».{#vaxis_s31_r4479}':
            # a143 # r4479
            jump vaxis_s4


# s32 # say4480
label vaxis_s32: # from 31.0
    $ x = logic_get_know_vaxis_name()
    nr 'Зомби едва усмехается.{#vaxis_s32_1}'
    x '«Фем *нао* фео-то, но нифто нифео *не дает*. *Дай* мне фео-нить, и, *мовет*, я помоу».{#vaxis_s32_2}'

    menu:
        '«Что тебе надо?»{#vaxis_s32_r4481}':
            # a144 # r4481
            jump vaxis_s35

        '«Как на счет того, чтобы ты мне помог, а я взамен не стал звать стражу?»{#vaxis_s32_r4482}' if vaxisLogic.r4482_condition():
            # a145 # r4482
            jump vaxis_s33

        '«Как на счет того, чтобы ты мне помог, а я взамен не стал звать стражу?»{#vaxis_s32_r4483}' if vaxisLogic.r4483_condition():
            # a146 # r4483
            jump vaxis_s34

        '«Ты похож на того, кто скорее выбрал бы остаться в живых, чем ответил мне „нет“. Итак… в последний раз спрашиваю: как мне отсюда выбраться?»{#vaxis_s32_r4484}' if vaxisLogic.r4484_condition():
            # a147 # r4484
            $ vaxisLogic.r4484_action()
            jump vaxis_s75

        '«Ты похож на того, кто скорее выбрал бы остаться в живых, чем ответил мне „нет“. Итак… в последний раз спрашиваю: как мне отсюда выбраться?»{#vaxis_s32_r4485}' if vaxisLogic.r4485_condition():
            # a148 # r4485
            $ vaxisLogic.r4485_action()
            jump vaxis_s33

        '«Неинтересно. Прощай».{#vaxis_s32_r4486}':
            # a149 # r4486
            jump vaxis_s4


# s33 # say4487
label vaxis_s33: # from 31.2 31.5 32.1 32.4 34.1 35.2 35.5 75.0
    $ x = logic_get_know_vaxis_name()
    nr 'Он оглядывает тебя с ног до головы, как бы примериваясь, сможет ли он с тобой справиться, останавливается на шрамах и решает не делать этого.{#vaxis_s33_1}'
    x '«Хм-м. Ты мовефь убевать фееф поуталы».{#vaxis_s33_2}'

    menu:
        '«Порталы?»{#vaxis_s33_r4672}':
            # a150 # r4672
            $ vaxisLogic.r4672_action()
            jump vaxis_s50


# s34 # say4491
label vaxis_s34: # from 31.3 32.2 35.3
    $ x = logic_get_know_vaxis_name()
    nr 'На миг он кажется испуганным, потом осматривает тебя, и по его лицу расползается ухмылка.{#vaxis_s34_1}'
    x '«Ты подеиффя фо мной фвоим фекветом, я подеюфь фвоим ф *тоой*. Фдефь у мея пряфуффа друфья, у тея фдефь *никоо*. Тее фдефь не мефто. Твуфьявые тея уют. Я фбегу».{#vaxis_s34_2}'

    menu:
        '«Ты не сможешь сбежать, если я УБЬЮ тебя. А теперь отвечай, или я сделаю твою маскировку настоящей».{#vaxis_s34_r4489}' if vaxisLogic.r4489_condition():
            # a151 # r4489
            $ vaxisLogic.r4489_action()
            jump vaxis_s74

        '«Ты не сможешь сбежать, если я УБЬЮ тебя. А теперь отвечай, или я сделаю твою маскировку настоящей».{#vaxis_s34_r4490}' if vaxisLogic.r4490_condition():
            # a152 # r4490
            $ vaxisLogic.r4490_action()
            jump vaxis_s33

        '«Тогда гори в аду. Я ухожу».{#vaxis_s34_r4492}':
            # a153 # r4492
            jump vaxis_s4


# s35 # say4493
label vaxis_s35: # from 30.3 31.1 32.0
    $ x = logic_get_know_vaxis_name()
    x '«Тее нуно найти *кьюч* дья мея. Нуен желефный кьюч к байвамовофной комуафе».{#vaxis_s35_1}'

    menu:
        '«Ты имеешь в виду этот ключ?»{#vaxis_s35_r4494}' if vaxisLogic.r4494_condition():
            # a154 # r4494
            $ vaxisLogic.r4494_action()
            jump vaxis_s42

        '«Хорошо. Где этот ключ?»{#vaxis_s35_r4495}':
            # a155 # r4495
            jump vaxis_s36

        '«У меня нет времени на это. Помоги мне сбежать, или я позову стражу».{#vaxis_s35_r4496}' if vaxisLogic.r4496_condition():
            # a156 # r4496
            $ vaxisLogic.r4496_action()
            jump vaxis_s33

        '«У меня нет времени на это. Помоги мне сбежать, или я позову стражу».{#vaxis_s35_r4497}' if vaxisLogic.r4497_condition():
            # a157 # r4497
            $ vaxisLogic.r4497_action()
            jump vaxis_s34

        '«Я не собираюсь ничего тебе приносить. Помоги мне сбежать, или я прямо здесь и сейчас сверну тебе шею».{#vaxis_s35_r4498}' if vaxisLogic.r4498_condition():
            # a158 # r4498
            $ vaxisLogic.r4498_action()
            jump vaxis_s75

        '«Я не собираюсь ничего тебе приносить. Помоги мне сбежать, или я прямо здесь и сейчас сверну тебе шею».{#vaxis_s35_r4499}' if vaxisLogic.r4499_condition():
            # a159 # r4499
            $ vaxisLogic.r4499_action()
            jump vaxis_s33

        '«Нет, спасибо. Может быть, в другой раз».{#vaxis_s35_r4500}':
            # a160 # r4500
            jump vaxis_s4


# s36 # say4501
label vaxis_s36: # from 35.1 58.2
    $ x = logic_get_know_vaxis_name()
    x '«Он у твуфьявой».{#vaxis_s36_1}'
    nr 'Он показывает на свои глаза.{#vaxis_s36_2}'
    x '«У нее воутые глафифи…»{#vaxis_s36_3}'
    nr 'Затем он делает движение руками, похожее на стрижку ножницами.{#vaxis_s36_4}'
    x '«Лефвия на пайфах».{#vaxis_s36_5}'

    menu:
        '«Я уже с ней встречался. Вот ключ».{#vaxis_s36_r4502}' if vaxisLogic.r4502_condition():
            # a161 # r4502
            $ vaxisLogic.r4502_action()
            jump vaxis_s42

        '«Тленная… с желтыми глазами и лезвиями на пальцах? Я ее уже видел в бальзамационной. Погоди… я скоро вернусь с ключом».{#vaxis_s36_r64520}' if vaxisLogic.r64520_condition():
            # a162 # r64520
            $ vaxisLogic.j64519_s36_r64520_action()
            jump vaxis_s38

        '«Тленная… с желтыми глазами и лезвиями на пальцах? Хорошо. Я вернусь с ключом».{#vaxis_s36_r4503}' if vaxisLogic.r4503_condition():
            # a163 # r4503
            $ vaxisLogic.j64518_s36_r4503_action()
            jump vaxis_s38

        '«Судя по твоему описанию, эта тленная выглядит довольно привлекательно. Ты уверен, что не хочешь, чтобы я вас познакомил?»{#vaxis_s36_r4504}':
            # a164 # r4504
            $ vaxisLogic.r4504_action()
            jump vaxis_s37


# s37 # say4505
label vaxis_s37: # from 36.3
    nr 'Зомби моргает. Кажется, он тебя не понял.{#vaxis_s37_1}'

    menu:
        '«Это была шутка, видишь ли, ты… а, забудь, найду я твой ключ».{#vaxis_s37_r4506}' if vaxisLogic.r4506_condition():
            # a165 # r4506
            $ vaxisLogic.j64519_s37_r4506_action()
            jump vaxis_s38

        '«Это была шутка, видишь ли, ты… а, забудь, найду я твой ключ».{#vaxis_s37_r66150}' if vaxisLogic.r66150_condition():
            # a166 # r66150
            $ vaxisLogic.j64518_s37_r66150_action()
            jump vaxis_s38


# s38 # say4507
label vaxis_s38: # from 36.1 36.2 37.0 37.1
    $ x = logic_get_know_vaxis_name()
    nr 'Зомби косо на тебя смотрит.{#vaxis_s38_1}'
    x '«Ефи тея поимают, не говои никоу обо мне, или я добеусь до тея, когда ты буешь фпать».{#vaxis_s38_2}'

    menu:
        '«Я найду твой треклятый ключ… но лучше бы тебе быть поосторожнее со своими угрозами, слышишь меня?»{#vaxis_s38_r4508}' if vaxisLogic.r4508_condition():
            # a167 # r4508
            $ vaxisLogic.r4508_action()
            jump vaxis_dispose

        '«Я еще вернусь».{#vaxis_s38_r4509}' if vaxisLogic.r4509_condition():
            # a168 # r4509
            $ vaxisLogic.r4509_action()
            jump vaxis_dispose

        '«Я найду твой треклятый ключ… но лучше бы тебе быть поосторожнее со своими угрозами, слышишь меня?»{#vaxis_s38_r4510}' if vaxisLogic.r4510_condition():
            # a169 # r4510
            jump vaxis_dispose

        '«Я еще вернусь».{#vaxis_s38_r4511}' if vaxisLogic.r4511_condition():
            # a170 # r4511
            jump vaxis_dispose


# s39 # say4512
label vaxis_s39: # from 43.12
    $ x = logic_get_know_vaxis_name()
    x '«Я ховоф ф мафкироуке. У мея ефть фрамы. Я наил на сея мноо байфамируфеи фидкофти. Иф мея поуфифя ХООФЫЙ фомби».{#vaxis_s39_1}'
    nr 'Зомби хихикает через зашитые губы, потом стучит себя по голове.{#vaxis_s39_2}'
    x '«Твуфяки тууупые».{#vaxis_s39_3}'

    jump morte_s93  # EXTERN


# s40 # say4514
label vaxis_s40: # -
    $ x = logic_get_know_vaxis_name()
    x '«Я фду тея фдефь. Найди кьюч».{#vaxis_s40_1}'
    nr 'Зомби улыбается мертвецким оскалом.{#vaxis_s40_2}'
    x '«Потом я помоу тее».{#vaxis_s40_3}'

    menu:
        '«Если я найду его, то принесу».{#vaxis_s40_r4515}':
            # a171 # r4515
            jump vaxis_dispose

        '«Тогда забудь об этом».{#vaxis_s40_r4516}':
            # a172 # r4516
            jump vaxis_dispose


# s41 # say4517
label vaxis_s41: # -
    $ x = logic_get_know_vaxis_name()
    nr 'Глаза зомби расширяются, он протягивает руку и прищелкивает пальцами.{#vaxis_s41_1}'
    x '«Дай его мие».{#vaxis_s41_2}'

    menu:
        '«Секундочку. Я хочу кое-что взамен».{#vaxis_s41_r4518}':
            # a173 # r4518
            jump vaxis_dispose

        '«На, бери».{#vaxis_s41_r4519}':
            # a174 # r4519
            $ vaxisLogic.r4519_action()
            jump vaxis_dispose


# s42 # say4520
label vaxis_s42: # from 35.0 36.0 58.0 58.1
    $ x = logic_get_know_vaxis_name()
    nr 'Глаза зомби расширены, он выхватывает ключ из твоей руки. Затем он поворачивается, все время кивая.{#vaxis_s42_1}'
    x '«Хорофо… хорофо».{#vaxis_s42_2}'

    menu:
        '«А теперь… Как мне выбраться отсюда?»{#vaxis_s42_r4521}' if vaxisLogic.r4521_condition():
            # a175 # r4521
            $ vaxisLogic.j64521_s42_r4521_action()
            $ vaxisLogic.r4521_action()
            jump vaxis_s49

        '«А теперь… Есть кое-что, о чем я хочу узнать…»{#vaxis_s42_r4522}' if vaxisLogic.r4522_condition():
            # a176 # r4522
            $ vaxisLogic.j64521_s42_r4522_action()
            $ vaxisLogic.r4522_action()
            jump vaxis_s43


# s43 # say4523
label vaxis_s43: # from 21.2 22.2 23.5 25.1 27.1 28.1 29.0 42.1 44.2 45.1 46.2 47.2 48.0 51.1 52.0 53.0 54.0 56.0 58.3 59.0 60.3 61.4 62.3 63.1 64.0 70.2 71.3 77.0
    $ x = logic_get_know_vaxis_name()
    x '«Фто ты хофефь уфнать?»{#vaxis_s43_1}'

    menu:
        '«Как мне выбраться отсюда?»{#vaxis_s43_r64508}' if vaxisLogic.r64508_condition():
            # a177 # r64508
            jump vaxis_s49

        '«Как мне выбраться отсюда?»{#vaxis_s43_r4524}' if vaxisLogic.r4524_condition():
            # a178 # r4524
            jump vaxis_s49

        '«Еще раз — где тот портал, о котором ты говорил?»{#vaxis_s43_r4525}' if vaxisLogic.r4525_condition():
            # a179 # r4525
            jump vaxis_s52

        '«Ты можешь замаскировать меня под зомби?»{#vaxis_s43_r4526}' if vaxisLogic.r4526_condition():
            # a180 # r4526
            jump vaxis_s63

        '«Ты можешь еще раз замаскировать меня под зомби?»{#vaxis_s43_r4527}' if vaxisLogic.r4527_condition():
            # a181 # r4527
            jump vaxis_s63

        '«Что ты здесь делаешь?»{#vaxis_s43_r4528}' if vaxisLogic.r4528_condition():
            # a182 # r4528
            jump vaxis_s28

        '«Ты знаешь кого-нибудь по имени Фарод?»{#vaxis_s43_r4673}' if vaxisLogic.r4673_condition():
            # a183 # r4673
            jump vaxis_s44

        '«Я потерял дневник. Тебе ничего такого не попадалось?»{#vaxis_s43_r4530}' if vaxisLogic.r4530_condition():
            # a184 # r4530
            jump vaxis_s47

        '«Что ты можешь сказать о Дхолле?»{#vaxis_s43_r4531}' if vaxisLogic.r4531_condition():
            # a185 # r4531
            jump vaxis_s53

        '«Что ты можешь сказать о Дейонарре?»{#vaxis_s43_r4532}' if vaxisLogic.r4532_condition():
            # a186 # r4532
            jump vaxis_s54

        '«Что ты можешь сказать о Соэго?»{#vaxis_s43_r4533}' if vaxisLogic.r4533_condition():
            # a187 # r4533
            jump vaxis_s55

        '«Как ты приобрел такой внешний вид?»{#vaxis_s43_r4534}' if vaxisLogic.r4534_condition():
            # a188 # r4534
            jump vaxis_s60

        '«Как ты приобрел такой внешний вид?»{#vaxis_s43_r4535}' if vaxisLogic.r4535_condition():
            # a189 # r4535
            jump vaxis_s39

        '«Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи».{#vaxis_s43_r4536}':
            # a190 # r4536
            jump vaxis_dispose


# s44 # say4537
label vaxis_s44: # from 43.6
    $ x = logic_get_know_vaxis_name()
    x '«Фа-ОД?»{#vaxis_s44_1}'
    nr 'Нахмурившись, зомби напряженно думает.{#vaxis_s44_2}'
    x '«Я… фвыфал, фто он фиет де-то ф Уле».{#vaxis_s44_3}'
    nr 'Он качает головой.{#vaxis_s44_4}'
    x '«Нефнаю где».{#vaxis_s44_5}'
    nr 'Он снова хмурится.{#vaxis_s44_6}'
    x '«Твуфявые фодят ф ума, они не ЛЮЯТ Фа-ода».{#vaxis_s44_7}'

    menu:
        '«Улей?»{#vaxis_s44_r4538}':
            # a191 # r4538
            jump vaxis_s45

        '«А почему тленные не любят Фарода?»{#vaxis_s44_r4539}':
            # a192 # r4539
            $ vaxisLogic.j64522_s44_r4539_action()
            jump vaxis_s46

        '«Есть еще кое-что, что я хочу узнать…»{#vaxis_s44_r4540}':
            # a193 # r4540
            jump vaxis_s43

        '«Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи».{#vaxis_s44_r4541}':
            # a194 # r4541
            jump vaxis_dispose


# s45 # say4542
label vaxis_s45: # from 44.0
    $ x = logic_get_know_vaxis_name()
    x '«Твуффобы фнауви».{#vaxis_s45_1}'

    menu:
        '«А почему тленные не любят Фарода?»{#vaxis_s45_r4543}':
            # a195 # r4543
            $ vaxisLogic.j64522_s45_r4543_action()
            jump vaxis_s46

        '«Есть еще кое-что, что я хочу узнать…»{#vaxis_s45_r4544}':
            # a196 # r4544
            jump vaxis_s43

        '«Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи».{#vaxis_s45_r4545}':
            # a197 # r4545
            jump vaxis_dispose


# s46 # say4546
label vaxis_s46: # from 44.1 45.0
    $ x = logic_get_know_vaxis_name()
    x '«Он фбофик. Пвинофит твупы ф Моуг, пводает их твуфвым. Пвинофит МУОГО твупоф. Твуфявые ненают, откуда он их беет. Дуают, он пифет пьей в кьигу мертфых».{#vaxis_s46_1}'

    menu:
        '«Э-э… что?»{#vaxis_s46_r4547}' if vaxisLogic.r4547_condition():
            # a198 # r4547
            jump vaxis_s48

        '«Э-э… что?»{#vaxis_s46_r4548}' if vaxisLogic.r4548_condition():
            # a199 # r4548
            jump morte_s91  # EXTERN

        '«А… Есть кое-что еще, о чем я хочу узнать…»{#vaxis_s46_r4549}':
            # a200 # r4549
            jump vaxis_s43

        '«Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи».{#vaxis_s46_r4550}':
            # a201 # r4550
            jump vaxis_dispose


# s47 # say4551
label vaxis_s47: # from 43.7
    $ x = logic_get_know_vaxis_name()
    x '«Ненают. Какой-то пей обфифтил тея?»{#vaxis_s47_1}'

    menu:
        '«Э-э… что?»{#vaxis_s47_r4552}' if vaxisLogic.r4552_condition():
            # a202 # r4552
            jump vaxis_s48

        '«Э-э… что?»{#vaxis_s47_r4553}' if vaxisLogic.r4553_condition():
            # a203 # r4553
            jump morte_s92  # EXTERN

        '«А… Есть кое-что еще, о чем я хочу узнать…»{#vaxis_s47_r4554}':
            # a204 # r4554
            jump vaxis_s43

        '«Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи».{#vaxis_s47_r4555}':
            # a205 # r4555
            jump vaxis_dispose


# s48 # say4556
label vaxis_s48: # from 46.0 47.0
    nr 'Зомби пытается сказать, умолкает, пытается снова, затем вздыхает. Очевидно, что доходчивей он сказать не сможет.{#vaxis_s48_1}'

    menu:
        '«А… Есть кое-что еще, о чем я хочу узнать…»{#vaxis_s48_r4557}':
            # a206 # r4557
            jump vaxis_s43

        '«Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи».{#vaxis_s48_r4558}':
            # a207 # r4558
            jump vaxis_dispose


# s49 # say4559
label vaxis_s49: # from 30.1 42.0 43.0 43.1
    $ x = logic_get_know_vaxis_name()
    nr 'Зомби ворчит.{#vaxis_s49_1}'
    x '«Ты мовешь убевафь феев поуталы».{#vaxis_s49_2}'
    nr 'Он взмахивает руками.{#vaxis_s49_3}'
    x '«Пуф».{#vaxis_s49_4}'

    menu:
        '«Порталы? Что за порталы?»{#vaxis_s49_r4560}':
            # a208 # r4560
            jump vaxis_s50


# s50 # say4563
label vaxis_s50: # from 33.0 49.0
    $ x = logic_get_know_vaxis_name()
    x '«Поуталы…»{#vaxis_s50_1}'
    nr 'Зомби окидывает широким жестом пространство вокруг себя.{#vaxis_s50_2}'
    x '«Поуталы вефде».{#vaxis_s50_3}'

    menu:
        '«Ты можешь показать мне один из этих порталов?»{#vaxis_s50_r4564}' if vaxisLogic.r4564_condition():
            # a209 # r4564
            jump vaxis_s31

        '«Ты можешь показать мне один из этих порталов?»{#vaxis_s50_r64509}' if vaxisLogic.r64509_condition():
            # a210 # r64509
            jump vaxis_s51

        '«Ты можешь показать мне один из этих порталов?»{#vaxis_s50_r64510}' if vaxisLogic.r64510_condition():
            # a211 # r64510
            jump vaxis_s51

        '«Ты можешь показать мне один из этих порталов?»{#vaxis_s50_r64511}' if vaxisLogic.r64511_condition():
            # a212 # r64511
            jump vaxis_s51


# s51 # say4567
label vaxis_s51: # from 50.1 50.2 50.3 72.0
    $ x = logic_get_know_vaxis_name()
    nr 'Зомби кивает.{#vaxis_s51_1}'
    x '«Тее надо выити, пойти ф арку на певом этаже, февео-фападный фал… Тее нувна кофть паица, фогнутоо в кьюк…»{#vaxis_s51_2}'
    nr 'Он поднимает указательный палец и сгибает его в крюк.{#vaxis_s51_3}'
    x '«Ефли у тея кьюч, иди в авку и пуыгай ф тайную гуобицу. И ты выбралфя отфюда. Тайный выфод».{#vaxis_s51_4}'
    nr 'Он энергично кивает.{#vaxis_s51_5}'
    x '«Там ты мовефь ОДОФНУТЬ».{#vaxis_s51_6}'

    menu:
        '«Кость согнутого пальца? А где можно найти ее?»{#vaxis_s51_r64527}' if vaxisLogic.r64527_condition():
            # a213 # r64527
            $ vaxisLogic.j64528_s51_r64527_action()
            $ vaxisLogic.r64527_action()
            jump vaxis_s77

        '«У меня есть другие вопросы…»{#vaxis_s51_r4568}' if vaxisLogic.r4568_condition():
            # a214 # r4568
            $ vaxisLogic.j64529_s51_r4568_action()
            $ vaxisLogic.r4568_action()
            jump vaxis_s43

        '«Арка в северо-западной комнате, на первом этаже? Хорошо, я проверю».{#vaxis_s51_r4569}' if vaxisLogic.r4569_condition():
            # a215 # r4569
            $ vaxisLogic.j64529_s51_r4569_action()
            $ vaxisLogic.r4569_action()
            jump vaxis_dispose


# s52 # say4570
label vaxis_s52: # from 43.2
    $ x = logic_get_know_vaxis_name()
    x '«Фуфай! Фапомиай!»{#vaxis_s52_1}'
    nr 'В голосе зомби слышна раздраженность.{#vaxis_s52_2}'
    x '«Арка, пеувый этаж, феверо-фападная коуната…»{#vaxis_s52_3}'
    nr 'Он поднимает указательный палец и сгибает его.{#vaxis_s52_4}'
    x '«Тее нувна кофть паица, фогнутая. Ты попаефь ф тайную гуобицу. Тайный выфод. Там ты мовефь ОДОФНУТЬ».{#vaxis_s52_5}'

    menu:
        '«Есть еще кое-что, что я хочу узнать…»{#vaxis_s52_r4571}':
            # a216 # r4571
            jump vaxis_s43

        '«Арка в северо-западной комнате, на первом этаже, открывается костью изогнутого пальца? Хорошо, на этот раз запомнил».{#vaxis_s52_r4572}':
            # a217 # r4572
            jump vaxis_dispose


# s53 # say4573
label vaxis_s53: # from 43.8
    $ x = logic_get_know_vaxis_name()
    x '«Пифец».{#vaxis_s53_1}'
    nr 'Пожимает плечами.{#vaxis_s53_2}'
    x '«Фтарый. Вовтый».{#vaxis_s53_3}'

    menu:
        '«Полагаю, добавить больше нечего. Я хочу знать кое-что еще…»{#vaxis_s53_r4574}':
            # a218 # r4574
            jump vaxis_s43

        '«Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи».{#vaxis_s53_r4575}':
            # a219 # r4575
            jump vaxis_dispose


# s54 # say4576
label vaxis_s54: # from 43.9
    $ x = logic_get_know_vaxis_name()
    x '«Э?»{#vaxis_s54_1}'
    nr 'Хмурится.{#vaxis_s54_2}'
    x '«Фто она?»{#vaxis_s54_3}'

    menu:
        '«Забудь. Я хочу знать кое-что еще…»{#vaxis_s54_r4577}':
            # a220 # r4577
            jump vaxis_s43

        '«Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи».{#vaxis_s54_r4578}':
            # a221 # r4578
            jump vaxis_dispose


# s55 # say4579
label vaxis_s55: # from 43.10
    $ x = logic_get_know_vaxis_name()
    x '«Пвоводник. На пеувом этаже. Фто ты хофефь фнать о нем?»{#vaxis_s55_1}'

    menu:
        '«Что ты знаешь о нем?»{#vaxis_s55_r4580}':
            # a222 # r4580
            $ vaxisLogic.r4580_action()
            jump vaxis_s56

        '«Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи».{#vaxis_s55_r4581}':
            # a223 # r4581
            jump vaxis_dispose


# s56 # say4582
label vaxis_s56: # from 55.0
    $ x = logic_get_know_vaxis_name()
    x '«Фтвааный. Не твуфявый, не анавфифт. Гуава двугие…»{#vaxis_s56_1}'
    nr 'Пожимает плечами.{#vaxis_s56_2}'
    x '«Как у квыфы. Фтванно».{#vaxis_s56_3}'

    menu:
        '«Хорошо, что только он странный в этом месте. Я хочу знать кое-что еще…»{#vaxis_s56_r4583}':
            # a224 # r4583
            jump vaxis_s43

        '«Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи».{#vaxis_s56_r4584}':
            # a225 # r4584
            jump vaxis_dispose


# s57 # say4585
label vaxis_s57: # - # IF ~  GlobalGT("Vaxis","GLOBAL",0)
    nr 'Ты видишь фальшивого зомби. Ты удивлен его маскировке… его дыхание едва заметно, ты практически не можешь уловить его.{#vaxis_s57_1}'

    menu:
        '«Приветствую».{#vaxis_s57_r4586}' if vaxisLogic.r4586_condition():
            # a226 # r4586
            jump vaxis_s58

        '«Приветствую».{#vaxis_s57_r4587}' if vaxisLogic.r4587_condition():
            # a227 # r4587
            jump vaxis_s58

        '«Приветствую».{#vaxis_s57_r4588}' if vaxisLogic.r4588_condition():
            # a228 # r4588
            jump vaxis_s59

        '«Приветствую».{#vaxis_s57_r4589}' if vaxisLogic.r4589_condition():
            # a229 # r4589
            jump vaxis_s58

        'Оставить его в покое.{#vaxis_s57_r4590}':
            # a230 # r4590
            jump vaxis_dispose


# s58 # say4591
label vaxis_s58: # from 57.0 57.1 57.3
    $ x = logic_get_know_vaxis_name()
    nr 'Зомби быстро оглядывается вокруг, высматривая соглядатая, затем поворачивается к тебе.{#vaxis_s58_1}'
    x '«Фто?»{#vaxis_s58_2}'

    menu:
        '«Вот ключ к бальзамационной комнате, который ты хотел».{#vaxis_s58_r4592}' if vaxisLogic.r4592_condition():
            # a231 # r4592
            $ vaxisLogic.r4592_action()
            jump vaxis_s42

        '«Вот ключ к бальзамационной комнате, который ты хотел».{#vaxis_s58_r4593}' if vaxisLogic.r4593_condition():
            # a232 # r4593
            $ vaxisLogic.r4593_action()
            jump vaxis_s42

        '«Еще раз — где тот ключ, о котором ты говорил?»{#vaxis_s58_r4594}' if vaxisLogic.r4594_condition():
            # a233 # r4594
            jump vaxis_s36

        '«У меня есть несколько вопросов к тебе…»{#vaxis_s58_r4595}':
            # a234 # r4595
            jump vaxis_s43

        '«Неважно».{#vaxis_s58_r4596}':
            # a235 # r4596
            jump vaxis_dispose


# s59 # say4597
label vaxis_s59: # from 57.2
    $ x = logic_get_know_vaxis_name()
    nr 'Зомби быстро оглядывается вокруг, высматривая соглядатая, затем шипит на тебя.{#vaxis_s59_1}'
    x '«Ухои! Вон!»{#vaxis_s59_2}'

    menu:
        '«Нет. Сначала у меня несколько вопросов к тебе…»{#vaxis_s59_r4598}':
            # a236 # r4598
            jump vaxis_s43

        '«Тогда неважно».{#vaxis_s59_r4599}' if vaxisLogic.r4599_condition():
            # a237 # r4599
            jump vaxis_s4

        '«Тогда неважно».{#vaxis_s59_r4600}' if vaxisLogic.r4600_condition():
            # a238 # r4600
            jump vaxis_dispose


# s60 # say4601
label vaxis_s60: # from 43.11
    $ x = logic_get_know_vaxis_name()
    x '«Я ховоф ф мафкироуке. У мея ефть фрамы. Я наил на сея мноо байфамируфеи фидкофти. Иф мея поуфифя ХООФЫЙ фомби».{#vaxis_s60_1}'
    nr 'Зомби хихикает через зашитые губы, потом стучит себя по голове.{#vaxis_s60_2}'
    x '«Твуфяки тууупые».{#vaxis_s60_3}'

    menu:
        '«Ага, уж кто тупой, так это они. Это точно».{#vaxis_s60_r4602}':
            # a239 # r4602
            jump vaxis_s61

        '«Это не больно?»{#vaxis_s60_r4603}':
            # a240 # r4603
            jump vaxis_s62

        '«Довольно неплохая маскировка. Скажи… а ты можешь и меня замаскировать под зомби?»{#vaxis_s60_r4604}' if vaxisLogic.r4604_condition():
            # a241 # r4604
            jump vaxis_s63

        '«Есть еще кое-что, что я хочу узнать…»{#vaxis_s60_r4605}':
            # a242 # r4605
            jump vaxis_s43

        '«Мне нужно идти. Прощай».{#vaxis_s60_r4606}':
            # a243 # r4606
            jump vaxis_dispose


# s61 # say4607
label vaxis_s61: # from 60.0
    $ x = logic_get_know_vaxis_name()
    nr 'Зомби определенно не понял сарказма, энергично кивая словам.{#vaxis_s61_1}'
    x '«Тупие твуфявые. Ив мея ХОВОФЫЙ фомби».{#vaxis_s61_2}'

    menu:
        '«Это не больно?»{#vaxis_s61_r4608}':
            # a244 # r4608
            jump vaxis_s62

        '«Довольно неплохая маскировка. А ты можешь и меня замаскировать под зомби?»{#vaxis_s61_r4609}' if vaxisLogic.r4609_condition():
            # a245 # r4609
            jump vaxis_s63

        '«Есть еще кое-что, что я хочу узнать…»{#vaxis_s61_r4610}' if vaxisLogic.r4610_condition():
            # a246 # r4610
            jump vaxis_s64

        '«Мне нужно идти. Прощай».{#vaxis_s61_r4611}' if vaxisLogic.r4611_condition():
            # a247 # r4611
            jump vaxis_s64

        '«Есть еще кое-что, что я хочу узнать…»{#vaxis_s61_r4612}' if vaxisLogic.r4612_condition():
            # a248 # r4612
            jump vaxis_s43

        '«Мне нужно идти. Прощай».{#vaxis_s61_r4613}' if vaxisLogic.r4613_condition():
            # a249 # r4613
            jump vaxis_dispose


# s62 # say4614
label vaxis_s62: # from 60.1 61.0
    $ x = logic_get_know_vaxis_name()
    nr 'Он смотрит на твои шрамы.{#vaxis_s62_1}'
    x '«А как ты думаефь? По мие, нет, не офень».{#vaxis_s62_2}'
    nr 'Бьет себя по груди.{#vaxis_s62_3}'
    x '«Я КИЕПКИЙ».{#vaxis_s62_4}'

    menu:
        '«Довольно неплохая маскировка. А ты можешь и меня замаскировать под зомби?»{#vaxis_s62_r4615}' if vaxisLogic.r4615_condition():
            # a250 # r4615
            jump vaxis_s63

        '«Есть еще кое-что, что я хочу узнать…»{#vaxis_s62_r4616}' if vaxisLogic.r4616_condition():
            # a251 # r4616
            jump vaxis_s64

        '«Мне нужно идти. Прощай».{#vaxis_s62_r4617}' if vaxisLogic.r4617_condition():
            # a252 # r4617
            jump vaxis_s64

        '«Есть еще кое-что, что я хочу узнать…»{#vaxis_s62_r4618}' if vaxisLogic.r4618_condition():
            # a253 # r4618
            jump vaxis_s43

        '«Мне нужно идти. Прощай».{#vaxis_s62_r4674}' if vaxisLogic.r4674_condition():
            # a254 # r4674
            jump vaxis_dispose


# s63 # say4619
label vaxis_s63: # from 43.3 43.4 60.2 61.1 62.0 64.1 64.2
    $ x = logic_get_know_vaxis_name()
    nr 'Что-то бормоча, он несколько раз оглядывает тебя с ног до головы, затем кивает.{#vaxis_s63_1}'
    x '«Уху. Мие нуна банка баифама».{#vaxis_s63_2}'
    nr 'Показывает на шрамы на твоей груди.{#vaxis_s63_3}'
    x '«И игоука ф ниткой».{#vaxis_s63_4}'

    menu:
        '«На, бери».{#vaxis_s63_r4620}' if vaxisLogic.r4620_condition():
            # a255 # r4620
            $ vaxisLogic.r4620_action()
            jump vaxis_s65

        '«Я подумаю над этим. У меня есть еще несколько вопросов…»{#vaxis_s63_r4621}':
            # a256 # r4621
            $ vaxisLogic.r4621_action()
            jump vaxis_s43

        '«Может, быть в другой раз, спасибо… Прощай».{#vaxis_s63_r4622}':
            # a257 # r4622
            $ vaxisLogic.r4622_action()
            jump vaxis_dispose

        '«Бальзамирующая жидкость и нитка? Пойду, поищу их».{#vaxis_s63_r4623}':
            # a258 # r4623
            $ vaxisLogic.r4623_action()
            jump vaxis_dispose


# s64 # say4624
label vaxis_s64: # from 61.2 61.3 62.1 62.2
    $ x = logic_get_know_vaxis_name()
    nr 'Странным взглядом он осматривает тебя с ног до головы.{#vaxis_s64_1}'
    x '«Ты будефь ХОВОФЫМ фомби. Мовно фделать из тея фомби? ХОВОФАЯ мафкиофка».{#vaxis_s64_2}'

    menu:
        '«Спасибо. У меня есть другие вопросы к тебе…»{#vaxis_s64_r4625}':
            # a259 # r4625
            $ vaxisLogic.r4625_action()
            jump vaxis_s43

        '«Конечно. Ты сможешь сделать это?»{#vaxis_s64_r4626}':
            # a260 # r4626
            jump vaxis_s63

        '«Почему бы и нет? Я и так чувствую себя ходячим мертвецом».{#vaxis_s64_r4627}':
            # a261 # r4627
            jump vaxis_s63

        '«Нет… нет… так тоже неплохо. Прощай».{#vaxis_s64_r4628}':
            # a262 # r4628
            $ vaxisLogic.r4628_action()
            jump vaxis_dispose


# s65 # say4629
label vaxis_s65: # from 63.0
    nr 'Зомби берет у тебя предметы и приступает к работе…{#vaxis_s65_1}'

    menu:
        'Попробовать не двигаться.{#vaxis_s65_r4630}' if vaxisLogic.r4630_condition():
            # a263 # r4630
            $ vaxisLogic.r4630_action()
            jump vaxis_s66

        'Попробовать не двигаться.{#vaxis_s65_r4631}' if vaxisLogic.r4631_condition():
            # a264 # r4631
            $ vaxisLogic.r4631_action()
            jump morte_s94  # EXTERN

        'Попробовать не двигаться.{#vaxis_s65_r4632}' if vaxisLogic.r4632_condition():
            # a265 # r4632
            $ vaxisLogic.r4632_action()
            jump vaxis_s66

        'Попробовать не двигаться.{#vaxis_s65_r64533}' if vaxisLogic.r64533_condition():
            # a266 # r64533
            $ vaxisLogic.r64533_action()
            jump vaxis_s66


# s66 # say4633
label vaxis_s66: # from 65.0 65.2 65.3
    nr 'Зомби обильно натирает твое тело бальзамирующей жидкостью, затем широкими стежками зашивает несколько шрамов. Начав с ног, он медленно поднимается наверх, зашивая в конце концов твои губы.{#vaxis_s66_1}'

    menu:
        '«Ммм-ммф-ммм… Фпафибо».{#vaxis_s66_r4634}' if vaxisLogic.r4634_condition():
            # a267 # r4634
            jump vaxis_s67

        '«Ммм-ммф-ммм… Фпафибо».{#vaxis_s66_r4635}' if vaxisLogic.r4635_condition():
            # a268 # r4635
            $ vaxisLogic.r4635_action()
            jump morte_s95  # EXTERN

        '«Ммм-ммф-ммм… Фпафибо».{#vaxis_s66_r4636}' if vaxisLogic.r4636_condition():
            # a269 # r4636
            jump vaxis_s67


# s67 # say4637
label vaxis_s67: # from 66.0 66.2
    $ x = logic_get_know_vaxis_name()
    nr 'Зомби держит тебя за руку.{#vaxis_s67_1}'
    x '«Офтововно! Вафгоов вафофет фвы, науфив мафкивку. Фомби не говоят. Поняу? Говои медвенно, офтовоно».{#vaxis_s67_2}'

    menu:
        '«Ммф… ммм. Я… понимаю».{#vaxis_s67_r4638}':
            # a270 # r4638
            $ vaxisLogic.j64531_s67_r4638_action()
            jump vaxis_s68


# s68 # say4639
label vaxis_s68: # from 67.0
    $ x = logic_get_know_vaxis_name()
    nr 'Зомби хмурится.{#vaxis_s68_1}'
    x '«Мафкирофка не деужится доуго… бальфам выфыхает, фвы рвутфя».{#vaxis_s68_2}'
    nr 'Он жмет плечами.{#vaxis_s68_3}'
    x '«Фнаружи Морга от нее нифего не офтанетфя. Не бегай! Ефли ты побежифь, то науфифь вфю мафкирофку».{#vaxis_s68_4}'

    menu:
        'Снова кивнуть, уйти.{#vaxis_s68_r4640}':
            # a271 # r4640
            jump vaxis_dispose


# s69 # say4641
label vaxis_s69: # -
    $ x = logic_get_know_vaxis_name()
    nr '„Зомби“ хмурится.{#vaxis_s69_1}'
    vaxis '«Фде-то я тея виел. Мы не виелифь раньфе?»{#vaxis_s69_2}'

    menu:
        '«Может быть. Где ты меня видел?»{#vaxis_s69_r4642}':
            # a272 # r4642
            jump vaxis_dispose

        'X.{#vaxis_s69_r4643}':
            # a273 # r4643
            jump vaxis_dispose


# s70 # say4644
label vaxis_s70: # from 23.0 23.2 71.0 71.1
    nr 'К твоему удивлению, зомби отступается от тебя… Он начинает со страхом озираться.{#vaxis_s70_1}'

    menu:
        '«Не хочешь говорить? Тогда приготовься кричать».{#vaxis_s70_r4645}':
            # a274 # r4645
            $ vaxisLogic.r4645_action()
            jump vaxis_attack

        '«Тогда неважно. Так чем же, по твоим наблюдениям, занимаются тленные?»{#vaxis_s70_r4646}':
            # a275 # r4646
            jump vaxis_s29

        '«Есть еще кое-что, что я хочу узнать…»{#vaxis_s70_r4647}':
            # a276 # r4647
            jump vaxis_s43

        '«Тогда забудь об этом. Прощай, *зомби*».{#vaxis_s70_r4648}':
            # a277 # r4648
            jump vaxis_dispose


# s71 # say4649
label vaxis_s71: # externs morte_s90
    nr 'Зомби смотрит на вас обоих с явной опаской, продолжая молчать… но что-то в его выражении говорит тебе, что предположение Морта верно.{#vaxis_s71_1}'

    menu:
        '«Значит, анархисты? Так за кем вы тут следите?»{#vaxis_s71_r4650}':
            # a278 # r4650
            jump vaxis_s70

        '«Если ты скажешь мне прямо сейчас, почему анархисты следят за этим местом, боли будет ГОРАЗДО меньше».{#vaxis_s71_r4651}':
            # a279 # r4651
            $ vaxisLogic.r4651_action()
            jump vaxis_s70

        '«Тогда неважно. Так чем же, по твоим наблюдениям, занимаются тленные?»{#vaxis_s71_r4652}':
            # a280 # r4652
            jump vaxis_s29

        '«Есть еще кое-что, что я хочу узнать…»{#vaxis_s71_r4653}':
            # a281 # r4653
            jump vaxis_s43

        '«Тогда забудь об этом. Прощай, *зомби*».{#vaxis_s71_r4654}':
            # a282 # r4654
            jump vaxis_dispose


# s72 # say4655
label vaxis_s72: # from 30.2
    $ x = logic_get_know_vaxis_name()
    nr 'Зомби выглядит сбитым с толку, но затем пожимает плечами, начиная копаться в своей заляпанной тунике.{#vaxis_s72_1}'
    x '«Вфе тихо, твувявыя не февелятся, нифего новоо с пофледнего отфета».{#vaxis_s72_2}'
    nr 'Спустя несколько секунд он протягивает тебе какие-то предметы, затем ворчит.{#vaxis_s72_3}'
    x '«Вот».{#vaxis_s72_4}'
    nr 'Судя по запаху, они прятались очень глубоко, чтобы их невозможно было найти в случае обыска.{#vaxis_s72_5}'
    x '«Я фкоро уйду».{#vaxis_s72_6}'

    menu:
        '«Уйдешь? Как?»{#vaxis_s72_r4656}' if vaxisLogic.r4656_condition():
            # a283 # r4656
            jump vaxis_s51

        '«Отлично. Прощай, Ваксис».{#vaxis_s72_r64532}' if vaxisLogic.r64532_condition():
            # a284 # r64532
            jump vaxis_dispose


# s73 # say4658
label vaxis_s73: # -
    $ x = logic_get_know_vaxis_name()
    nr 'Зомби ворчит.{#vaxis_s73_1}'
    x '«Поутал в арке — пеувый этав, феверо-фападная коумата, нувен кофтяной паиец дья откуывания».{#vaxis_s73_2}'
    nr 'Он кивает.{#vaxis_s73_3}'
    x '«Удафи».{#vaxis_s73_4}'

    menu:
        '«Э-э… Ладно».{#vaxis_s73_r4659}':
            # a285 # r4659
            jump vaxis_dispose


# s74 # say4660
label vaxis_s74: # from 34.0
    $ x = logic_get_know_vaxis_name()
    nr 'Глаза зомби превращаются в щелочки, он шипит на тебя:{#vaxis_s74_1}'
    x '«Ты ПЫТАЕФФЯ фапифать мея ф кьигу мертфых? У мея фдефь пвяфуффа двуфья, у тея фдефь *никоо*. Твониф мея — они тея пвиконфят».{#vaxis_s74_2}'

    menu:
        '«Это был твой последний шанс. Готовься к смерти».{#vaxis_s74_r4661}':
            # a286 # r4661
            $ vaxisLogic.r4661_action()
            jump vaxis_attack

        '«Тогда гори в аду. Я ухожу. Тебе лучше быть настороже… *зомби*!»{#vaxis_s74_r4662}':
            # a287 # r4662
            jump vaxis_s4


# s75 # say4663
label vaxis_s75: # from 31.4 32.3 35.4
    $ x = logic_get_know_vaxis_name()
    nr 'На миг он кажется испуганным, потом осматривает тебя, и по его лицу расползается ухмылка.{#vaxis_s75_1}'
    x '«ТЫ пытаеффя фапифать МЕЯ ф кьигу мертфых? У мея фдефь пвячуффа двуфья, у тея фдефь *никоо*. Твонеф мея — они тея пвиконфят».{#vaxis_s75_2}'

    menu:
        '«А что, если я раскрою твою маскировку страже?»{#vaxis_s75_r4664}' if vaxisLogic.r4664_condition():
            # a288 # r4664
            jump vaxis_s33

        '«А что, если я раскрою твою маскировку страже?»{#vaxis_s75_r4665}' if vaxisLogic.r4665_condition():
            # a289 # r4665
            jump vaxis_s76

        '«Я рискну. Готовься к смерти».{#vaxis_s75_r4666}':
            # a290 # r4666
            $ vaxisLogic.r4666_action()
            jump vaxis_attack

        '«Тогда гори в аду. Я ухожу. Тебе лучше быть настороже… *зомби*».{#vaxis_s75_r4667}':
            # a291 # r4667
            jump vaxis_s4


# s76 # say4668
label vaxis_s76: # from 75.1
    $ x = logic_get_know_vaxis_name()
    nr 'Глаза зомби превращаются в щелочки, он шипит на тебя.{#vaxis_s76_1}'
    x '«Ты подеилфя фо мной фвоим фекретом, я подеюфь фоим ф *тоой*. Фдефь у мея прячуффа друфья, у тея фдефь *никоо*. Твуфьявые тея уют. Я фбегу».{#vaxis_s76_2}'

    menu:
        '«Это был твой последний шанс, труп. Готовься к смерти».{#vaxis_s76_r4669}':
            # a292 # r4669
            $ vaxisLogic.r4669_action()
            jump vaxis_attack

        '«Тогда гори в аду. Я ухожу. Тебе лучше быть настороже… *зомби*».{#vaxis_s76_r4670}':
            # a293 # r4670
            jump vaxis_s4


# s77 # say64523
label vaxis_s77: # from 51.0
    $ x = logic_get_know_vaxis_name()
    nr 'Он пожимает плечами.{#vaxis_s77_1}'
    x '«Доувен быть де-то фдефь… Ифи на фкладах навеуху. Мовет быть, там».{#vaxis_s77_2}'

    menu:
        '«Хорошо. У меня есть другие вопросы…»{#vaxis_s77_r64524}':
            # a294 # r64524
            jump vaxis_s43

        '«Хорошо. Я проверю наверху, есть ли там изогнутая кость пальца, потом пойду на первый этаж, к одной из арок в северо-западной комнате. Все ясно».{#vaxis_s77_r64525}':
            # a295 # r64525
            jump vaxis_dispose


label vaxis_attack:
    nr "Ты набрасываешься на него. Он очень хочет жить, но ты сильнее и быстрее."
    nr "Через несколько секунд тело падает на спину. В его глазах остался страх, как у крысы перед мышеловкой."
    $ vaxisLogic.kill_vaxis()
    jump vaxis_dispose
