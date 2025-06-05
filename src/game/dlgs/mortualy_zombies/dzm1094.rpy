init python:
    def _get_asonje_name(gsm):
        return asonje if gsm.get_know_asonje_name() else dzm1041
    def _set_asonje_name(gsm):
        gsm.set_know_asonje_name(True)

init python:
    def _r6565_action(gsm):
        gsm.dec_law()
        gsm.set_zombie_chaotic(True)
    def _r6568_action(gsm):
        gsm.set_meet_asonje(True)
    def _r9247_action(gsm):
        gsm.dec_once_good('evil_asonje_1')
        gsm.set_asonje_quest_state(3)
    def _r9289_action(gsm):
        gsm.set_asonje_quest_state(2)
    def _r9290_action(gsm):
        gsm.set_asonje_quest_state(2)
    def _r9291_action(gsm):
        gsm.set_asonje_quest_state(2)
    def _r9304_action(gsm):
        gsm.set_death_of_names_adahn(True)

        gsm.inc_once_adahn('Adahn_Death_of_Names_1')


init python:
    def _r6565_condition(gsm):
        return not gsm.get_zombie_chaotic()
    def _r6566_condition(gsm):
        return gsm.get_zombie_chaotic()
    def _r6567_condition(gsm):
        return gsm.get_vaxis_exposed()
    def _r6568_condition(gsm):
        return gsm.get_can_speak_with_dead()
    def _r9256_condition(gsm):
        return not gsm.get_meet_pharod()
    def _r9276_condition(gsm):
        return not gsm.get_meet_pharod()
    def _r9282_condition(gsm):
        return gsm.get_asonje_quest_state() != 2
    def _r9286_condition(gsm):
        return gsm.get_asonje_quest_state() == 2
    def _r9319_condition(gsm):
        return not gsm.get_meet_pharod()
    def _r9306_condition(gsm):
        return gsm.get_asonje_quest_state() != 2
    def _r9307_condition(gsm):
        return gsm.get_asonje_quest_state() == 2
    def _r9312_condition(gsm):
        return not gsm.get_meet_pharod()


init 10 python:
    gsm = renpy.store.global_settings_manager


# ###
# Original:  DLG/DZM1094.DLG
# Starts:    dzm1094_s0 dzm1094_s26 dzm1094_s27
# ###


label dzm1094_init:
    $ gsm.set_location('mortuary1')
    $ gsm.set_meet_dzm1094(True)
    scene bg mortuary1
    show dzm1094_img default at center_left_down
    return


label dzm1094_dispose:
    hide dzm1094_img
    jump show_graphics_menu


# s0 # say6562
label dzm1094_s0:  # from - # IF ~  Global("Asonje","GLOBAL",0)~ THEN BEGIN 0 // from:
    call dzm1094_init
    teller 'У этого ходячего трупа на лбу вырезан номер «1094». Его губы крепко сшиты, от него исходит сильный химический запах свежего формальдегида, окружающего его в виде облака.'
    teller 'Несмотря на мертвенно-бледное лицо и впалые безжизненные молочно-белые глаза, совершенно очевидно, что раньше это был красивый молодой человек.'

    menu:
        'Итак… что тут у нас интересного?' if _r6565_condition(gsm):
            # r0 # reply6565
            $ _r6565_action(gsm)
            jump dzm1094_s1
        'Итак… что тут у нас интересного?' if _r6566_condition(gsm):
            # r1 # reply6566
            jump dzm1094_s1
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if _r6567_condition(gsm):
            # r2 # reply6567
            jump dzm1094_s1
        'Использовать на трупе свою способность История костей.' if _r6568_condition(gsm):
            # r3 # reply6568
            $ _r6568_action(gsm)
            jump dzm1094_s2
        'Было приятно с тобой поболтать. Прощай.':
            # r4 # reply6569
            jump dzm1094_dispose
        'Оставить труп в покое.':
            # r5 # reply6570
            jump dzm1094_dispose


# s1 # say6563
label dzm1094_s1:  # from 0.0 0.1 0.2
    teller 'Труп продолжает пялиться на тебя.'

    menu:
        'Использовать на трупе свою способность История костей.' if _r6568_condition(gsm):
            # r3 # reply6568
            $ _r6568_action(gsm)
            jump dzm1094_s2
        'Было приятно с тобой поболтать. Прощай.':
            # r4 # reply6569
            jump dzm1094_dispose
        'Оставить труп в покое.':
            # r6 # reply6571
            jump dzm1094_dispose


# s2 # say6564
label dzm1094_s2:  # from 0.3
    teller 'Тело на миг вздрагивает, затем замирает: душа еще раз вселяется в когда-то покинутую оболочку.'
    teller 'В считанные секунды в глазах зомби появляется некое подобие жизни, и он начинает оглядываться по сторонам с любопытно-озадаченным выражением лица.'
    teller 'Все тело теперь окружено мягким золотым свечением.'

    menu:
        'Я хотел бы задать тебе вопрос…':
            # r7 # reply6572
            jump dzm1094_s3
        'Оставить духа.':
            # r8 # reply9246
            jump dzm1094_dispose


# s3 # say9224
label dzm1094_s3:  # from 2.0
    teller 'Внезапно дух обращает на тебя внимание. Он сверкает обезоруживающе-дружелюбной улыбкой, разрывая при этом все швы на рту.'
    teller 'Удивившись, он касается руками своих губ, затем пожимает плечами и приветственно кивает.'
    dzm1094 'Где… где я? Какое странное место. Я тебя знаю?'
    teller 'Он осторожно кашляет, потирая окоченевшую глотку.'

    menu:
        'Ты здесь, чтобы отвечать на *мои* вопросы, дух.':
            # r9 # reply9247
            $ _r9247_action(gsm)
            jump dzm1094_s4
        'Ты… по крайней мере твои останки… находятся в морге.':
            # r10 # reply9248
            jump dzm1094_s13
        'Нет, сомневаюсь, что мы знакомы. У меня вопрос к тебе…':
            # r11 # reply9249
            jump dzm1094_s14
        'Вряд ли. Прощай.':
            # r12 # reply9250
            jump dzm1094_dispose


# s4 # say9225
label dzm1094_s4:  # from 3.0
    teller 'Дружелюбность духа моментально испаряется. Он хмурится, разорванные швы лохмотьями свешиваются с его серых иссохших губ.'
    dzm1094 'Хорошо, спрашивай, что хотел.'
    teller 'Он отстраняет взгляд: ему явно скучно.'

    menu:
        'Так кто ты?':
            # r13 # reply9251
            jump dzm1094_s5
        'Откуда ты?':
            # r14 # reply9252
            jump dzm1094_s6
        'Как ты попал сюда? То есть, как стал зомби?':
            # r15 # reply9253
            jump dzm1094_s7
        'Где ты… где находится твой дух… сейчас?':
            # r16 # reply9254
            jump dzm1094_s8
        'Что ты знаешь об этом месте?':
            # r17 # reply9255
            jump dzm1094_s9
        'Ты знаешь кого-нибудь по имени Фарод?' if _r9256_condition(gsm):
            # r18 # reply9256
            jump dzm1094_s10
        'Ничего, неважно.':
            # r19 # reply9257
            jump dzm1094_dispose


# s5 # say9226
label dzm1094_s5:  # from 4.0 11.0
    asonje 'Меня зовут Асонж. Я могу уйти?'
    $ _set_asonje_name(gsm)

    menu:
        'Нет, у меня есть другие вопросы…':
            # r20 # reply9258
            jump dzm1094_s11
        'Это все, что я хотел узнать. Прощай.':
            # r21 # reply9259
            jump dzm1094_dispose


# s6 # say9227
label dzm1094_s6:  # from 4.1 11.1
    $ x = get_know_asonje_name(gsm)
    x 'Не могу вспомнить. Что-нибудь еще?'

    menu:
        'Да, еще один вопрос…':
            # r22 # reply9260
            jump dzm1094_s11
        'Это все, что я хотел узнать. Прощай.':
            # r23 # reply9261
            jump dzm1094_dispose


# s7 # say9228
label dzm1094_s7:  # from 4.2 11.2
    $ x = get_know_asonje_name(gsm)
    teller 'Дух пожимает плечами и смотрит вверх.'
    x 'Точно не скажу. Да и какая вообще разница?'
    teller 'Он печально сжимает свои губы и бросает на тебя тяжелый взгляд; призрачные искорки в его глазах сверкают гневом.'
    x 'Что-нибудь еще?'

    menu:
        'Да, еще один вопрос…':
            # r24 # reply9262
            jump dzm1094_s11
        'Это все, что я хотел узнать. Прощай.':
            # r25 # reply9263
            jump dzm1094_dispose


# s8 # say9229
label dzm1094_s8:  # from 4.3 11.3
    $ x = get_know_asonje_name(gsm)
    x 'Мой дух на Арборее…'
    teller 'Он на минуту умолкает, теряясь в теплых воспоминаниях.'
    x 'В данный момент я жажду вернуться домой, подальше от твоего эгоистичного, самовольного и довольно скучного любопытства. Могу ли я вернуться?'

    menu:
        'Нет, у меня есть другие вопросы…':
            # r26 # reply9264
            jump dzm1094_s11
        'Да. Прощай.':
            # r27 # reply9265
            jump dzm1094_dispose


# s9 # say9230
label dzm1094_s9:  # from 4.4 11.4
    $ x = get_know_asonje_name(gsm)
    teller 'Дух окидывает тебя раздраженным взглядом.'
    x 'Нет, конечно же!'
    teller 'Он раздосадовано мотает головой, от этого движения разорванные швы качаются туда-сюда.'

    menu:
        'Тогда как же твое тело попало сюда на работу в эти унылые залы?':
            # r28 # reply9266
            jump dzm1094_s12
        'У меня есть другие вопросы…':
            # r29 # reply9267
            jump dzm1094_s11
        'Это все, что я хотел узнать. Прощай.':
            # r30 # reply9268
            jump dzm1094_dispose


# s10 # say9231
label dzm1094_s10:  # from 4.5 11.5
    $ x = get_know_asonje_name(gsm)
    x 'Нет.'
    teller 'Похоже, ты мало его интересуешь.'

    menu:
        'Тогда у меня есть другой вопрос…':
            # r31 # reply9269
            jump dzm1094_s11
        'Это все, что я хотел узнать. Прощай.':
            # r32 # reply9270
            jump dzm1094_dispose


# s11 # say9232
label dzm1094_s11:  # from 5.0 6.0 7.0 8.0 9.1 10.0 12.0 27.0
    $ x = get_know_asonje_name(gsm)
    teller 'Дух шумно вздыхает, наполняя воздух запахом формальдегида из легких трупа.'
    x 'Да-да… спрашивай.'

    menu:
        'Так кто ты?':
            # r33 # reply9271
            jump dzm1094_s5
        'Откуда ты?':
            # r34 # reply9272
            jump dzm1094_s6
        'Как ты попал сюда? То есть, как стал зомби?':
            # r35 # reply9273
            jump dzm1094_s7
        'Где ты… где находится твой дух… сейчас?':
            # r36 # reply9274
            jump dzm1094_s8
        'Что ты знаешь об этом месте?':
            # r37 # reply9275
            jump dzm1094_s9
        'Ты знаешь кого-нибудь по имени Фарод?' if _r9276_condition(gsm):
            # r38 # reply9276
            jump dzm1094_s10
        'Ничего, неважно.':
            # r39 # reply9277
            jump dzm1094_dispose


# s12 # say9233
label dzm1094_s12:  # from 9.0
    $ x = get_know_asonje_name(gsm)
    x 'Тебе, дорогой мой приятель, остается только предполагать, как и мне. Мне уже пора, если ты не против.'

    menu:
        'Нет, у меня есть другие вопросы…':
            # r40 # reply9278
            jump dzm1094_s11
        'Это все, что я хотел узнать. Прощай.':
            # r41 # reply9279
            jump dzm1094_dispose


# s13 # say9234
label dzm1094_s13:  # from 3.1
    $ x = get_know_asonje_name(gsm)
    teller 'Он немного обдумывает это, затем начинает хохотать.'
    x 'Да! Это все объясняет, не так ли? Постой, я знаю тебя?'
    teller 'Он склоняет голову набок, внимательно смотря на тебя. Похоже, для него опознание твоей личности — своего рода увлекательная игра.'

    menu:
        'Нет, сомневаюсь, что мы знакомы. У меня вопрос к тебе…':
            # r42 # reply9280
            jump dzm1094_s14
        'Вряд ли. Прощай.':
            # r43 # reply9281
            jump dzm1094_dispose


# s14 # say9235
label dzm1094_s14:  # from 3.2 13.0
    $ x = get_know_asonje_name(gsm)
    teller 'Дух пожимает плечами и улыбается, слегка посмеиваясь.'
    x 'Возможно, ты прав! Что ты хочешь узнать от меня?'
    teller 'Он начинает рассеянно вытягивать остатки швов из своих губ и бросать их на пол, один за одним.'

    menu:
        'Так кто ты?' if _r9282_condition(gsm):
            # r44 # reply9282
            jump dzm1094_s15
        'Так кто ты?' if _r9286_condition(gsm):
            # r45 # reply9286
            jump dzm1094_s25
        'Откуда ты?':
            # r46 # reply9287
            jump dzm1094_s16
        'Как ты попал сюда? То есть, как стал зомби?':
            # r47 # reply9288
            jump dzm1094_s17
        'Где ты… где находится твой дух… сейчас?':
            # r48 # reply9317
            jump dzm1094_s18
        'Что ты знаешь об этом месте?':
            # r49 # reply9318
            jump dzm1094_s19
        'Ты знаешь кого-нибудь по имени Фарод?' if _r9319_condition(gsm):
            # r50 # reply9319
            jump dzm1094_s20
        'Ничего, неважно.':
            # r51 # reply9320
            jump dzm1094_dispose


# s15 # say9236
label dzm1094_s15:  # from 14.0 22.0
    asonje 'Меня зовут Асонж. А как тебя?'
    $ _set_asonje_name(gsm)

    menu:
        'Я… не знаю.':
            # r52 # reply9289
            $ _r9289_action(gsm)
            jump dzm1094_s21
        'Я скажу тебе в другой раз. У меня есть вопрос…':
            # r53 # reply9290
            $ _r9290_action(gsm)
            jump dzm1094_s22
        'Может быть в другой раз. Прощай.':
            # r54 # reply9291
            $ _r9291_action(gsm)
            jump dzm1094_dispose


# s16 # say9237
label dzm1094_s16:  # from 14.2 22.2
    $ x = get_know_asonje_name(gsm)
    x 'Я отовсюду! По правде говоря, я не знаю, откуда я родом. В жизни я много путешествовал, и могу назвать своим домом многие места. Сейчас передо мной Арборея…'
    teller 'Дух выглядит довольным.'

    menu:
        'Понятно. У меня есть другой вопрос…':
            # r55 # reply9292
            jump dzm1094_s22
        'Это все, что я хотел узнать. Прощай.':
            # r56 # reply9293
            jump dzm1094_dispose


# s17 # say9238
label dzm1094_s17:  # from 14.3 22.3
    $ x = get_know_asonje_name(gsm)
    teller 'Улыбка духа угасает, и он на мгновенье выглядит озадаченным.'
    x 'Странно… Я не знаю! Я точно не знаю, как умер, правда.'
    teller 'Он пожимает плечами.'
    x 'Неважно!'
    teller 'Его радостная улыбка возвращается, сверкая даже несмотря на то, что она находится на высохшем лице трупа.'

    menu:
        'У меня есть другие вопросы…':
            # r57 # reply9294
            jump dzm1094_s22
        'Это все, что я хотел узнать. Прощай.':
            # r58 # reply9295
            jump dzm1094_dispose


# s18 # say9239
label dzm1094_s18:  # from 14.4 22.4
    $ x = get_know_asonje_name(gsm)
    x 'В Арборее! О более удивительном месте я и не мечтал. Нигде в моей смертной жизни я встречал места, столь чувственного… столь величественного…'
    teller 'Он умолкает, теряясь в приятных воспоминаниях.'
    x 'Прекрасные земли, прекрасный народ. Если честно, я уже скучаю по ней!'

    menu:
        'Понятно. У меня есть другой вопрос…':
            # r59 # reply9296
            jump dzm1094_s22
        'Это все, что я хотел узнать. Прощай.':
            # r60 # reply9297
            jump dzm1094_dispose


# s19 # say9240
label dzm1094_s19:  # from 14.5 22.5
    $ x = get_know_asonje_name(gsm)
    x 'Не так уж и много. Я подписал контракт с тленной, подчинившись внезапному порыву… Она показала мне какое-то ужасное место, и сказала, что мое тело будет поднято и использовано в качестве работника.'
    x 'Я подумал: ведь оно мне не понадобится, когда я перейду в следующую жизнь, так почему бы и нет? Можно перехватить немного серебра и потратить его на женщин и вино!'
    teller 'Он тихонько смеется от этой мысли, в его глазах сверкают веселые призрачные искорки.'

    menu:
        'Ты что-нибудь знаешь о городе, окружающем Морг?':
            # r61 # reply9298
            jump dzm1094_s24
        'Понятно. У меня есть другой вопрос…':
            # r62 # reply9299
            jump dzm1094_s22
        'Это все, что я хотел узнать. Прощай.':
            # r63 # reply9300
            jump dzm1094_dispose


# s20 # say9241
label dzm1094_s20:  # from 14.6 22.6
    $ x = get_know_asonje_name(gsm)
    teller 'Дух на минуту задумывается.'
    x 'Нет, боюсь, что не слышал об этом человеке. Он твой друг?'

    menu:
        'Возможно. У меня есть другой вопрос…':
            # r64 # reply9301
            jump dzm1094_s22
        'Не знаю. Прощай.':
            # r65 # reply9302
            jump dzm1094_dispose


# s21 # say9242
label dzm1094_s21:  # from 15.0
    $ x = get_know_asonje_name(gsm)
    teller 'Он выглядит удивленным.'
    x 'Как странно! Мне очень жаль. Я ведь должен тебя *как-то* называть, верно?'
    teller 'Дух выжидающе смотрит на тебя.'

    menu:
        'Можешь называть меня, как хочешь. У меня есть вопрос…':
            # r66 # reply9303
            jump dzm1094_s22
        'Придумать имя: Ну, не знаю… «Адан»?':
            # r67 # reply9304
            $ _r9304_action(gsm)
            jump dzm1094_s23
        'Нет, это неважно. Прощай.':
            # r68 # reply9305
            jump dzm1094_dispose


# s22 # say9243
label dzm1094_s22:  # from 15.1 16.0 17.0 18.0 19.1 20.0 21.0 23.0 24.0 25.0 26.0
    $ x = get_know_asonje_name(gsm)
    x 'Конечно. Спрашивай!'
    teller 'Он довольно улыбается, с интересом ожидая твоего вопроса. Последний шов был убран, и теперь его улыбка не такая зловещая.'

    menu:
        'Так кто ты?' if _r9306_condition(gsm):
            # r69 # reply9306
            jump dzm1094_s15
        'Так кто ты?' if _r9307_condition(gsm):
            # r70 # reply9307
            jump dzm1094_s25
        'Откуда ты?':
            # r71 # reply9308
            jump dzm1094_s16
        'Как ты попал сюда? То есть, как стал зомби?':
            # r72 # reply9309
            jump dzm1094_s17
        'Где ты… где находится твой дух… сейчас?':
            # r73 # reply9310
            jump dzm1094_s18
        'Что ты знаешь об этом месте?':
            # r74 # reply9311
            jump dzm1094_s19
        'Ты знаешь кого-нибудь по имени Фарод?' if _r9312_condition(gsm):
            # r75 # reply9312
            jump dzm1094_s20
        'Ничего, неважно.':
            # r76 # reply9321
            jump dzm1094_dispose


# s23 # say9244
label dzm1094_s23:  # from 21.1
    $ x = get_know_asonje_name(gsm)
    teller 'Дух, чувствуя твои колебания, начинает хохотать.'
    x 'Вот ведь бедолага! Ну пусть будет Адан, приятель. Так какие у тебя вопросы?'

    menu:
        'Да, есть…':
            # r77 # reply9313
            jump dzm1094_s22
        'Нет, нету. Прощай.':
            # r78 # reply9314
            jump dzm1094_dispose


# s24 # say9245
label dzm1094_s24:  # from 19.0
    $ x = get_know_asonje_name(gsm)
    x 'О Сигиле, что ли?'
    teller 'Увидев твой кивок, труп растягивает улыбку до ушей.'
    x 'О, я не собираюсь портить тебе впечатление! Иди и разведай его сам! Затеряйся в его улочках, тавернах, среди людей… но будь внимателен!'
    x 'Это место не только удивительно, но и опасно. Но ведь это и делает все таким захватывающим, не так ли?'

    menu:
        'Да… наверное. У меня есть другой вопрос…':
            # r79 # reply9315
            jump dzm1094_s22
        'Возможно. Прощай.':
            # r80 # reply9316
            jump dzm1094_dispose


# s25 # say9283
label dzm1094_s25:  # from 14.1 22.1 # GlobalGT("Asonje","GLOBAL",0) GlobalLT("Asonje","GLOBAL",3)
    asonje 'Меня зовут Асонж.'
    $ _set_asonje_name(gsm)

    menu:
        'У меня есть другие вопросы…':
            # r81 # reply9284
            jump dzm1094_s22
        'Это все, что я хотел узнать. Прощай.':
            # r82 # reply9285
            jump dzm1094_dispose


# s26 # say20061
label dzm1094_s26:  # from - # Global("Asonje","GLOBAL",3)
    call dzm1094_init
    $ x = get_know_asonje_name(gsm)
    x 'Снова вернулся, а?'
    teller 'Он широко улыбается.'

    menu:
        'У меня есть несколько вопросов…':
            # r83 # reply20063
            jump dzm1094_s22
        'Я просто проходил мимо. Прощай.':
            # r84 # reply20064
            jump dzm1094_dispose


# s27 # say20062
label dzm1094_s27:  # from -
    call dzm1094_init
    $ x = get_know_asonje_name(gsm)
    x 'А, это ты… снова. Он хмурится, глядя в сторону.'
    teller 'Он хмурится, глядя в сторону.'

    menu:
        'У меня есть несколько вопросов…':
            # r85 # reply20065
            jump dzm1094_s11
        'Я просто проходил мимо. Прощай.':
            # r86 # reply20066
            jump dzm1094_dispose
