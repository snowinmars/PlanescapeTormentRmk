init python:
    def _r1225_action(gsm):
        gsm.set_mortualy_alarmed(True)
        # ?.play_sound('AMB_M01') Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself)
    def _r1246_action(gsm):
        gsm.set_mortualy_alarmed(True)
        # ?.play_sound('AMB_M01') Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself)
    def _r1249_action(gsm):
        gsm.set_mortualy_alarmed(True)
        # ?.play_sound('AMB_M01') Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself)
    def _r33227_action(gsm):
        gsm.set_death_of_names_adahn(True)
        gsm.inc_once_adahn('Adahn_Death_of_Names_1')
        gsm.gcm.modify_property('protagonist', 'law', -1)
    def _r1273_action(gsm):
        gsm.set_death_of_names_adahn(True)
        gsm.inc_once_adahn('Adahn_Death_of_Names_1')
        gsm.gcm.modify_property('protagonist', 'law', -1)
    def _r1290_action(gsm):
        gsm.set_death_of_names_adahn(True)
        gsm.inc_once_adahn('Adahn_Death_of_Names_1')
        gsm.gcm.modify_property('protagonist', 'law', -1)
    def _r1294_action(gsm):
        gsm.set_death_of_names_adahn(True)
        gsm.inc_once_adahn('Adahn_Death_of_Names_1')
        gsm.gcm.modify_property('protagonist', 'law', -1)
    def _r4307_action(gsm):
        gsm.set_mortualy_alarmed(True)
        # ?.play_sound('AMB_M01') Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself)
    def _r4308_action(gsm):
        gsm.set_mortualy_alarmed(True)
        # ?.play_sound('AMB_M01') Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself)
        gsm.gcm.modify_property('protagonist', 'law', -1)
    def _r4309_action(gsm):
        gsm.set_mortualy_alarmed(True)
        # ?.play_sound('AMB_M01') Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself)
    def _r4317_action(gsm):
        # ?.play_sound('SPE_11') SetAnimState(Myself,ANIM_MIMEDIE)
        return
    def _r4318_action(gsm):
        gsm.inc_choke()
        gsm.set_choke_memory(True)
        # ?.play_sound('SPTR_01')
        gsm.inc_choke_dustman()
        gsm.inc_exp_custom('party', 15)
    def _r4319_action(gsm):
        gsm.inc_choke_dustman()
        gsm.inc_choke()
        gsm.set_dead_ddustfem(True) # Deactivate(Myself)
        gsm.inc_exp_custom('party', 15)
    def _r4320_action(gsm):
        gsm.set_dead_ddustfem(True)
        gsm.inc_exp_custom('protagonist', 250)
    def _r4321_action(gsm):
        gsm.set_mortualy_alarmed(True)
        # ?.play_sound('AMB_M01') Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself)
    def _r4322_action(gsm):
        # ?.play_sound('SPE_11') SetAnimState(Myself,ANIM_MIMEDIE)
        return


init python:
    def _r1235_condition(gsm):
        return gsm.check_char_prop_lt('protagonist',13,'dex')
    def _r1236_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'dex')
    def _r1242_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',11,'int')
    def _r1244_condition(gsm):
        return gsm.check_char_prop_lt('protagonist',13,'dex')
    def _r1245_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'dex')
    def _r1247_condition(gsm):
        return gsm.check_char_prop_lt('protagonist',13,'dex')
    def _r1248_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'dex')
    def _r1253_condition(gsm):
        return gsm.get_meet_dhall() \
               and glm.is_visited_internal_location('AR0202')
    def _r1255_condition(gsm):
        return gsm.get_meet_dhall() \
               and not glm.is_visited_internal_location('AR0202')
    def _r1258_condition(gsm):
        return gsm.get_meet_deionarra() \
               and glm.is_visited_internal_location('AR0201')
    def _r4336_condition(gsm):
        return gsm.get_meet_deionarra() \
               and not glm.is_visited_internal_location('AR0201')
    def _r33224_condition(gsm):
        return gsm.get_meet_soego() \
               and glm.is_visited_internal_location('AR0201')
    def _r33226_condition(gsm):
        return gsm.get_meet_soego() \
               and not glm.is_visited_internal_location('AR0201')
    def _r33227_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'int') \
               and gsm.get_talked_to_dustfem_times() == 1
    def _r33229_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'int') \
               and gsm.get_talked_to_dustfem_times() > 1
    def _r1272_condition(gsm):
        return gsm.get_meet_deionarra()
    def _r1273_condition(gsm):
        return gsm.get_talked_to_dustfem_times() == 1
    def _r1274_condition(gsm):
        return gsm.get_talked_to_dustfem_times() > 1
    def _r1275_condition(gsm):
        return gsm.check_char_prop_lt('protagonist',13,'dex')
    def _r1276_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'dex')
    def _r1281_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',11,'int')
    def _r1290_condition(gsm):
        return gsm.get_talked_to_dustfem_times() == 1
    def _r1291_condition(gsm):
        return gsm.get_talked_to_dustfem_times() > 1
    def _r1292_condition(gsm):
        return gsm.check_char_prop_lt('protagonist',13,'chr')
    def _r1293_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'chr')
    def _r1294_condition(gsm):
        return gsm.get_talked_to_dustfem_times() == 1
    def _r1295_condition(gsm):
        return gsm.get_talked_to_dustfem_times() > 1
    def _r1296_condition(gsm):
        return gsm.check_char_prop_lt('protagonist',13,'chr')
    def _r1297_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'chr')
    def _r1396_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'chr')
    def _r1397_condition(gsm):
        return gsm.check_char_prop_lt('protagonist',13,'chr')
    def _r1398_condition(gsm):
        return gsm.check_char_prop_lt('protagonist',13,'chr')
    def _r1399_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'chr')
    def _r4281_condition(gsm):
        return glm.is_visited_internal_location('AR0202')
    def _r4282_condition(gsm):
        return not glm.is_visited_internal_location('AR0202')
    def _r4296_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'chr')
    def _r4297_condition(gsm):
        return gsm.check_char_prop_lt('protagonist',13,'chr')
    def _r4298_condition(gsm):
        return gsm.check_char_prop_lt('protagonist',13,'chr')
    def _r4300_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'chr')
    def _r4303_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'chr')
    def _r4304_condition(gsm):
        return gsm.check_char_prop_lt('protagonist',13,'chr')
    def _r4305_condition(gsm):
        return gsm.check_char_prop_lt('protagonist',13,'chr')
    def _r4306_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'chr')
    def _r4308_condition(gsm):
        return gsm.get_talked_to_dustfem_times() == 1
    def _r4309_condition(gsm):
        return gsm.get_talked_to_dustfem_times() > 1
    def _r4312_condition(gsm):
        return gsm.get_in_party_morte() \
               and gsm.get_warning() == 0
    def _r4313_condition(gsm):
        return gsm.get_in_party_morte() \
               and gsm.get_warning() == 1
    def _r4314_condition(gsm):
        return gsm.get_in_party_morte() \
               and gsm.get_warning() > 1
    def _r4315_condition(gsm):
        return not gsm.get_in_party_morte()
    def _r4318_condition(gsm):
        return not gsm.get_choke_memory()
    def _r4319_condition(gsm):
        return gsm.get_choke_memory()
    def _r4324_condition(gsm):
        return gsm.check_char_prop_lt('protagonist',13,'dex')
    def _r4325_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'dex')
    def _r4329_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'chr')
    def _r4331_condition(gsm):
        return gsm.check_char_prop_lt('protagonist',13,'chr')
    def _r4332_condition(gsm):
        return gsm.check_char_prop_lt('protagonist',13,'chr')
    def _r4333_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'chr')
    def _r66684_condition(gsm):
        return gsm.get_join_dustmen()
    def _r66685_condition(gsm):
        return not gsm.get_join_dustmen()
    def _r66686_condition(gsm):
        return not gsm.get_join_dustmen()
    def _r66687_condition(gsm):
        return not gsm.get_join_dustmen()
    def _r66688_condition(gsm):
        return not gsm.get_join_dustmen()


init 10 python:
    gsm = renpy.store.global_settings_manager


# ###
# Original:  DLG/DDUSTFEM.DLG
# ###

label start_ddustfem_talk_first:
    call ddustfem_init
    jump ddustfem_s3
label start_ddustfem_talk:
    call ddustfem_init
    jump ddustfem_s0
label ddustfem_init:
    show dustdem_img default at center_left_down
    return
label ddustfem_dispose:
    hide dustdem_img
    jump show_graphics_menu


# s0 # say298
label ddustfem_s0:  # from - # IF ~  Global("Appearance","GLOBAL",1)
    teller 'Тленная не обращает на тебя внимания. Должно быть, она спутала тебя с одним из мертвых рабочих.'

    menu:
        'Приветствую.':
            # r0 # reply299
            jump ddustfem_s1
        'Кто ты?':
            # r1 # reply318
            jump ddustfem_s1
        'Что это за место?':
            # r2 # reply1168
            jump ddustfem_s1
        'У меня есть пара вопросов…':
            # r3 # reply1169
            jump ddustfem_s1
        'Оставить ее в покое.':
            # r4 # reply1170
            jump ddustfem_dispose


# s1 # say1171
label ddustfem_s1:  # from 0.0 0.1 0.2 0.3
    teller 'Тленная подпрыгивает от неожиданности. Затем она поворачивает к тебе голову. Она выглядит потрясенной: должно быть, маскировка у тебя весьма неплохая.'

    menu:
        'Воспользоваться эффектом неожиданности и свернуть ей шею, пока она не позвала на помощь.':
            # r5 # reply1172
            jump ddustfem_s41
        'У меня есть несколько вопросов.':
            # r6 # reply1174
            jump ddustfem_s2
        'Уйти. Быстро.':
            # r7 # reply1175
            jump ddustfem_s2


# s2 # say1176
label ddustfem_s2:  # from 1.1 1.2 4.3 5.2 5.3 6.4 19.6 20.4 47.2 47.3 51.4
    teller 'Тленная отступает на шаг, затем быстро хлопает в ладони три раза. В ответ во всем Морге раздается звон огромного железного колокола.'

    menu:
        'Ну хорошо…':
            # r8 # reply1225
            $ _r1225_action(gsm)
            jump ddustfem_dispose


# s3 # say1177
label ddustfem_s3:  # from -
    teller 'Эта бледная женщина одета в длинную темную мантию. От нее слегка отдает плесенью. Ее лицо ничего не выражает; кажется, она поглощена своими обязанностями.'

    menu:
        'Приветствую.':
            # r9 # reply1226
            jump ddustfem_s4
        'Кто ты?':
            # r10 # reply1227
            jump ddustfem_s4
        'Что это за место?':
            # r11 # reply1228
            jump ddustfem_s4
        'У меня есть пара вопросов…':
            # r12 # reply1229
            jump ddustfem_s4
        'Оставить ее в покое.':
            # r13 # reply1230
            jump ddustfem_dispose


# s4 # say1178
label ddustfem_s4:  # from 3.0 3.1 3.2 3.3 40.2 40.3
    teller 'Тленная медленно поднимает свою голову и оборачивается к тебе.'
    dustfem 'Ты потерялся?'

    menu:
        'Да.':
            # r14 # reply1231
            jump ddustfem_s5
        'Нет.':
            # r15 # reply1232
            jump ddustfem_s6
        'Нет, я не потерялся. У меня есть несколько вопросов…':
            # r16 # reply1233
            jump ddustfem_s6
        'Прощай.':
            # r17 # reply1234
            jump ddustfem_s2


# s5 # say1179
label ddustfem_s5:  # from 4.0 16.2 51.1
    dustfem 'Я позову стражу, они тебя живо выведут. Погоди минутку.'

    menu:
        'Свернуть ей шею до того, как она сможет позвать на помощь.' if _r1235_condition(gsm):
            # r18 # reply1235
            jump ddustfem_s44
        'Свернуть ей шею до того, как она сможет позвать на помощь.' if _r1236_condition(gsm):
            # r19 # reply1236
            jump ddustfem_s41
        'Уйти. Быстро.':
            # r20 # reply1237
            jump ddustfem_s2
        'Подождать.':
            # r21 # reply1238
            jump ddustfem_s2


# s6 # say1180
label ddustfem_s6:  # from 4.1 4.2 51.2 51.3
    dustfem 'Если ты не потерялся, то что же ты здесь делаешь?'

    menu:
        'Это тебя не касается.':
            # r22 # reply1239
            jump ddustfem_s7
        'Я очнулся на одной из плит в вашей препараторской.':
            # r23 # reply1240
            jump ddustfem_s8
        'Я хочу повидаться кое с кем.':
            # r24 # reply1241
            jump ddustfem_s9
        'Я пришел сюда на похороны, но, похоже, произошла ошибка.' if _r1242_condition(gsm):
            # r25 # reply1242
            jump ddustfem_s16
        'Уйти. Быстро.':
            # r26 # reply1243
            jump ddustfem_s2


# s7 # say1181
label ddustfem_s7:  # from 6.0 9.0 20.0
    dustfem 'Боюсь, что меня касается. Может, стражники развяжут твой язык.'
    teller 'Тленная делает шаг назад, кажется, она собирается позвать стражников.'

    menu:
        'Свернуть ей шею до того, как она сможет позвать на помощь.' if _r1244_condition(gsm):
            # r27 # reply1244
            jump ddustfem_s44
        'Свернуть ей шею до того, как она сможет позвать на помощь.' if _r1245_condition(gsm):
            # r28 # reply1245
            jump ddustfem_s41
        'Давай, зови их. Буду рад с ними встретиться.':
            # r29 # reply1246
            $ _r1246_action(gsm)
            jump ddustfem_dispose


# s8 # say1182
label ddustfem_s8:  # from 6.1 16.0 20.1
    dustfem 'Любишь пошутить? Тогда может поделишься своими шутками со стражниками.'
    teller 'Тленная отступает на шаг; кажется, она собирается позвать стражников.'

    menu:
        'Свернуть ей шею до того, как она сможет позвать на помощь.' if _r1247_condition(gsm):
            # r30 # reply1247
            jump ddustfem_s44
        'Свернуть ей шею до того, как она сможет позвать на помощь.' if _r1248_condition(gsm):
            # r31 # reply1248
            jump ddustfem_s41
        'Давай, зови их. Буду рад с ними встретиться.':
            # r32 # reply1249
            $ _r1249_action(gsm)
            jump ddustfem_dispose


# s9 # say1183
label ddustfem_s9:  # from 6.2 20.2
    dustfem 'Кого ты хочешь увидеть?'

    menu:
        'Это не твое дело.':
            # r33 # reply1251
            jump ddustfem_s7
        'Я хочу повидаться с Дхоллом.' if _r1253_condition(gsm):
            # r34 # reply1253
            jump ddustfem_s10
        'Я хочу повидаться с Дхоллом.' if _r1255_condition(gsm):
            # r35 # reply1255
            jump ddustfem_s11
        'Я хочу повидаться с Дейонаррой.' if _r1258_condition(gsm):
            # r36 # reply1258
            jump ddustfem_s13
        'Я хочу повидаться с Дейонаррой.' if _r4336_condition(gsm):
            # r37 # reply4336
            jump ddustfem_s12
        'Я хочу повидаться с Соэго.' if _r33224_condition(gsm):
            # r38 # reply33224
            jump ddustfem_s15
        'Я хочу повидаться с Соэго.' if _r33226_condition(gsm):
            # r39 # reply33226
            jump ddustfem_s14
        'Ложь: Э-э… с Аданом. Он все еще работает здесь?..' if _r33227_condition(gsm):
            # r40 # reply33227
            $ _r33227_action(gsm)
            jump ddustfem_s21
        'Ложь: Э-э… с Аданом. Он все еще работает здесь?..' if _r33229_condition(gsm):
            # r41 # reply33229
            jump ddustfem_s21
        'Ой, нет. Я оговорился.':
            # r42 # reply33231
            jump ddustfem_s20


# s10 # say1184
label ddustfem_s10:  # from 9.1
    dustfem 'Дхолла можно найти в приемной комнате на этом этаже. Должна предупредить… Дхолл очень занят, а здоровье у него подкошено.'
    dustfem 'Если у тебя к нему несрочное дело, то лучше не беспокоить его.'

    menu:
        'Хорошо. Спасибо за информацию.':
            # r43 # reply1259
            jump ddustfem_s48


# s11 # say1185
label ddustfem_s11:  # from 9.2
    dustfem 'Дхолл скорее всего в приемной комнате на втором этаже. Он очень занят, а здоровье у него подкошено.'
    dustfem 'Если у тебя к нему несрочное дело, то лучше не беспокоить его.'

    menu:
        'Хорошо. Спасибо за информацию.':
            # r44 # reply1260
            jump ddustfem_s48


# s12 # say1186
label ddustfem_s12:  # from 9.4 19.1
    dustfem 'Дейонаррой? На первом этаже в мемориальном зале похоронена женщина. Может быть, это она?'

    menu:
        'Скорее всего. Спасибо.':
            # r45 # reply1261
            jump ddustfem_s48


# s13 # say1187
label ddustfem_s13:  # from 9.3
    dustfem 'Дейонаррой? В северо-западном мемориальном зале похоронена женщина. Может быть, это она?'

    menu:
        'Скорее всего. Спасибо.':
            # r46 # reply1262
            jump ddustfem_s48


# s14 # say1188
label ddustfem_s14:  # from 9.6
    dustfem 'Скорее всего, Соэго находится у главных ворот на первом этаже. Он работает проводником в часы антипика.'

    menu:
        'Отлично. Спасибо.':
            # r47 # reply1263
            jump ddustfem_s48


# s15 # say1189
label ddustfem_s15:  # from 9.5
    dustfem 'Скорее всего, Соэго находится у главных ворот. Он работает проводником в часы антипика.'

    menu:
        'Отлично. Спасибо.':
            # r48 # reply1264
            jump ddustfem_s48


# s16 # say1190
label ddustfem_s16:  # from 6.3 20.3
    dustfem 'Кто был погребен? Возможно, служба проводится в другом конце Морга.'

    menu:
        'Ты не понимаешь… ошибка в том, что похоронить собирались МЕНЯ.':
            # r49 # reply1265
            jump ddustfem_s8
        'Может быть. Где еще проводят службу?':
            # r50 # reply1266
            jump ddustfem_s17
        'Ты можешь указать выход отсюда?':
            # r51 # reply1267
            jump ddustfem_s5


# s17 # say1191
label ddustfem_s17:  # from 16.1
    dustfem 'По всему периметру Морга расположены погребальные залы. Они расположены вдоль стены на первом и втором этажах. Тебе известно имя усопшего?'

    menu:
        'Нет.':
            # r52 # reply1268
            jump ddustfem_s18
        'Да.':
            # r53 # reply1269
            jump ddustfem_s19


# s18 # say1192
label ddustfem_s18:  # from 17.0
    dustfem 'Тогда тебе стоит поговорить с одним из проводников у главных ворот. Они тебе помогут.'

    menu:
        'Отлично. Спасибо.':
            # r54 # reply1270
            jump ddustfem_dispose


# s19 # say1193
label ddustfem_s19:  # from 17.1
    teller 'Тленная ждет.'

    menu:
        'Прошу прощения… Я оговорился. Мне неизвестно имя усопшего.':
            # r55 # reply1271
            jump ddustfem_s20
        'Это имя — Дейонарра.' if _r1272_condition(gsm):
            # r56 # reply1272
            jump ddustfem_s12
        'Ложь: Имя… э-э, Адан.' if _r1273_condition(gsm):
            # r57 # reply1273
            $ _r1273_action(gsm)
            jump ddustfem_s21
        'Ложь: Имя… э-э, Адан.' if _r1274_condition(gsm):
            # r58 # reply1274
            jump ddustfem_s21
        'Наклониться вперед, будто собираясь прошептать ей что-то на ухо, а затем свернуть ей шею.' if _r1275_condition(gsm):
            # r59 # reply1275
            jump ddustfem_s44
        'Наклониться вперед, будто собираясь прошептать ей что-то на ухо, а затем свернуть ей шею.' if _r1276_condition(gsm):
            # r60 # reply1276
            jump ddustfem_s45
        'Убежать от нее.':
            # r61 # reply1277
            jump ddustfem_s2


# s20 # say1194
label ddustfem_s20:  # from 9.9 19.0
    dustfem 'Понятно. И что же ты здесь делаешь?'

    menu:
        'Это не твое дело.':
            # r62 # reply1278
            jump ddustfem_s7
        'Я очнулся на одной из плит в вашей препараторской.':
            # r63 # reply1279
            jump ddustfem_s8
        'Я хочу повидаться кое с кем.':
            # r64 # reply1280
            jump ddustfem_s9
        'Я пришел сюда на похороны, но, похоже, произошла ошибка.' if _r1281_condition(gsm):
            # r65 # reply1281
            jump ddustfem_s16
        'Убежать от нее.':
            # r66 # reply1282
            jump ddustfem_s2


# s21 # say1195
label ddustfem_s21:  # from 9.7 9.8 19.2 19.3
    dustfem 'Это имя мне незнакомо. Справься у одного из проводников у главных ворот… они смогут сориентировать тебя лучше, чем я.'

    menu:
        'Хорошо. Я так и сделаю. Прощай.':
            # r67 # reply1283
            jump ddustfem_dispose


# s22 # say1196
label ddustfem_s22:  # from - # IF ~  Global("Appearance","GLOBAL",2)
    teller 'Эта бледная женщина одета в длинную темную мантию. От нее слегка отдает плесенью. Ее лицо ничего не выражает; кажется, она поглощена своими обязанностями.'

    menu:
        'Приветствую.':
            # r68 # reply1284
            jump ddustfem_s23
        'Оставить ее в покое.':
            # r69 # reply1285
            jump ddustfem_dispose


# s23 # say1197
label ddustfem_s23:  # from 22.0
    teller 'Она медленно оборачивается, ее взгляд мельком скользит по твоей одежде.'
    dustfem 'Приветствую тебя, посвященный.'

    menu:
        'Кто ты?':
            # r70 # reply1286
            jump ddustfem_s24
        'Что это за место?':
            # r71 # reply1287
            jump ddustfem_s25
        'У меня есть пара вопросов…':
            # r72 # reply1288
            jump ddustfem_s26
        'Оставить ее в покое.':
            # r73 # reply1289
            jump ddustfem_dispose


# s24 # say1198
label ddustfem_s24:  # from 23.0
    dustfem 'У меня такой же вопрос. Твое лицо мне незнакомо. Как тебя зовут?'

    menu:
        'Ложь: Имя… э-э, Адан.' if _r1290_condition(gsm):
            # r74 # reply1290
            $ _r1290_action(gsm)
            jump ddustfem_s49
        'Ложь: Имя… э-э, Адан.' if _r1291_condition(gsm):
            # r75 # reply1291
            jump ddustfem_s49
        'Как меня зовут — не твое дело. Я должен идти. Прощай.' if _r1292_condition(gsm):
            # r76 # reply1292
            jump ddustfem_s47
        'Как меня зовут — не твое дело. Я должен идти. Прощай.' if _r1293_condition(gsm):
            # r77 # reply1293
            jump ddustfem_s46


# s25 # say1199
label ddustfem_s25:  # from 23.1
    dustfem 'Это Морг…'
    teller 'Тленная какое-то время смотрит на тебя, как бы оценивая только что тобою сказанное.'
    dustfem 'Как, ты сказал, тебя зовут?'

    menu:
        'Ложь: Имя… э-э, Адан.' if _r1294_condition(gsm):
            # r78 # reply1294
            $ _r1294_action(gsm)
            jump ddustfem_s49
        'Ложь: Имя… э-э, Адан.' if _r1295_condition(gsm):
            # r79 # reply1295
            jump ddustfem_s49
        'Как меня зовут — не твое дело. Я должен идти. Прощай.' if _r1296_condition(gsm):
            # r80 # reply1296
            jump ddustfem_s47
        'Как меня зовут — не твое дело. Я должен идти. Прощай.' if _r1297_condition(gsm):
            # r81 # reply1297
            jump ddustfem_s46


# s26 # say1200
label ddustfem_s26:  # from 23.2 27.0 28.2 30.3 31.3 34.2 36.1 39.0 50.0
    teller 'Тленная терпеливо ждет твоего продолжения.'

    menu:
        'Можешь показать мне, где выход?':
            # r82 # reply1298
            jump ddustfem_s27
        'Ты знаешь кого-нибудь по имени Фарод?':
            # r83 # reply1299
            jump ddustfem_s28
        'Я потерял дневник. Тебе ничего такого не попадалось?':
            # r84 # reply1300
            jump ddustfem_s39
        'Неважно. Извини за беспокойство.':
            # r85 # reply1328
            jump ddustfem_s48


# s27 # say1201
label ddustfem_s27:  # from 26.0
    dustfem 'Ты можешь просто выйти через главные ворота. Они на первом этаже.'

    menu:
        'У меня есть другие вопросы…':
            # r86 # reply1329
            jump ddustfem_s26
        'Спасибо. Прощай.':
            # r87 # reply1330
            jump ddustfem_s48


# s28 # say1202
label ddustfem_s28:  # from 26.1
    dustfem 'Это имя…'
    teller 'Тленная на секунду умолкает.'
    dustfem 'Это имя *звучит* знакомо… Кажется, я припоминаю сборщика с таким именем. Писец Дхолл может знать о нем больше.'

    menu:
        'Сборщика?':
            # r88 # reply1331
            jump ddustfem_s29
        'Дхолл?':
            # r89 # reply1334
            jump ddustfem_s30
        'У меня есть другие вопросы…':
            # r90 # reply1338
            jump ddustfem_s26
        'Спасибо за уделенное время. Прощай.':
            # r91 # reply1395
            jump ddustfem_s48


# s29 # say1203
label ddustfem_s29:  # from 28.0
    dustfem 'Сборщики… они собирают тех, кто умер на улицах Сигила, и доставляют их в Морг…'
    teller 'Тленная умолкает, хмуря брови.'
    dustfem 'Ты нездешний. Кто ты?'

    menu:
        'Я недавно посвящен. Прости мое невежество.' if _r1396_condition(gsm):
            # r92 # reply1396
            jump ddustfem_s50
        'Я… недавно здесь. Я… пытаюсь изучить обстановку.' if _r1397_condition(gsm):
            # r93 # reply1397
            jump ddustfem_s47
        'Ну… к чему имена? Храни веру, э-э, посвященная.' if _r1398_condition(gsm):
            # r94 # reply1398
            jump ddustfem_s47
        'Если ты не можешь помочь мне, я поищу кого-нибудь, кто сможет. Прощай.' if _r1399_condition(gsm):
            # r95 # reply1399
            jump ddustfem_s46


# s30 # say1204
label ddustfem_s30:  # from 28.1
    dustfem 'Дхолл — один из самых уважаемых членов нашей фракции. Наверное, никто не размышлял о сущности Истинной Смерти и не заслужил ее больше, чем он.'
    dustfem 'У него много знаний, которыми он может поделиться. Если ты незнаком с ним, то я советую тебе как можно раньше воспользоваться этой возможностью.'
    dustfem 'Ему осталось не так долго жить в тени этого существования.'

    menu:
        'Ему еще недолго жить в тени этого существования?':
            # r96 # reply4280
            jump ddustfem_s31
        'Где я могу найти Дхолла?' if _r4281_condition(gsm):
            # r97 # reply4281
            jump ddustfem_s32
        'Где я могу найти Дхолла?' if _r4282_condition(gsm):
            # r98 # reply4282
            jump ddustfem_s33
        'У меня есть другие вопросы…':
            # r99 # reply4283
            jump ddustfem_s26
        'Спасибо за информацию. Я поговорю с ним.':
            # r100 # reply33245
            jump ddustfem_s48


# s31 # say1205
label ddustfem_s31:  # from 30.0 32.0 33.0
    teller 'Кивок.'
    dustfem 'Дхолл болен. Он стар, даже по меркам гитцераев. Несомненно, смерть последует за болезнью, которую он подхватил. Ему повезло.'

    menu:
        'По меркам гитцераев?':
            # r101 # reply4284
            jump ddustfem_s34
        'Что это еще за *гитцераи*?':
            # r102 # reply4285
            jump ddustfem_s35
        'Повезло?':
            # r103 # reply4286
            jump ddustfem_s36
        'Понятно. У меня есть другие вопросы…':
            # r104 # reply4287
            jump ddustfem_s26
        'Спасибо за уделенное время. Мне нужно идти.':
            # r105 # reply4337
            jump ddustfem_s48


# s32 # say1206
label ddustfem_s32:  # from 30.1
    dustfem 'Дхолл находится в приемной комнате в северо-западной части этого этажа. Должна предупредить… Дхолл очень занят…'
    dustfem '…то время, которое он не занят своими обязанностями, отбирает у него болезнь.'

    menu:
        'Дхолл болен?':
            # r106 # reply4288
            jump ddustfem_s31
        'Спасибо за уделенное время. Мне нужно идти. Прощай.':
            # r107 # reply4289
            jump ddustfem_s48


# s33 # say1207
label ddustfem_s33:  # from 30.2
    dustfem 'Дхолл скорее всего в приемной комнате на втором этаже. Лучше не отвлекай его слишком сильно — он очень занят…'
    dustfem '…то время, которое он не занят своими обязанностями, отбирает у него болезнь.'

    menu:
        'Дхолл болен?':
            # r108 # reply4290
            jump ddustfem_s31
        'Спасибо за уделенное время. Мне нужно идти. Прощай.':
            # r109 # reply4291
            jump ddustfem_s48


# s34 # say1208
label ddustfem_s34:  # from 31.0
    dustfem 'Да, гитцераи живут гораздо дольше, чем люди.'

    menu:
        'Что это еще за *гитцераи*?':
            # r110 # reply4292
            jump ddustfem_s35
        'Как это Дхоллу повезло? От него хотят избавиться?':
            # r111 # reply4293
            jump ddustfem_s36
        'О, у меня есть другие вопросы…':
            # r112 # reply4294
            jump ddustfem_s26
        'Спасибо за уделенное время. Прощай.':
            # r113 # reply4295
            jump ddustfem_s48


# s35 # say1209
label ddustfem_s35:  # from 31.1 34.0
    dustfem 'Гитцерай — это…'
    teller 'Тленная умолкает, пристально глядя на тебя.'
    dustfem 'Ты ведь нездешний. Кто ты?'

    menu:
        'Я недавно посвящен. Прости мое невежество.' if _r4296_condition(gsm):
            # r114 # reply4296
            jump ddustfem_s50
        'Я… недавно здесь. Я… пытаюсь изучить обстановку.' if _r4297_condition(gsm):
            # r115 # reply4297
            jump ddustfem_s47
        'Ну… к чему имена? Храни веру, э-э, посвященная.' if _r4298_condition(gsm):
            # r116 # reply4298
            jump ddustfem_s47
        'Если ты не можешь помочь мне, я поищу кого-нибудь, кто сможет. Прощай.' if _r4300_condition(gsm):
            # r117 # reply4300
            jump ddustfem_s46


# s36 # say1210
label ddustfem_s36:  # from 31.2 34.1
    dustfem 'Ему повезло в том, что он достигнет Истинной Смерти. Он больше не будет странствовать в тени этого существования.'

    menu:
        'И… это хорошо?':
            # r118 # reply4299
            jump ddustfem_s37
        'Понятно. И правда, очень повезло. У меня есть другие вопросы…':
            # r119 # reply4301
            jump ddustfem_s26
        'Понятно. Ну что ж, мне нужно идти. Прощай.':
            # r120 # reply4302
            jump ddustfem_s48


# s37 # say1211
label ddustfem_s37:  # from 36.0
    teller 'Тленная кивает.'
    dustfem 'Да.'
    teller 'Она хмурится, затем пристально смотрит на тебя.'
    dustfem 'Ты нездешний. Кто ты?'

    menu:
        'Я недавно посвящен. Прости мое невежество.' if _r4303_condition(gsm):
            # r121 # reply4303
            jump ddustfem_s50
        'Я… недавно здесь. Я… пытаюсь изучить обстановку.' if _r4304_condition(gsm):
            # r122 # reply4304
            jump ddustfem_s47
        'Ну… к чему имена? Храни веру, э-э, посвященная.' if _r4305_condition(gsm):
            # r123 # reply4305
            jump ddustfem_s47
        'Если ты не можешь помочь мне, я поищу кого-нибудь, кто сможет. Прощай.' if _r4306_condition(gsm):
            # r124 # reply4306
            jump ddustfem_s46


# s38 # say1212
label ddustfem_s38:  # from -
    dustfem 'Ты не из наших. Кто ты? Что ты здесь делаешь?'
    dustfem 'Ты из анархистов? Или шпион другой фракции?'
    teller 'Тленная отступает на шаг.'
    dustfem 'Стража! Стража!'

    menu:
        'Проклятье!':
            # r125 # reply4307
            $ _r4307_action(gsm)
            jump ddustfem_dispose
        'Тс-с-с! Я не смогу тебе ответить под такой крик!' if _r4308_condition(gsm):
            # r126 # reply4308
            $ _r4308_action(gsm)
            jump ddustfem_dispose
        'Тс-с-с! Я не смогу тебе ответить под такой крик!' if _r4309_condition(gsm):
            # r127 # reply4309
            $ _r4309_action(gsm)
            jump ddustfem_dispose


# s39 # say1213
label ddustfem_s39:  # from 26.2
    dustfem 'Дневник? Не встречала такого.'

    menu:
        'У меня есть другие вопросы…':
            # r128 # reply4310
            jump ddustfem_s26
        'Я должен идти. Прощай.':
            # r129 # reply4311
            jump ddustfem_s48


# s40 # say1214
label ddustfem_s40:  # from - # Manually checked EXTERN ~DMORTE~ : 81 Manually checked EXTERN ~DMORTE~ : 83
    teller 'Эта бледная женщина одета в длинную темную мантию. От нее слегка отдает плесенью. Ее лицо ничего не выражает; кажется, она поглощена своими обязанностями.'

    menu:
        'Приветствую.' if _r4312_condition(gsm):
            # r130 # reply4312
            jump dmorte_s81
        'Приветствую.' if _r4313_condition(gsm):
            # r131 # reply4313
            jump dmorte_s83
        'Приветствую.' if _r4314_condition(gsm):
            # r132 # reply4314
            jump ddustfem_s4
        'Приветствую.' if _r4315_condition(gsm):
            # r133 # reply4315
            jump ddustfem_s4
        'Оставить ее в покое.':
            # r134 # reply4316
            jump ddustfem_dispose


# s41 # say1215
label ddustfem_s41:  # from 1.0 5.1 7.1 8.1 47.1
    teller 'Тленная не успевает и слова вымолвить, как твои руки хватают ее голову за виски и резко сворачивают ее влево.'

    menu:
        'Нельзя дать тебе предупредить своих друзей…':
            # r135 # reply4317
            $ _r4317_action(gsm)
            jump ddustfem_s42


# s42 # say1216
label ddustfem_s42:  # from 41.0 45.0
    teller 'В шее раздается характерный хруст, и тело тленной безвольно падает в твои объятия.'

    menu:
        'Лучше ты, чем я, трухлявка.' if _r4318_condition(gsm):
            # r136 # reply4318
            $ _r4318_action(gsm)
            jump ddustfem_s43
        'Лучше ты, чем я, трухлявка.' if _r4319_condition(gsm):
            # r137 # reply4319
            $ _r4319_action(gsm)
            jump ddustfem_dispose


# s43 # say1217
label ddustfem_s43:  # from 42.0
    teller 'К своему удивлению, это действие происходит практически инстинктивно, будто ты проделывал это уже много раз…'
    teller '…с этой мыслью всплывает воспоминание, но оно недостаточно сильно для того, чтобы за него зацепиться.'

    menu:
        'Оставить тело, уйти.':
            # r138 # reply4320
            $ _r4320_action(gsm)
            jump ddustfem_dispose


# s44 # say1218
label ddustfem_s44:  # from 5.0 7.0 8.0 19.4 47.0
    teller 'Ты недостаточно быстр, и тленная уворачивается от твоего выпада. Отступив на шаг, она быстро хлопает в ладони три раза.'
    teller 'В ответ во всем Морге раздается звон огромного железного колокола.'

    menu:
        'Ну хорошо…':
            # r139 # reply4321
            $ _r4321_action(gsm)
            jump ddustfem_dispose


# s45 # say1219
label ddustfem_s45:  # from 19.5
    teller 'Ты наклоняешься, чтобы шепнуть ей что-то на ухо, тленная тоже наклоняется.'
    teller 'Как только она оказывается на расстоянии вытянутой руки, ты хватаешь ее за виски и резко сворачиваешь голову влево.'

    menu:
        'Нельзя дать тебе предупредить своих друзей…':
            # r140 # reply4322
            $ _r4322_action(gsm)
            jump ddustfem_s42


# s46 # say1220
label ddustfem_s46:  # from 24.3 25.3 29.3 35.3 37.3 49.3 50.1
    teller 'Тленная явно что-то подозревает. Похоже, она хочет что-то сказать, затем едва заметно качает головой и возвращается к своим обязанностям.'

    menu:
        'Уйти прочь.':
            # r141 # reply4323
            jump ddustfem_dispose


# s47 # say1221
label ddustfem_s47:  # from 24.2 25.2 29.1 29.2 35.1 35.2 37.1 37.2 49.1 49.2
    teller 'Тленная внимательно тебя осматривает.'
    dustfem 'Ты не из наших. Что ты здесь делаешь? Ты из анархистов? Или шпион другой фракции? Кажется, здесь есть дело для стражников…'

    menu:
        'Свернуть ей шею до того, как она сможет позвать на помощь.' if _r4324_condition(gsm):
            # r142 # reply4324
            jump ddustfem_s44
        'Свернуть ей шею до того, как она сможет позвать на помощь.' if _r4325_condition(gsm):
            # r143 # reply4325
            jump ddustfem_s41
        'Уйти. Быстро.':
            # r144 # reply4326
            jump ddustfem_s2
        'Нет-нет… не он, э-э… то есть, я хотел сказать, не шпион… понимаешь, я пробудился на одной из плит… и…':
            # r145 # reply4327
            jump ddustfem_s2


# s48 # say1222
label ddustfem_s48:  # from 10.0 11.0 12.0 13.0 14.0 15.0 26.3 27.1 28.3 30.4 31.4 32.1 33.1 34.3 36.2 39.1
    teller 'Тленная кивает и возвращается к своим делам.'

    menu:
        'Уйти прочь.':
            # r146 # reply4328
            jump ddustfem_dispose


# s49 # say1223
label ddustfem_s49:  # from 24.0 24.1 25.0 25.1
    teller 'Тленная хмурится.'
    dustfem 'Это имя мне незнакомо.'

    menu:
        'Я недавно посвящен. Прости мое невежество.' if _r4329_condition(gsm):
            # r147 # reply4329
            jump ddustfem_s50
        'Я… недавно здесь. Я… пытаюсь изучить порядки.' if _r4331_condition(gsm):
            # r148 # reply4331
            jump ddustfem_s47
        'Ну… к чему имена? Храни веру, э-э, посвященная.' if _r4332_condition(gsm):
            # r149 # reply4332
            jump ddustfem_s47
        'Если ты не можешь помочь мне, я поищу кого-нибудь, кто сможет. Прощай.' if _r4333_condition(gsm):
            # r150 # reply4333
            jump ddustfem_s46


# s50 # say1224
label ddustfem_s50:  # from 29.0 35.0 37.0 49.0
    teller 'Тленная продолжает хмуриться, но затем слегка кивает.'
    dustfem 'Ну хорошо. Что я могу сделать для тебя, посвященный?'

    menu:
        'У меня есть пара вопросов…':
            # r151 # reply4334
            jump ddustfem_s26
        'На этот раз — ничего. Прощай.':
            # r152 # reply4335
            jump ddustfem_s46


# s51 # say66683
label ddustfem_s51:  # from - # IF ~  Global("Appearance","GLOBAL",0)
    teller 'Тленная бросает на тебя каменный взгляд.'
    dustfem 'Ты потерялся?'

    menu:
        'Нет, я член фракции. Я просто осматриваю Морг.' if _r66684_condition(gsm):
            # r153 # reply66684
            jump ddustfem_s52
        'Да.' if _r66685_condition(gsm):
            # r154 # reply66685
            jump ddustfem_s5
        'Нет.' if _r66686_condition(gsm):
            # r155 # reply66686
            jump ddustfem_s6
        'Нет, я не потерялся. У меня есть несколько вопросов…' if _r66687_condition(gsm):
            # r156 # reply66687
            jump ddustfem_s6
        'Прощай.' if _r66688_condition(gsm):
            # r157 # reply66688
            jump ddustfem_s2


# s52 # say66689
label ddustfem_s52:  # from 51.0
    teller 'Тленная какое-то время пристально на тебя смотрит, затем кивает.'
    dustfem 'Хорошо. Если тебе нужна помощь, дай мне знать.'

    menu:
        'Конечно. Прощай.':
            # r158 # reply66690
            jump ddustfem_dispose
