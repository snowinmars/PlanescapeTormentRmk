init 10 python:
    from dlgs.mortuary.vaxis_logic import VaxisLogic
    vaxisLogic = VaxisLogic(renpy.store.global_settings_manager)

    def _get_know_vaxis_name(self):
        return vaxis if vaxisLogic.get_know_vaxis_name() else vaxis_unknown


# ###
# Original:  DLG/DVAXIS.DLG  #  orphan: vaxis_s69
# ###


label start_vaxis_talk:
    call vaxis_init
    jump vaxis_s57
label start_vaxis_talk_first:
    call vaxis_init
    jump vaxis_s0
label start_vaxis_kill:
    call vaxis_init
    jump vaxis_kill
label start_vaxis_kill_first:
    call vaxis_init
    jump vaxis_kill_first
label vaxis_init:
    $ vaxisLogic.vaxis_init()
    scene bg mortuary_f2r6
    show vaxis_img default at center_left_down
    return
label vaxis_dispose:
    hide vaxis_img
    jump show_graphics_menu


# s0 # say453
label vaxis_s0:  # - # IF ~  Global("Vaxis","GLOBAL",0)
    teller 'Неуклюжий труп смотрит на тебя пустым взглядом. На его лбу вырезан номер 821, а его губы крепко зашиты. От тела исходит легкий запах формальдегида.'

    menu:
        'Итак… что тут у нас интересного?' if vaxisLogic.r454_condition():
            # r0 # reply454
            $ vaxisLogic.r454_action()
            jump vaxis_s5

        'Итак… что тут у нас интересного?' if vaxisLogic.r455_condition():
            # r1 # reply455
            jump vaxis_s5

        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if vaxisLogic.r456_condition():
            # r2 # reply456
            jump vaxis_s5

        'Использовать на трупе свою способность История костей.' if vaxisLogic.r457_condition():
            # r3 # reply457
            jump vaxis_s1

        'Было приятно поболтать с тобой. Прощай.':
            # r4 # reply458
            jump vaxis_s5

        'Оставить труп в покое.':
            # r5 # reply459
            jump vaxis_dispose


# s1 # say460
label vaxis_s1:  # from 0.3 # IF ~  False()
    teller 'Довольно странно, но твоя способность не работает с этим трупом.'

    menu:
        'Ткнуть его в глаз.':
            # r6 # reply461
            $ vaxisLogic.r461_action()
            jump vaxis_s2

        'Оставить труп в покое.':
            # r7 # reply462
            jump vaxis_dispose


# s2 # say463
label vaxis_s2:  # from 1.0
    $ gsm.set_meet_vaxis(True)
    teller 'После твоего тычка в глаз труп, рефлекторно закрыв руками лицо, издает нечленораздельный вопль. Он начинает что-то невнятно бормотать, сыпля проклятиями в твой адрес.'

    menu:
        'Ты не зомби! Кто ты?':
            # r8 # reply464
            $ vaxisLogic.r464_action()
            jump vaxis_s6

        'Зачем ты замаскировался под зомби?':
            # r9 # reply465
            $ vaxisLogic.r465_action()
            jump vaxis_s6

        'Уйти. Быстро.':
            # r10 # reply466
            $ vaxisLogic.r466_action()
            jump vaxis_s3


# s3 # say467
label vaxis_s3:  # from 2.2 5.2
    $ gsm.set_meet_vaxis(True)
    teller 'Ты уже почти отвернулся, как зомби начинает что-то бормотать… кажется, он пытается что-то сказать, но с зашитым ртом это сделать трудно.'
    vaxis_unknown 'Фто ТЫ? Фто тее нао?'

    menu:
        'Я ищу выход отсюда. Ты можешь мне помочь?' if vaxisLogic.r468_condition():
            # r11 # reply468
            jump vaxis_s7

        'Кто ты?':
            # r12 # reply469
            jump vaxis_s7

        'Рассказывай, кто ты такой, или я позову стражу.':
            # r13 # reply470
            jump vaxis_s7

        'Ложь: Чего… Я искал тебя.' if vaxisLogic.r472_condition():
            # r14 # reply472
            $ vaxisLogic.r472_action()
            jump vaxis_s24

        '*Зомби*, вопросы здесь задаю я. Рассказывай, что ты здесь делаешь, или я сделаю эту маскировку настоящей.':
            # r15 # reply473
            $ vaxisLogic.r473_action()
            jump vaxis_s7

        'Извини, что побеспокоил тебя… кем бы ты ни был. Прощай.':
            # r16 # reply474
            jump vaxis_s4


# s4 # say471
label vaxis_s4:  # from 3.5 6.5 7.8 8.5 10.4 11.4 12.2 13.5 14.4 15.2 16.4 17.2 18.1 19.3 20.1 25.6 27.6 31.6 32.5 34.2 35.6 59.1 74.1 75.3 76.1
    $ x = _get_know_vaxis_name()
    teller 'Ты уже почти отвернулся, как зомби начинает издавать низкое протяжное ворчание.'
    x 'Никоу ничео не говои пво МЕЯ. Моучи. Не говои НИФЕО твуфявым.'
    teller 'Он прикладывает палец к губам.'
    x 'Фффф. После этого он проводит пальцем по горлу. Или ты уфнефь нафегда. ПОЯЛ мея?'

    menu:
        'Ты пытаешься меня ЗАПУГАТЬ? Ну все… готовься к смерти.':
            # r17 # reply475
            $ vaxisLogic.r475_action()
            jump vaxis_attack

        'Ложь: Я даже и *не думал* ничего говорить тленным о тебе. Прощай.':
            # r18 # reply476
            $ vaxisLogic.r476_action()
            jump vaxis_dispose

        'Правда: Обещаю, что я ничего не скажу о тебе тленным. Прощай.':
            # r19 # reply477
            $ vaxisLogic.r477_action()
            jump vaxis_dispose

        'Как хочешь. У тебя свои дела, у меня — свои. Прощай.':
            # r20 # reply478
            jump vaxis_dispose


# s5 # say479
label vaxis_s5:  # from 0.0 0.1 0.2 0.4
    $ gsm.set_meet_vaxis(True)
    teller 'Зомби от неожиданности моргает при твоем обращении.'
    vaxis_unknown 'А? Фто?'

    menu:
        'Ты не зомби! Кто ты?':
            # r21 # reply480
            $ vaxisLogic.r480_action()
            jump vaxis_s6

        'Зачем ты замаскировался под зомби?':
            # r22 # reply481
            $ vaxisLogic.r481_action()
            jump vaxis_s6

        'Уйти. Быстро.':
            # r23 # reply482
            $ vaxisLogic.r482_action()
            jump vaxis_s3


# s6 # say483
label vaxis_s6:  # from 2.0 2.1 5.0 5.1
    $ x = _get_know_vaxis_name()
    teller 'Зомби пытается что-то сказать сквозь зашитые губы. На его лице странная смесь испуга и злобы.'
    x 'Фто ТЫ? Фего тее нао?'

    menu:
        'Я ищу выход отсюда. Ты можешь мне помочь?' if vaxisLogic.r484_condition():
            # r24 # reply484
            jump vaxis_s7

        'Кто ты?':
            # r25 # reply485
            jump vaxis_s7

        'Рассказывай, кто ты такой, или я позову стражу.':
            # r26 # reply486
            jump vaxis_s7

        'Ложь: Чего… Я искал тебя.' if vaxisLogic.r487_condition():
            # r27 # reply487
            $ vaxisLogic.r487_action()
            jump vaxis_s24

        '*Зомби*, вопросы здесь задаю я. Рассказывай, что ты здесь делаешь, или я сделаю эту маскировку настоящей.':
            # r28 # reply488
            $ vaxisLogic.r488_action()
            jump vaxis_s7

        'Извини, что побеспокоил тебя… кем бы ты ни был. Прощай.':
            # r29 # reply489
            jump vaxis_s4


# s7 # say490
label vaxis_s7:  # from 3.0 3.1 3.2 3.4 6.0 6.1 6.2 6.4
    $ x = _get_know_vaxis_name()
    teller 'Кажется, зомби не расслышал тебя. Он осматривает тебя с ног до головы, затем хмурится.'
    x 'Фто ты фдефь делаефь?'
    teller 'Его глаза недоверчиво сужаются.'
    x 'Фпионифь за Мертфяками?'

    menu:
        'Нет. Я пытаюсь сбежать отсюда.' if vaxisLogic.r491_condition():
            # r30 # reply491
            jump vaxis_s12

        'Я не шпион. Меня случайно здесь заперли. Ты поможешь мне выбраться отсюда?' if vaxisLogic.r492_condition():
            # r31 # reply492
            jump vaxis_s31

        'Ложь: Да, я шпионю здесь за… трухлявыми.' if vaxisLogic.r493_condition():
            # r32 # reply493
            $ vaxisLogic.r493_action()
            jump vaxis_s8

        'Ложь: Да, я шпионю здесь за… трухлявыми.' if vaxisLogic.r494_condition():
            # r33 # reply494
            $ vaxisLogic.r494_action()
            jump vaxis_s9

        'Почему бы тебе не рассказать мне, что ТЫ здесь делаешь, пока я не позвал стражу.' if vaxisLogic.r495_condition():
            # r34 # reply495
            jump vaxis_s21

        'Почему бы тебе не рассказать мне, что ТЫ здесь делаешь, пока я не позвал стражу.' if vaxisLogic.r496_condition():
            # r35 # reply496
            jump vaxis_s17

        'Слушай, *зомби*, вопросы здесь задаю я. Рассказывай, что ты здесь делаешь, или я сделаю эту маскировку настоящей.' if vaxisLogic.r1306_condition():
            # r36 # reply1306
            $ vaxisLogic.r1306_action()
            jump vaxis_s19

        'Слушай, *зомби*, вопросы здесь задаю я. Рассказывай, что ты здесь делаешь, или я сделаю эту маскировку настоящей.' if vaxisLogic.r1348_condition():
            # r37 # reply1348
            $ vaxisLogic.r1348_action()
            jump vaxis_s22

        'Я должен идти. Прощай.':
            # r38 # reply1349
            jump vaxis_s4


# s8 # say1350
label vaxis_s8:  # from 7.2
    $ x = _get_know_vaxis_name()
    teller 'Он изучает тебя более пристально.'
    x 'Ты фпион? Ты иф яфейки?'

    menu:
        'А?':
            # r39 # reply4671
            jump vaxis_s10

        'Яфейки?':
            # r40 # reply1352
            jump vaxis_s10

        'Ложь: Да… Я искал тебя. И очень рад, что нашел.' if vaxisLogic.r1359_condition():
            # r41 # reply1359
            $ vaxisLogic.r1359_action()
            jump vaxis_s24

        'Ложь: Да… но я не могу сейчас об этом говорить, если ты понимаешь, что я имею в виду. Какова *твоя* миссия здесь?' if vaxisLogic.r1360_condition():
            # r42 # reply1360
            $ vaxisLogic.r1360_action()
            jump vaxis_s28

        'Ложь: Да… но я не могу говорить об этом сейчас. Что ты делаешь здесь?' if vaxisLogic.r1361_condition():
            # r43 # reply1361
            $ vaxisLogic.r1361_action()
            jump vaxis_s28

        'Э-э, сейчас у меня нет времени на разговоры… может, как-нибудь в другой раз.':
            # r44 # reply1362
            jump vaxis_s4


# s9 # say1363
label vaxis_s9:  # from 7.3 # Manually checked EXTERN ~DMORTE~ : 85
    $ x = _get_know_vaxis_name()
    teller 'Он изучает тебя более пристально.'
    x 'Ты фпион? Ты иф яфейки?'

    menu:
        'А?':
            # r45 # reply4359
            jump dmorte_s85

        'Яфейки?':
            # r46 # reply4360
            jump dmorte_s85


# s10 # say4361
label vaxis_s10:  # from 8.0 8.1
    $ x = _get_know_vaxis_name()
    teller 'Хмурясь, он шипит на тебя.'
    x 'Ты не фпион!'
    teller 'Он гонит тебя прочь.'
    x 'Профь! Профь!'

    menu:
        'Сперва ты расскажешь мне, что ты здесь делаешь, или я позову стражу.' if vaxisLogic.r4362_condition():
            # r47 # reply4362
            jump vaxis_s21

        'Сперва ты расскажешь мне, что ты здесь делаешь, или я позову стражу.' if vaxisLogic.r4363_condition():
            # r48 # reply4363
            jump vaxis_s17

        'Отвечай на мои чертовы вопросы, или не успеешь пройти и трех шагов, как я сделаю эту маскировку настоящей.' if vaxisLogic.r4364_condition():
            # r49 # reply4364
            $ vaxisLogic.r4364_action()
            jump vaxis_s19

        'Отвечай на мои чертовы вопросы, или не успеешь пройти и трех шагов, как я сделаю эту маскировку настоящей.' if vaxisLogic.r4365_condition():
            # r50 # reply4365
            $ vaxisLogic.r4365_action()
            jump vaxis_s22

        'Ну хорошо, хорошо… Я ухожу.':
            # r51 # reply4367
            jump vaxis_s4


# s11 # say4366
label vaxis_s11:  # -
    teller 'Зомби согласно кивает. Кажется, ты замечаешь, что под слоем маскировки его распирает от гордости.'

    menu:
        'Ты поможешь мне выбраться отсюда?' if vaxisLogic.r4368_condition():
            # r52 # reply4368
            jump vaxis_s12

        'Так что же ты делаешь здесь?':
            # r53 # reply4369
            jump vaxis_s28

        'Ложь: Так ты шпионишь для анархистов? Я тоже шпионю за трухлявыми… Но сейчас я не могу об этом говорить, если ты понимаешь, о чем я. Какова *твоя* миссия здесь?' if vaxisLogic.r4370_condition():
            # r54 # reply4370
            $ vaxisLogic.r4370_action()
            jump vaxis_s28

        'Ложь: Так ты шпионишь для анархистов? Я тоже шпионю за трухлявыми… Но сейчас я не могу об этом говорить. Что ты здесь делаешь?' if vaxisLogic.r4371_condition():
            # r55 # reply4371
            $ vaxisLogic.r4371_action()
            jump vaxis_s28

        'Э-э, сейчас у меня нет времени на разговоры… может, как-нибудь в другой раз.':
            # r56 # reply4372
            jump vaxis_s4


# s12 # say4373
label vaxis_s12:  # from 7.0 11.0
    $ x = _get_know_vaxis_name()
    teller 'Зомби выглядит заинтересованным.'
    x 'Пвоулемы? Фево ты натвовил?'

    menu:
        'Я очнулся на одной из плит на верхнем этаже.':
            # r57 # reply4374
            jump vaxis_s13

        'Каким-то образом я… оказался здесь запертым. Ты поможешь мне выбраться?':
            # r58 # reply4375
            jump vaxis_s31

        'Поговорим об этом в другой раз.':
            # r59 # reply4376
            jump vaxis_s4


# s13 # say4377
label vaxis_s13:  # from 12.0 # Manually checked EXTERN ~DMORTE~ : 87
    $ x = _get_know_vaxis_name()
    teller 'Зомби смотрит на тебя как на умалишенного.'
    x 'Ты фпятил?'

    menu:
        'Да, я фпятил. Я окончательно фпятил.':
            # r60 # reply4378
            jump vaxis_s14

        'Фпятил? Что это значит?' if vaxisLogic.r4379_condition():
            # r61 # reply4379
            jump vaxis_s16

        'Фпятил? Что это значит?' if vaxisLogic.r4380_condition():
            # r62 # reply4380
            jump dmorte_s87

        'Я знаю, в это трудно поверить, но я говорю правду: я очнулся из мертвых на одной из плит на верхнем этаже.':
            # r63 # reply4381
            $ vaxisLogic.r4381_action()
            jump vaxis_s14

        'Э-э, нет… На самом деле, я каким-то образом оказался здесь заперт. Ты поможешь мне выбраться?':
            # r64 # reply4382
            jump vaxis_s31

        'Забудь о нашем разговоре. Мне нужно идти.':
            # r65 # reply4383
            jump vaxis_s4


# s14 # say4384
label vaxis_s14:  # from 13.0 13.3 15.0
    $ x = _get_know_vaxis_name()
    teller 'Он смотрит на тебя, затем начинает шипеть и отмахиваться от тебя.'
    x 'Ты фпятил! Профь от мея!'

    menu:
        'Я никуда не уйду. Рассказывай, что ты здесь делаешь, или я позову стражу.' if vaxisLogic.r4385_condition():
            # r66 # reply4385
            jump vaxis_s21

        'Я никуда не уйду. Рассказывай, что ты здесь делаешь, или я позову стражу.' if vaxisLogic.r4386_condition():
            # r67 # reply4386
            jump vaxis_s17

        'Сначала ты ответишь на мои чертовы вопросы, или я сделаю твою маскировку настоящей.' if vaxisLogic.r4387_condition():
            # r68 # reply4387
            $ vaxisLogic.r4387_action()
            jump vaxis_s19

        'Сначала ты ответишь на мои чертовы вопросы, или я сделаю твою маскировку настоящей.' if vaxisLogic.r4388_condition():
            # r69 # reply4388
            $ vaxisLogic.r4388_action()
            jump vaxis_s22

        'Ну ладно, ладно… прощай.':
            # r70 # reply4389
            jump vaxis_s4


# s15 # say4390
label vaxis_s15:  # -
    teller 'Фальшивый зомби недоверчиво смотрит на вас обоих.'

    menu:
        'Это правда — я очнулся на одной из здешних плит.':
            # r71 # reply4391
            $ vaxisLogic.r4391_action()
            jump vaxis_s14

        'Э-э, прошу прощения… На самом деле, я оказался здесь заперт. Ты поможешь мне выбраться?':
            # r72 # reply4392
            jump vaxis_s31

        'Неважно. Мне нужно идти.':
            # r73 # reply4393
            jump vaxis_s4


# s16 # say4394
label vaxis_s16:  # from 13.1
    $ x = _get_know_vaxis_name()
    teller 'Он смотрит на тебя, затем начинает шипеть и отмахиваться от тебя.'
    x 'Пуфтогоовый! Приурок! Профь от мея, пей! Профь!'

    menu:
        'Я никуда не уйду. Рассказывай, что ты здесь делаешь, или я позову стражу.' if vaxisLogic.r4395_condition():
            # r74 # reply4395
            jump vaxis_s21

        'Я никуда не уйду. Рассказывай, что ты здесь делаешь, или я позову стражу.' if vaxisLogic.r4396_condition():
            # r75 # reply4396
            jump vaxis_s17

        'Сначала ты ответишь на мои чертовы вопросы, или я сделаю твою маскировку настоящей.' if vaxisLogic.r4397_condition():
            # r76 # reply4397
            $ vaxisLogic.r4397_action()
            jump vaxis_s19

        'Сначала ты ответишь на мои чертовы вопросы, или я сделаю твою маскировку настоящей.' if vaxisLogic.r4398_condition():
            # r77 # reply4398
            $ vaxisLogic.r4398_action()
            jump vaxis_s22

        'Ну хорошо, хорошо… Я ухожу.':
            # r78 # reply4399
            jump vaxis_s4


# s17 # say4400
label vaxis_s17:  # from 7.5 10.1 14.1 16.1 25.3 27.3
    $ x = _get_know_vaxis_name()
    teller 'На миг он кажется испуганным, потом осматривает тебя, и по его лицу расползается ухмылка.'
    x 'Ты подеиффя фо мной фвоим фекветом, я подеюфь фвоим ф *тоой*. Фдефь у мея пряфуффа друфья, у тея фдефь *никоо*. Тее фдефь не мефто. Твуфьявые тея уют. Я фбегу.'

    menu:
        'Ты не сможешь сбежать, если я УБЬЮ тебя. А теперь отвечай, или я сделаю твою маскировку настоящей.' if vaxisLogic.r4401_condition():
            # r79 # reply4401
            $ vaxisLogic.r4401_action()
            jump vaxis_s18

        'Ты не сможешь сбежать, если я УБЬЮ тебя. А теперь отвечай, или я сделаю твою маскировку настоящей.' if vaxisLogic.r4402_condition():
            # r80 # reply4402
            $ vaxisLogic.r4402_action()
            jump vaxis_s22

        'Тогда гори в аду. Я ухожу.':
            # r81 # reply4403
            jump vaxis_s4


# s18 # say4404
label vaxis_s18:  # from 17.0
    $ x = _get_know_vaxis_name()
    teller 'Глаза зомби превращаются в щелочки, он шипит на тебя.'
    x 'Ты ПЫТАЕФФЯ фапифать мея ф кьигу мертфых? У мея фдефь пвяфуффа двуфья, у тея фдефь *никоо*. Твониф мея — они тея пвиконфят.'

    menu:
        'Я рискну. Готовься к смерти.':
            # r82 # reply4405
            $ vaxisLogic.r4405_action()
            jump vaxis_attack

        'Тогда гори в аду. Я ухожу. Тебе лучше быть настороже… *зомби*.':
            # r83 # reply4406
            jump vaxis_s4


# s19 # say4407
label vaxis_s19:  # from 7.6 10.2 14.2 16.2 25.4 27.4
    $ x = _get_know_vaxis_name()
    teller 'На миг он кажется испуганным, потом осматривает тебя, и по его лицу расползается ухмылка.'
    x 'ТЫ пытаеффя фапифать МЕЯ ф кьигу мертфых? У мея фдефь пвячуффа двуфья, у тея фдефь *никоо*. Твонеф мея — они тея пвиконфят.'

    menu:
        'Я рискну. Готовься к смерти.':
            # r84 # reply4408
            $ vaxisLogic.r4408_action()
            jump vaxis_attack

        'Что, если я раскрою твою маскировку перед стражей?' if vaxisLogic.r4409_condition():
            # r85 # reply4409
            jump vaxis_s21

        'Что, если я раскрою твою маскировку перед стражей?' if vaxisLogic.r4410_condition():
            # r86 # reply4410
            jump vaxis_s20

        'Тогда гори в аду. Я ухожу. Тебе лучше быть настороже… *зомби*.':
            # r87 # reply4411
            jump vaxis_s4


# s20 # say4412
label vaxis_s20:  # from 19.2
    $ x = _get_know_vaxis_name()
    teller 'Глаза зомби превращаются в щелочки, он шипит на тебя.'
    x 'Ты подеилфя фо мной фвоим фекретом, я подеюфь фоим ф *тоой*. Фдефь у мея прячуффа друфья, у тея фдефь *никоо*. Твуфьявые тея уют. Я фбегу.'

    menu:
        'Это был твой последний шанс, труп. Готовься к смерти.':
            # r88 # reply4413
            $ vaxisLogic.r4413_action()
            jump vaxis_attack

        'Тогда гори в аду. Я ухожу. Тебе лучше быть настороже, *зомби*.':
            # r89 # reply4414
            jump vaxis_s4


# s21 # say4415
label vaxis_s21:  # from 7.4 10.0 14.0 16.0 19.1 25.2 27.2
    $ x = _get_know_vaxis_name()
    teller 'Недобрый блеск в твоих глазах не оставляет от его самонадеянности и следа.'
    x 'Не-не-не! Не наа фвать фтражу!'
    teller 'Он явно напуган.'
    x 'Я-я-я фпионю фа твуфявыми, говою, фео увиву. Ни-нифео больфе.'

    menu:
        'Шпионишь? Для кого?':
            # r90 # reply4416
            jump vaxis_s23

        'И чем же, по твоим наблюдениям, занимаются тленные?':
            # r91 # reply4417
            jump vaxis_s29

        'У меня есть другие вопросы…':
            # r92 # reply4418
            jump vaxis_s43

        'Это все, что я хотел узнать. Прощай, *зомби*.':
            # r93 # reply4419
            jump vaxis_dispose


# s22 # say4420
label vaxis_s22:  # from 7.7 10.3 14.3 16.3 17.1 25.5 27.5
    $ x = _get_know_vaxis_name()
    x 'Не-не-не! Не твогаи мея!'
    teller 'Факт того, что ты явно превосходишь зомби в грубой силе, очевидно, повлиял на его решение, и от его самонадеянности не осталось и следа.'
    x 'Я-я-я фпионю за твуфьявыми, говою, фео увиву. Ни-нифео больфе.'

    menu:
        'Шпионишь? Для кого?':
            # r94 # reply4421
            jump vaxis_s23

        'И чем же, по твоим наблюдениям, занимаются тленные?':
            # r95 # reply4422
            jump vaxis_s29

        'У меня есть другие вопросы…':
            # r96 # reply4423
            jump vaxis_s43

        'Это все, что я хотел знать. А теперь прочь с дороги, *зомби*.':
            # r97 # reply4424
            jump vaxis_dispose


# s23 # say4425
label vaxis_s23:  # from 21.0 22.0 # Manually checked EXTERN ~DMORTE~ : 89
    teller 'Зомби в страхе умолкает, ничего не желая говорить.'

    menu:
        'Ну же, для кого ты следишь за этим местом?' if vaxisLogic.r4426_condition():
            # r98 # reply4426
            jump vaxis_s70

        'Ну же, для кого ты следишь за этим местом?' if vaxisLogic.r4427_condition():
            # r99 # reply4427
            jump dmorte_s89

        'Если ты скажешь мне прямо сейчас, для кого ты шпионишь, будет ГОРАЗДО меньше боли.' if vaxisLogic.r4428_condition():
            # r100 # reply4428
            $ vaxisLogic.r4428_action()
            jump vaxis_s70

        'Если ты скажешь мне прямо сейчас, для кого ты шпионишь, будет ГОРАЗДО меньше боли.' if vaxisLogic.r4429_condition():
            # r101 # reply4429
            $ vaxisLogic.r4429_action()
            jump dmorte_s89

        'Тогда неважно. Так чем же, по твоим наблюдениям, занимаются тленные?':
            # r102 # reply4430
            jump vaxis_s29

        'Есть еще кое-что, что я хочу узнать…':
            # r103 # reply4431
            jump vaxis_s43

        'Тогда забудь об этом. Прощай, *зомби*.':
            # r104 # reply4432
            jump vaxis_dispose


# s24 # say4433
label vaxis_s24:  # from 3.3 6.3 8.2
    $ x = _get_know_vaxis_name()
    x 'Иффефь мея? Вафем?'
    teller 'Он искоса смотрит на тебя.'
    x 'У тея соофение двя мея?'

    menu:
        'Ложь: Да, у меня есть сообщение для тебя.':
            # r105 # reply4434
            $ vaxisLogic.r4434_action()
            jump vaxis_s26

        'Сообщение от кого?':
            # r106 # reply4435
            jump vaxis_s27

        'Нет, у меня нет сообщений.':
            # r107 # reply4436
            jump vaxis_s25


# s25 # say4437
label vaxis_s25:  # from 24.2
    $ x = _get_know_vaxis_name()
    teller 'Яростно шепчет.'
    x 'Тада фео тее *надо*, пей?!'

    menu:
        'Я ищу выход отсюда. Ты можешь мне помочь?' if vaxisLogic.r4438_condition():
            # r108 # reply4438
            jump vaxis_s31

        'Мне нужны кое-какие сведения…':
            # r109 # reply4439
            jump vaxis_s43

        'Рассказывай, что ты здесь делаешь, или я позову стражу.' if vaxisLogic.r4440_condition():
            # r110 # reply4440
            jump vaxis_s21

        'Рассказывай, что ты здесь делаешь, или я позову стражу.' if vaxisLogic.r4441_condition():
            # r111 # reply4441
            jump vaxis_s17

        'Отвечай на мои чертовы вопросы, или не успеешь пройти и трех шагов, как я сделаю эту маскировку настоящей.' if vaxisLogic.r4442_condition():
            # r112 # reply4442
            $ vaxisLogic.r4442_action()
            jump vaxis_s19

        'Отвечай на мои чертовы вопросы, или не успеешь пройти и трех шагов, как я сделаю эту маскировку настоящей.' if vaxisLogic.r4443_condition():
            # r113 # reply4443
            $ vaxisLogic.r4443_action()
            jump vaxis_s22

        'Извини, что побеспокоил тебя… кем бы ты ни был. Прощай.':
            # r114 # reply4444
            jump vaxis_s4


# s26 # say4445
label vaxis_s26:  # from 24.0
    $ x = _get_know_vaxis_name()
    x 'Какое фоофение?'

    menu:
        'Ты должен сообщить мне свое задание.' if vaxisLogic.r4446_condition():
            # r115 # reply4446
            jump vaxis_s28

        'Ложь: У меня к тебе новые распоряжения.' if vaxisLogic.r4447_condition():
            # r116 # reply4447
            $ vaxisLogic.r4447_action()
            jump vaxis_s30

        'Ложь: У меня… к тебе новые распоряжения.' if vaxisLogic.r4448_condition():
            # r117 # reply4448
            $ vaxisLogic.r4448_action()
            jump vaxis_s30

        'Извини, у меня нет сообщений.':
            # r118 # reply4449
            jump vaxis_s27

        'Неважно. Извини за беспокойство. Прощай.':
            # r119 # reply4450
            jump vaxis_s27


# s27 # say4451
label vaxis_s27:  # from 24.1 26.3 26.4
    $ x = _get_know_vaxis_name()
    teller 'Его глаза в ярости сужаются.'
    x 'Ты не фьяфной. Фто ты?'

    menu:
        'Я ищу выход отсюда. Ты можешь мне помочь?' if vaxisLogic.r4452_condition():
            # r120 # reply4452
            jump vaxis_s31

        'Мне нужны кое-какие сведения…':
            # r121 # reply4453
            jump vaxis_s43

        'Рассказывай, что ты здесь делаешь, или я позову стражу.' if vaxisLogic.r4454_condition():
            # r122 # reply4454
            jump vaxis_s21

        'Рассказывай, что ты здесь делаешь, или я позову стражу.' if vaxisLogic.r4455_condition():
            # r123 # reply4455
            jump vaxis_s17

        '*Зомби*, вопросы здесь задаю я. Рассказывай, что ты здесь делаешь, или я сделаю эту маскировку настоящей.' if vaxisLogic.r4456_condition():
            # r124 # reply4456
            $ vaxisLogic.r4456_action()
            jump vaxis_s19

        '*Зомби*, вопросы здесь задаю я. Рассказывай, что ты здесь делаешь, или я сделаю эту маскировку настоящей.' if vaxisLogic.r4457_condition():
            # r125 # reply4457
            $ vaxisLogic.r4457_action()
            jump vaxis_s22

        'Извини, что побеспокоил тебя… кем бы ты ни был. Прощай.':
            # r126 # reply4458
            jump vaxis_s4


# s28 # say4459
label vaxis_s28:  # from 8.3 8.4 11.1 11.2 11.3 26.0 30.0 43.5
    $ x = _get_know_vaxis_name()
    x 'Я фпионю фа твуфьявыми. Говою, чео вифу. Нифео больфе.'

    menu:
        'И чем же, по твоим наблюдениям, занимаются тленные?':
            # r127 # reply4460
            jump vaxis_s29

        'Понятно. Я хотел спросить у тебя еще кое-что…':
            # r128 # reply4461
            jump vaxis_s43

        'Это все, что я хотел узнать. Прощай.':
            # r129 # reply4462
            jump vaxis_dispose


# s29 # say4463
label vaxis_s29:  # from 21.1 22.1 23.4 28.0 70.1 71.2
    $ x = _get_know_vaxis_name()
    x 'Нифео. Они нифео ни деают. Нифео не нафол. Твупы, твупы, пвофто твупы. Твуфьявые *нифео* ни деают.'
    teller 'Его глаза деловито сужаются.'
    x 'Буу дальфе фледить.'

    menu:
        'Понятно. Я хотел спросить у тебя еще кое-что…':
            # r130 # reply4464
            jump vaxis_s43

        'Это все, что я хотел узнать. Прощай.':
            # r131 # reply4465
            jump vaxis_dispose


# s30 # say4466
label vaxis_s30:  # from 26.1 26.2
    $ x = _get_know_vaxis_name()
    teller 'Он сужает глаза, будто пытаясь тебя вычислить.'
    x 'Какие вафповявения?'

    menu:
        'Доложи свою миссию.':
            # r132 # reply4467
            jump vaxis_s28

        'Мне нужно найти выход, через который можно уйти незамеченным.':
            # r133 # reply4468
            jump vaxis_s49

        'Я твой сменщик. Сообщи все, что тебе удалось узнать, отдай все вещи и покинь это место.' if vaxisLogic.r4469_condition():
            # r134 # reply4469
            $ vaxisLogic.r4469_action()
            jump vaxis_s72

        'Я здесь, чтобы помочь тебе во всем, в чем ты будешь нуждаться.':
            # r135 # reply4470
            jump vaxis_s35

        'Твои распоряжения будут переданы в свое время. Я вернусь.':
            # r136 # reply4471
            jump vaxis_dispose


# s31 # say4472
label vaxis_s31:  # from 7.1 12.1 13.4 15.1 25.0 27.0 50.0
    $ x = _get_know_vaxis_name()
    teller 'Он на секунду умолкает, затем медленно, будто бы понимающе кивает.'
    x 'Пофеу я доувен помоать тее?'

    menu:
        'Потому что мне нужна твоя помощь.':
            # r137 # reply4473
            jump vaxis_s32

        'Мы можем помочь друг другу. Что ты хочешь взамен?' if vaxisLogic.r4474_condition():
            # r138 # reply4474
            $ vaxisLogic.r4474_action()
            jump vaxis_s35

        'Потому что я не хотел бы *раскрывать* твою маскировочку… если только ты не поможешь мне.' if vaxisLogic.r4475_condition():
            # r139 # reply4475
            jump vaxis_s33

        'Потому что я не хотел бы *раскрывать* твою маскировочку… если только ты не поможешь мне.' if vaxisLogic.r4476_condition():
            # r140 # reply4476
            jump vaxis_s34

        'Тебе, похоже, больше по душе маскироваться под труп, чем БЫТЬ им. Годится такая причина?' if vaxisLogic.r4477_condition():
            # r141 # reply4477
            $ vaxisLogic.r4477_action()
            jump vaxis_s75

        'Тебе, похоже, больше по душе маскироваться под труп, чем БЫТЬ им. Годится такая причина?' if vaxisLogic.r4478_condition():
            # r142 # reply4478
            $ vaxisLogic.r4478_action()
            jump vaxis_s33

        'Забудь о нашей встрече. Я должен идти. Прощай.':
            # r143 # reply4479
            jump vaxis_s4


# s32 # say4480
label vaxis_s32:  # from 31.0
    $ x = _get_know_vaxis_name()
    teller 'Зомби едва усмехается.'
    x 'Фем *нао* фео-то, но нифто нифео *не дает*. *Дай* мне фео-нить, и, *мовет*, я помоу.'

    menu:
        'Что тебе надо?':
            # r144 # reply4481
            jump vaxis_s35

        'Как на счет того, чтобы ты мне помог, а я взамен не стал звать стражу?' if vaxisLogic.r4482_condition():
            # r145 # reply4482
            jump vaxis_s33

        'Как на счет того, чтобы ты мне помог, а я взамен не стал звать стражу?' if vaxisLogic.r4483_condition():
            # r146 # reply4483
            jump vaxis_s34

        'Ты похож на того, кто скорее выбрал бы остаться в живых, чем ответил мне «нет». Итак… в последний раз спрашиваю: как мне отсюда выбраться?' if vaxisLogic.r4484_condition():
            # r147 # reply4484
            $ vaxisLogic.r4484_action()
            jump vaxis_s75

        'Ты похож на того, кто скорее выбрал бы остаться в живых, чем ответил мне «нет». Итак… в последний раз спрашиваю: как мне отсюда выбраться?' if vaxisLogic.r4485_condition():
            # r148 # reply4485
            $ vaxisLogic.r4485_action()
            jump vaxis_s33

        'Неинтересно. Прощай.':
            # r149 # reply4486
            jump vaxis_s4


# s33 # say4487
label vaxis_s33:  # from 31.2 31.5 32.1 32.4 34.1 35.2 35.5 75.0
    $ x = _get_know_vaxis_name()
    teller 'Он оглядывает тебя с ног до головы, как бы примериваясь, сможет ли он с тобой справиться, останавливается на шрамах и решает не делать этого.'
    x 'Хм-м. Ты мовефь убевать фееф поуталы.'

    menu:
        'Порталы?':
            # r150 # reply4672
            $ vaxisLogic.r4672_action()
            jump vaxis_s50


# s34 # say4491
label vaxis_s34:  # from 31.3 32.2 35.3
    $ x = _get_know_vaxis_name()
    teller 'На миг он кажется испуганным, потом осматривает тебя, и по его лицу расползается ухмылка.'
    x 'Ты подеиффя фо мной фвоим фекветом, я подеюфь фвоим ф *тоой*. Фдефь у мея пряфуффа друфья, у тея фдефь *никоо*. Тее фдефь не мефто. Твуфьявые тея уют. Я фбегу.'

    menu:
        'Ты не сможешь сбежать, если я УБЬЮ тебя. А теперь отвечай, или я сделаю твою маскировку настоящей.' if vaxisLogic.r4489_condition():
            # r151 # reply4489
            $ vaxisLogic.r4489_action()
            jump vaxis_s74

        'Ты не сможешь сбежать, если я УБЬЮ тебя. А теперь отвечай, или я сделаю твою маскировку настоящей.' if vaxisLogic.r4490_condition():
            # r152 # reply4490
            $ vaxisLogic.r4490_action()
            jump vaxis_s33

        'Тогда гори в аду. Я ухожу.':
            # r153 # reply4492
            jump vaxis_s4


# s35 # say4493
label vaxis_s35:  # from 30.3 31.1 32.0
    $ x = _get_know_vaxis_name()
    x 'Тее нуно найти *кьюч* дья мея. Нуен желефный кьюч к байвамовофной комуафе.'

    menu:
        'Ты имеешь в виду этот ключ?' if vaxisLogic.r4494_condition():
            # r154 # reply4494
            $ vaxisLogic.r4494_action()
            jump vaxis_s42

        'Хорошо. Где этот ключ?':
            # r155 # reply4495
            jump vaxis_s36

        'У меня нет времени на это. Помоги мне сбежать, или я позову стражу.' if vaxisLogic.r4496_condition():
            # r156 # reply4496
            $ vaxisLogic.r4496_action()
            jump vaxis_s33

        'У меня нет времени на это. Помоги мне сбежать, или я позову стражу.' if vaxisLogic.r4497_condition():
            # r157 # reply4497
            $ vaxisLogic.r4497_action()
            jump vaxis_s34

        'Я не собираюсь ничего тебе приносить. Помоги мне сбежать, или я прямо здесь и сейчас сверну тебе шею.' if vaxisLogic.r4498_condition():
            # r158 # reply4498
            $ vaxisLogic.r4498_action()
            jump vaxis_s75

        'Я не собираюсь ничего тебе приносить. Помоги мне сбежать, или я прямо здесь и сейчас сверну тебе шею.' if vaxisLogic.r4499_condition():
            # r159 # reply4499
            $ vaxisLogic.r4499_action()
            jump vaxis_s33

        'Нет, спасибо. Может быть, в другой раз.':
            # r160 # reply4500
            jump vaxis_s4


# s36 # say4501
label vaxis_s36:  # from 35.1 58.2
    $ x = _get_know_vaxis_name()
    x 'Он у твуфьявой.'
    teller 'Он показывает на свои глаза.'
    x 'У нее воутые глафифи…'
    teller 'Затем он делает движение руками, похожее на стрижку ножницами.'
    x 'Лефвия на пайфах.'

    menu:
        'Я уже с ней встречался. Вот ключ.' if vaxisLogic.r4502_condition():
            # r161 # reply4502
            $ vaxisLogic.r4502_action()
            jump vaxis_s42

        'Тленная… с желтыми глазами и лезвиями на пальцах? Я ее уже видел в бальзамационной. Погоди… я скоро вернусь с ключом.' if vaxisLogic.r64520_condition():
            # r162 # reply64520
            $ vaxisLogic.r64520_action()
            jump vaxis_s38

        'Тленная… с желтыми глазами и лезвиями на пальцах? Хорошо. Я вернусь с ключом.' if vaxisLogic.r4503_condition():
            # r163 # reply4503
            $ vaxisLogic.r4503_action()
            jump vaxis_s38

        'Судя по твоему описанию, эта тленная выглядит довольно привлекательно. Ты уверен, что не хочешь, чтобы я вас познакомил?':
            # r164 # reply4504
            $ vaxisLogic.r4504_action()
            jump vaxis_s37


# s37 # say4505
label vaxis_s37:  # from 36.3
    teller 'Зомби моргает. Кажется, он тебя не понял.'

    menu:
        'Это была шутка, видишь ли, ты… а, забудь, найду я твой ключ.' if vaxisLogic.r4506_condition():
            # r165 # reply4506
            $ vaxisLogic.r4506_action()
            jump vaxis_s38

        'Это была шутка, видишь ли, ты… а, забудь, найду я твой ключ.' if vaxisLogic.r66150_condition():
            # r166 # reply66150
            $ vaxisLogic.r66150_action()
            jump vaxis_s38


# s38 # say4507
label vaxis_s38:  # from 36.1 36.2 37.0 37.1
    $ x = _get_know_vaxis_name()
    teller 'Зомби косо на тебя смотрит.'
    x 'Ефи тея поимают, не говои никоу обо мне, или я добеусь до тея, когда ты буешь фпать.'

    menu:
        'Я найду твой треклятый ключ… но лучше бы тебе быть поосторожнее со своими угрозами, слышишь меня?' if vaxisLogic.r4508_condition():
            # r167 # reply4508
            $ vaxisLogic.r4508_action()
            jump vaxis_dispose

        'Я еще вернусь.' if vaxisLogic.r4509_condition():
            # r168 # reply4509
            $ vaxisLogic.r4509_action()
            jump vaxis_dispose

        'Я найду твой треклятый ключ… но лучше бы тебе быть поосторожнее со своими угрозами, слышишь меня?' if vaxisLogic.r4510_condition():
            # r169 # reply4510
            jump vaxis_dispose

        'Я еще вернусь.' if vaxisLogic.r4511_condition():
            # r170 # reply4511
            jump vaxis_dispose


# s39 # say4512
label vaxis_s39:  # from 43.12 # Manually checked EXTERN ~DMORTE~ : 93
    $ x = _get_know_vaxis_name()
    x 'Я ховоф ф мафкироуке. У мея ефть фрамы. Я наил на сея мноо байфамируфеи фидкофти. Иф мея поуфифя ХООФЫЙ фомби.'
    teller 'Зомби хихикает через зашитые губы, потом стучит себя по голове.'
    x 'Твуфяки тууупые.'
    morte 'Ага, уж кто тупые, так это *они*. Это точно.'

    jump vaxis_s61

# s40 # say4514
label vaxis_s40:  # -
    $ x = _get_know_vaxis_name()
    x 'Я фду тея фдефь. Найди кьюч.'
    teller 'Зомби улыбается мертвецким оскалом.'
    x 'Потом я помоу тее.'

    menu:
        'Если я найду его, то принесу.':
            # r171 # reply4515
            jump vaxis_dispose

        'Тогда забудь об этом.':
            # r172 # reply4516
            jump vaxis_dispose


# s41 # say4517
label vaxis_s41:  # - # orphan
    $ x = _get_know_vaxis_name()
    teller 'Глаза зомби расширяются, он протягивает руку и прищелкивает пальцами.'
    x 'Дай его мие.'

    menu:
        'Секундочку. Я хочу кое-что взамен.':
            # r173 # reply4518
            jump vaxis_dispose

        'На, бери.':
            # r174 # reply4519
            $ vaxisLogic.r4519_action()
            jump vaxis_dispose


# s42 # say4520
label vaxis_s42:  # from 35.0 36.0 58.0 58.1
    $ x = _get_know_vaxis_name()
    teller 'Глаза зомби расширены, он выхватывает ключ из твоей руки. Затем он поворачивается, все время кивая.'
    x 'Хорофо… хорофо.'

    menu:
        'А теперь… Как мне выбраться отсюда?' if vaxisLogic.r4521_condition():
            # r175 # reply4521
            $ vaxisLogic.r4521_action()
            jump vaxis_s49

        'А теперь… Есть кое-что, о чем я хочу узнать…' if vaxisLogic.r4522_condition():
            # r176 # reply4522
            $ vaxisLogic.r4522_action()
            jump vaxis_s43


# s43 # say4523
label vaxis_s43:  # from 21.2 22.2 23.5 25.1 27.1 28.1 29.0 42.1 44.2 45.1 46.2 47.2 48.0 51.1 52.0 53.0 54.0 56.0 58.3 59.0 60.3 61.4 62.3 63.1 64.0 70.2 71.3 77.0
    $ x = _get_know_vaxis_name()
    x 'Фто ты хофефь уфнать?'

    menu:
        'Как мне выбраться отсюда?' if vaxisLogic.r64508_condition():
            # r177 # reply64508
            jump vaxis_s49

        'Как мне выбраться отсюда?' if vaxisLogic.r4524_condition():
            # r178 # reply4524
            jump vaxis_s49

        'Еще раз — где тот портал, о котором ты говорил?' if vaxisLogic.r4525_condition():
            # r179 # reply4525
            jump vaxis_s52

        'Ты можешь замаскировать меня под зомби?' if vaxisLogic.r4526_condition():
            # r180 # reply4526
            jump vaxis_s63

        'Ты можешь еще раз замаскировать меня под зомби?' if vaxisLogic.r4527_condition():
            # r181 # reply4527
            jump vaxis_s63

        'Что ты здесь делаешь?' if vaxisLogic.r4528_condition():
            # r182 # reply4528
            jump vaxis_s28

        'Ты знаешь кого-нибудь по имени Фарод?' if vaxisLogic.r4673_condition():
            # r183 # reply4673
            jump vaxis_s44

        'Я потерял дневник. Тебе ничего такого не попадалось?' if vaxisLogic.r4530_condition():
            # r184 # reply4530
            jump vaxis_s47

        'Что ты можешь сказать о Дхолле?' if vaxisLogic.r4531_condition():
            # r185 # reply4531
            jump vaxis_s53

        'Что ты можешь сказать о Дейонарре?' if vaxisLogic.r4532_condition():
            # r186 # reply4532
            jump vaxis_s54

        'Что ты можешь сказать о Соэго?' if vaxisLogic.r4533_condition():
            # r187 # reply4533
            jump vaxis_s55

        'Как ты приобрел такой внешний вид?' if vaxisLogic.r4534_condition():
            # r188 # reply4534
            jump vaxis_s60

        'Как ты приобрел такой внешний вид?' if vaxisLogic.r4535_condition():
            # r189 # reply4535
            jump vaxis_s39

        'Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи.':
            # r190 # reply4536
            jump vaxis_dispose


# s44 # say4537
label vaxis_s44:  # from 43.6
    $ x = _get_know_vaxis_name()
    x 'Фа-ОД?'
    teller 'Нахмурившись, зомби напряженно думает.'
    x 'Я… фвыфал, фто он фиет де-то ф Уле.'
    teller 'Он качает головой.'
    x 'Нефнаю где.'
    teller 'Он снова хмурится.'
    x 'Твуфявые фодят ф ума, они не ЛЮЯТ Фа-ода.'

    menu:
        'Улей?':
            # r191 # reply4538
            jump vaxis_s45

        'А почему тленные не любят Фарода?':
            # r192 # reply4539
            $ vaxisLogic.r4539_action()
            jump vaxis_s46

        'Есть еще кое-что, что я хочу узнать…':
            # r193 # reply4540
            jump vaxis_s43

        'Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи.':
            # r194 # reply4541
            jump vaxis_dispose


# s45 # say4542
label vaxis_s45:  # from 44.0
    $ x = _get_know_vaxis_name()
    x 'Твуффобы фнауви.'

    menu:
        'А почему тленные не любят Фарода?':
            # r195 # reply4543
            $ vaxisLogic.r4543_action()
            jump vaxis_s46

        'Есть еще кое-что, что я хочу узнать…':
            # r196 # reply4544
            jump vaxis_s43

        'Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи.':
            # r197 # reply4545
            jump vaxis_dispose


# s46 # say4546
label vaxis_s46:  # from 44.1 45.0 # Manually checked EXTERN ~DMORTE~ : 91
    $ x = _get_know_vaxis_name()
    x 'Он фбофик. Пвинофит твупы ф Моуг, пводает их твуфвым. Пвинофит МУОГО твупоф. Твуфявые ненают, откуда он их беет. Дуают, он пифет пьей в кьигу мертфых.'

    menu:
        'Э-э… что?' if vaxisLogic.r4547_condition():
            # r198 # reply4547
            jump vaxis_s48

        'Э-э… что?' if vaxisLogic.r4548_condition():
            # r199 # reply4548
            jump dmorte_s91

        'А… Есть кое-что еще, о чем я хочу узнать…':
            # r200 # reply4549
            jump vaxis_s43

        'Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи.':
            # r201 # reply4550
            jump vaxis_dispose


# s47 # say4551
label vaxis_s47:  # from 43.7 # Manually checked EXTERN ~DMORTE~ : 92
    $ x = _get_know_vaxis_name()
    x 'Ненают. Какой-то пей обфифтил тея?'

    menu:
        'Э-э… что?' if vaxisLogic.r4552_condition():
            # r202 # reply4552
            jump vaxis_s48

        'Э-э… что?' if vaxisLogic.r4553_condition():
            # r203 # reply4553
            jump dmorte_s92

        'А… Есть кое-что еще, о чем я хочу узнать…':
            # r204 # reply4554
            jump vaxis_s43

        'Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи.':
            # r205 # reply4555
            jump vaxis_dispose


# s48 # say4556
label vaxis_s48:  # from 46.0 47.0
    teller 'Зомби пытается сказать, умолкает, пытается снова, затем вздыхает. Очевидно, что доходчивей он сказать не сможет.'

    menu:
        'А… Есть кое-что еще, о чем я хочу узнать…':
            # r206 # reply4557
            jump vaxis_s43

        'Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи.':
            # r207 # reply4558
            jump vaxis_dispose


# s49 # say4559
label vaxis_s49:  # from 30.1 42.0 43.0 43.1
    $ x = _get_know_vaxis_name()
    teller 'Зомби ворчит.'
    x 'Ты мовешь убевафь феев поуталы.'
    teller 'Он взмахивает руками.'
    x 'Пуф.'

    menu:
        'Порталы? Что за порталы?':
            # r208 # reply4560
            jump vaxis_s50


# s50 # say4563
label vaxis_s50:  # from 33.0 49.0
    $ x = _get_know_vaxis_name()
    x 'Поуталы…'
    teller 'Зомби окидывает широким жестом пространство вокруг себя.'
    x 'Поуталы вефде.'

    menu:
        'Ты можешь показать мне один из этих порталов?' if vaxisLogic.r4564_condition():
            # r209 # reply4564
            jump vaxis_s31

        'Ты можешь показать мне один из этих порталов?' if vaxisLogic.r64509_condition():
            # r210 # reply64509
            jump vaxis_s51

        'Ты можешь показать мне один из этих порталов?' if vaxisLogic.r64510_condition():
            # r211 # reply64510
            jump vaxis_s51

        'Ты можешь показать мне один из этих порталов?' if vaxisLogic.r64511_condition():
            # r212 # reply64511
            jump vaxis_s51


# s51 # say4567
label vaxis_s51:  # from 50.1 50.2 50.3 72.0
    $ x = _get_know_vaxis_name()
    teller 'Зомби кивает.'
    x 'Тее надо выити, пойти ф арку на певом этаже, февео-фападный фал… Тее нувна кофть паица, фогнутоо в кьюк…'
    teller 'Он поднимает указательный палец и сгибает его в крюк.'
    x 'Ефли у тея кьюч, иди в авку и пуыгай ф тайную гуобицу. И ты выбралфя отфюда. Тайный выфод.'
    teller 'Он энергично кивает.'
    x 'Там ты мовефь одофнуть.'

    menu:
        'Кость согнутого пальца? А где можно найти ее?' if vaxisLogic.r64527_condition():
            # r213 # reply64527
            $ vaxisLogic.r64527_action()
            jump vaxis_s77

        'У меня есть другие вопросы…' if vaxisLogic.r4568_condition():
            # r214 # reply4568
            $ vaxisLogic.r4568_action()
            jump vaxis_s43

        'Арка в северо-западной комнате, на первом этаже? Хорошо, я проверю.' if vaxisLogic.r4569_condition():
            # r215 # reply4569
            $ vaxisLogic.r4569_action()
            jump vaxis_dispose


# s52 # say4570
label vaxis_s52:  # from 43.2
    $ x = _get_know_vaxis_name()
    x 'Фуфай! Фапомиай!'
    teller 'В голосе зомби слышна раздраженность.'
    x 'Арка, пеувый этаж, феверо-фападная коуната…'
    teller 'Он поднимает указательный палец и сгибает его.'
    x 'Тее нувна кофть паица, фогнутая. Ты попаефь ф тайную гуобицу. Тайный выфод. Там ты мовефь ОДОФНУТЬ.'

    menu:
        'Есть еще кое-что, что я хочу узнать…':
            # r216 # reply4571
            jump vaxis_s43

        'Арка в северо-западной комнате, на первом этаже, открывается костью изогнутого пальца? Хорошо, на этот раз запомнил.':
            # r217 # reply4572
            jump vaxis_dispose


# s53 # say4573
label vaxis_s53:  # from 43.8
    $ x = _get_know_vaxis_name()
    x 'Пифец.'
    teller 'Пожимает плечами.'
    x 'Фтарый. Вовтый.'

    menu:
        'Полагаю, добавить больше нечего. Я хочу знать кое-что еще…':
            # r218 # reply4574
            jump vaxis_s43

        'Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи.':
            # r219 # reply4575
            jump vaxis_dispose


# s54 # say4576
label vaxis_s54:  # from 43.9
    $ x = _get_know_vaxis_name()
    x 'Э?'
    teller 'Хмурится.'
    x 'Фто она?'
    menu:
        'Забудь. Я хочу знать кое-что еще…':
            # r220 # reply4577
            jump vaxis_s43

        'Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи.':
            # r221 # reply4578
            jump vaxis_dispose


# s55 # say4579
label vaxis_s55:  # from 43.10
    $ x = _get_know_vaxis_name()
    x 'Пвоводник. На пеувом этаже. Фто ты хофефь фнать о нем?'

    menu:
        'Что ты знаешь о нем?':
            # r222 # reply4580
            $ vaxisLogic.r4580_action()
            jump vaxis_s56

        'Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи.':
            # r223 # reply4581
            jump vaxis_dispose


# s56 # say4582
label vaxis_s56:  # from 55.0
    $ x = _get_know_vaxis_name()
    x 'Фтвааный. Не твуфявый, не анавфифт. Гуава двугие…'
    teller 'Пожимает плечами.'
    x 'Как у квыфы. Фтванно.'

    menu:
        'Хорошо, что только он странный в этом месте. Я хочу знать кое-что еще…':
            # r224 # reply4583
            jump vaxis_s43

        'Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи.':
            # r225 # reply4584
            jump vaxis_dispose


# s57 # say4585
label vaxis_s57:  # - # IF ~  GlobalGT("Vaxis","GLOBAL",0)
    teller 'Ты видишь фальшивого зомби. Ты удивлен его маскировке… его дыхание едва заметно, ты практически не можешь уловить его.'

    menu:
        'Приветствую.' if vaxisLogic.r4586_condition():
            # r226 # reply4586
            jump vaxis_s58

        'Приветствую.' if vaxisLogic.r4587_condition():
            # r227 # reply4587
            jump vaxis_s58

        'Приветствую.' if vaxisLogic.r4588_condition():
            # r228 # reply4588
            jump vaxis_s59

        'Приветствую.' if vaxisLogic.r4589_condition():
            # r229 # reply4589
            jump vaxis_s58

        'Оставить его в покое.':
            # r230 # reply4590
            jump vaxis_dispose


# s58 # say4591
label vaxis_s58:  # from 57.0 57.1 57.3
    $ x = _get_know_vaxis_name()
    teller 'Зомби быстро оглядывается вокруг, высматривая соглядатая, затем поворачивается к тебе.'
    teller 'Фто?'

    menu:
        'Вот ключ к бальзамационной комнате, который ты хотел.' if vaxisLogic.r4592_condition():
            # r231 # reply4592
            $ vaxisLogic.r4592_action()
            jump vaxis_s42

        'Вот ключ к бальзамационной комнате, который ты хотел.' if vaxisLogic.r4593_condition():
            # r232 # reply4593
            $ vaxisLogic.r4593_action()
            jump vaxis_s42

        'Еще раз — где тот ключ, о котором ты говорил?' if vaxisLogic.r4594_condition():
            # r233 # reply4594
            jump vaxis_s36

        'У меня есть несколько вопросов к тебе…':
            # r234 # reply4595
            jump vaxis_s43

        'Неважно.':
            # r235 # reply4596
            jump vaxis_dispose


# s59 # say4597
label vaxis_s59:  # from 57.2
    $ x = _get_know_vaxis_name()
    teller 'Зомби быстро оглядывается вокруг, высматривая соглядатая, затем шипит на тебя.'
    x 'Ухои! Вон!'

    menu:
        'Нет. Сначала у меня несколько вопросов к тебе…':
            # r236 # reply4598
            jump vaxis_s43

        'Тогда неважно.' if vaxisLogic.r4599_condition():
            # r237 # reply4599
            jump vaxis_s4

        'Тогда неважно.' if vaxisLogic.r4600_condition():
            # r238 # reply4600
            jump vaxis_dispose


# s60 # say4601
label vaxis_s60:  # from 43.11
    $ x = _get_know_vaxis_name()
    x 'Я ховоф ф мафкироуке. У мея ефть фрамы. Я наил на сея мноо байфамируфеи фидкофти. Иф мея поуфифя ХООФЫЙ фомби.'
    teller 'Зомби хихикает через зашитые губы, потом стучит себя по голове.'
    x 'Твуфяки тууупые.'

    menu:
        'Ага, уж кто тупой, так это они. Это точно.':
            # r239 # reply4602
            jump vaxis_s61

        'Это не больно?':
            # r240 # reply4603
            jump vaxis_s62

        'Довольно неплохая маскировка. Скажи… а ты можешь и меня замаскировать под зомби?' if vaxisLogic.r4604_condition():
            # r241 # reply4604
            jump vaxis_s63

        'Есть еще кое-что, что я хочу узнать…':
            # r242 # reply4605
            jump vaxis_s43

        'Мне нужно идти. Прощай.':
            # r243 # reply4606
            jump vaxis_dispose


# s61 # say4607
label vaxis_s61:  # from 60.0
    $ x = _get_know_vaxis_name()
    teller 'Зомби определенно не понял сарказма, энергично кивая словам.'
    x 'Тупие твуфявые. Ив мея ХОВОФЫЙ фомби.'

    menu:
        'Это не больно?':
            # r244 # reply4608
            jump vaxis_s62

        'Довольно неплохая маскировка. А ты можешь и меня замаскировать под зомби?' if vaxisLogic.r4609_condition():
            # r245 # reply4609
            jump vaxis_s63

        'Есть еще кое-что, что я хочу узнать…' if vaxisLogic.r4610_condition():
            # r246 # reply4610
            jump vaxis_s64

        'Мне нужно идти. Прощай.' if vaxisLogic.r4611_condition():
            # r247 # reply4611
            jump vaxis_s64

        'Есть еще кое-что, что я хочу узнать…' if vaxisLogic.r4612_condition():
            # r248 # reply4612
            jump vaxis_s43

        'Мне нужно идти. Прощай.' if vaxisLogic.r4613_condition():
            # r249 # reply4613
            jump vaxis_dispose


# s62 # say4614
label vaxis_s62:  # from 60.1 61.0
    $ x = _get_know_vaxis_name()
    teller 'Он смотрит на твои шрамы.'
    x 'А как ты думаефь? По мие, нет, не офень.'
    teller 'Бьет себя по груди.'
    x 'Я КИЕПКИЙ.'

    menu:
        'Довольно неплохая маскировка. А ты можешь и меня замаскировать под зомби?' if vaxisLogic.r4615_condition():
            # r250 # reply4615
            jump vaxis_s63

        'Есть еще кое-что, что я хочу узнать…' if vaxisLogic.r4616_condition():
            # r251 # reply4616
            jump vaxis_s64

        'Мне нужно идти. Прощай.' if vaxisLogic.r4617_condition():
            # r252 # reply4617
            jump vaxis_s64

        'Есть еще кое-что, что я хочу узнать…' if vaxisLogic.r4618_condition():
            # r253 # reply4618
            jump vaxis_s43

        'Мне нужно идти. Прощай.' if vaxisLogic.r4674_condition():
            # r254 # reply4674
            jump vaxis_dispose


# s63 # say4619
label vaxis_s63:  # from 43.3 43.4 60.2 61.1 62.0 64.1 64.2
    $ x = _get_know_vaxis_name()
    teller 'Что-то бормоча, он несколько раз оглядывает тебя с ног до головы, затем кивает.'
    x 'Уху. Мие нуна банка баифама.'
    teller 'Показывает на шрамы на твоей груди.'
    x 'И игоука ф ниткой.'

    menu:
        'На, бери.' if vaxisLogic.r4620_condition():
            # r255 # reply4620
            $ vaxisLogic.r4620_action()
            jump vaxis_s65

        'Я подумаю над этим. У меня есть еще несколько вопросов…':
            # r256 # reply4621
            $ vaxisLogic.r4621_action()
            jump vaxis_s43

        'Может, быть в другой раз, спасибо… Прощай.':
            # r257 # reply4622
            $ vaxisLogic.r4622_action()
            jump vaxis_dispose

        'Бальзамирующая жидкость и нитка? Пойду, поищу их.':
            # r258 # reply4623
            $ vaxisLogic.r4623_action()
            jump vaxis_dispose


# s64 # say4624
label vaxis_s64:  # from 61.2 61.3 62.1 62.2
    $ x = _get_know_vaxis_name()
    teller 'Странным взглядом он осматривает тебя с ног до головы.'
    teller 'Ты будефь ХОВОФЫМ фомби. Мовно фделать из тея фомби? ХОВОФАЯ мафкиофка.'

    menu:
        'Спасибо. У меня есть другие вопросы к тебе…':
            # r259 # reply4625
            $ vaxisLogic.r4625_action()
            jump vaxis_s43

        'Конечно. Ты сможешь сделать это?':
            # r260 # reply4626
            jump vaxis_s63

        'Почему бы и нет? Я и так чувствую себя ходячим мертвецом.':
            # r261 # reply4627
            jump vaxis_s63

        'Нет… нет… так тоже неплохо. Прощай.':
            # r262 # reply4628
            $ vaxisLogic.r4628_action()
            jump vaxis_dispose


# s65 # say4629
label vaxis_s65:  # from 63.0 # Manually checked EXTERN ~DMORTE~ : 94
    teller 'Зомби берет у тебя предметы и приступает к работе…'

    menu:
        'Попробовать не двигаться.' if vaxisLogic.r4630_condition():
            # r263 # reply4630
            $ vaxisLogic.r4630_action()
            jump vaxis_s66

        'Попробовать не двигаться.' if vaxisLogic.r4631_condition():
            # r264 # reply4631
            $ vaxisLogic.r4631_action()
            jump dmorte_s94

        'Попробовать не двигаться.' if vaxisLogic.r4632_condition():
            # r265 # reply4632
            $ vaxisLogic.r4632_action()
            jump vaxis_s66

        'Попробовать не двигаться.' if vaxisLogic.r64533_condition():
            # r266 # reply64533
            $ vaxisLogic.r64533_action()
            jump vaxis_s66


# s66 # say4633
label vaxis_s66:  # from 65.0 65.2 65.3 # Manually checked EXTERN ~DMORTE~ : 95
    teller 'Зомби обильно натирает твое тело бальзамирующей жидкостью, затем широкими стежками зашивает несколько шрамов.'
    teller 'Начав с ног, он медленно поднимается наверх, зашивая в конце концов твои губы.'

    menu:
        'Ммм-ммф-ммм… Фпафибо.' if vaxisLogic.r4634_condition():
            # r267 # reply4634
            jump vaxis_s67

        'Ммм-ммф-ммм… Фпафибо.' if vaxisLogic.r4635_condition():
            # r268 # reply4635
            $ vaxisLogic.r4635_action()
            jump dmorte_s95

        'Ммм-ммф-ммм… Фпафибо.' if vaxisLogic.r4636_condition():
            # r269 # reply4636
            jump vaxis_s67


# s67 # say4637
label vaxis_s67:  # from 66.0 66.2
    $ x = _get_know_vaxis_name()
    teller 'Зомби держит тебя за руку.'
    x 'Офтововно! Вафгоов вафофет фвы, науфив мафкивку. Фомби не говоят. Поняу? Говои медвенно, офтовоно.'

    menu:
        'Ммф… ммм. Я… понимаю.':
            # r270 # reply4638
            $ vaxisLogic.r4638_action()
            jump vaxis_s68


# s68 # say4639
label vaxis_s68:  # from 67.0
    $ x = _get_know_vaxis_name()
    teller 'Зомби хмурится.'
    x 'Мафкирофка не деужится доуго… бальфам выфыхает, фвы рвутфя.'
    teller 'Он жмет плечами.'
    x 'Фнаружи Морга от нее нифего не офтанетфя. Не бегай! Ефли ты побежифь, то науфифь вфю мафкирофку.'

    menu:
        'Снова кивнуть, уйти.':
            # r271 # reply4640
            jump vaxis_dispose


# s69 # say4641
label vaxis_s69:  # - # orphan
    $ x = _get_know_vaxis_name()
    teller 'Зомби хмурится.'
    x 'Фде-то я тея виел. Мы не виелифь раньфе?'

    menu:
        'Может быть. Где ты меня видел?':
            # r272 # reply4642
            jump vaxis_dispose

        'X.':
            # r273 # reply4643
            jump vaxis_dispose


# s70 # say4644
label vaxis_s70:  # from 23.0 23.2 71.0 71.1
    teller 'К твоему удивлению, зомби отступается от тебя… Он начинает со страхом озираться.'

    menu:
        'Не хочешь говорить? Тогда приготовься кричать.':
            # r274 # reply4645
            $ vaxisLogic.r4645_action()
            jump vaxis_attack

        'Тогда неважно. Так чем же, по твоим наблюдениям, занимаются тленные?':
            # r275 # reply4646
            jump vaxis_s29

        'Есть еще кое-что, что я хочу узнать…':
            # r276 # reply4647
            jump vaxis_s43

        'Тогда забудь об этом. Прощай, *зомби*.':
            # r277 # reply4648
            jump vaxis_dispose


# s71 # say4649
label vaxis_s71:  # -
    teller 'Зомби смотрит на вас обоих с явной опаской, продолжая молчать… но что-то в его выражении говорит тебе, что предположение Морта верно.'

    menu:
        'Значит, анархисты? Так за кем вы тут следите?':
            # r278 # reply4650
            jump vaxis_s70

        'Если ты скажешь мне прямо сейчас, почему анархисты следят за этим местом, боли будет ГОРАЗДО меньше.':
            # r279 # reply4651
            $ vaxisLogic.r4651_action()
            jump vaxis_s70

        'Тогда неважно. Так чем же, по твоим наблюдениям, занимаются тленные?':
            # r280 # reply4652
            jump vaxis_s29

        'Есть еще кое-что, что я хочу узнать…':
            # r281 # reply4653
            jump vaxis_s43

        'Тогда забудь об этом. Прощай, *зомби*.':
            # r282 # reply4654
            jump vaxis_dispose


# s72 # say4655
label vaxis_s72:  # from 30.2
    $ x = _get_know_vaxis_name()
    teller 'Зомби выглядит сбитым с толку, но затем пожимает плечами, начиная копаться в своей заляпанной тунике.'
    x 'Вфе тихо, твувявыя не февелятся, нифего новоо с пофледнего отфета.'
    teller 'Спустя несколько секунд он протягивает тебе какие-то предметы, затем ворчит.'
    x 'Вот.'
    teller 'Судя по запаху, они прятались очень глубоко, чтобы их невозможно было найти в случае обыска.'
    x 'Я фкоро уйду.'

    menu:
        'Уйдешь? Как?' if vaxisLogic.r4656_condition():
            # r283 # reply4656
            jump vaxis_s51

        'Отлично. Прощай, Ваксис.' if vaxisLogic.r64532_condition():
            # r284 # reply64532
            jump vaxis_dispose


# s73 # say4658
label vaxis_s73:  # -
    $ x = _get_know_vaxis_name()
    teller 'Зомби ворчит.'
    x 'Поутал в арке — пеувый этав, феверо-фападная коумата, нувен кофтяной паиец дья откуывания.'
    teller 'Он кивает.'
    x 'Удафи.'

    menu:
        'Э-э… Ладно.':
            # r285 # reply4659
            jump vaxis_dispose


# s74 # say4660
label vaxis_s74:  # from 34.0
    $ x = _get_know_vaxis_name()
    teller 'Глаза зомби превращаются в щелочки, он шипит на тебя.'
    x 'Ты ПЫТАЕФФЯ фапифать мея ф кьигу мертфых? У мея фдефь пвяфуффа двуфья, у тея фдефь *никоо*. Твониф мея — они тея пвиконфят.'

    menu:
        'Это был твой последний шанс. Готовься к смерти.':
            # r286 # reply4661
            $ vaxisLogic.r4661_action()
            jump vaxis_attack

        'Тогда гори в аду. Я ухожу. Тебе лучше быть настороже… *зомби*!':
            # r287 # reply4662
            jump vaxis_s4


# s75 # say4663
label vaxis_s75:  # from 31.4 32.3 35.4
    $ x = _get_know_vaxis_name()
    teller 'На миг он кажется испуганным, потом осматривает тебя, и по его лицу расползается ухмылка.'
    x 'ТЫ пытаеффя фапифать МЕЯ ф кьигу мертфых? У мея фдефь пвячуффа двуфья, у тея фдефь *никоо*. Твонеф мея — они тея пвиконфят.'

    menu:
        'А что, если я раскрою твою маскировку страже?' if vaxisLogic.r4664_condition():
            # r288 # reply4664
            jump vaxis_s33

        'А что, если я раскрою твою маскировку страже?' if vaxisLogic.r4665_condition():
            # r289 # reply4665
            jump vaxis_s76

        'Я рискну. Готовься к смерти.':
            # r290 # reply4666
            $ vaxisLogic.r4666_action()
            jump vaxis_attack

        'Тогда гори в аду. Я ухожу. Тебе лучше быть настороже… *зомби*.':
            # r291 # reply4667
            jump vaxis_s4


# s76 # say4668
label vaxis_s76:  # from 75.1
    $ x = _get_know_vaxis_name()
    teller 'Глаза зомби превращаются в щелочки, он шипит на тебя.'
    x 'Ты подеилфя фо мной фвоим фекретом, я подеюфь фоим ф *тоой*. Фдефь у мея прячуффа друфья, у тея фдефь *никоо*. Твуфьявые тея уют. Я фбегу.'

    menu:
        'Это был твой последний шанс, труп. Готовься к смерти.':
            # r292 # reply4669
            $ vaxisLogic.r4669_action()
            jump vaxis_attack

        'Тогда гори в аду. Я ухожу. Тебе лучше быть настороже… *зомби*.':
            # r293 # reply4670
            jump vaxis_s4


# s77 # say64523
label vaxis_s77:  # from 51.0
    $ x = _get_know_vaxis_name()
    teller 'Он пожимает плечами.'
    teller 'Доувен быть де-то фдефь… Ифи на фкладах навеуху. Мовет быть, там.'

    menu:
        'Хорошо. У меня есть другие вопросы…':
            # r294 # reply64524
            jump vaxis_s43

        'Хорошо. Я проверю наверху, есть ли там изогнутая кость пальца, потом пойду на первый этаж, к одной из арок в северо-западной комнате. Все ясно.':
            # r295 # reply64525
            jump vaxis_dispose


label vaxis_attack:
    teller "Я набрасываюсь на Ваксиса. Он очень хочет жить, но я сильнее и быстрее. И я хочу жить больше, чем он."
    teller "Через несколько секунд тело Ваксиса падает на спину. В его глазах остался человеческий страх перед внезапной смертью."
    jump vaxis_dispose


label vaxis_kill:
    teller"Неуклюжий труп смотрит на тебя пустым взглядом. На его лбу вырезан номер 821, а его губы крепко зашиты. От тела исходит легкий запах формальдегида."

    menu:
        'Уйти.':
            jump vaxis_dispose
        'Убить зомби.':
            jump vaxis_killed



label vaxis_kill_first:
    teller"Неуклюжий труп смотрит на тебя пустым взглядом. На его лбу вырезан номер 821, а его губы крепко зашиты. От тела исходит легкий запах формальдегида."

    menu:
        'Уйти.':
            jump vaxis_dispose
        'Убить зомби.':
            jump vaxis_killed


label vaxis_killed_first:
    $ vaxisLogic.kill_vaxis()
    teller "Я бью ходящий труп так, что он сгибается пополам. Зомби неожиданно отпрыгивает и вскрикивает."
    vaxis_unknown "ААА! Фто ты..."
    teller "Я без сожалений бью его до тех пор, пока ходячий труп не падает на спину. В его глазах остался человеческий страх перед внезапной смертью."
    jump vaxis_dispose


label vaxis_killed:
    $ vaxisLogic.kill_vaxis()
    teller "Я бью Ваксиса так, что он сгибается пополам. Он неожиданно отпрыгивает и вскрикивает."
    vaxis "ААА! Фто ты..."
    teller "Я без сожалений бью его до тех пор, пока он не падает на спину. В его глазах остался человеческий страх перед внезапной смертью."
    jump vaxis_dispose
