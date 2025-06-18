init python:
    def _r313_action(gsm):
        gsm.set_mortualy_alarmed(True) # ?.play_sound('AMB_M01') Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself)
    def _r3888_action(gsm):
        gsm.set_mortualy_alarmed(True) # ?.play_sound('AMB_M01') Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself)
    def _r3886_action(gsm):
        gsm.set_mortualy_alarmed(True) # ?.play_sound('AMB_M01') Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself)
    def _r33189_action(gsm):
        gsm.set_death_of_names_adahn(True)
        gsm.inc_once_adahn('Adahn_Death_of_Names_1')
        gsm.dec_law()
    def _r371_action(gsm):
        gsm.set_death_of_names_adahn(True)
        gsm.inc_once_adahn('Adahn_Death_of_Names_1')
        gsm.dec_law()
    def _r450_action(gsm):
        gsm.set_death_of_names_adahn(True)
        gsm.inc_once_adahn('Adahn_Death_of_Names_1')
        gsm.dec_law()
    def _r399_action(gsm):
        gsm.set_death_of_names_adahn(True)
        gsm.inc_once_adahn('Adahn_Death_of_Names_1')
        gsm.dec_law()
    def _r448_action(gsm):
        gsm.set_mortualy_alarmed(True)
        # ?.play_sound('AMB_M01') Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself)
    def _r449_action(gsm):
        gsm.set_mortualy_alarmed(True)
        # ?.play_sound('AMB_M01') Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself)
        gsm.dec_law()
    def _r1339_action(gsm):
        gsm.set_mortualy_alarmed(True)
        # ?.play_sound('AMB_M01') Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself)
        gsm.set_mortualy_alarmed(True)
    def _r1426_action(gsm):
        # ?.play_sound('SPE_11') SetAnimState(Myself,ANIM_MIMEDIE)
        return
    def _r1428_action(gsm):
        gsm.set_choke_memory(True)
        # ?.play_sound('SPTR_01')
        gsm.inc_choke_dustman()
        gsm.inc_choke() # Kill(Myself) Deactivate(Myself)
        gsm.inc_exp_custom('party', 15)
    def _r1429_action(gsm):
        gsm.inc_choke_dustman()
        gsm.inc_choke() # Kill(Myself) Deactivate(Myself)
        gsm.inc_exp_custom('party', 15)
    def _r3882_action(gsm):        Kill(Myself)
        gsm.inc_exp_custom('Protagonist', 250)
    def _r3884_action(gsm):
        gsm.set_mortualy_alarmed(True)
        # ?.play_sound('AMB_M01') Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself)
    def _r3890_action(gsm):
        # ?.play_sound('SPE_11') SetAnimState(Myself,ANIM_MIMEDIE)
        return


init python:
    def _r327_condition(gsm):
        return gsm.check_char_prop_lt('protagonist',13,'dex')
    def _r328_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'dex')
    def _r334_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',11,'int')
    def _r344_condition(gsm):
        return gsm.check_char_prop_lt('protagonist',13,'dex')
    def _r3887_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'dex')
    def _r358_condition(gsm):
        return gsm.check_char_prop_lt('protagonist',13,'dex')
    def _r3885_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'dex')
    def _r342_condition(gsm):
        return gsm.get_meet_dhall() \
               and glm.is_visited_internal_location('AR0202')
    def _r343_condition(gsm):
        return gsm.get_meet_dhall() \
               and not glm.is_visited_internal_location('AR0202')
    def _r33183_condition(gsm):
        return gsm.get_meet_deionarra() \
               and glm.is_visited_internal_location('AR0201')
    def _r33185_condition(gsm):
        return gsm.get_meet_deionarra() \
               and not glm.is_visited_internal_location('AR0201')
    def _r33186_condition(gsm):
        return gsm.get_meet_soego() \
               and glm.is_visited_internal_location('AR0201')
    def _r33187_condition(gsm):
        return gsm.get_meet_soego() \
               and not glm.is_visited_internal_location('AR0201')
    def _r33189_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'int') \
               and gsm.get_talked_to_dust_times() == 1
    def _r33190_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'int') \
               and gsm.get_talked_to_dust_times() > 1
    def _r370_condition(gsm):
        return gsm.get_meet_deionarra()
    def _r371_condition(gsm):
        return gsm.get_talked_to_dust_times() == 1
    def _r372_condition(gsm):
        return gsm.get_talked_to_dust_times() > 1
    def _r373_condition(gsm):
        return gsm.check_char_prop_lt('protagonist',13,'dex')
    def _r1335_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'dex')
    def _r378_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',11,'int')
    def _r450_condition(gsm):
        return gsm.get_talked_to_dust_times() == 1
    def _r1337_condition(gsm):
        return gsm.get_talked_to_dust_times() > 1
    def _r3904_condition(gsm):
        return gsm.check_char_prop_lt('protagonist',13,'chr')
    def _r3905_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'chr')
    def _r399_condition(gsm):
        return gsm.get_talked_to_dust_times() == 1
    def _r3906_condition(gsm):
        return gsm.get_talked_to_dust_times() > 1
    def _r3907_condition(gsm):
        return gsm.check_char_prop_lt('protagonist',13,'chr')
    def _r3908_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'chr')
    def _r413_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'chr')
    def _r3918_condition(gsm):
        return gsm.check_char_prop_lt('protagonist',13,'chr')
    def _r3919_condition(gsm):
        return gsm.check_char_prop_lt('protagonist',13,'chr')
    def _r3920_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'chr')
    def _r416_condition(gsm):
        return glm.is_visited_internal_location('AR0202')
    def _r417_condition(gsm):
        return not glm.is_visited_internal_location('AR0202')
    def _r436_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'chr')
    def _r3909_condition(gsm):
        return gsm.check_char_prop_lt('protagonist',13,'chr')
    def _r3910_condition(gsm):
        return gsm.check_char_prop_lt('protagonist',13,'chr')
    def _r3911_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'chr')
    def _r445_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'chr')
    def _r446_condition(gsm):
        return gsm.check_char_prop_lt('protagonist',13,'chr')
    def _r3912_condition(gsm):
        return gsm.check_char_prop_lt('protagonist',13,'chr')
    def _r3913_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'chr')
    def _r449_condition(gsm):
        return gsm.get_talked_to_dust_times() == 1
    def _r1339_condition(gsm):
        return gsm.get_talked_to_dust_times() > 1
    def _r1420_condition(gsm):
        return gsm.get_in_party_morte() \
               and gsm.get_warning() == 0
    def _r1421_condition(gsm):
        return gsm.get_in_party_morte() \
               and gsm.get_warning() == 1
    def _r1422_condition(gsm):
        return gsm.get_in_party_morte() \
               and gsm.get_warning() > 1
    def _r1423_condition(gsm):
        return not gsm.get_in_party_morte()
    def _r1428_condition(gsm):
        return not gsm.get_choke_memory()
    def _r1429_condition(gsm):
        return gsm.get_choke_memory()
    def _r3914_condition(gsm):
        return gsm.check_char_prop_lt('protagonist',13,'dex')
    def _r3915_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'dex')
    def _r3898_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'chr')
    def _r3899_condition(gsm):
        return gsm.check_char_prop_lt('protagonist',13,'chr')
    def _r3900_condition(gsm):
        return gsm.check_char_prop_lt('protagonist',13,'chr')
    def _r3901_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'chr')
    def _r66675_condition(gsm):
        return gsm.get_join_dustmen()
    def _r66676_condition(gsm):
        return not gsm.get_join_dustmen()
    def _r66677_condition(gsm):
        return not gsm.get_join_dustmen()
    def _r66678_condition(gsm):
        return not gsm.get_join_dustmen()
    def _r66679_condition(gsm):
        return not gsm.get_join_dustmen()


init 10 python:
    gsm = renpy.store.global_settings_manager


# ###
# Original:  DLG/DDUST.DLG
# ###


label start_ddust_talk_first:
    call ddust_init
    jump ddust_s3
label start_ddust_talk:
    call ddust_init
    jump ddust_s0
label ddust_init:
    show dust_img default at center_left_down
    return
label ddust_dispose:
    hide dust_img
    jump show_graphics_menu


# s0 # say300
label ddust_s0:  # from - # IF ~  Global("Appearance","GLOBAL",1)~ THEN BEGIN 0 // from:
    teller 'Тленный не обращает на тебя внимания. Должно быть, он спутал тебя с одним из мертвых рабочих.'

    menu:
        'Приветствую.':
            # r0 # reply302
            jump ddust_s1
        'Кто ты?':
            # r1 # reply303
            jump ddust_s1
        'Что это за место?':
            # r2 # reply304
            jump ddust_s1
        'У меня есть пара вопросов…':
            # r3 # reply305
            jump ddust_s1
        'Оставить его в покое.':
            # r4 # reply306
            jump show_graphics_menu


# s1 # say307
label ddust_s1:  # from 0.0 0.1 0.2 0.3
    teller 'Тленный подпрыгивает от неожиданности. Затем он поворачивает к тебе голову.'
    teller 'Он выглядит потрясенным: должно быть, маскировка у тебя весьма неплохая.'

    menu:
        'Воспользоваться эффектом неожиданности и свернуть ему шею до того, как он сможет позвать на помощь.':
            # r5 # reply310
            jump ddust_s41
        'У меня есть пара вопросов…':
            # r6 # reply312
            jump ddust_s2
        'Уйти. Быстро.':
            # r7 # reply1332
            jump ddust_s2


# s2 # say309
label ddust_s2:  # from 1.1 1.2 5.2 5.3 19.6 20.4 47.2 47.3 51.4
    teller 'Тленный отступает на шаг, затем быстро хлопает в ладони три раза.'
    teller 'В ответ во всем Морге раздается звон огромного железного колокола.'

    menu:
        'Ну хорошо…':
            # r8 # reply313
            $ _r313_action(gsm)
            jump show_graphics_menu


# s3 # say314
label ddust_s3:  # from -
    teller 'Этот бледный мужчина одет в длинную темную мантию. От него слегка отдает плесенью.'
    teller 'Его лицо ничего не выражает; кажется, он полностью поглощен своими обязанностями.'

    menu:
        'Приветствую.':
            # r9 # reply315
            jump ddust_s4
        'Кто ты?':
            # r10 # reply316
            jump ddust_s4
        'Что это за место?':
            # r11 # reply317
            jump ddust_s4
        'У меня есть пара вопросов…':
            # r12 # reply319
            jump ddust_s4
        'Оставить его в покое.':
            # r13 # reply382
            jump show_graphics_menu


# s4 # say321
label ddust_s4:  # from 3.0 3.1 3.2 3.3 40.2 40.3
    teller 'Тленный медленно поднимает свою голову и оборачивается к тебе.'
    dust 'Ты потерялся?'

    menu:
        'Да.':
            # r14 # reply322
            jump ddust_s5
        'Нет.':
            # r15 # reply323
            jump ddust_s6
        'Нет, я не потерялся. У меня есть несколько вопросов…':
            # r16 # reply324
            jump ddust_s6
        'Прощай.':
            # r17 # reply325
            jump ddust_s5


# s5 # say326
label ddust_s5:  # from 4.0 4.3 6.4 16.2 51.1
    dust 'Я позову стражу, они тебя живо выведут. Погоди минуточку.'

    menu:
        'Свернуть ему шею до того, как он сможет позвать на помощь.' if _r327_condition(gsm):
            # r18 # reply327
            jump ddust_s44
        'Свернуть ему шею до того, как он сможет позвать на помощь.' if _r328_condition(gsm):
            # r19 # reply328
            jump ddust_s41
        'Уйти. Быстро.':
            # r20 # reply329
            jump ddust_s2
        'Подождать.':
            # r21 # reply1333
            jump ddust_s2


# s6 # say330
label ddust_s6:  # from 4.1 4.2 51.2 51.3
    dust 'Если ты не потерялся, что же ты здесь делаешь?'

    menu:
        'Это тебя не касается.':
            # r22 # reply331
            jump ddust_s7
        'Я очнулся на одной из плит в вашей препараторской.':
            # r23 # reply332
            jump ddust_s8
        'Я хочу кое с кем повидаться.':
            # r24 # reply333
            jump ddust_s9
        'Я пришел сюда на похороны, но, похоже, произошла ошибка.' if _r334_condition(gsm):
            # r25 # reply334
            jump ddust_s16
        'Уйти. Быстро.':
            # r26 # reply337
            jump ddust_s5


# s7 # say335
label ddust_s7:  # from 6.0 9.0 20.0
    dust 'Боюсь, что касается. Может, стражники развяжут твой язык.'
    teller 'Тленный отступает на шаг; кажется, он собирается позвать стражников.'

    menu:
        'Свернуть ему шею до того, как он сможет позвать на помощь.' if _r344_condition(gsm):
            # r27 # reply344
            jump ddust_s44
        'Свернуть ему шею до того, как он сможет позвать на помощь.' if _r3887_condition(gsm):
            # r28 # reply3887
            jump ddust_s41
        'Давай, зови их. Буду рад с ними встретиться.':
            # r29 # reply3888
            $ _r3888_action(gsm)
            jump show_graphics_menu


# s8 # say336
label ddust_s8:  # from 6.1 16.0 20.1
    dust 'Любишь пошутить? Тогда, может, ты поделишься своими шутками со стражниками.'
    teller 'Тленный отступает на шаг; кажется, он собирается позвать стражников.'

    menu:
        'Свернуть ему шею до того, как он сможет позвать на помощь.' if _r358_condition(gsm):
            # r30 # reply358
            jump ddust_s44
        'Свернуть ему шею до того, как он сможет позвать на помощь.' if _r3885_condition(gsm):
            # r31 # reply3885
            jump ddust_s41
        'Давай, зови их. Буду рад с ними встретиться.':
            # r32 # reply3886
            $ _r3886_action(gsm)
            jump show_graphics_menu


# s9 # say338
label ddust_s9:  # from 6.2 20.2
    dust 'Кого ты хочешь увидеть?'

    menu:
        'Это не твое дело.':
            # r33 # reply3922
            jump ddust_s7
        'Я хочу повидаться с Дхоллом.' if _r342_condition(gsm):
            # r34 # reply342
            jump ddust_s10
        'Я хочу повидаться с Дхоллом.' if _r343_condition(gsm):
            # r35 # reply343
            jump ddust_s11
        'Я хочу повидаться с Дейонаррой.' if _r33183_condition(gsm):
            # r36 # reply33183
            jump ddust_s13
        'Я хочу повидаться с Дейонаррой.' if _r33185_condition(gsm):
            # r37 # reply33185
            jump ddust_s12
        'Я хочу повидаться с Соэго.' if _r33186_condition(gsm):
            # r38 # reply33186
            jump ddust_s15
        'Я хочу повидаться с Соэго.' if _r33187_condition(gsm):
            # r39 # reply33187
            jump ddust_s14
        'Ложь: Э-э… Адана. Он все еще работает здесь?..' if _r33189_condition(gsm):
            # r40 # reply33189
            $ _r33189_action(gsm)
            jump ddust_s21
        'Ложь: Э-э… Адана. Он все еще работает здесь?..' if _r33190_condition(gsm):
            # r41 # reply33190
            jump ddust_s21
        'Ой, нет. Я оговорился.':
            # r42 # reply33191
            jump ddust_s20


# s10 # say345
label ddust_s10:  # from 9.1
    dust 'Дхолла можно найти в приемной комнате на этом этаже. Должен предупредить… Дхолл очень занят, а здоровье у него подкошено.'
    dust 'Если у тебя к нему несрочное дело, то лучше не беспокоить его.'

    menu:
        'Хорошо. Спасибо за информацию.':
            # r43 # reply347
            jump ddust_s48


# s11 # say346
label ddust_s11:  # from 9.2
    dust 'Скорее всего, Дхолл в приемной комнате на втором этаже. Он очень занят, а здоровье у него подкошено.'
    dust 'Если у тебя к нему несрочное дело, то лучше не беспокоить его.'

    menu:
        'Хорошо. Спасибо за информацию.':
            # r44 # reply348
            jump ddust_s48


# s12 # say349
label ddust_s12:  # from 9.4 19.1
    dust 'Дейонаррой? На первом этаже в мемориальном зале похоронена женщина. Может быть, это она?'

    menu:
        'Скорее всего. Спасибо.':
            # r45 # reply352
            jump ddust_s48


# s13 # say350
label ddust_s13:  # from 9.3
    dust 'Дейонаррой? В северо-западном мемориальном зале похоронена женщина. Может быть, это она?'

    menu:
        'Скорее всего. Спасибо.':
            # r46 # reply353
            jump ddust_s48


# s14 # say351
label ddust_s14:  # from 9.6
    dust 'Скорее всего, Соэго находится у главных ворот на первом этаже. Он работает проводником в часы антипика.'

    menu:
        'Отлично. Спасибо.':
            # r47 # reply354
            jump ddust_s48


# s15 # say355
label ddust_s15:  # from 9.5
    dust 'Скорее всего, Соэго находится у главных ворот. Он работает проводником в часы антипика.'

    menu:
        'Отлично. Спасибо.':
            # r48 # reply356
            jump ddust_s48


# s16 # say357
label ddust_s16:  # from 6.3 20.3
    dust 'Кто был погребен? Возможно, служба проводится в другом конце Морга.'

    menu:
        'Ты не понимаешь… ошибка в том, что похоронить собирались МЕНЯ.':
            # r49 # reply359
            jump ddust_s8
        'Может быть. Где еще проводят службу?':
            # r50 # reply360
            jump ddust_s17
        'Ты можешь показать выход отсюда?':
            # r51 # reply361
            jump ddust_s5


# s17 # say362
label ddust_s17:  # from 16.1
    dust 'По всему периметру Морга расположены погребальные залы. Они расположены вдоль стены на первом и втором этажах.'
    dust 'Тебе известно имя усопшего?'

    menu:
        'Нет.':
            # r52 # reply363
            jump ddust_s18
        'Да.':
            # r53 # reply364
            jump ddust_s19


# s18 # say365
label ddust_s18:  # from 17.0
    dust 'Тогда тебе стоит поговорить с одним из проводников у главных ворот. Они тебе помогут.'

    menu:
        'Отлично. Спасибо.':
            # r54 # reply366
            jump show_graphics_menu


# s19 # say367
label ddust_s19:  # from 17.1
    teller 'Тленный ждет.'

    menu:
        'Прошу прощения… Я оговорился. Мне неизвестно имя усопшего.':
            # r55 # reply369
            jump ddust_s20
        'Это имя — Дейонарра.' if _r370_condition(gsm):
            # r56 # reply370
            jump ddust_s12
        'Ложь: Меня зовут… э-э, Адан.' if _r371_condition(gsm):
            # r57 # reply371
            $ _r371_action(gsm)
            jump ddust_s21
        'Ложь: Меня зовут… э-э, Адан.' if _r372_condition(gsm):
            # r58 # reply372
            jump ddust_s21
        'Наклониться вперед, будто собираясь прошептать ему что-то на ухо, а затем свернуть ему шею.' if _r373_condition(gsm):
            # r59 # reply373
            jump ddust_s44
        'Наклониться вперед, будто собираясь прошептать ему что-то на ухо, а затем свернуть ему шею.' if _r1335_condition(gsm):
            # r60 # reply1335
            jump ddust_s45
        'Убежать от него.':
            # r61 # reply1336
            jump ddust_s2


# s20 # say374
label ddust_s20:  # from 9.9 19.0
    dust 'Понятно. И что же ты здесь делаешь?'

    menu:
        'Это не твое дело.':
            # r62 # reply375
            jump ddust_s7
        'Я очнулся на одной из плит в вашей препараторской.':
            # r63 # reply376
            jump ddust_s8
        'Я хочу кое с кем повидаться.':
            # r64 # reply377
            jump ddust_s9
        'Я пришел сюда на похороны, но, похоже, произошла ошибка.' if _r378_condition(gsm):
            # r65 # reply378
            jump ddust_s16
        'Убежать от него.':
            # r66 # reply379
            jump ddust_s2


# s21 # say368
label ddust_s21:  # from 9.7 9.8 19.2 19.3 # Global("Appearance","GLOBAL",2)
    dust 'Это имя мне незнакомо. Справься у одного из проводников у главных ворот… они смогут сориентировать тебя лучше, чем я.'

    menu:
        'Хорошо. Я так и сделаю. Прощай.':
            # r67 # reply380
            jump ddust_s48


# s22 # say294
label ddust_s22:  # from -
    teller 'Этот бледный мужчина одет в длинную темную мантию. От него слегка отдает плесенью.'
    teller 'Его лицо ничего не выражает; кажется, он полностью поглощен своими обязанностями.'

    menu:
        'Приветствую.':
            # r68 # reply295
            jump ddust_s23
        'Оставить его в покое.':
            # r69 # reply297
            jump show_graphics_menu


# s23 # say381
label ddust_s23:  # from 22.0
    teller 'Он медленно оборачивается, его взгляд мельком скользит по твоей одежде.'
    dust 'Приветствую тебя, посвященный.'

    menu:
        'Кто ты?':
            # r70 # reply383
            jump ddust_s24
        'Что это за место?':
            # r71 # reply384
            jump ddust_s25
        'У меня есть пара вопросов…':
            # r72 # reply391
            jump ddust_s26
        'Оставить его в покое.':
            # r73 # reply392
            jump show_graphics_menu


# s24 # say393
label ddust_s24:  # from 23.0
    dust 'У меня такой же вопрос. Твое лицо мне незнакомо. Как тебя зовут?'

    menu:
        'Ложь: Меня зовут… э-э, Адан.' if _r450_condition(gsm):
            # r74 # reply450
            $ _r450_action(gsm)
            jump ddust_s49
        'Ложь: Меня зовут… э-э, Адан.' if _r1337_condition(gsm):
            # r75 # reply1337
            jump ddust_s49
        'Как меня зовут — не твое дело. Я должен идти. Прощай.' if _r3904_condition(gsm):
            # r76 # reply3904
            jump ddust_s47
        'Как меня зовут — не твое дело. Я должен идти. Прощай.' if _r3905_condition(gsm):
            # r77 # reply3905
            jump ddust_s46


# s25 # say394
label ddust_s25:  # from 23.1
    dust 'Это Морг…'
    teller 'Тленный какое-то время смотрит на тебя, как бы оценивая только что тобою сказанное.'
    dust 'Как, ты сказал, тебя зовут?'

    menu:
        'Ложь: Меня зовут… э-э, Адан.' if _r399_condition(gsm):
            # r78 # reply399
            $ _r399_action(gsm)
            jump ddust_s49
        'Ложь: Меня зовут… э-э, Адан.' if _r3906_condition(gsm):
            # r79 # reply3906
            jump ddust_s49
        'Как меня зовут — не твое дело. Я должен идти. Прощай.' if _r3907_condition(gsm):
            # r80 # reply3907
            jump ddust_s47
        'Как меня зовут — не твое дело. Я должен идти. Прощай.' if _r3908_condition(gsm):
            # r81 # reply3908
            jump ddust_s46


# s26 # say400
label ddust_s26:  # from 23.2 27.0 28.2 30.3 31.3 34.2 36.1 39.0 50.0
    teller 'Тленный терпеливо ждет твоего продолжения.'

    menu:
        'Можешь показать мне выход?':
            # r82 # reply401
            jump ddust_s27
        'Ты знаешь кого-нибудь по имени Фарод?':
            # r83 # reply402
            jump ddust_s28
        'Я потерял дневник. Тебе ничего такого не попадалось?':
            # r84 # reply403
            jump ddust_s39
        'Неважно. Извини за беспокойство.':
            # r85 # reply404
            jump ddust_s48


# s27 # say405
label ddust_s27:  # from 26.0
    dust 'Ты можешь просто выйти через главные ворота. Они на первом этаже.'

    menu:
        'У меня есть другие вопросы…':
            # r86 # reply406
            jump ddust_s26
        'Спасибо. Прощай.':
            # r87 # reply407
            jump ddust_s48


# s28 # say408
label ddust_s28:  # from 26.1
    dust 'Это имя…'
    teller 'Тленный на секунду умолкает.'
    dust 'Это имя *звучит* знакомо… Кажется, я припоминаю сборщика с таким именем. Писец Дхолл может знать о нем больше.'

    menu:
        'Сборщика?':
            # r88 # reply409
            jump ddust_s29
        'Дхолл?':
            # r89 # reply410
            jump ddust_s30
        'У меня есть другие вопросы…':
            # r90 # reply411
            jump ddust_s26
        'Спасибо за уделенное время. Прощай.':
            # r91 # reply425
            jump ddust_s48


# s29 # say412
label ddust_s29:  # from 28.0
    dust 'Сборщики… они собирают тех, кто умер на улицах Сигила, и доставляют их в Морг…'
    teller 'Тленный умолкает, хмуря брови.'
    dust 'Ты нездешний. Кто ты?'

    menu:
        'Я недавно посвящен. Прости мое невежество.' if _r413_condition(gsm):
            # r92 # reply413
            jump ddust_s50
        'Я… недавно здесь. Я… пытаюсь изучить обстановку.' if _r3918_condition(gsm):
            # r93 # reply3918
            jump ddust_s47
        'Ну… к чему имена? Храни веру, э-э, посвященный.' if _r3919_condition(gsm):
            # r94 # reply3919
            jump ddust_s47
        'Если ты не можешь помочь мне, я поищу кого-нибудь, кто сможет. Прощай.' if _r3920_condition(gsm):
            # r95 # reply3920
            jump ddust_s46


# s30 # say414
label ddust_s30:  # from 28.1
    dust 'Дхолл — один из самых уважаемых членов нашей фракции. Наверное, никто не размышлял о сущности Истинной Смерти и не заслужил ее больше, чем он.'
    dust 'У него много знаний, которыми он может поделиться. Если ты незнаком с ним, то я советую тебе как можно раньше воспользоваться этой возможностью.'
    dust 'Ему осталось не так долго жить в тени этого существования.'

    menu:
        '*Ему осталось не так долго жить?*':
            # r96 # reply415
            jump ddust_s31
        'Где я могу найти Дхолла?' if _r416_condition(gsm):
            # r97 # reply416
            jump ddust_s32
        'Где я могу найти Дхолла?' if _r417_condition(gsm):
            # r98 # reply417
            jump ddust_s33
        'У меня есть другие вопросы…':
            # r99 # reply418
            jump ddust_s26
        'Спасибо за информацию. Я поговорю с ним.':
            # r100 # reply33204
            jump ddust_s48


# s31 # say419
label ddust_s31:  # from 30.0 32.0 33.0
    teller 'Кивок.'
    dust 'Дхолл болен. Он стар, даже по меркам гитцераев. Несомненно, смерть последует за болезнью, которую он подхватил. Ему повезло.'

    menu:
        'По меркам гитцераев?':
            # r101 # reply420
            jump ddust_s34
        'Что это еще за *гитцераи*?':
            # r102 # reply421
            jump ddust_s35
        'Повезло?':
            # r103 # reply422
            jump ddust_s36
        'Понятно. У меня еще вопросы…':
            # r104 # reply423
            jump ddust_s26
        'Спасибо за уделенное время. Мне нужно идти.':
            # r105 # reply424
            jump ddust_s48


# s32 # say427
label ddust_s32:  # from 30.1
    dust 'Дхолл находится в приемной комнате в северо-западной части этого этажа. Должен предупредить… Дхолл очень занят…'
    dust 'То время, которое он не занят своими обязанностями, отбирает у него болезнь.'

    menu:
        'Дхолл болен?':
            # r106 # reply428
            jump ddust_s31
        'Спасибо за уделенное время. Мне нужно идти. Прощай.':
            # r107 # reply429
            jump ddust_s48


# s33 # say426
label ddust_s33:  # from 30.2
    dust 'Дхолл скорее всего находится в приемной комнате на втором этаже. Лучше не отвлекай его слишком сильно, он очень занят…'
    dust 'То время, которое он не занят своими обязанностями, отбирает у него болезнь.'

    menu:
        'Дхолл болен?':
            # r108 # reply430
            jump ddust_s31
        'Спасибо за уделенное время. Мне нужно идти. Прощай.':
            # r109 # reply431
            jump ddust_s48


# s34 # say432
label ddust_s34:  # from 31.0
    dust 'Да, гитцераи живут гораздо дольше, чем люди.'

    menu:
        'Что это еще за *гитцераи*?':
            # r110 # reply433
            jump ddust_s35
        'Как это Дхоллу повезло? От него хотят избавиться?':
            # r111 # reply437
            jump ddust_s36
        'О, у меня есть другие вопросы…':
            # r112 # reply438
            jump ddust_s26
        'Спасибо за уделенное время. Прощай.':
            # r113 # reply440
            jump ddust_s48


# s35 # say435
label ddust_s35:  # from 31.1 34.0
    dust 'Гитцераи — это…'
    teller 'Тленный умолкает, затем хмурится, бросив на тебя пристальный взгляд.'
    dust 'Ты ведь нездешний. Кто ты?'

    menu:
        'Я недавно посвящен. Прости мое невежество.' if _r436_condition(gsm):
            # r114 # reply436
            jump ddust_s50
        'Я… недавно здесь. Я… пытаюсь изучить обстановку.' if _r3909_condition(gsm):
            # r115 # reply3909
            jump ddust_s47
        'Ну… к чему имена? Храни веру, э-э, посвященный.' if _r3910_condition(gsm):
            # r116 # reply3910
            jump ddust_s47
        'Если ты не можешь помочь мне, я поищу кого-нибудь, кто сможет. Прощай.' if _r3911_condition(gsm):
            # r117 # reply3911
            jump ddust_s46


# s36 # say439
label ddust_s36:  # from 31.2 34.1
    dust 'Ему повезло в том, что он достигнет Истинной Смерти. Он больше не будет странствовать в тени этого существования.'

    menu:
        'И… это хорошо?':
            # r118 # reply441
            jump ddust_s37
        'Понятно. И правда, очень повезло. У меня есть другие вопросы…':
            # r119 # reply442
            jump ddust_s26
        'Понятно. Ну что ж, мне нужно идти. Прощай.':
            # r120 # reply443
            jump ddust_s48


# s37 # say444
label ddust_s37:  # from 36.0
    teller 'Тленный кивает.'
    dust 'Да.'
    teller 'Он хмурится, затем пристально смотрит на тебя.'
    dust 'Ты ведь не здешний. Кто ты?'

    menu:
        'Я недавно посвящен. Прости мое невежество.' if _r445_condition(gsm):
            # r121 # reply445
            jump ddust_s50
        'Я… недавно здесь. Я… пытаюсь изучить обстановку.' if _r446_condition(gsm):
            # r122 # reply446
            jump ddust_s47
        'Ну… к чему имена? Храни веру, э-э, посвященный.' if _r3912_condition(gsm):
            # r123 # reply3912
            jump ddust_s47
        'Если ты не можешь помочь мне, я поищу кого-нибудь, кто сможет. Прощай.' if _r3913_condition(gsm):
            # r124 # reply3913
            jump ddust_s46


# s38 # say447
label ddust_s38:  # from -
    dust 'Ты не из наших. Кто ты? Что ты здесь делаешь? Ты из анархистов? Или шпион другой фракции? Стража! Стража!'

    menu:
        'Проклятье!':
            # r125 # reply448
            $ _r448_action(gsm)
            jump show_graphics_menu
        'Тс-с! Я не смогу тебе ответить под такой крик!' if _r449_condition(gsm):
            # r126 # reply449
            $ _r449_action(gsm)
            jump show_graphics_menu
        'Тс-с! Я не смогу тебе ответить под такой крик!' if _r1339_condition(gsm):
            # r127 # reply1339
            $ _r1339_action(gsm)
            jump show_graphics_menu


# s39 # say398
label ddust_s39:  # from 26.2
    dust 'Дневник? Не встречал такого.'

    menu:
        'У меня есть другие вопросы…':
            # r128 # reply451
            jump ddust_s26
        'Я должен идти. Прощай.':
            # r129 # reply452
            jump ddust_s48


# s40 # say1419
label ddust_s40:  # from - # Manually checked EXTERN ~DMORTE~ : 61 Manually checked EXTERN ~DMORTE~ : 63
    teller 'Этот бледный мужчина одет в длинную темную мантию. От него слегка отдает плесенью.'
    teller 'Его лицо ничего не выражает; кажется, он полностью поглощен своими обязанностями.'

    menu:
        'Приветствую.' if _r1420_condition(gsm):
            # r130 # reply1420
            jump dmorte_s61
        'Приветствую.' if _r1421_condition(gsm):
            # r131 # reply1421
            jump dmorte_s63
        'Приветствую.' if _r1422_condition(gsm):
            # r132 # reply1422
            jump ddust_s4
        'Приветствую.' if _r1423_condition(gsm):
            # r133 # reply1423
            jump ddust_s4
        'Оставить его в покое.':
            # r134 # reply1424
            jump show_graphics_menu


# s41 # say1425
label ddust_s41:  # from 1.0 5.1 7.1 8.1 47.1
    teller 'Тленный не успевает и слова вымолвить, как твои руки хватают его голову за виски и резко сворачивают ее влево.'

    menu:
        'Нельзя дать тебе предупредить своих друзей…':
            # r135 # reply1426
            $ _r1426_action(gsm)
            jump ddust_s42


# s42 # say1427
label ddust_s42:  # from 41.0 45.0
    teller 'В шее раздается характерный хруст, и тело тленного безвольно падает в твои объятия.'

    menu:
        'Лучше ты, чем я, трухлявый.' if _r1428_condition(gsm):
            # r136 # reply1428
            $ _r1428_action(gsm)
            jump ddust_s43
        'Лучше ты, чем я, трухлявый.' if _r1429_condition(gsm):
            # r137 # reply1429
            $ _r1429_action(gsm)
            jump show_graphics_menu


# s43 # say1430
label ddust_s43:  # from 42.0
    teller 'К своему удивлению, это действие происходит практически инстинктивно, будто ты проделывал это уже много раз…'
    teller '…с этой мыслью всплывает воспоминание, но оно недостаточно сильно для того, чтобы за него зацепиться.'

    menu:
        'Оставить тело, уйти.':
            # r138 # reply3882
            $ _r3882_action(gsm)
            jump show_graphics_menu


# s44 # say3883
label ddust_s44:  # from 5.0 7.0 8.0 19.4 47.0
    teller 'Ты недостаточно быстр, и тленный уворачивается от твоего выпада.'
    teller 'Отступив на шаг, он быстро хлопает в ладони три раза. В ответ во всем Морге раздается звон огромного железного колокола.'

    menu:
        'Ну хорошо…':
            # r139 # reply3884
            $ _r3884_action(gsm)
            jump show_graphics_menu


# s45 # say3889
label ddust_s45:  # from 19.5
    teller 'Ты наклоняешься, чтобы шепнуть ему что-то на ухо, тленный тоже наклоняется.'
    teller 'Как только он оказывается на расстоянии вытянутой руки, ты хватаешь его за виски и резко сворачиваешь голову влево.'

    menu:
        'Нельзя дать тебе предупредить своих друзей…':
            # r140 # reply3890
            $ _r3890_action(gsm)
            jump ddust_s42


# s46 # say3891
label ddust_s46:  # from 24.3 25.3 29.3 35.3 37.3 49.3 50.1
    teller 'Тленный явно что-то подозревает. Похоже, он хочет что-то сказать, затем едва качает головой и возвращается к своим обязанностям.'

    menu:
        'Уйти прочь.':
            # r141 # reply3892
            jump show_graphics_menu


# s47 # say3893
label ddust_s47:  # from 24.2 25.2 29.1 29.2 35.1 35.2 37.1 37.2 49.1 49.2
    teller 'Тленный внимательно тебя осматривает.'
    dust 'Ты не из наших. Что ты здесь делаешь? Ты из анархистов? Или шпион другой фракции? Кажется, здесь есть дело для стражников…'

    menu:
        'Свернуть ему шею до того, как он сможет позвать на помощь.' if _r3914_condition(gsm):
            # r142 # reply3914
            jump ddust_s44
        'Свернуть ему шею до того, как он сможет позвать на помощь.' if _r3915_condition(gsm):
            # r143 # reply3915
            jump ddust_s41
        'Нет-нет… не он… то есть, я хотел сказать, не шпион… понимаешь, я очнулся на одной из плит… и…':
            # r144 # reply3916
            jump ddust_s2
        'Уйти. Быстро.':
            # r145 # reply3917
            jump ddust_s2


# s48 # say3894
label ddust_s48:  # from 10.0 11.0 12.0 13.0 14.0 15.0 21.0 26.3 27.1 28.3 30.4 31.4 32.1 33.1 34.3 36.2 39.1
    teller 'Тленный кивает, затем возвращается к своим обязанностям.'

    menu:
        'Уйти прочь.':
            # r146 # reply3895
            jump show_graphics_menu


# s49 # say3896
label ddust_s49:  # from 24.0 24.1 25.0 25.1
    teller 'Тленный хмурится.'
    dust 'Это имя мне незнакомо.'

    menu:
        'Я недавно посвящен. Прости мое невежество.' if _r3898_condition(gsm):
            # r147 # reply3898
            jump ddust_s50
        'Я… недавно здесь. Я… пытаюсь изучить порядки.' if _r3899_condition(gsm):
            # r148 # reply3899
            jump ddust_s47
        'Ну… к чему имена? Храни веру, э-э, посвященный.' if _r3900_condition(gsm):
            # r149 # reply3900
            jump ddust_s47
        'Если ты не можешь помочь мне, я поищу кого-нибудь, кто сможет. Прощай.' if _r3901_condition(gsm):
            # r150 # reply3901
            jump ddust_s46


# s50 # say3897
label ddust_s50:  # from 29.0 35.0 37.0 49.0 # Global("Appearance","GLOBAL",0)
    teller 'Тленный продолжает хмуриться, но затем слегка кивает.'
    dust 'Ну хорошо. Что я могу сделать для тебя, посвященный?'

    menu:
        'У меня есть пара вопросов…':
            # r151 # reply3902
            jump ddust_s26
        'На этот раз — ничего. Прощай.':
            # r152 # reply3903
            jump ddust_s46


# s51 # say66674
label ddust_s51:  # from -
    teller 'Тленный бросает на тебя каменный взгляд.'
    dust 'Ты потерялся?'

    menu:
        'Нет, я член фракции. Я просто осматриваю Морг.' if _r66675_condition(gsm):
            # r153 # reply66675
            jump ddust_s52
        'Да.' if _r66676_condition(gsm):
            # r154 # reply66676
            jump ddust_s5
        'Нет.' if _r66677_condition(gsm):
            # r155 # reply66677
            jump ddust_s6
        'Нет, я не потерялся. У меня есть несколько вопросов…' if _r66678_condition(gsm):
            # r156 # reply66678
            jump ddust_s6
        'Прощай.' if _r66679_condition(gsm):
            # r157 # reply66679
            jump ddust_s2


# s52 # say66681
label ddust_s52:  # from 51.0
    teller 'Тленный какое-то время пристально на тебя смотрит, затем кивает.'
    dust 'Хорошо. Если тебе нужна помощь, дай мне знать.'

    menu:
        'Конечно. Прощай.':
            # r158 # reply66682
            jump show_graphics_menu
