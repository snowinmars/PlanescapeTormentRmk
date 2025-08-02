init 10 python:
    from dlgs.dvaxis_logic import DvaxisLogic
    dvaxisLogic = DvaxisLogic(renpy.store.global_settings_manager)


# ###
# Original: DLG/DVAXIS.DLG
# ###


label dvaxis_init:
    return


label dvaxis_dispose:
    jump show_graphics_menu


# s0 # say453
label dvaxis_s0:  # - # IF ~  Global("Vaxis","GLOBAL",0)
    SPEAKER 'Неуклюжий труп смотрит на тебя пустым взглядом. На его лбу вырезан номер 821, а его губы крепко зашиты. От тела исходит легкий запах формальдегида.'

    menu:
        'Итак… что тут у нас интересного?' if dvaxisLogic.r454_condition():
            # r0 # reply454
            $ dvaxisLogic.r454_action()
            jump dvaxis_s5

        'Итак… что тут у нас интересного?' if dvaxisLogic.r455_condition():
            # r1 # reply455
            jump dvaxis_s5

        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if dvaxisLogic.r456_condition():
            # r2 # reply456
            jump dvaxis_s5

        'Использовать на трупе свою способность История костей.' if dvaxisLogic.r457_condition():
            # r3 # reply457
            jump dvaxis_s1

        'Было приятно поболтать с тобой. Прощай.':
            # r4 # reply458
            jump dvaxis_s5

        'Оставить труп в покое.':
            # r5 # reply459
            jump show_graphics_menu


# s1 # say460
label dvaxis_s1:  # from 0.3 # IF ~  False()
    SPEAKER 'Довольно странно, но твоя способность не работает с этим трупом.'

    menu:
        'Ткнуть его в глаз.':
            # r6 # reply461
            $ dvaxisLogic.r461_action()
            jump dvaxis_s2

        'Оставить труп в покое.':
            # r7 # reply462
            jump show_graphics_menu


# s2 # say463
label dvaxis_s2:  # from 1.0
    SPEAKER 'После твоего тычка в глаз труп, рефлекторно закрыв руками лицо, издает нечленораздельный вопль. Он начинает что-то невнятно бормотать, сыпля проклятиями в твой адрес.'

    menu:
        'Ты не зомби! Кто ты?':
            # r8 # reply464
            $ dvaxisLogic.r464_action()
            jump dvaxis_s6

        'Зачем ты замаскировался под зомби?':
            # r9 # reply465
            $ dvaxisLogic.r465_action()
            jump dvaxis_s6

        'Уйти. Быстро.':
            # r10 # reply466
            $ dvaxisLogic.r466_action()
            jump dvaxis_s3


# s3 # say467
label dvaxis_s3:  # from 2.2 5.2
    SPEAKER 'Ты уже почти отвернулся, как зомби начинает что-то бормотать… кажется, он пытается что-то сказать, но с зашитым ртом это сделать трудно. Фто ТЫ? Фто тее нао?'

    menu:
        'Я ищу выход отсюда. Ты можешь мне помочь?' if dvaxisLogic.r468_condition():
            # r11 # reply468
            jump dvaxis_s7

        'Кто ты?':
            # r12 # reply469
            jump dvaxis_s7

        'Рассказывай, кто ты такой, или я позову стражу.':
            # r13 # reply470
            jump dvaxis_s7

        'Ложь: Чего… Я искал тебя.' if dvaxisLogic.r472_condition():
            # r14 # reply472
            $ dvaxisLogic.r472_action()
            jump dvaxis_s24

        '*Зомби*, вопросы здесь задаю я. Рассказывай, что ты здесь делаешь, или я сделаю эту маскировку настоящей.':
            # r15 # reply473
            $ dvaxisLogic.r473_action()
            jump dvaxis_s7

        'Извини, что побеспокоил тебя… кем бы ты ни был. Прощай.':
            # r16 # reply474
            jump dvaxis_s4


# s4 # say471
label dvaxis_s4:  # from 3.5 6.5 7.8 8.5 10.4 11.4 12.2 13.5 14.4 15.2 16.4 17.2 18.1 19.3 20.1 25.6 27.6 31.6 32.5 34.2 35.6 59.1 74.1 75.3 76.1
    SPEAKER 'Ты уже почти отвернулся, как зомби начинает издавать низкое протяжное ворчание: Никоу ничео не говои пво МЕЯ. Моучи. Не говои НИФЕО твуфявым, — он прикладывает палец к губам. — Фффф. После этого он проводит пальцем по горлу. Или ты уфнефь нафегда. ПОЯЛ мея?'

    menu:
        'Ты пытаешься меня ЗАПУГАТЬ? Ну все… готовься к смерти.':
            # r17 # reply475
            $ dvaxisLogic.r475_action()
            jump show_graphics_menu

        'Ложь: Я даже и *не думал* ничего говорить тленным о тебе.':
            # r18 # reply476
            $ dvaxisLogic.r476_action()
            jump show_graphics_menu

        'Правда: Обещаю, что я ничего не скажу о тебе тленным.':
            # r19 # reply477
            $ dvaxisLogic.r477_action()
            jump show_graphics_menu

        'Как хочешь. У тебя свои дела, у меня — свои.':
            # r20 # reply478
            jump show_graphics_menu


# s5 # say479
label dvaxis_s5:  # from 0.0 0.1 0.2 0.4
    SPEAKER 'Зомби от неожиданности моргает при твоем обращении. А? Фто?'

    menu:
        'Ты не зомби! Кто ты?':
            # r21 # reply480
            $ dvaxisLogic.r480_action()
            jump dvaxis_s6

        'Зачем ты замаскировался под зомби?':
            # r22 # reply481
            $ dvaxisLogic.r481_action()
            jump dvaxis_s6

        'Уйти. Быстро.':
            # r23 # reply482
            $ dvaxisLogic.r482_action()
            jump dvaxis_s3


# s6 # say483
label dvaxis_s6:  # from 2.0 2.1 5.0 5.1
    SPEAKER 'Зомби пытается что-то сказать сквозь зашитые губы. На его лице странная смесь испуга и злобы. Фто ТЫ? Фего тее нао?'

    menu:
        'Я ищу выход отсюда. Ты можешь мне помочь?' if dvaxisLogic.r484_condition():
            # r24 # reply484
            jump dvaxis_s7

        'Кто ты?':
            # r25 # reply485
            jump dvaxis_s7

        'Рассказывай, кто ты такой, или я позову стражу.':
            # r26 # reply486
            jump dvaxis_s7

        'Ложь: Чего… Я искал тебя.' if dvaxisLogic.r487_condition():
            # r27 # reply487
            $ dvaxisLogic.r487_action()
            jump dvaxis_s24

        '*Зомби*, вопросы здесь задаю я. Рассказывай, что ты здесь делаешь, или я сделаю эту маскировку настоящей.':
            # r28 # reply488
            $ dvaxisLogic.r488_action()
            jump dvaxis_s7

        'Извини, что побеспокоил тебя… кем бы ты ни был. Прощай.':
            # r29 # reply489
            jump dvaxis_s4


# s7 # say490
label dvaxis_s7:  # from 3.0 3.1 3.2 3.4 6.0 6.1 6.2 6.4
    SPEAKER 'Кажется, зомби не расслышал тебя. Он осматривает тебя с ног до головы, затем хмурится. Фто ты фдефь делаефь? — его глаза недоверчиво сужаются. — Фпионифь за Мертфяками?'

    menu:
        'Нет. Я пытаюсь сбежать отсюда.' if dvaxisLogic.r491_condition():
            # r30 # reply491
            jump dvaxis_s12

        'Я не шпион. Меня случайно здесь заперли. Ты поможешь мне выбраться отсюда?' if dvaxisLogic.r492_condition():
            # r31 # reply492
            jump dvaxis_s31

        'Ложь: Да, я шпионю здесь за… трухлявыми.' if dvaxisLogic.r493_condition():
            # r32 # reply493
            $ dvaxisLogic.r493_action()
            jump dvaxis_s8

        'Ложь: Да, я шпионю здесь за… трухлявыми.' if dvaxisLogic.r494_condition():
            # r33 # reply494
            $ dvaxisLogic.r494_action()
            jump dvaxis_s9

        'Почему бы тебе не рассказать мне, что ТЫ здесь делаешь, пока я не позвал стражу.' if dvaxisLogic.r495_condition():
            # r34 # reply495
            jump dvaxis_s21

        'Почему бы тебе не рассказать мне, что ТЫ здесь делаешь, пока я не позвал стражу.' if dvaxisLogic.r496_condition():
            # r35 # reply496
            jump dvaxis_s17

        'Слушай, *зомби*, вопросы здесь задаю я. Рассказывай, что ты здесь делаешь, или я сделаю эту маскировку настоящей.' if dvaxisLogic.r1306_condition():
            # r36 # reply1306
            $ dvaxisLogic.r1306_action()
            jump dvaxis_s19

        'Слушай, *зомби*, вопросы здесь задаю я. Рассказывай, что ты здесь делаешь, или я сделаю эту маскировку настоящей.' if dvaxisLogic.r1348_condition():
            # r37 # reply1348
            $ dvaxisLogic.r1348_action()
            jump dvaxis_s22

        'Я должен идти. Прощай.':
            # r38 # reply1349
            jump dvaxis_s4


# s8 # say1350
label dvaxis_s8:  # from 7.2
    SPEAKER 'Он изучает тебя более пристально. Ты фпион? Ты иф яфейки?'

    menu:
        'А?':
            # r39 # reply4671
            jump dvaxis_s10

        'Яфейки?':
            # r40 # reply1352
            jump dvaxis_s10

        'Ложь: Да… Я искал тебя. И очень рад, что нашел.' if dvaxisLogic.r1359_condition():
            # r41 # reply1359
            $ dvaxisLogic.r1359_action()
            jump dvaxis_s24

        'Ложь: Да… но я не могу сейчас об этом говорить, если ты понимаешь, что я имею в виду. Какова *твоя* миссия здесь?' if dvaxisLogic.r1360_condition():
            # r42 # reply1360
            $ dvaxisLogic.r1360_action()
            jump dvaxis_s28

        'Ложь: Да… но я не могу говорить об этом сейчас. Что ты делаешь здесь?' if dvaxisLogic.r1361_condition():
            # r43 # reply1361
            $ dvaxisLogic.r1361_action()
            jump dvaxis_s28

        'Э-э, сейчас у меня нет времени на разговоры… может, как-нибудь в другой раз.':
            # r44 # reply1362
            jump dvaxis_s4


# s9 # say1363
label dvaxis_s9:  # from 7.3 # Check EXTERN ~DMORTE~ : 85
    SPEAKER 'Он изучает тебя более пристально. Ты фпион? Ты иф яфейки?'

    jump show_graphics_menu

# s10 # say4361
label dvaxis_s10:  # from 8.0 8.1
    SPEAKER 'Хмурясь, он шипит на тебя. Ты не фпион! — он гонит тебя прочь. — Профь! Профь!'

    menu:
        'Сперва ты расскажешь мне, что ты здесь делаешь, или я позову стражу.' if dvaxisLogic.r4362_condition():
            # r45 # reply4362
            jump dvaxis_s21

        'Сперва ты расскажешь мне, что ты здесь делаешь, или я позову стражу.' if dvaxisLogic.r4363_condition():
            # r46 # reply4363
            jump dvaxis_s17

        'Отвечай на мои чертовы вопросы, или не успеешь пройти и трех шагов, как я сделаю эту маскировку настоящей.' if dvaxisLogic.r4364_condition():
            # r47 # reply4364
            $ dvaxisLogic.r4364_action()
            jump dvaxis_s19

        'Отвечай на мои чертовы вопросы, или не успеешь пройти и трех шагов, как я сделаю эту маскировку настоящей.' if dvaxisLogic.r4365_condition():
            # r48 # reply4365
            $ dvaxisLogic.r4365_action()
            jump dvaxis_s22

        'Ну хорошо, хорошо… Я ухожу.':
            # r49 # reply4367
            jump dvaxis_s4


# s11 # say4366
label dvaxis_s11:  # -
    SPEAKER 'Зомби согласно кивает. Кажется, ты замечаешь, что под слоем маскировки его распирает от гордости.'

    menu:
        'Ты поможешь мне выбраться отсюда?' if dvaxisLogic.r4368_condition():
            # r50 # reply4368
            jump dvaxis_s12

        'Так что же ты делаешь здесь?':
            # r51 # reply4369
            jump dvaxis_s28

        'Ложь: Так ты шпионишь для анархистов? Я тоже шпионю за трухлявыми… Но сейчас я не могу об этом говорить, если ты понимаешь, о чем я. Какова *твоя* миссия здесь?' if dvaxisLogic.r4370_condition():
            # r52 # reply4370
            $ dvaxisLogic.r4370_action()
            jump dvaxis_s28

        'Ложь: Так ты шпионишь для анархистов? Я тоже шпионю за трухлявыми… Но сейчас я не могу об этом говорить. Что ты здесь делаешь?' if dvaxisLogic.r4371_condition():
            # r53 # reply4371
            $ dvaxisLogic.r4371_action()
            jump dvaxis_s28

        'Э-э, сейчас у меня нет времени на разговоры… может, как-нибудь в другой раз.':
            # r54 # reply4372
            jump dvaxis_s4


# s12 # say4373
label dvaxis_s12:  # from 7.0 11.0
    SPEAKER 'Зомби выглядит заинтересованным. Пвоулемы? Фево ты натвовил?'

    menu:
        'Я очнулся на одной из плит на верхнем этаже.':
            # r55 # reply4374
            jump dvaxis_s13

        'Каким-то образом я… оказался здесь запертым. Ты поможешь мне выбраться?':
            # r56 # reply4375
            jump dvaxis_s31

        'Поговорим об этом в другой раз.':
            # r57 # reply4376
            jump dvaxis_s4


# s13 # say4377
label dvaxis_s13:  # from 12.0 # Check EXTERN ~DMORTE~ : 87
    SPEAKER 'Зомби смотрит на тебя как на умалишенного. Ты фпятил?'

    menu:
        'Да, я фпятил. Я окончательно фпятил.':
            # r58 # reply4378
            jump dvaxis_s14

        'Фпятил? Что это значит?' if dvaxisLogic.r4379_condition():
            # r59 # reply4379
            jump dvaxis_s16

        'Я знаю, в это трудно поверить, но я говорю правду: я очнулся из мертвых на одной из плит на верхнем этаже.':
            # r60 # reply4381
            $ dvaxisLogic.r4381_action()
            jump dvaxis_s14

        'Э-э, нет… На самом деле, я каким-то образом оказался здесь заперт. Ты поможешь мне выбраться?':
            # r61 # reply4382
            jump dvaxis_s31

        'Забудь о нашем разговоре. Мне нужно идти.':
            # r62 # reply4383
            jump dvaxis_s4


# s14 # say4384
label dvaxis_s14:  # from 13.0 13.3 15.0
    SPEAKER 'Он смотрит на тебя, затем начинает шипеть и отмахиваться от тебя. Ты фпятил! Профь от мея!'

    menu:
        'Я никуда не уйду. Рассказывай, что ты здесь делаешь, или я позову стражу.' if dvaxisLogic.r4385_condition():
            # r63 # reply4385
            jump dvaxis_s21

        'Я никуда не уйду. Рассказывай, что ты здесь делаешь, или я позову стражу.' if dvaxisLogic.r4386_condition():
            # r64 # reply4386
            jump dvaxis_s17

        'Сначала ты ответишь на мои чертовы вопросы, или я сделаю твою маскировку настоящей.' if dvaxisLogic.r4387_condition():
            # r65 # reply4387
            $ dvaxisLogic.r4387_action()
            jump dvaxis_s19

        'Сначала ты ответишь на мои чертовы вопросы, или я сделаю твою маскировку настоящей.' if dvaxisLogic.r4388_condition():
            # r66 # reply4388
            $ dvaxisLogic.r4388_action()
            jump dvaxis_s22

        'Ну ладно, ладно… прощай.':
            # r67 # reply4389
            jump dvaxis_s4


# s15 # say4390
label dvaxis_s15:  # -
    SPEAKER 'Фальшивый зомби недоверчиво смотрит на вас обоих.'

    menu:
        'Это правда — я очнулся на одной из здешних плит.':
            # r68 # reply4391
            $ dvaxisLogic.r4391_action()
            jump dvaxis_s14

        'Э-э, прошу прощения… На самом деле, я оказался здесь заперт. Ты поможешь мне выбраться?':
            # r69 # reply4392
            jump dvaxis_s31

        'Неважно. Мне нужно идти.':
            # r70 # reply4393
            jump dvaxis_s4


# s16 # say4394
label dvaxis_s16:  # from 13.1
    SPEAKER 'Он смотрит на тебя, затем начинает шипеть и отмахиваться от тебя. Пуфтогоовый! Приурок! Профь от мея, пей! Профь!'

    menu:
        'Я никуда не уйду. Рассказывай, что ты здесь делаешь, или я позову стражу.' if dvaxisLogic.r4395_condition():
            # r71 # reply4395
            jump dvaxis_s21

        'Я никуда не уйду. Рассказывай, что ты здесь делаешь, или я позову стражу.' if dvaxisLogic.r4396_condition():
            # r72 # reply4396
            jump dvaxis_s17

        'Сначала ты ответишь на мои чертовы вопросы, или я сделаю твою маскировку настоящей.' if dvaxisLogic.r4397_condition():
            # r73 # reply4397
            $ dvaxisLogic.r4397_action()
            jump dvaxis_s19

        'Сначала ты ответишь на мои чертовы вопросы, или я сделаю твою маскировку настоящей.' if dvaxisLogic.r4398_condition():
            # r74 # reply4398
            $ dvaxisLogic.r4398_action()
            jump dvaxis_s22

        'Ну хорошо, хорошо… Я ухожу.':
            # r75 # reply4399
            jump dvaxis_s4


# s17 # say4400
label dvaxis_s17:  # from 7.5 10.1 14.1 16.1 25.3 27.3
    SPEAKER 'На миг он кажется испуганным, потом осматривает тебя, и по его лицу расползается ухмылка. Ты подеиффя фо мной фвоим фекветом, я подеюфь фвоим ф *тоой*. Фдефь у мея пряфуффа друфья, у тея фдефь *никоо*. Тее фдефь не мефто. Твуфьявые тея уют. Я фбегу.'

    menu:
        'Ты не сможешь сбежать, если я УБЬЮ тебя. А теперь отвечай, или я сделаю твою маскировку настоящей.' if dvaxisLogic.r4401_condition():
            # r76 # reply4401
            $ dvaxisLogic.r4401_action()
            jump dvaxis_s18

        'Ты не сможешь сбежать, если я УБЬЮ тебя. А теперь отвечай, или я сделаю твою маскировку настоящей.' if dvaxisLogic.r4402_condition():
            # r77 # reply4402
            $ dvaxisLogic.r4402_action()
            jump dvaxis_s22

        'Тогда гори в аду. Я ухожу.':
            # r78 # reply4403
            jump dvaxis_s4


# s18 # say4404
label dvaxis_s18:  # from 17.0
    SPEAKER 'Глаза зомби превращаются в щелочки, он шипит на тебя: Ты ПЫТАЕФФЯ фапифать мея ф кьигу мертфых? У мея фдефь пвяфуффа двуфья, у тея фдефь *никоо*. Твониф мея — они тея пвиконфят.'

    menu:
        'Я рискну. Готовься к смерти.':
            # r79 # reply4405
            $ dvaxisLogic.r4405_action()
            jump show_graphics_menu

        'Тогда гори в аду. Я ухожу. Тебе лучше быть настороже… *зомби*.':
            # r80 # reply4406
            jump dvaxis_s4


# s19 # say4407
label dvaxis_s19:  # from 7.6 10.2 14.2 16.2 25.4 27.4
    SPEAKER 'На миг он кажется испуганным, потом осматривает тебя, и по его лицу расползается ухмылка. ТЫ пытаеффя фапифать МЕЯ ф кьигу мертфых? У мея фдефь пвячуффа двуфья, у тея фдефь *никоо*. Твонеф мея — они тея пвиконфят.'

    menu:
        'Я рискну. Готовься к смерти.':
            # r81 # reply4408
            $ dvaxisLogic.r4408_action()
            jump show_graphics_menu

        'Что, если я раскрою твою маскировку перед стражей?' if dvaxisLogic.r4409_condition():
            # r82 # reply4409
            jump dvaxis_s21

        'Что, если я раскрою твою маскировку перед стражей?' if dvaxisLogic.r4410_condition():
            # r83 # reply4410
            jump dvaxis_s20

        'Тогда гори в аду. Я ухожу. Тебе лучше быть настороже… *зомби*.':
            # r84 # reply4411
            jump dvaxis_s4


# s20 # say4412
label dvaxis_s20:  # from 19.2
    SPEAKER 'Глаза зомби превращаются в щелочки, он шипит на тебя: Ты подеилфя фо мной фвоим фекретом, я подеюфь фоим ф *тоой*. Фдефь у мея прячуффа друфья, у тея фдефь *никоо*. Твуфьявые тея уют. Я фбегу.'

    menu:
        'Это был твой последний шанс, труп. Готовься к смерти.':
            # r85 # reply4413
            $ dvaxisLogic.r4413_action()
            jump show_graphics_menu

        'Тогда гори в аду. Я ухожу. Тебе лучше быть настороже, *зомби*.':
            # r86 # reply4414
            jump dvaxis_s4


# s21 # say4415
label dvaxis_s21:  # from 7.4 10.0 14.0 16.0 19.1 25.2 27.2
    SPEAKER 'Недобрый блеск в твоих глазах не оставляет от его самонадеянности и следа. Не-не-не! Не наа фвать фтражу! — он явно напуган. — Я-я-я фпионю фа твуфявыми, говою, фео увиву. Ни-нифео больфе.'

    menu:
        'Шпионишь? Для кого?':
            # r87 # reply4416
            jump dvaxis_s23

        'И чем же, по твоим наблюдениям, занимаются тленные?':
            # r88 # reply4417
            jump dvaxis_s29

        'У меня есть другие вопросы…':
            # r89 # reply4418
            jump dvaxis_s43

        'Это все, что я хотел узнать. Прощай, *зомби*.':
            # r90 # reply4419
            jump show_graphics_menu


# s22 # say4420
label dvaxis_s22:  # from 7.7 10.3 14.3 16.3 17.1 25.5 27.5
    SPEAKER 'Не-не-не! Не твогаи мея! Факт того, что ты явно превосходишь зомби в грубой силе, очевидно, повлиял на его решение, и от его самонадеянности не осталось и следа. Я-я-я фпионю за твуфьявыми, говою, фео увиву. Ни-нифео больфе.'

    menu:
        'Шпионишь? Для кого?':
            # r91 # reply4421
            jump dvaxis_s23

        'И чем же, по твоим наблюдениям, занимаются тленные?':
            # r92 # reply4422
            jump dvaxis_s29

        'У меня есть другие вопросы…':
            # r93 # reply4423
            jump dvaxis_s43

        'Это все, что я хотел знать. А теперь прочь с дороги, *зомби*.':
            # r94 # reply4424
            jump show_graphics_menu


# s23 # say4425
label dvaxis_s23:  # from 21.0 22.0 # Check EXTERN ~DMORTE~ : 89
    SPEAKER 'Зомби в страхе умолкает, ничего не желая говорить.'

    menu:
        'Ну же, для кого ты следишь за этим местом?' if dvaxisLogic.r4426_condition():
            # r95 # reply4426
            jump dvaxis_s70

        'Если ты скажешь мне прямо сейчас, для кого ты шпионишь, будет ГОРАЗДО меньше боли.' if dvaxisLogic.r4428_condition():
            # r96 # reply4428
            $ dvaxisLogic.r4428_action()
            jump dvaxis_s70

        'Тогда неважно. Так чем же, по твоим наблюдениям, занимаются тленные?':
            # r97 # reply4430
            jump dvaxis_s29

        'Есть еще кое-что, что я хочу узнать…':
            # r98 # reply4431
            jump dvaxis_s43

        'Тогда забудь об этом. Прощай, *зомби*.':
            # r99 # reply4432
            jump show_graphics_menu


# s24 # say4433
label dvaxis_s24:  # from 3.3 6.3 8.2
    SPEAKER 'Иффефь мея? Вафем? — он искоса смотрит на тебя. — У тея соофение двя мея?'

    menu:
        'Ложь: Да, у меня есть сообщение для тебя.':
            # r100 # reply4434
            $ dvaxisLogic.r4434_action()
            jump dvaxis_s26

        'Сообщение от кого?':
            # r101 # reply4435
            jump dvaxis_s27

        'Нет, у меня нет сообщений.':
            # r102 # reply4436
            jump dvaxis_s25


# s25 # say4437
label dvaxis_s25:  # from 24.2
    SPEAKER 'Яростно шепчет. Тада фео тее *надо*, пей?!'

    menu:
        'Я ищу выход отсюда. Ты можешь мне помочь?' if dvaxisLogic.r4438_condition():
            # r103 # reply4438
            jump dvaxis_s31

        'Мне нужны кое-какие сведения…':
            # r104 # reply4439
            jump dvaxis_s43

        'Рассказывай, что ты здесь делаешь, или я позову стражу.' if dvaxisLogic.r4440_condition():
            # r105 # reply4440
            jump dvaxis_s21

        'Рассказывай, что ты здесь делаешь, или я позову стражу.' if dvaxisLogic.r4441_condition():
            # r106 # reply4441
            jump dvaxis_s17

        'Отвечай на мои чертовы вопросы, или не успеешь пройти и трех шагов, как я сделаю эту маскировку настоящей.' if dvaxisLogic.r4442_condition():
            # r107 # reply4442
            $ dvaxisLogic.r4442_action()
            jump dvaxis_s19

        'Отвечай на мои чертовы вопросы, или не успеешь пройти и трех шагов, как я сделаю эту маскировку настоящей.' if dvaxisLogic.r4443_condition():
            # r108 # reply4443
            $ dvaxisLogic.r4443_action()
            jump dvaxis_s22

        'Извини, что побеспокоил тебя… кем бы ты ни был. Прощай.':
            # r109 # reply4444
            jump dvaxis_s4


# s26 # say4445
label dvaxis_s26:  # from 24.0
    SPEAKER 'Какое фоофение?'

    menu:
        'Ты должен сообщить мне свое задание.' if dvaxisLogic.r4446_condition():
            # r110 # reply4446
            jump dvaxis_s28

        'Ложь: У меня к тебе новые распоряжения.' if dvaxisLogic.r4447_condition():
            # r111 # reply4447
            $ dvaxisLogic.r4447_action()
            jump dvaxis_s30

        'Ложь: У меня… к тебе новые распоряжения.' if dvaxisLogic.r4448_condition():
            # r112 # reply4448
            $ dvaxisLogic.r4448_action()
            jump dvaxis_s30

        'Извини, у меня нет сообщений.':
            # r113 # reply4449
            jump dvaxis_s27

        'Неважно. Извини за беспокойство. Прощай.':
            # r114 # reply4450
            jump dvaxis_s27


# s27 # say4451
label dvaxis_s27:  # from 24.1 26.3 26.4
    SPEAKER 'Его глаза в ярости сужаются. Ты не фьяфной. Фто ты?'

    menu:
        'Я ищу выход отсюда. Ты можешь мне помочь?' if dvaxisLogic.r4452_condition():
            # r115 # reply4452
            jump dvaxis_s31

        'Мне нужны кое-какие сведения…':
            # r116 # reply4453
            jump dvaxis_s43

        'Рассказывай, что ты здесь делаешь, или я позову стражу.' if dvaxisLogic.r4454_condition():
            # r117 # reply4454
            jump dvaxis_s21

        'Рассказывай, что ты здесь делаешь, или я позову стражу.' if dvaxisLogic.r4455_condition():
            # r118 # reply4455
            jump dvaxis_s17

        '*Зомби*, вопросы здесь задаю я. Рассказывай, что ты здесь делаешь, или я сделаю эту маскировку настоящей.' if dvaxisLogic.r4456_condition():
            # r119 # reply4456
            $ dvaxisLogic.r4456_action()
            jump dvaxis_s19

        '*Зомби*, вопросы здесь задаю я. Рассказывай, что ты здесь делаешь, или я сделаю эту маскировку настоящей.' if dvaxisLogic.r4457_condition():
            # r120 # reply4457
            $ dvaxisLogic.r4457_action()
            jump dvaxis_s22

        'Извини, что побеспокоил тебя… кем бы ты ни был. Прощай.':
            # r121 # reply4458
            jump dvaxis_s4


# s28 # say4459
label dvaxis_s28:  # from 8.3 8.4 11.1 11.2 11.3 26.0 30.0 43.5
    SPEAKER 'Я фпионю фа твуфьявыми. Говою, чео вифу. Нифео больфе.'

    menu:
        'И чем же, по твоим наблюдениям, занимаются тленные?':
            # r122 # reply4460
            jump dvaxis_s29

        'Понятно. Я хотел спросить у тебя еще кое-что…':
            # r123 # reply4461
            jump dvaxis_s43

        'Это все, что я хотел узнать. Прощай.':
            # r124 # reply4462
            jump show_graphics_menu


# s29 # say4463
label dvaxis_s29:  # from 21.1 22.1 23.4 28.0 70.1 71.2
    SPEAKER 'Нифео. Они нифео ни деают. Нифео не нафол. Твупы, твупы, пвофто твупы. Твуфьявые *нифео* ни деают, — его глаза деловито сужаются. — Буу дальфе фледить.'

    menu:
        'Понятно. Я хотел спросить у тебя еще кое-что…':
            # r125 # reply4464
            jump dvaxis_s43

        'Это все, что я хотел узнать. Прощай.':
            # r126 # reply4465
            jump show_graphics_menu


# s30 # say4466
label dvaxis_s30:  # from 26.1 26.2
    SPEAKER 'Он сужает глаза, будто пытаясь тебя вычислить. Какие вафповявения?'

    menu:
        'Доложи свою миссию.':
            # r127 # reply4467
            jump dvaxis_s28

        'Мне нужно найти выход, через который можно уйти незамеченным.':
            # r128 # reply4468
            jump dvaxis_s49

        'Я твой сменщик. Сообщи все, что тебе удалось узнать, отдай все вещи и покинь это место.' if dvaxisLogic.r4469_condition():
            # r129 # reply4469
            $ dvaxisLogic.r4469_action()
            jump dvaxis_s72

        'Я здесь, чтобы помочь тебе во всем, в чем ты будешь нуждаться.':
            # r130 # reply4470
            jump dvaxis_s35

        'Твои распоряжения будут переданы в свое время. Я вернусь.':
            # r131 # reply4471
            jump show_graphics_menu


# s31 # say4472
label dvaxis_s31:  # from 7.1 12.1 13.4 15.1 25.0 27.0 50.0
    SPEAKER 'Он на секунду умолкает, затем медленно, будто бы понимающе кивает. Пофеу я доувен помоать тее?'

    menu:
        'Потому что мне нужна твоя помощь.':
            # r132 # reply4473
            jump dvaxis_s32

        'Мы можем помочь друг другу. Что ты хочешь взамен?' if dvaxisLogic.r4474_condition():
            # r133 # reply4474
            $ dvaxisLogic.r4474_action()
            jump dvaxis_s35

        'Потому что я не хотел бы *раскрывать* твою маскировочку… если только ты не поможешь мне.' if dvaxisLogic.r4475_condition():
            # r134 # reply4475
            jump dvaxis_s33

        'Потому что я не хотел бы *раскрывать* твою маскировочку… если только ты не поможешь мне.' if dvaxisLogic.r4476_condition():
            # r135 # reply4476
            jump dvaxis_s34

        'Тебе, похоже, больше по душе маскироваться под труп, чем БЫТЬ им. Годится такая причина?' if dvaxisLogic.r4477_condition():
            # r136 # reply4477
            $ dvaxisLogic.r4477_action()
            jump dvaxis_s75

        'Тебе, похоже, больше по душе маскироваться под труп, чем БЫТЬ им. Годится такая причина?' if dvaxisLogic.r4478_condition():
            # r137 # reply4478
            $ dvaxisLogic.r4478_action()
            jump dvaxis_s33

        'Забудь о нашей встрече. Я должен идти. Прощай.':
            # r138 # reply4479
            jump dvaxis_s4


# s32 # say4480
label dvaxis_s32:  # from 31.0
    SPEAKER 'Зомби едва усмехается. Фем *нао* фео-то, но нифто нифео *не дает*. *Дай* мне фео-нить, и, *мовет*, я помоу.'

    menu:
        'Что тебе надо?':
            # r139 # reply4481
            jump dvaxis_s35

        'Как на счет того, чтобы ты мне помог, а я взамен не стал звать стражу?' if dvaxisLogic.r4482_condition():
            # r140 # reply4482
            jump dvaxis_s33

        'Как на счет того, чтобы ты мне помог, а я взамен не стал звать стражу?' if dvaxisLogic.r4483_condition():
            # r141 # reply4483
            jump dvaxis_s34

        'Ты похож на того, кто скорее выбрал бы остаться в живых, чем ответил мне 'нет'. Итак… в последний раз спрашиваю: как мне отсюда выбраться?' if dvaxisLogic.r4484_condition():
            # r142 # reply4484
            $ dvaxisLogic.r4484_action()
            jump dvaxis_s75

        'Ты похож на того, кто скорее выбрал бы остаться в живых, чем ответил мне 'нет'. Итак… в последний раз спрашиваю: как мне отсюда выбраться?' if dvaxisLogic.r4485_condition():
            # r143 # reply4485
            $ dvaxisLogic.r4485_action()
            jump dvaxis_s33

        'Неинтересно. Прощай.':
            # r144 # reply4486
            jump dvaxis_s4


# s33 # say4487
label dvaxis_s33:  # from 31.2 31.5 32.1 32.4 34.1 35.2 35.5 75.0
    SPEAKER 'Он оглядывает тебя с ног до головы, как бы примериваясь, сможет ли он с тобой справиться, останавливается на шрамах и решает не делать этого. Хм-м. Ты мовефь убевать фееф поуталы.'

    menu:
        'Порталы?':
            # r145 # reply4672
            $ dvaxisLogic.r4672_action()
            jump dvaxis_s50


# s34 # say4491
label dvaxis_s34:  # from 31.3 32.2 35.3
    SPEAKER 'На миг он кажется испуганным, потом осматривает тебя, и по его лицу расползается ухмылка. Ты подеиффя фо мной фвоим фекветом, я подеюфь фвоим ф *тоой*. Фдефь у мея пряфуффа друфья, у тея фдефь *никоо*. Тее фдефь не мефто. Твуфьявые тея уют. Я фбегу.'

    menu:
        'Ты не сможешь сбежать, если я УБЬЮ тебя. А теперь отвечай, или я сделаю твою маскировку настоящей.' if dvaxisLogic.r4489_condition():
            # r146 # reply4489
            $ dvaxisLogic.r4489_action()
            jump dvaxis_s74

        'Ты не сможешь сбежать, если я УБЬЮ тебя. А теперь отвечай, или я сделаю твою маскировку настоящей.' if dvaxisLogic.r4490_condition():
            # r147 # reply4490
            $ dvaxisLogic.r4490_action()
            jump dvaxis_s33

        'Тогда гори в аду. Я ухожу.':
            # r148 # reply4492
            jump dvaxis_s4


# s35 # say4493
label dvaxis_s35:  # from 30.3 31.1 32.0
    SPEAKER 'Тее нуно найти *кьюч* дья мея. Нуен желефный кьюч к байвамовофной комуафе.'

    menu:
        'Ты имеешь в виду этот ключ?' if dvaxisLogic.r4494_condition():
            # r149 # reply4494
            $ dvaxisLogic.r4494_action()
            jump dvaxis_s42

        'Хорошо. Где этот ключ?':
            # r150 # reply4495
            jump dvaxis_s36

        'У меня нет времени на это. Помоги мне сбежать, или я позову стражу.' if dvaxisLogic.r4496_condition():
            # r151 # reply4496
            $ dvaxisLogic.r4496_action()
            jump dvaxis_s33

        'У меня нет времени на это. Помоги мне сбежать, или я позову стражу.' if dvaxisLogic.r4497_condition():
            # r152 # reply4497
            $ dvaxisLogic.r4497_action()
            jump dvaxis_s34

        'Я не собираюсь ничего тебе приносить. Помоги мне сбежать, или я прямо здесь и сейчас сверну тебе шею.' if dvaxisLogic.r4498_condition():
            # r153 # reply4498
            $ dvaxisLogic.r4498_action()
            jump dvaxis_s75

        'Я не собираюсь ничего тебе приносить. Помоги мне сбежать, или я прямо здесь и сейчас сверну тебе шею.' if dvaxisLogic.r4499_condition():
            # r154 # reply4499
            $ dvaxisLogic.r4499_action()
            jump dvaxis_s33

        'Нет, спасибо. Может быть, в другой раз.':
            # r155 # reply4500
            jump dvaxis_s4


# s36 # say4501
label dvaxis_s36:  # from 35.1 58.2
    SPEAKER 'Он у твуфьявой, — он показывает на свои глаза. — У нее воутые глафифи… Затем он делает движение руками, похожее на стрижку ножницами. Лефвия на пайфах.'

    menu:
        'Я уже с ней встречался. Вот ключ.' if dvaxisLogic.r4502_condition():
            # r156 # reply4502
            $ dvaxisLogic.r4502_action()
            jump dvaxis_s42

        'Тленная… с желтыми глазами и лезвиями на пальцах? Я ее уже видел в бальзамационной. Погоди… я скоро вернусь с ключом.' if dvaxisLogic.r64520_condition():
            # r157 # reply64520
            $ dvaxisLogic.r64520_action()
            jump dvaxis_s38

        'Тленная… с желтыми глазами и лезвиями на пальцах? Хорошо. Я вернусь с ключом.' if dvaxisLogic.r4503_condition():
            # r158 # reply4503
            $ dvaxisLogic.r4503_action()
            jump dvaxis_s38

        'Судя по твоему описанию, эта тленная выглядит довольно привлекательно. Ты уверен, что не хочешь, чтобы я вас познакомил?':
            # r159 # reply4504
            $ dvaxisLogic.r4504_action()
            jump dvaxis_s37


# s37 # say4505
label dvaxis_s37:  # from 36.3
    SPEAKER 'Зомби моргает. Кажется, он тебя не понял.'

    menu:
        'Это была шутка, видишь ли, ты… а, забудь, найду я твой ключ.' if dvaxisLogic.r4506_condition():
            # r160 # reply4506
            $ dvaxisLogic.r4506_action()
            jump dvaxis_s38

        'Это была шутка, видишь ли, ты… а, забудь, найду я твой ключ.' if dvaxisLogic.r66150_condition():
            # r161 # reply66150
            $ dvaxisLogic.r66150_action()
            jump dvaxis_s38


# s38 # say4507
label dvaxis_s38:  # from 36.1 36.2 37.0 37.1
    SPEAKER 'Зомби косо на тебя смотрит. Ефи тея поимают, не говои никоу обо мне, или я добеусь до тея, когда ты буешь фпать.'

    menu:
        'Я найду твой треклятый ключ… но лучше бы тебе быть поосторожнее со своими угрозами, слышишь меня?' if dvaxisLogic.r4508_condition():
            # r162 # reply4508
            $ dvaxisLogic.r4508_action()
            jump show_graphics_menu

        'Я еще вернусь.' if dvaxisLogic.r4509_condition():
            # r163 # reply4509
            $ dvaxisLogic.r4509_action()
            jump show_graphics_menu

        'Я найду твой треклятый ключ… но лучше бы тебе быть поосторожнее со своими угрозами, слышишь меня?' if dvaxisLogic.r4510_condition():
            # r164 # reply4510
            jump show_graphics_menu

        'Я еще вернусь.' if dvaxisLogic.r4511_condition():
            # r165 # reply4511
            jump show_graphics_menu


# s39 # say4512
label dvaxis_s39:  # from 43.12 # Check EXTERN ~DMORTE~ : 93
    SPEAKER 'Я ховоф ф мафкироуке. У мея ефть фрамы. Я наил на сея мноо байфамируфеи фидкофти. Иф мея поуфифя ХООФЫЙ фомби, — зомби хихикает через зашитые губы, потом стучит себя по голове. — Твуфяки тууупые.'

    jump show_graphics_menu

# s40 # say4514
label dvaxis_s40:  # -
    SPEAKER 'Я фду тея фдефь. Найди кьюч, — зомби улыбается мертвецким оскалом. — Потом я помоу тее.'

    menu:
        'Если я найду его, то принесу.':
            # r166 # reply4515
            jump show_graphics_menu

        'Тогда забудь об этом.':
            # r167 # reply4516
            jump show_graphics_menu


# s41 # say4517
label dvaxis_s41:  # -
    SPEAKER 'Глаза зомби расширяются, он протягивает руку и прищелкивает пальцами. Дай его мие.'

    menu:
        'Секундочку. Я хочу кое-что взамен.':
            # r168 # reply4518
            jump show_graphics_menu

        'На, бери.':
            # r169 # reply4519
            $ dvaxisLogic.r4519_action()
            jump show_graphics_menu


# s42 # say4520
label dvaxis_s42:  # from 35.0 36.0 58.0 58.1
    SPEAKER 'Глаза зомби расширены, он выхватывает ключ из твоей руки. Затем он поворачивается, все время кивая. Хорофо… хорофо.'

    menu:
        'А теперь… Как мне выбраться отсюда?' if dvaxisLogic.r4521_condition():
            # r170 # reply4521
            $ dvaxisLogic.r4521_action()
            jump dvaxis_s49

        'А теперь… Есть кое-что, о чем я хочу узнать…' if dvaxisLogic.r4522_condition():
            # r171 # reply4522
            $ dvaxisLogic.r4522_action()
            jump dvaxis_s43


# s43 # say4523
label dvaxis_s43:  # from 21.2 22.2 23.5 25.1 27.1 28.1 29.0 42.1 44.2 45.1 46.2 47.2 48.0 51.1 52.0 53.0 54.0 56.0 58.3 59.0 60.3 61.4 62.3 63.1 64.0 70.2 71.3 77.0
    SPEAKER 'Фто ты хофефь уфнать?'

    menu:
        'Как мне выбраться отсюда?' if dvaxisLogic.r64508_condition():
            # r172 # reply64508
            jump dvaxis_s49

        'Как мне выбраться отсюда?' if dvaxisLogic.r4524_condition():
            # r173 # reply4524
            jump dvaxis_s49

        'Еще раз — где тот портал, о котором ты говорил?' if dvaxisLogic.r4525_condition():
            # r174 # reply4525
            jump dvaxis_s52

        'Ты можешь замаскировать меня под зомби?' if dvaxisLogic.r4526_condition():
            # r175 # reply4526
            jump dvaxis_s63

        'Ты можешь еще раз замаскировать меня под зомби?' if dvaxisLogic.r4527_condition():
            # r176 # reply4527
            jump dvaxis_s63

        'Что ты здесь делаешь?' if dvaxisLogic.r4528_condition():
            # r177 # reply4528
            jump dvaxis_s28

        'Ты знаешь кого-нибудь по имени Фарод?' if dvaxisLogic.r4673_condition():
            # r178 # reply4673
            jump dvaxis_s44

        'Я потерял дневник. Тебе ничего такого не попадалось?' if dvaxisLogic.r4530_condition():
            # r179 # reply4530
            jump dvaxis_s47

        'Что ты можешь сказать о Дхолле?' if dvaxisLogic.r4531_condition():
            # r180 # reply4531
            jump dvaxis_s53

        'Что ты можешь сказать о Дейонарре?' if dvaxisLogic.r4532_condition():
            # r181 # reply4532
            jump dvaxis_s54

        'Что ты можешь сказать о Соэго?' if dvaxisLogic.r4533_condition():
            # r182 # reply4533
            jump dvaxis_s55

        'Как ты приобрел такой внешний вид?' if dvaxisLogic.r4534_condition():
            # r183 # reply4534
            jump dvaxis_s60

        'Как ты приобрел такой внешний вид?' if dvaxisLogic.r4535_condition():
            # r184 # reply4535
            jump dvaxis_s39

        'Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи.':
            # r185 # reply4536
            jump show_graphics_menu


# s44 # say4537
label dvaxis_s44:  # from 43.6
    SPEAKER 'Фа-ОД? — нахмурившись, зомби напряженно думает. — Я… фвыфал, фто он фиет де-то ф Уле, — он качает головой. — Нефнаю где, — он снова хмурится. — Твуфявые фодят ф ума, они не ЛЮЯТ Фа-ода.'

    menu:
        'Улей?':
            # r186 # reply4538
            jump dvaxis_s45

        'А почему тленные не любят Фарода?':
            # r187 # reply4539
            $ dvaxisLogic.r4539_action()
            jump dvaxis_s46

        'Есть еще кое-что, что я хочу узнать…':
            # r188 # reply4540
            jump dvaxis_s43

        'Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи.':
            # r189 # reply4541
            jump show_graphics_menu


# s45 # say4542
label dvaxis_s45:  # from 44.0
    SPEAKER 'Твуффобы фнауви.'

    menu:
        'А почему тленные не любят Фарода?':
            # r190 # reply4543
            $ dvaxisLogic.r4543_action()
            jump dvaxis_s46

        'Есть еще кое-что, что я хочу узнать…':
            # r191 # reply4544
            jump dvaxis_s43

        'Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи.':
            # r192 # reply4545
            jump show_graphics_menu


# s46 # say4546
label dvaxis_s46:  # from 44.1 45.0 # Check EXTERN ~DMORTE~ : 91
    SPEAKER 'Он фбофик. Пвинофит твупы ф Моуг, пводает их твуфвым. Пвинофит МУОГО твупоф. Твуфявые ненают, откуда он их беет. Дуают, он пифет пьей в кьигу мертфых.'

    menu:
        'Э-э… что?' if dvaxisLogic.r4547_condition():
            # r193 # reply4547
            jump dvaxis_s48

        'А… Есть кое-что еще, о чем я хочу узнать…':
            # r194 # reply4549
            jump dvaxis_s43

        'Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи.':
            # r195 # reply4550
            jump show_graphics_menu


# s47 # say4551
label dvaxis_s47:  # from 43.7 # Check EXTERN ~DMORTE~ : 92
    SPEAKER 'Ненают. Какой-то пей обфифтил тея?'

    menu:
        'Э-э… что?' if dvaxisLogic.r4552_condition():
            # r196 # reply4552
            jump dvaxis_s48

        'А… Есть кое-что еще, о чем я хочу узнать…':
            # r197 # reply4554
            jump dvaxis_s43

        'Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи.':
            # r198 # reply4555
            jump show_graphics_menu


# s48 # say4556
label dvaxis_s48:  # from 46.0 47.0
    SPEAKER 'Зомби пытается сказать, умолкает, пытается снова, затем вздыхает. Очевидно, что доходчивей он сказать не сможет.'

    menu:
        'А… Есть кое-что еще, о чем я хочу узнать…':
            # r199 # reply4557
            jump dvaxis_s43

        'Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи.':
            # r200 # reply4558
            jump show_graphics_menu


# s49 # say4559
label dvaxis_s49:  # from 30.1 42.0 43.0 43.1
    SPEAKER 'Зомби ворчит. Ты мовешь убевафь феев поуталы, — он взмахивает руками. — Пуф.'

    menu:
        'Порталы? Что за порталы?':
            # r201 # reply4560
            jump dvaxis_s50


# s50 # say4563
label dvaxis_s50:  # from 33.0 49.0
    SPEAKER 'Поуталы… — зомби окидывает широким жестом пространство вокруг себя. — Поуталы вефде.'

    menu:
        'Ты можешь показать мне один из этих порталов?' if dvaxisLogic.r4564_condition():
            # r202 # reply4564
            jump dvaxis_s31

        'Ты можешь показать мне один из этих порталов?' if dvaxisLogic.r64509_condition():
            # r203 # reply64509
            jump dvaxis_s51

        'Ты можешь показать мне один из этих порталов?' if dvaxisLogic.r64510_condition():
            # r204 # reply64510
            jump dvaxis_s51

        'Ты можешь показать мне один из этих порталов?' if dvaxisLogic.r64511_condition():
            # r205 # reply64511
            jump dvaxis_s51


# s51 # say4567
label dvaxis_s51:  # from 50.1 50.2 50.3 72.0
    SPEAKER 'Зомби кивает. Тее надо выити, пойти ф арку на певом этаже, февео-фападный фал… Тее нувна кофть паица, фогнутоо в кьюк… — он поднимает указательный палец и сгибает его в крюк. — Ефли у тея кьюч, иди в авку и пуыгай ф тайную гуобицу. И ты выбралфя отфюда. Тайный выфод, — он энергично кивает. — Там ты мовефь ОДОФНУТЬ.'

    menu:
        'Кость согнутого пальца? А где можно найти ее?' if dvaxisLogic.r64527_condition():
            # r206 # reply64527
            $ dvaxisLogic.r64527_action()
            jump dvaxis_s77

        'У меня есть другие вопросы…' if dvaxisLogic.r4568_condition():
            # r207 # reply4568
            $ dvaxisLogic.r4568_action()
            jump dvaxis_s43

        'Арка в северо-западной комнате, на первом этаже? Хорошо, я проверю.' if dvaxisLogic.r4569_condition():
            # r208 # reply4569
            $ dvaxisLogic.r4569_action()
            jump show_graphics_menu


# s52 # say4570
label dvaxis_s52:  # from 43.2
    SPEAKER 'Фуфай! Фапомиай! — в голосе зомби слышна раздраженность. — Арка, пеувый этаж, феверо-фападная коуната… — он поднимает указательный палец и сгибает его. — Тее нувна кофть паица, фогнутая. Ты попаефь ф тайную гуобицу. Тайный выфод. Там ты мовефь ОДОФНУТЬ.'

    menu:
        'Есть еще кое-что, что я хочу узнать…':
            # r209 # reply4571
            jump dvaxis_s43

        'Арка в северо-западной комнате, на первом этаже, открывается костью изогнутого пальца? Хорошо, на этот раз запомнил.':
            # r210 # reply4572
            jump show_graphics_menu


# s53 # say4573
label dvaxis_s53:  # from 43.8
    SPEAKER 'Пифец, — пожимает плечами. — Фтарый. Вовтый.'

    menu:
        'Полагаю, добавить больше нечего. Я хочу знать кое-что еще…':
            # r211 # reply4574
            jump dvaxis_s43

        'Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи.':
            # r212 # reply4575
            jump show_graphics_menu


# s54 # say4576
label dvaxis_s54:  # from 43.9
    SPEAKER 'Э? — хмурится. — Фто она?'

    menu:
        'Забудь. Я хочу знать кое-что еще…':
            # r213 # reply4577
            jump dvaxis_s43

        'Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи.':
            # r214 # reply4578
            jump show_graphics_menu


# s55 # say4579
label dvaxis_s55:  # from 43.10
    SPEAKER 'Пвоводник. На пеувом этаже. Фто ты хофефь фнать о нем?'

    menu:
        'Что ты знаешь о нем?':
            # r215 # reply4580
            $ dvaxisLogic.r4580_action()
            jump dvaxis_s56

        'Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи.':
            # r216 # reply4581
            jump show_graphics_menu


# s56 # say4582
label dvaxis_s56:  # from 55.0
    SPEAKER 'Фтвааный. Не твуфявый, не анавфифт. Гуава двугие… — пожимает плечами. — Как у квыфы. Фтванно.'

    menu:
        'Хорошо, что только он странный в этом месте. Я хочу знать кое-что еще…':
            # r217 # reply4583
            jump dvaxis_s43

        'Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи.':
            # r218 # reply4584
            jump show_graphics_menu


# s57 # say4585
label dvaxis_s57:  # - # IF ~  GlobalGT("Vaxis","GLOBAL",0)
    SPEAKER 'Ты видишь фальшивого зомби. Ты удивлен его маскировке… его дыхание едва заметно, ты практически не можешь уловить его.'

    menu:
        'Приветствую.' if dvaxisLogic.r4586_condition():
            # r219 # reply4586
            jump dvaxis_s58

        'Приветствую.' if dvaxisLogic.r4587_condition():
            # r220 # reply4587
            jump dvaxis_s58

        'Приветствую.' if dvaxisLogic.r4588_condition():
            # r221 # reply4588
            jump dvaxis_s59

        'Приветствую.' if dvaxisLogic.r4589_condition():
            # r222 # reply4589
            jump dvaxis_s58

        'Оставить его в покое.':
            # r223 # reply4590
            jump show_graphics_menu


# s58 # say4591
label dvaxis_s58:  # from 57.0 57.1 57.3
    SPEAKER 'Зомби быстро оглядывается вокруг, высматривая соглядатая, затем поворачивается к тебе: Фто?'

    menu:
        'Вот ключ к бальзамационной комнате, который ты хотел.' if dvaxisLogic.r4592_condition():
            # r224 # reply4592
            $ dvaxisLogic.r4592_action()
            jump dvaxis_s42

        'Вот ключ к бальзамационной комнате, который ты хотел.' if dvaxisLogic.r4593_condition():
            # r225 # reply4593
            $ dvaxisLogic.r4593_action()
            jump dvaxis_s42

        'Еще раз — где тот ключ, о котором ты говорил?' if dvaxisLogic.r4594_condition():
            # r226 # reply4594
            jump dvaxis_s36

        'У меня есть несколько вопросов к тебе…':
            # r227 # reply4595
            jump dvaxis_s43

        'Неважно.':
            # r228 # reply4596
            jump show_graphics_menu


# s59 # say4597
label dvaxis_s59:  # from 57.2
    SPEAKER 'Зомби быстро оглядывается вокруг, высматривая соглядатая, затем шипит на тебя. Ухои! Вон!'

    menu:
        'Нет. Сначала у меня несколько вопросов к тебе…':
            # r229 # reply4598
            jump dvaxis_s43

        'Тогда неважно.' if dvaxisLogic.r4599_condition():
            # r230 # reply4599
            jump dvaxis_s4

        'Тогда неважно.' if dvaxisLogic.r4600_condition():
            # r231 # reply4600
            jump show_graphics_menu


# s60 # say4601
label dvaxis_s60:  # from 43.11
    SPEAKER 'Я ховоф ф мафкироуке. У мея ефть фрамы. Я наил на сея мноо байфамируфеи фидкофти. Иф мея поуфифя ХООФЫЙ фомби, — зомби хихикает через зашитые губы, потом стучит себя по голове. — Твуфяки тууупые.'

    menu:
        'Ага, уж кто тупой, так это они. Это точно.':
            # r232 # reply4602
            jump dvaxis_s61

        'Это не больно?':
            # r233 # reply4603
            jump dvaxis_s62

        'Довольно неплохая маскировка. Скажи… а ты можешь и меня замаскировать под зомби?' if dvaxisLogic.r4604_condition():
            # r234 # reply4604
            jump dvaxis_s63

        'Есть еще кое-что, что я хочу узнать…':
            # r235 # reply4605
            jump dvaxis_s43

        'Мне нужно идти. Прощай.':
            # r236 # reply4606
            jump show_graphics_menu


# s61 # say4607
label dvaxis_s61:  # from 60.0
    SPEAKER 'Зомби определенно не понял сарказма, энергично кивая словам. Тупие твуфявые. Ив мея ХОВОФЫЙ фомби.'

    menu:
        'Это не больно?':
            # r237 # reply4608
            jump dvaxis_s62

        'Довольно неплохая маскировка. А ты можешь и меня замаскировать под зомби?' if dvaxisLogic.r4609_condition():
            # r238 # reply4609
            jump dvaxis_s63

        'Есть еще кое-что, что я хочу узнать…' if dvaxisLogic.r4610_condition():
            # r239 # reply4610
            jump dvaxis_s64

        'Мне нужно идти. Прощай.' if dvaxisLogic.r4611_condition():
            # r240 # reply4611
            jump dvaxis_s64

        'Есть еще кое-что, что я хочу узнать…' if dvaxisLogic.r4612_condition():
            # r241 # reply4612
            jump dvaxis_s43

        'Мне нужно идти. Прощай.' if dvaxisLogic.r4613_condition():
            # r242 # reply4613
            jump show_graphics_menu


# s62 # say4614
label dvaxis_s62:  # from 60.1 61.0
    SPEAKER 'Он смотрит на твои шрамы. А как ты думаефь? По мие, нет, не офень, — бьет себя по груди. — Я КИЕПКИЙ.'

    menu:
        'Довольно неплохая маскировка. А ты можешь и меня замаскировать под зомби?' if dvaxisLogic.r4615_condition():
            # r243 # reply4615
            jump dvaxis_s63

        'Есть еще кое-что, что я хочу узнать…' if dvaxisLogic.r4616_condition():
            # r244 # reply4616
            jump dvaxis_s64

        'Мне нужно идти. Прощай.' if dvaxisLogic.r4617_condition():
            # r245 # reply4617
            jump dvaxis_s64

        'Есть еще кое-что, что я хочу узнать…' if dvaxisLogic.r4618_condition():
            # r246 # reply4618
            jump dvaxis_s43

        'Мне нужно идти. Прощай.' if dvaxisLogic.r4674_condition():
            # r247 # reply4674
            jump show_graphics_menu


# s63 # say4619
label dvaxis_s63:  # from 43.3 43.4 60.2 61.1 62.0 64.1 64.2
    SPEAKER 'Что-то бормоча, он несколько раз оглядывает тебя с ног до головы, затем кивает. Уху. Мие нуна банка баифама, — показывает на шрамы на твоей груди. — И игоука ф ниткой.'

    menu:
        'На, бери.' if dvaxisLogic.r4620_condition():
            # r248 # reply4620
            $ dvaxisLogic.r4620_action()
            jump dvaxis_s65

        'Я подумаю над этим. У меня есть еще несколько вопросов…':
            # r249 # reply4621
            $ dvaxisLogic.r4621_action()
            jump dvaxis_s43

        'Может, быть в другой раз, спасибо… Прощай.':
            # r250 # reply4622
            $ dvaxisLogic.r4622_action()
            jump show_graphics_menu

        'Бальзамирующая жидкость и нитка? Пойду, поищу их.':
            # r251 # reply4623
            $ dvaxisLogic.r4623_action()
            jump show_graphics_menu


# s64 # say4624
label dvaxis_s64:  # from 61.2 61.3 62.1 62.2
    SPEAKER 'Странным взглядом он осматривает тебя с ног до головы. Ты будефь ХОВОФЫМ фомби. Мовно фделать из тея фомби? ХОВОФАЯ мафкиофка.'

    menu:
        'Спасибо. У меня есть другие вопросы к тебе…':
            # r252 # reply4625
            $ dvaxisLogic.r4625_action()
            jump dvaxis_s43

        'Конечно. Ты сможешь сделать это?':
            # r253 # reply4626
            jump dvaxis_s63

        'Почему бы и нет? Я и так чувствую себя ходячим мертвецом.':
            # r254 # reply4627
            jump dvaxis_s63

        'Нет… нет… так тоже неплохо. Прощай.':
            # r255 # reply4628
            $ dvaxisLogic.r4628_action()
            jump show_graphics_menu


# s65 # say4629
label dvaxis_s65:  # from 63.0 # Check EXTERN ~DMORTE~ : 94
    SPEAKER 'Зомби берет у тебя предметы и приступает к работе…'

    menu:
        'Попробовать не двигаться.' if dvaxisLogic.r4630_condition():
            # r256 # reply4630
            $ dvaxisLogic.r4630_action()
            jump dvaxis_s66

        'Попробовать не двигаться.' if dvaxisLogic.r4632_condition():
            # r257 # reply4632
            $ dvaxisLogic.r4632_action()
            jump dvaxis_s66

        'Попробовать не двигаться.' if dvaxisLogic.r64533_condition():
            # r258 # reply64533
            $ dvaxisLogic.r64533_action()
            jump dvaxis_s66


# s66 # say4633
label dvaxis_s66:  # from 65.0 65.2 65.3 # Check EXTERN ~DMORTE~ : 95
    SPEAKER 'Зомби обильно натирает твое тело бальзамирующей жидкостью, затем широкими стежками зашивает несколько шрамов. Начав с ног, он медленно поднимается наверх, зашивая в конце концов твои губы.'

    menu:
        'Ммм-ммф-ммм… Фпафибо.' if dvaxisLogic.r4634_condition():
            # r259 # reply4634
            jump dvaxis_s67

        'Ммм-ммф-ммм… Фпафибо.' if dvaxisLogic.r4636_condition():
            # r260 # reply4636
            jump dvaxis_s67


# s67 # say4637
label dvaxis_s67:  # from 66.0 66.2
    SPEAKER 'Зомби держит тебя за руку. Офтововно! Вафгоов вафофет фвы, науфив мафкивку. Фомби не говоят. Поняу? Говои медвенно, офтовоно.'

    menu:
        'Ммф… ммм. Я… понимаю.':
            # r261 # reply4638
            $ dvaxisLogic.r4638_action()
            jump dvaxis_s68


# s68 # say4639
label dvaxis_s68:  # from 67.0
    SPEAKER 'Зомби хмурится. Мафкирофка не деужится доуго… бальфам выфыхает, фвы рвутфя, — он жмет плечами. — Фнаружи Морга от нее нифего не офтанетфя. Не бегай! Ефли ты побежифь, то науфифь вфю мафкирофку.'

    menu:
        'Снова кивнуть, уйти.':
            # r262 # reply4640
            jump show_graphics_menu


# s69 # say4641
label dvaxis_s69:  # -
    SPEAKER 'Зомби хмурится. Фде-то я тея виел. Мы не виелифь раньфе?'

    menu:
        'Может быть. Где ты меня видел?':
            # r263 # reply4642
            jump show_graphics_menu

        'X.':
            # r264 # reply4643
            jump show_graphics_menu


# s70 # say4644
label dvaxis_s70:  # from 23.0 23.2 71.0 71.1
    SPEAKER 'К твоему удивлению, зомби отступается от тебя… Он начинает со страхом озираться.'

    menu:
        'Не хочешь говорить? Тогда приготовься кричать.':
            # r265 # reply4645
            $ dvaxisLogic.r4645_action()
            jump show_graphics_menu

        'Тогда неважно. Так чем же, по твоим наблюдениям, занимаются тленные?':
            # r266 # reply4646
            jump dvaxis_s29

        'Есть еще кое-что, что я хочу узнать…':
            # r267 # reply4647
            jump dvaxis_s43

        'Тогда забудь об этом. Прощай, *зомби*.':
            # r268 # reply4648
            jump show_graphics_menu


# s71 # say4649
label dvaxis_s71:  # -
    SPEAKER 'Зомби смотрит на вас обоих с явной опаской, продолжая молчать… но что-то в его выражении говорит тебе, что предположение Морта верно.'

    menu:
        'Значит, анархисты? Так за кем вы тут следите?':
            # r269 # reply4650
            jump dvaxis_s70

        'Если ты скажешь мне прямо сейчас, почему анархисты следят за этим местом, боли будет ГОРАЗДО меньше.':
            # r270 # reply4651
            $ dvaxisLogic.r4651_action()
            jump dvaxis_s70

        'Тогда неважно. Так чем же, по твоим наблюдениям, занимаются тленные?':
            # r271 # reply4652
            jump dvaxis_s29

        'Есть еще кое-что, что я хочу узнать…':
            # r272 # reply4653
            jump dvaxis_s43

        'Тогда забудь об этом. Прощай, *зомби*.':
            # r273 # reply4654
            jump show_graphics_menu


# s72 # say4655
label dvaxis_s72:  # from 30.2
    SPEAKER 'Зомби выглядит сбитым с толку, но затем пожимает плечами, начиная копаться в своей заляпанной тунике. Вфе тихо, твувявыя не февелятся, нифего новоо с пофледнего отфета. Спустя несколько секунд он протягивает тебе какие-то предметы, затем ворчит: Вот Судя по запаху, они прятались очень глубоко, чтобы их невозможно было найти в случае обыска. Я фкоро уйду.'

    menu:
        'Уйдешь? Как?' if dvaxisLogic.r4656_condition():
            # r274 # reply4656
            jump dvaxis_s51

        'Отлично. Прощай, Ваксис.' if dvaxisLogic.r64532_condition():
            # r275 # reply64532
            jump show_graphics_menu


# s73 # say4658
label dvaxis_s73:  # -
    SPEAKER 'Зомби ворчит: Поутал в арке — пеувый этав, феверо-фападная коумата, нувен кофтяной паиец дья откуывания, — он кивает. — Удафи.'

    menu:
        'Э-э… Ладно.':
            # r276 # reply4659
            jump show_graphics_menu


# s74 # say4660
label dvaxis_s74:  # from 34.0
    SPEAKER 'Глаза зомби превращаются в щелочки, он шипит на тебя: Ты ПЫТАЕФФЯ фапифать мея ф кьигу мертфых? У мея фдефь пвяфуффа двуфья, у тея фдефь *никоо*. Твониф мея — они тея пвиконфят.'

    menu:
        'Это был твой последний шанс. Готовься к смерти.':
            # r277 # reply4661
            $ dvaxisLogic.r4661_action()
            jump show_graphics_menu

        'Тогда гори в аду. Я ухожу. Тебе лучше быть настороже… *зомби*!':
            # r278 # reply4662
            jump dvaxis_s4


# s75 # say4663
label dvaxis_s75:  # from 31.4 32.3 35.4
    SPEAKER 'На миг он кажется испуганным, потом осматривает тебя, и по его лицу расползается ухмылка. ТЫ пытаеффя фапифать МЕЯ ф кьигу мертфых? У мея фдефь пвячуффа двуфья, у тея фдефь *никоо*. Твонеф мея — они тея пвиконфят.'

    menu:
        'А что, если я раскрою твою маскировку страже?' if dvaxisLogic.r4664_condition():
            # r279 # reply4664
            jump dvaxis_s33

        'А что, если я раскрою твою маскировку страже?' if dvaxisLogic.r4665_condition():
            # r280 # reply4665
            jump dvaxis_s76

        'Я рискну. Готовься к смерти.':
            # r281 # reply4666
            $ dvaxisLogic.r4666_action()
            jump show_graphics_menu

        'Тогда гори в аду. Я ухожу. Тебе лучше быть настороже… *зомби*.':
            # r282 # reply4667
            jump dvaxis_s4


# s76 # say4668
label dvaxis_s76:  # from 75.1
    SPEAKER 'Глаза зомби превращаются в щелочки, он шипит на тебя: Ты подеилфя фо мной фвоим фекретом, я подеюфь фоим ф *тоой*. Фдефь у мея прячуффа друфья, у тея фдефь *никоо*. Твуфьявые тея уют. Я фбегу.'

    menu:
        'Это был твой последний шанс, труп. Готовься к смерти.':
            # r283 # reply4669
            $ dvaxisLogic.r4669_action()
            jump show_graphics_menu

        'Тогда гори в аду. Я ухожу. Тебе лучше быть настороже… *зомби*.':
            # r284 # reply4670
            jump dvaxis_s4


# s77 # say64523
label dvaxis_s77:  # from 51.0
    SPEAKER 'Он пожимает плечами. Доувен быть де-то фдефь… Ифи на фкладах навеуху. Мовет быть, там.'

    menu:
        'Хорошо. У меня есть другие вопросы…':
            # r285 # reply64524
            jump dvaxis_s43

        'Хорошо. Я проверю наверху, есть ли там изогнутая кость пальца, потом пойду на первый этаж, к одной из арок в северо-западной комнате. Все ясно.':
            # r286 # reply64525
            jump show_graphics_menu
