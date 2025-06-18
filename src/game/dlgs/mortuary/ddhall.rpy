init python:
    def _r827_action(gsm):
        gsm.set_meet_dhall(True)
    def _r830_action(gsm):
        gsm.inc_exp_custom('party', 250)
    def _r831_action(gsm):
        gsm.inc_exp_custom('party', 250)
    def _r843_action(gsm):
        gsm.dec_once_good('evil_dhall_1')
    def _r5069_action(gsm):
        gsm.update_journal('39460')
    def _r886_action(gsm):
        gsm.update_journal('39463')
    def _r906_action(gsm):
        gsm.update_journal('39464')
    def _r921_action(gsm):
        gsm.update_journal('39461')
    def _r931_action(gsm):
        gsm.update_journal('39462')
    def _r936_action(gsm):
        gsm.inc_once_good('good_dhall_1')
    def _r953_action(gsm):
        gsm.set_meet_dustmen(True)
    def _r958_action(gsm):
        gsm.set_meet_dustmen(True)
    def _r1301_action(gsm):
        gsm.update_journal('39470')
    def _r974_action(gsm):
        gsm.set_meet_dustmen(True)
    def _r985_action(gsm):
        gsm.set_meet_dustmen(True)
    def _r1327_action(gsm):
        gsm.set_meet_dhall(True)
    def _r5731_action(gsm):
        gsm.update_journal('39459')
    def _r5732_action(gsm):
        gsm.update_journal('39459')
    def _r6033_action(gsm):
        gsm.set_meet_dustmen(True)
    def _r6051_action(gsm):
        gsm.inc_once_good('good_dhall_2')
    def _r6053_action(gsm):
        gsm.dec_once_good('evil_dhall_3')


init python:
    def _r5070_condition(gsm):
        return not gsm.get_meet_deionarra()
    def _r5071_condition(gsm):
        return not gsm.get_meet_deionarra()
    def _r5072_condition(gsm):
        return gsm.get_meet_deionarra()
    def _r5073_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'int') \
               and gsm.check_char_prop_lt('protagonist',13,'wis')
    def _r5074_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'wis')
    def _r6064_condition(gsm):
        return not gsm.get_meet_deionarra()
    def _r13288_condition(gsm):
        return gsm.get_meet_deionarra()
    def _r830_condition(gsm):
        return not gsm.get_vaxis_lawful()
    def _r831_condition(gsm):
        return gsm.get_vaxis_lawful()
    def _r839_condition(gsm):
        return gsm.get_in_party_morte()
    def _r835_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_mortualy_alarmed()
    def _r5058_condition(gsm):
        return not gsm.get_in_party_morte() \
               and gsm.get_mortualy_alarmed()
    def _r842_condition(gsm):
        return gsm.get_meet_dhall()
    def _r843_condition(gsm):
        return gsm.get_meet_dhall()
    def _r5062_condition(gsm):
        return not gsm.get_meet_dhall()
    def _r854_condition(gsm):
        return gsm.get_meet_vaxis() \
               and not gsm.get_dead_vaxis() \
               and not gsm.get_vaxis_leave() \
               and gsm.get_vaxis_betrayed() == 0
    def _r858_condition(gsm):
        return not gsm.get_escape_mortuary() \
               and not gsm.is_internal_location_visited('AR0200')
    def _r870_condition(gsm):
        return not gsm.get_meet_deionarra()
    def _r891_condition(gsm):
        return not gsm.get_meet_pharod()
    def _r892_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',11,'wis')
    def _r898_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',11,'wis')
    def _r910_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',11,'wis')
    def _r931_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',11,'int')
    def _r942_condition(gsm):
        return not gsm.get_journal()
    def _r943_condition(gsm):
        return not gsm.get_meet_pharod()
    def _r6026_condition(gsm):
        return not gsm.get_meet_pharod()
    def _r874_condition(gsm):
        return gsm.get_meet_pharod()
    def _r948_condition(gsm):
        return not gsm.get_meet_pharod()
    def _r6027_condition(gsm):
        return not gsm.get_meet_pharod()
    def _r6066_condition(gsm):
        return gsm.get_meet_pharod()
    def _r964_condition(gsm):
        return not gsm.get_meet_pharod()
    def _r968_condition(gsm):
        return not gsm.get_meet_pharod()
    def _r5076_condition(gsm):
        return not gsm.get_meet_deionarra()
    def _r5077_condition(gsm):
        return gsm.get_meet_deionarra()
    def _r5078_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'int') \
               and gsm.check_char_prop_lt('protagonist',13,'wis')
    def _r5079_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'wis')
    def _r5081_condition(gsm):
        return not gsm.get_meet_deionarra()
    def _r5082_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'int') \
               and gsm.check_char_prop_lt('protagonist',13,'wis')
    def _r5083_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'wis')
    def _r6032_condition(gsm):
        return gsm.get_morte_mortuary_walkthrough_1()


init 10 python:
    gsm = renpy.store.global_settings_manager
    glm = renpy.store.global_location_manager


# ###
# Original:  DLG/DDHALL.DLG
# ###


label start_ddhall_talk_first:
    call ddhall_init
    jump ddhall_s5
label start_ddhall_talk:
    call ddhall_init
    jump ddhall_s40
label start_ddhall_kill_first:  # TODO [snow]: give gsm.set_has_dhall_feather(True)
    call ddhall_init
    jump ddhall_kill_first
label start_ddhall_kill:
    call ddhall_init
    jump ddhall_kill
label ddhall_init:
    $ glm.set_location('mortuary_f2r3')
    scene bg mortuary3
    show morte_img default at center_left_down
    show dhall_img default at center_right_down
    return
label ddhall_dispose:
    hide morte_img
    hide dhall_img
    jump show_graphics_menu


# s0 # say822
label ddhall_s0:  # from - # Check EXTERN ~DMORTE~ : 104
    teller 'Прежде чем Морт успевает завершить свои разглагольствования, писарь начинает безудержно кашлять.'
    teller 'Спустя минуту или две кашель прекращается, и дыхание писаря вновь становится неровным хрипом.'

    jump dmorte_s104

# s1 # say826
label ddhall_s1:  # from -
    teller 'Прежде чем Морт успевает закончить, взгляд серых глаз писаря падает на тебя.'
    dhall_unknown 'Бремя прожитых лет лежит на мне тяжелым грузом, Неугомонный.'
    teller 'Он откладывает перо.'
    dhall_unknown 'Но глухотой я еще не страдаю.'

    menu:
        'Неугомонный? Ты меня знаешь?':
            # r0 # reply827
            $ _r827_action(gsm)
            jump ddhall_s44


# s2 # say829
label ddhall_s2:  # from 21.0
    dhall 'Тебе знакома женщина, чьи останки погребены внизу, в мемориальном зале? Я думаю, что в прошлом она путешествовала вместе с тобой…'
    teller 'Дхолл начинает кашлять, но ему удается перевести дыхание.'
    dhall 'Я ошибаюсь?'

    menu:
        'Где ее тело?' if _r5070_condition(gsm):
            # r1 # reply5070
            jump ddhall_s42
        'Я ничего о ней не знаю.' if _r5071_condition(gsm):
            # r2 # reply5071
            jump ddhall_s43
        'Она узнала меня, но я не смог ее вспомнить.' if _r5072_condition(gsm):
            # r3 # reply5072
            jump ddhall_s28
        'Ты говорил, что здесь есть другие. Кто они?' if _r5073_condition(gsm):
            # r4 # reply5073
            jump ddhall_s12
        'Ты говорил, что здесь есть другие. Кто они?' if _r5074_condition(gsm):
            # r5 # reply5074
            jump ddhall_s12
        'Возможно. У меня есть другие вопросы к тебе…':
            # r6 # reply6063
            jump ddhall_s9
        'Пойду вниз, в мемориальный зал. Может быть, я найду ее тело.' if _r6064_condition(gsm):
            # r7 # reply6064
            jump ddhall_s11
        'Возможно, нет. Прощай.' if _r13288_condition(gsm):
            # r8 # reply13288
            jump ddhall_s11


# s3 # say832
label ddhall_s3:  # from 9.0
    teller 'Дхолл пристально смотрит на тебя.'
    dhall 'Ты уверен?'

    menu:
        'Да. Он очень хорошо замаскировался.' if _r830_condition(gsm):
            # r9 # reply830
            $ _r830_action(gsm)
            jump ddhall_s4
        'Да. Он очень хорошо замаскировался.' if _r831_condition(gsm):
            # r10 # reply831
            $ _r831_action(gsm)
            jump ddhall_s4
        'Нет, пожалуй, мне просто показалось. У меня есть другие вопросы…':
            # r11 # reply834
            jump ddhall_s9


# s4 # say833
label ddhall_s4:  # from 3.0 3.1
    dhall 'Я…'
    teller 'У Дхолла начинается очередной приступ кашля. Спустя минуту или две его дыхание становится достаточно спокойным, чтобы он смог продолжить.'
    dhall 'Я… незамедлительно предупрежу стражу.'

    menu:
        'Спасибо. У меня есть другие вопросы…':
            # r12 # reply836
            jump ddhall_s9
        'Отлично. Прощай.':
            # r13 # reply837
            jump ddhall_s11


# s5 # say838
label ddhall_s5:  # from - # IF ~  Global("Dhall","GLOBAL",0) Manually checked EXTERN ~DMORTE~ : 102 as dmorte_s102
    teller 'Этот писарь выглядит очень старым… его кожа морщиниста и имеет желтый оттенок, как у старого пергамента.'
    teller 'Темно-серые глаза глубоко посажены на его угловатом лице, длинная белая борода ниспадает на его одежды, подобно водопаду.'
    teller 'Его дыхание неровно и прерывисто, но даже периодический кашель не может замедлить движение его пера.'

    menu:
        'Приветствую.' if _r839_condition(gsm):
            # r14 # reply839
            jump dmorte_s102
        'Приветствую.' if _r835_condition(gsm):
            # r15 # reply835
            jump ddhall_s7
        'Приветствую.' if _r5058_condition(gsm):
            # r16 # reply5058
            jump ddhall_s6
        'Оставить старого писаря в покое.':
            # r17 # reply5060
            jump ddhall_dispose


# s6 # say841
label ddhall_s6:  # from 5.2
    teller 'Его серые глаза сверкают, когда он отрывает свой взгляд от книги.'
    dhall 'Подозреваю, что это ты в ответе за нападения в Морге. Это…'
    teller 'Он тихо кашляет, затем тяжело хрипит.'
    dhall 'Это не позволит тебе обрести следующую жизнь.'

    menu:
        'Я всего лишь защищался. У меня есть несколько вопросов перед тем, как я удалюсь…' if _r842_condition(gsm):
            # r18 # reply842
            jump ddhall_s9
        'Как по мне, дарить смерть вам, трупопоклонникам, — не такое уж и не преступление. А теперь у меня есть вопросы к тебе…' if _r843_condition(gsm):
            # r19 # reply843
            $ _r843_action(gsm)
            jump ddhall_s9
        'Ты знаешь меня?' if _r5062_condition(gsm):
            # r20 # reply5062
            jump ddhall_s44
        'Прощай.':
            # r21 # reply5063
            jump ddhall_dispose


# s7 # say844
label ddhall_s7:  # from 5.1
    teller 'Писарь прекращает вести записи в стоящую перед ним книгу и оглядывается. Его глаза похожи на два гвоздя, забитые в его череп.'
    dhall 'Итак…'
    teller 'Его голос уставший, как будто он повторял это уже много раз.'
    dhall 'Ты пробудился ото сна и вернулся в свои грезы.'
    teller 'Он продолжает более уважительным голосом.'
    dhall 'Приятно встретиться… снова, Неугомонный.'

    menu:
        'Неугомонный? Ты меня знаешь?':
            # r22 # reply845
            jump ddhall_s44


# s8 # say851
label ddhall_s8:  # from 22.0
    dhall 'Ты должен понять. Твое существование для них — богохульство.'
    dhall 'Многие из нашей фракции распорядились бы тебя кремировать… если бы узнали о твоем несчастье.'

    menu:
        'Ты — тленный, и все же не пытаешься убить меня. Почему?':
            # r23 # reply940
            jump ddhall_s23
        'Расскажи мне побольше о Морге.':
            # r24 # reply911
            jump ddhall_s32
        'У меня есть другие вопросы…':
            # r25 # reply913
            jump ddhall_s9
        'Я выслушал достаточно. Прощай, Дхолл.':
            # r26 # reply6038
            jump ddhall_s11


# s9 # say852
label ddhall_s9:  # from 2.5 3.2 4.0 6.0 6.1 8.2 10.5 12.1 13.0 14.4 15.2 16.3 17.3 18.2 19.2 20.2 21.1 22.2 23.2 24.1 25.2 26.2 27.0 28.1 29.2 30.0 31.1 32.6 33.3 34.2 35.2 36.2 37.1 38.2 39.0 40.0 41.3 42.4 43.3 45.0 47.4 48.2 49.2 51.2 52.2 53.1
    dhall 'Хорошо. Что ты хочешь узнать?'

    menu:
        'Ты знал, что в восточной комнате находится кто-то, замаскированный под зомби?' if _r854_condition(gsm):
            # r27 # reply854
            jump ddhall_s3
        'Что это за место?':
            # r28 # reply857
            jump ddhall_s10
        'Как я попал сюда?':
            # r29 # reply855
            jump ddhall_s15
        'Не подскажешь, как мне выбраться отсюда?' if _r858_condition(gsm):
            # r30 # reply858
            jump ddhall_s13
        'Ты знаешь, кто я?':
            # r31 # reply5069
            $ _r5069_action(gsm)
            jump ddhall_s21
        'Чем ты здесь занимаешься?':
            # r32 # reply5748
            jump ddhall_s25
        'Твой кашель ужасен. Ты хорошо себя чувствуешь?':
            # r33 # reply6065
            jump ddhall_s26
        'Ничего… прощай, Дхолл.':
            # r34 # reply41663
            jump ddhall_s11


# s10 # say859
label ddhall_s10:  # from 9.1
    dhall 'Ты находишься в Морге, Неугомонный. Ты снова… пришел…'
    teller 'Не успев закончить, Дхолл заходится в приступе кашля. Спустя некоторое время он берет себя в руки, и его дыхание снова становится неровным хрипом.'
    dhall '…это зал ожидания для тех, кто собирается покинуть тень этой жизни.'

    menu:
        'Расскажи мне о Морге.':
            # r35 # reply861
            jump ddhall_s32
        '*Неугомонный*?':
            # r36 # reply860
            jump ddhall_s38
        'Тень этой жизни?':
            # r37 # reply862
            jump ddhall_s33
        'Снова?.. Я был здесь раньше?':
            # r38 # reply863
            jump ddhall_s14
        'Как я попал сюда?':
            # r39 # reply864
            jump ddhall_s15
        'У меня есть другие вопросы…':
            # r40 # reply865
            jump ddhall_s9
        'Прощай, Дхолл.':
            # r41 # reply866
            jump ddhall_s11


# s11 # say867
label ddhall_s11:  # from 2.6 2.7 4.1 8.3 9.7 10.6 12.2 14.5 15.3 16.4 19.3 20.3 21.2 22.3 23.3 24.2 25.3 26.3 27.1 28.2 29.4 30.1 31.3 32.7 33.4 34.3 35.3 36.3 37.2 38.3 41.4 42.5 43.4 47.5 48.3 49.3 51.3 52.3 53.2
    teller 'Когда ты собираешься уйти, Дхолл начинает говорить.'
    dhall 'Знай: я не завидую тебе, Неугомонный. Твои возрождения — проклятье, которого я бы не смог вынести.'
    dhall 'Ты должен смириться с этим. Когда-нибудь твой путь вернет тебя сюда… '
    teller 'Дхолл кашляет, из его горла доносятся хрипы.'
    dhall 'Это путь всех существ из плоти и костей.'

    menu:
        'Тогда, возможно, мы еще встретимся, Дхолл.':
            # r42 # reply41564
            jump ddhall_dispose


# s12 # say868
label ddhall_s12:  # from 2.3 2.4 42.2 42.3 43.1 43.2
    dhall 'Несомненно, они здесь, но я не знаю ни их имен, ни где они лежат. Ты прошел путь, по которому ходят многие, но немногие выживают.'
    teller 'Дхолл обводит вокруг тебя рукой.'
    dhall 'Все умершие прибывают сюда. Кое-кто из них, должно быть, путешествовал с тобой.'

    menu:
        'Где та женщина, которую ты упомянул?' if _r870_condition(gsm):
            # r43 # reply870
            jump ddhall_s42
        'Я не вижу изъяна в твоих рассуждениях. У меня еще вопросы…':
            # r44 # reply871
            jump ddhall_s9
        'Тогда я поищу их. Возможно, они смогут возродить мою память. Прощай.':
            # r45 # reply872
            jump ddhall_s11


# s13 # say875
label ddhall_s13:  # from 9.3
    dhall 'Хм-м… Главные ворота — самый очевидный выход, но они не выпустят никого, кроме тленных…'
    teller 'Дхолл заходится в кашле, затем продолжает.'
    dhall 'У одного из проводников у главных ворот есть ключ к ним, но он вряд ли откроет их для тебя, разве что ты будешь весьма убедительным.'

    menu:
        'Понятно. У меня еще вопросы…':
            # r46 # reply876
            jump ddhall_s9
        'Тогда прощай, Дхолл.':
            # r47 # reply877
            jump ddhall_dispose


# s14 # say878
label ddhall_s14:  # from 10.3
    dhall 'Да, *снова*. Ты попадал сюда много раз, Неугомонный. Я надеялся, что этот раз будет последним, учитывая полученные тобой раны.'
    teller 'Он вздыхает.'
    dhall 'Когда же ты откажешься от своих страстей и покинешь эту тень жизни?'

    menu:
        '*Неугомонный*?':
            # r48 # reply880
            jump ddhall_s38
        'Ранен?':
            # r49 # reply881
            jump ddhall_s34
        'Тень жизни?':
            # r50 # reply883
            jump ddhall_s33
        'Расскажи мне побольше о Морге.':
            # r51 # reply879
            jump ddhall_s32
        'У меня есть другие вопросы…':
            # r52 # reply5751
            jump ddhall_s9
        'Прощай, Дхолл.':
            # r53 # reply5752
            jump ddhall_s11


# s15 # say885
label ddhall_s15:  # from 9.2 10.4 32.5
    teller 'Дхолл презрительно фыркает, как будто его воротит от воспоминания об этом.'
    dhall 'К Моргу тебя доставила твоя ветхая карета, Неугомонный. Увидев ее, ты мог бы возомнить себя аристократом, учитывая количеств подданных, лежащих в ней зловонной разлагающейся кучей.'

    menu:
        'Я приехал сюда на повозке?':
            # r54 # reply886
            $ _r886_action(gsm)
            jump ddhall_s16
        'Расскажи мне побольше о Морге.':
            # r55 # reply887
            jump ddhall_s32
        'У меня есть другие вопросы…':
            # r56 # reply888
            jump ddhall_s9
        'Прощай, Дхолл.':
            # r57 # reply889
            jump ddhall_s11


# s16 # say890
label ddhall_s16:  # from 15.0
    dhall 'Да… твое тело лежало где-то посреди горы трупов.'
    teller 'Дхолл снова заходится в приступе кашля, который ему удается побороть только несколько минут спустя.'
    dhall 'Твоим «сенешалем», как всегда, был Фарод, который был рад доставить твое тело к вратам Морга за несколько медяков.'

    menu:
        'Кто этот Фарод?' if _r891_condition(gsm):
            # r58 # reply891
            jump ddhall_s17
        'Похоже, тебе не очень-то нравится Фарод.' if _r892_condition(gsm):
            # r59 # reply892
            jump ddhall_s35
        'Расскажи мне побольше о Морге.':
            # r60 # reply893
            jump ddhall_s32
        'У меня есть другие вопросы…':
            # r61 # reply894
            jump ddhall_s9
        'Прощай, Дхолл.':
            # r62 # reply5753
            jump ddhall_s11


# s17 # say895
label ddhall_s17:  # from 16.0
    dhall 'Он… сборщик мертвых.'
    teller 'Дхолл переводит дыхание, затем продолжает.'
    dhall 'У нас в городе есть такие люди, которые собирают тела тех, кто вступил на путь Истинной Смерти, и приносят их нам для подобающего погребения.'

    menu:
        'Где я могу найти этого Фарода?':
            # r63 # reply897
            jump ddhall_s18
        'Похоже, тебе не очень-то нравится Фарод.' if _r898_condition(gsm):
            # r64 # reply898
            jump ddhall_s35
        'Расскажи мне побольше о Морге.':
            # r65 # reply899
            jump ddhall_s32
        'Понятно. У меня еще вопросы…':
            # r66 # reply5754
            jump ddhall_s9
        'Тогда пойду и разыщу этого Фарода. Прощай, Дхолл.':
            # r67 # reply6031
            jump ddhall_s19


# s18 # say900
label ddhall_s18:  # from 17.0 29.1 31.0 35.1 36.1
    dhall 'Если все пойдет своим чередом, Неугомонный, то скорее Фарод найдет тебя и притащит нам сюда, чем ты найдешь ту лужу грязи, в которой он барахтается.'

    menu:
        'Тем не менее, я должен его найти.':
            # r68 # reply902
            jump ddhall_s19
        'Расскажи мне побольше о Морге.':
            # r69 # reply903
            jump ddhall_s32
        'Понятно. У меня еще вопросы…':
            # r70 # reply904
            jump ddhall_s9
        'У меня такое чувство, что наши пути еще пересекутся. Прощай, Дхолл.':
            # r71 # reply5755
            jump ddhall_s19


# s19 # say901
label ddhall_s19:  # from 17.4 18.0 18.3 29.3 31.2
    teller 'Голос Дхолла начинает звучать предостерегающе.'
    dhall 'Не ищи Фарода, Неугомонный. Я уверен, что ты попросту пройдешь еще один полный круг, и не станешь от этого мудрее, зато обогатишь Фарода на несколько медяков.'
    dhall 'Прими смерть, Неугомонный. Не повторяй свой круг страданий.'

    menu:
        'Мне *нужно* найти его. Ты не знаешь, где он может быть?':
            # r72 # reply906
            $ _r906_action(gsm)
            jump ddhall_s20
        'Расскажи мне побольше о Морге.':
            # r73 # reply905
            jump ddhall_s32
        'У меня есть другие вопросы…':
            # r74 # reply907
            jump ddhall_s9
        'Я не могу больше с тобой говорить. Прощай, Дхолл.':
            # r75 # reply5756
            jump ddhall_s11


# s20 # say908
label ddhall_s20:  # from 19.0
    teller 'Дхолл умолкает на минуту. Когда же он начинает говорить, то становится ясно, что он делает это с явной неохотой.'
    dhall 'Я не знаю, в каком притоне находится логово Фарода в данный момент, но могу предположить, что оно где-то за воротами Морга, в Улье.'
    dhall 'Возможно, кто-то из местных знает, где его найти.'

    menu:
        'Похоже, тебе не очень-то нравится Фарод.' if _r910_condition(gsm):
            # r76 # reply910
            jump ddhall_s35
        'Расскажи мне побольше о Морге.':
            # r77 # reply909
            jump ddhall_s32
        'Спасибо. У меня есть другие вопросы…':
            # r78 # reply5757
            jump ddhall_s9
        'Тогда я пойду и поспрашиваю тамошних жителей. Прощай.':
            # r79 # reply6030
            jump ddhall_s11


# s21 # say914
label ddhall_s21:  # from 9.4
    dhall 'О тебе, Неугомонный, я знаю совсем немного. О твоих спутниках, лежащих теперь под нашим присмотром, я знаю ненамного больше.'
    teller 'Дхолл вздыхает.'
    dhall 'Прошу тебя, Неугомонный, больше не проси никого идти с тобой: за тобой остается только несчастье. Не разделяй свою ношу с другими.'

    menu:
        'Меня кто-то сопровождал в пути? Они здесь?':
            # r80 # reply921
            $ _r921_action(gsm)
            jump ddhall_s2
        'У меня есть другие вопросы…':
            # r81 # reply922
            jump ddhall_s9
        'Прощай, Дхолл.':
            # r82 # reply923
            jump ddhall_s11


# s22 # say915
label ddhall_s22:  # from 47.0
    teller 'Дхолл вздыхает.'
    dhall 'Говорят, что есть души, которые не могут достичь Истинной Смерти. Смерть отказалась от них, и их имена никогда не попадут в книгу мертвых.'
    dhall 'Подняться из мертвых, как это сделал ты… Это наводит на мысль, что ты — одна из таких душ. Само твое существование неприемлемо для нашей фракции.'

    menu:
        'Неприемлемо? Похоже, мое положение оставляет желать лучшего.':
            # r83 # reply917
            jump ddhall_s8
        'Ясно. Расскажи мне побольше о Морге.':
            # r84 # reply918
            jump ddhall_s32
        'У меня есть другие вопросы…':
            # r85 # reply919
            jump ddhall_s9
        'Думаю, я услышал достаточно. Прощай, Дхолл.':
            # r86 # reply920
            jump ddhall_s11


# s23 # say924
label ddhall_s23:  # from 8.0
    dhall 'Потому что заставлять тебя принимать нашу веру несправедливо. Ты должен оставить тень этой жизни по своей воле, а не по нашей.'
    teller 'Дхолл, кажется, готов разразиться очередным приступом кашля, но с некоторыми усилиями ему удается сдержаться.'
    dhall 'И покуда я не покину свою должность, я буду защищать твое право искать свою правду.'

    menu:
        'Каковы твои обязанности?':
            # r87 # reply927
            jump ddhall_s25
        'Расскажи мне побольше о Морге.':
            # r88 # reply928
            jump ddhall_s32
        'Хорошо. У меня есть другие вопросы…':
            # r89 # reply925
            jump ddhall_s9
        'Я выслушал достаточно. Прощай, Дхолл.':
            # r90 # reply6039
            jump ddhall_s11


# s24 # say929
label ddhall_s24:  # from 25.0
    dhall 'Я — единственный, кто регистрирует тела, поступающие в наши залы, Неугомонный.'
    teller 'Дхолл начинает кашлять, затем успокаивается.'
    dhall 'Только я вижу лица тех, кто лежит на наших плитах. Тайна твоего существования со мной в безопасности.'

    menu:
        'Расскажи мне побольше о Морге.':
            # r91 # reply1305
            jump ddhall_s32
        'У меня есть другие вопросы…':
            # r92 # reply6041
            jump ddhall_s9
        'Кажется, я обязан тебе. Прощай, Дхолл.':
            # r93 # reply6042
            jump ddhall_s11


# s25 # say930
label ddhall_s25:  # from 9.5 23.0
    dhall 'Я — писарь. Я веду учет всех тел, которые поступают в Морг.'
    teller 'Дхолл снова кашляет, затем глубоко вздыхает.'
    dhall 'И пока поток трупов идет через Морг, я буду при своей должности.'

    menu:
        'Ты сказал, что я был здесь много раз. Почему же тленные не узнают меня?' if _r931_condition(gsm):
            # r94 # reply931
            $ _r931_action(gsm)
            jump ddhall_s24
        'Расскажи мне побольше о Морге.':
            # r95 # reply932
            jump ddhall_s32
        'Понятно. У меня еще вопросы…':
            # r96 # reply933
            jump ddhall_s9
        'Отлично. Прощай, Дхолл.':
            # r97 # reply6040
            jump ddhall_s11


# s26 # say934
label ddhall_s26:  # from 9.6
    dhall 'Я уже близок к Истинной Смерти, Неугомонный. Уже скоро я пересеку Границу Вечности и обрету покой, который давно искал. Я устал от этой смертной сферы…'
    teller 'Дхолл тяжело вздыхает.'
    dhall 'Для такого, как я, на планах больше нет чудес.'

    menu:
        'Границу Вечности?':
            # r98 # reply935
            jump ddhall_s41
        'Ты уверен? Должен же быть способ помочь тебе.':
            # r99 # reply936
            $ _r936_action(gsm)
            jump ddhall_s27
        'У меня есть другие вопросы…':
            # r100 # reply937
            jump ddhall_s9
        'Прощай, Дхолл.':
            # r101 # reply960
            jump ddhall_s11


# s27 # say938
label ddhall_s27:  # from 26.1
    dhall 'Я не желаю жить вечно или возрождаться, Неугомонный. Я не смогу этого вынести.'

    menu:
        'Хорошо. У меня есть другие вопросы…':
            # r102 # reply1303
            jump ddhall_s9
        'Пусть будет так. Прощай, Дхолл.':
            # r103 # reply1304
            jump ddhall_s11


# s28 # say939
label ddhall_s28:  # from 2.2 42.1
    dhall 'Она *разговаривала* с тобой?'
    teller 'Дхолл переходит на шепот.'
    dhall 'Ты случаем не *бредишь*, Неугомонный? Она достигла Истинной Смерти и ушла туда, куда тебе не добраться.'

    menu:
        'Она разговаривала со мной, Дхолл. Ее душа находится здесь.':
            # r104 # reply981
            jump ddhall_s30
        'Возможно, я это выдумал. У меня есть другие вопросы…':
            # r105 # reply982
            jump ddhall_s9
        'Не уверен, что она достигла Истинной Смерти. Прощай, Дхолл.':
            # r106 # reply873
            jump ddhall_s11


# s29 # say941
label ddhall_s29:  # from 36.0
    teller 'Дхолл умолкает в раздумье.'
    dhall 'Скорее всего. Ты что-то потерял… что-то особенно ценное?'
    teller 'Он хмурится, понижая тон.'
    dhall 'Вряд ли Фарод будет делать исключения для чего либо, кроме вживленных в плоть вещей, но порой даже этого недостаточно, чтобы остановить его жадность.'

    menu:
        'Я потерял дневник.' if _r942_condition(gsm):
            # r107 # reply942
            jump ddhall_s31
        'Хм-м. Ты не знаешь, где мне найти Фарода?' if _r943_condition(gsm):
            # r108 # reply943
            jump ddhall_s18
        'У меня есть другие вопросы…':
            # r109 # reply944
            jump ddhall_s9
        'Возможно, мне стоит поговорить с Фародом. Прощай, Дхолл.' if _r6026_condition(gsm):
            # r110 # reply6026
            jump ddhall_s19
        'Понятно. Прощай, Дхолл.' if _r874_condition(gsm):
            # r111 # reply874
            jump ddhall_s11


# s30 # say945
label ddhall_s30:  # from 28.0
    teller 'Дхолл описывает пальцем полукруг в воздухе перед собой.'
    dhall 'Это дурное знамение, Неугомонный. Я молюсь о том, чтобы это оказалось твоим сном… и все же боюсь, это не так.'

    menu:
        'Возможно, мне показалось. У меня еще вопросы.':
            # r112 # reply946
            jump ddhall_s9
        'Возможно, мы поговорим об этом позже. Прощай, Дхолл.':
            # r113 # reply947
            jump ddhall_s11


# s31 # say850
label ddhall_s31:  # from 29.0
    dhall 'Дневник? Если он представляет хоть какую-то ценность, то он наверняка в руках Фарода.'

    menu:
        'Где мне найти этого Фарода?' if _r948_condition(gsm):
            # r114 # reply948
            jump ddhall_s18
        'Понятно. У меня еще вопросы…':
            # r115 # reply949
            jump ddhall_s9
        'В таком случае, я должен разыскать его. Прощай, Дхолл.' if _r6027_condition(gsm):
            # r116 # reply6027
            jump ddhall_s19
        'Понятно. Прощай, Дхолл.' if _r6066_condition(gsm):
            # r117 # reply6066
            jump ddhall_s11


# s32 # say950
label ddhall_s32:  # from 8.1 10.0 14.3 15.1 16.2 17.2 18.1 19.1 20.1 22.1 23.1 24.0 25.1 33.2 34.1 37.0 38.1 41.2 47.3 48.1 49.1 51.1 52.1 53.0
    dhall 'Это место, куда мертвых доставляют для погребения или кремации. Забота об умерших, покинувших эту тень жизни и ступивших на путь Истинной Смерти, входит в обязанности тленных.'
    teller 'Дхолл от волнения понижает тон.'
    dhall 'Должно быть, ты был тяжело ранен, раз не узнаешь это место. Это практически твой дом.'

    menu:
        'Тень жизни?':
            # r118 # reply951
            jump ddhall_s33
        'Истинной Смерти?':
            # r119 # reply953
            $ _r953_action(gsm)
            jump ddhall_s48
        'Тленных?':
            # r120 # reply954
            jump ddhall_s47
        'Сигил?':
            # r121 # reply955
            jump ddhall_s37
        'Ранен?':
            # r122 # reply956
            jump ddhall_s34
        'Как я попал сюда?':
            # r123 # reply846
            jump ddhall_s15
        'У меня есть другие вопросы…':
            # r124 # reply5735
            jump ddhall_s9
        'Прощай, Дхолл.':
            # r125 # reply6062
            jump ddhall_s11


# s33 # say957
label ddhall_s33:  # from 10.2 14.2 32.0 41.0 47.2 49.0
    dhall 'Да, тень. Видишь ли, Неугомонный, эта жизнь… она не настоящая. Наши с тобой жизни — всего лишь тени, жалкое подобие от того, что было однажды жизнью.'
    dhall 'Эта «жизнь» — то, куда мы попадаем *после* того, как умираем. А здесь мы… в западне. В клетке. До тех пор, пока не достигнем Истинной Смерти.'

    menu:
        'Истинной Смерти?':
            # r126 # reply958
            $ _r958_action(gsm)
            jump ddhall_s48
        'Почему ты решил, что эта жизнь ненастоящая?':
            # r127 # reply959
            jump ddhall_s50
        'Расскажи мне еще о Морге.':
            # r128 # reply5736
            jump ddhall_s32
        'Понятно. У меня еще вопросы…':
            # r129 # reply5737
            jump ddhall_s9
        'Прощай, Дхолл.':
            # r130 # reply5738
            jump ddhall_s11


# s34 # say961
label ddhall_s34:  # from 14.1 32.4
    dhall 'Да, раны, украшающие твое тело… Получи их более слабый человек, он бы уже был на пути к Истинной Смерти, а у тебя некоторые из них уже зажили.'
    teller 'Дхолл надрывно кашляет, затем успокаивается.'
    dhall 'Но это всего лишь поверхностные раны.'

    menu:
        'Всего лишь поверхностные раны? Что ты имеешь в виду?':
            # r131 # reply1301
            $ _r1301_action(gsm)
            jump ddhall_s53
        'Расскажи мне побольше о Морге.':
            # r132 # reply1302
            jump ddhall_s32
        'У меня есть другие вопросы…':
            # r133 # reply5746
            jump ddhall_s9
        'Прощай, Дхолл.':
            # r134 # reply5747
            jump ddhall_s11


# s35 # say962
label ddhall_s35:  # from 16.1 17.1 20.0
    dhall 'Есть люди, которых я уважаю, Неугомонный.'
    teller 'Дхолл успокаивает свое неровное дыхание.'
    dhall 'Фарод не входит в их число. Он носит свою дурную репутацию как знак гордости и свободно распоряжается имуществом умерших. Он рыцарь легкой наживы, подлая мразь самого низкого пошиба.'

    menu:
        'Рыцарь легкой наживы?':
            # r135 # reply963
            jump ddhall_s36
        'Ты не знаешь, где я могу найти Фарода?' if _r964_condition(gsm):
            # r136 # reply964
            jump ddhall_s18
        'Понятно. У меня еще вопросы…':
            # r137 # reply965
            jump ddhall_s9
        'Звучит ободряюще. Прощай, Дхолл.':
            # r138 # reply6028
            jump ddhall_s11


# s36 # say966
label ddhall_s36:  # from 35.0
    dhall 'Рыцарь легкой наживы —'
    teller 'Дхолл кашляет.'
    dhall '— вор. Все, кого Фарод приносит к нашим стенам, лишены всего имущества, которым они обладали при жизни.'
    dhall 'Фарод присваивает себе все, что ему удается вырвать из их окоченевших пальцев.'

    menu:
        'Мог ли Фарод взять что-нибудь у *меня*?':
            # r139 # reply967
            jump ddhall_s29
        'Ты не знаешь, где я могу найти Фарода?' if _r968_condition(gsm):
            # r140 # reply968
            jump ddhall_s18
        'Понятно. У меня еще вопросы…':
            # r141 # reply969
            jump ddhall_s9
        'Прощай, Дхолл.':
            # r142 # reply6029
            jump ddhall_s11


# s37 # say970
label ddhall_s37:  # from 32.3
    dhall 'Сигил — это наш прекрасный город, Неугомонный.'

    menu:
        'Расскажи мне еще о Морге.':
            # r143 # reply971
            jump ddhall_s32
        'Понятно. У меня еще вопросы…':
            # r144 # reply972
            jump ddhall_s9
        'Прощай, Дхолл.':
            # r145 # reply5758
            jump ddhall_s11


# s38 # say973
label ddhall_s38:  # from 10.1 14.0
    dhall 'Неугомонный — имя не хуже других…'
    teller 'Дхолл переводит дыхание.'
    dhall 'Ведь что-то держит тебя здесь, не так ли? Какое-то незаконченное дело, какая-то страсть, которая должна быть подавлена, прежде чем ты сможешь достигнуть Истинной Смерти?'

    menu:
        'Истинной Смерти?':
            # r146 # reply974
            $ _r974_action(gsm)
            jump ddhall_s48
        'Расскажи мне еще о Морге.':
            # r147 # reply975
            jump ddhall_s32
        'У меня есть другие вопросы…':
            # r148 # reply5749
            jump ddhall_s9
        'Прощай, Дхолл.':
            # r149 # reply5750
            jump ddhall_s11


# s39 # say884
label ddhall_s39:
    dhall 'Ты будешь делать то же, что и раньше, Неугомонный. Разыщешь того любителя звенелок, того плешивого идиота, Червеволосого, и вернешь свое имущество.'
    dhall 'После продолжишь свои бессмысленные поиски, пытаясь выполнить бессмысленные задания, собирая бессмысленные предметы. Затем ты падешь и вернешься назад к нам.'
    dhall 'Сэкономь время и поговори с мной сейчас, чтобы нам не пришлось вновь заводить этот разговор, когда твои воспоминания снова покинут тебя.'

    menu:
        'У меня есть другие вопросы…':
            # r150 # reply976
            jump ddhall_s9
        'Прощай, Дхолл.':
            # r151 # reply977
            jump ddhall_dispose


# s40 # say978
label ddhall_s40:  # from - # from - # IF ~  Global("Dhall","GLOBAL",1)
    teller 'Дхолл мельком смотрит на тебя.'
    dhall 'Итак. Ты вернулся…'
    teller 'Дхолл начинает хрипло дышать, затем у него начинается удушливый кашель. Спустя минуту кашель прекращается, и он, хрипло дыша, продолжает.'
    dhall '…приветствую тебя снова, Неугомонный.'

    menu:
        'У меня к тебе другие вопросы, Дхолл.':
            # r152 # reply979
            jump ddhall_s9
        'Неважно. Прощай.':
            # r153 # reply980
            jump ddhall_dispose


# s41 # say983
label ddhall_s41:  # from 26.0 52.0
    dhall 'Границу между владениями тени этой жизни и Истинной Смерти.'

    menu:
        'Тень этой жизни?':
            # r154 # reply984
            jump ddhall_s33
        'Истинной Смерти?':
            # r155 # reply985
            $ _r985_action(gsm)
            jump ddhall_s48
        'Расскажи мне побольше о Морге.':
            # r156 # reply5739
            jump ddhall_s32
        'Понятно. У меня еще вопросы…':
            # r157 # reply5740
            jump ddhall_s9
        'Прощай, Дхолл.':
            # r158 # reply5741
            jump ddhall_s11


# s42 # say5075
label ddhall_s42:  # from 2.0 12.0 43.0
    dhall 'В северо-западном мемориальном зале, этажом ниже. Проверь гробы… ее имя должно быть на одной из мемориальных табличек.'
    dhall 'Возможно, это оживит твои воспоминания.'

    menu:
        'Я не знаю. Не припомню, чтобы даже путешествовал вместе с женщиной.' if _r5076_condition(gsm):
            # r159 # reply5076
            jump ddhall_s43
        'Да, она утверждает, что знает меня, но я не могу ее вспомнить.' if _r5077_condition(gsm):
            # r160 # reply5077
            jump ddhall_s28
        'Ты говорил, что здесь есть другие. Кто они?' if _r5078_condition(gsm):
            # r161 # reply5078
            jump ddhall_s12
        'Ты говорил, что здесь есть другие. Кто они?' if _r5079_condition(gsm):
            # r162 # reply5079
            jump ddhall_s12
        'Возможно, мне стоит найти ее. Перед уходом у меня есть к тебе другие вопросы…':
            # r163 # reply6067
            jump ddhall_s9
        'Пойду вниз, в мемориальный зал. Может быть, я найду ее тело.':
            # r164 # reply6068
            jump ddhall_s11


# s43 # say5080
label ddhall_s43:  # from 2.1 42.0
    teller 'Дхолл не отвечает. Он просто молчаливо смотрит на тебя.'

    menu:
        'Где я могу найти ее?' if _r5081_condition(gsm):
            # r165 # reply5081
            jump ddhall_s42
        'Ты говорил, что здесь похоронены и другие мои спутники. Где они?' if _r5082_condition(gsm):
            # r166 # reply5082
            jump ddhall_s12
        'Ты говорил, что здесь похоронены и другие мои спутники. Где они?' if _r5083_condition(gsm):
            # r167 # reply5083
            jump ddhall_s12
        'У меня есть другие вопросы к тебе…':
            # r168 # reply6069
            jump ddhall_s9
        'Тогда прощай.':
            # r169 # reply6070
            jump ddhall_s11


# s44 # say840
label ddhall_s44:  # from 1.0 6.2 7.0
    dhall_unknown 'Знаю ли я тебя? Я…'
    teller 'В голосе писца звучит горечь.'
    dhall_unknown 'Я *никогда* не знал тебя, Неугомонный. Не больше, чем ты знал о себе сам.'
    teller 'Он умолкает на секунду.'
    dhall_unknown 'Ты ведь все забыл, не так ли?'

    menu:
        '*Кто* ты?':
            # r170 # reply1327
            $ _r1327_action(gsm)
            jump ddhall_s45


# s45 # say5728
label ddhall_s45:  # from 44.0
    dhall_unknown 'Как всегда, вопрос. И как всегда, неправильный.'
    teller 'Он делает легкий поклон, но движение вызывает у него неожиданный приступ кашля.'
    dhall_unknown 'Я…'
    teller 'Он умолкает на минуту, переводя дыхание.'
    dhall 'Я… Дхолл.'

    menu:
        'Возможно, ты ответишь на некоторые из моих вопросов, Дхолл…':
            # r171 # reply5731
            $ _r5731_action(gsm)
            jump ddhall_s9
        'У меня нет времени на это. Прощай.':
            # r172 # reply5732
            $ _r5732_action(gsm)
            jump ddhall_s46


# s46 # say5730
label ddhall_s46:  # from 45.1
    dhall 'Хорошо, Неугомонный.'
    teller 'Дхолл кивает.'
    dhall 'Но, боюсь, в данном вопросе время тебе не враг.'
    teller 'Он снова берется за перо.'
    dhall 'Когда ты снова захочешь поговорить, я буду здесь.'

    menu:
        'Я еще вернусь. Прощай.':
            # r173 # reply40005
            jump ddhall_dispose


# s47 # say847
label ddhall_s47:  # from 32.2
    dhall 'Мы — тленные, фракция, собравшая всех тех, кто понял иллюзорность этой жизни.'
    dhall 'Мы ждем следующей жизни и помогаем другим в их путешествии.'

    menu:
        'Может, ты мне объяснишь, почему тленные хотят моей смерти?' if _r6032_condition(gsm):
            # r174 # reply6032
            jump ddhall_s22
        'Истинной Смерти?':
            # r175 # reply6033
            $ _r6033_action(gsm)
            jump ddhall_s48
        'Иллюзорность этой жизни?':
            # r176 # reply6034
            jump ddhall_s33
        'Расскажи мне побольше о Морге.':
            # r177 # reply6035
            jump ddhall_s32
        'У меня есть другие вопросы к тебе…':
            # r178 # reply6036
            jump ddhall_s9
        'Тогда прощай.':
            # r179 # reply6037
            jump ddhall_s11


# s48 # say848
label ddhall_s48:  # from 32.1 33.0 38.0 41.1 47.1
    dhall 'Истинная Смерть — это небытие. Состояние, свободное от мыслей, чувств, страстей.'
    teller 'Дхолл кашляет, затем восстанавливает неровное дыхание.'
    dhall 'Состояние чистоты.'

    menu:
        'Похоже на забвение. И зачем кому-то это нужно?':
            # r180 # reply6043
            jump ddhall_s49
        'Ого. Расскажи мне побольше о Морге.':
            # r181 # reply6044
            jump ddhall_s32
        'Понятно… У меня есть другие вопросы.':
            # r182 # reply6045
            jump ddhall_s9
        'Я должен идти. Прощай, Дхолл.':
            # r183 # reply6046
            jump ddhall_s11


# s49 # say849
label ddhall_s49:  # from 48.0
    dhall 'По-твоему, лучше оставаться в тени того, что раньше называлось жизнью? Я так не думаю.'

    menu:
        'Тень жизни?':
            # r184 # reply6047
            jump ddhall_s33
        'Расскажи мне побольше о Морге.':
            # r185 # reply6048
            jump ddhall_s32
        'Понятно… У меня есть другие вопросы.':
            # r186 # reply6049
            jump ddhall_s9
        'Я должен идти. Прощай, Дхолл.':
            # r187 # reply6050
            jump ddhall_s11


# s50 # say853
label ddhall_s50:  # from 33.1
    dhall 'А что заставляет тебя думать, что эта жизнь *настоящая*? Прислушайся к себе. Разве ты не чувствуешь какую-то опустошенность?'
    teller 'Дхолл качает головой.'
    dhall 'Это чистилище. Здесь только горе. Несчастье. Страдание. Они не являются элементами «жизни». Они — часть клетки, в которой мы заперты в этой тени.'

    menu:
        'Мне кажется, твой фатализм превзошел тебя самого. Жизнь состоит из этих элементов, но не только из них.':
            # r188 # reply6051
            $ _r6051_action(gsm)
            jump ddhall_s51
        'Заперты? Каким образом?':
            # r189 # reply6052
            jump ddhall_s51
        'Довольно этой философии. Как все это относится к тому, что я оказался здесь?':
            # r190 # reply6053
            $ _r6053_action(gsm)
            jump ddhall_s51


# s51 # say5733
label ddhall_s51:  # from 50.0 50.1 50.2
    teller 'Дхолл качает головой.'
    dhall 'Страсти — тяжелый груз. Многих они приковали к этой тени жизни.'
    dhall 'Цепляясь за эмоции, ты будешь без конца возрождаться в этой «жизни», в постоянных муках, так никогда и не познав чистоты Истинной Смерти.'

    menu:
        'Понимаю… Как же выбраться из этого кольца возрождений и достигнуть этой… Истинной Смерти?':
            # r191 # reply6054
            jump ddhall_s52
        'Расскажи мне побольше о Морге.':
            # r192 # reply6055
            jump ddhall_s32
        'У меня есть другие вопросы…':
            # r193 # reply6056
            jump ddhall_s9
        'Прощай, Дхолл.':
            # r194 # reply6057
            jump ddhall_s11


# s52 # say5734
label ddhall_s52:  # from 51.0
    dhall 'Убей в себе страсти. Отбрось нужду в переживаниях. Когда ты будешь действительно очищен, кольцо возрождений прервется, и ты обретешь покой.'
    teller 'Дхолл делает вздох… как будто смерть клокочет в его глотке.'
    dhall 'За нашими бренными телами, за Границей Вечности, находится покой, к которому стремится каждая душа.'

    menu:
        'Границу Вечности?':
            # r195 # reply6058
            jump ddhall_s41
        'Расскажи мне побольше о Морге.':
            # r196 # reply6059
            jump ddhall_s32
        'У меня есть другие вопросы…':
            # r197 # reply6060
            jump ddhall_s9
        'Прощай, Дхолл.':
            # r198 # reply6061
            jump ddhall_s11


# s53 # say5742
label ddhall_s53:  # from 34.0
    dhall 'Я говорю о ранах разума. Ты ведь многое забыл, не так ли? Возможно, настоящие раны гораздо глубже, чем эти шрамы, украшающие твое тело.'
    teller 'Дхолл снова кашляет.'
    dhall 'Но только ты можешь знать это точно.'

    menu:
        'Расскажи мне побольше о Морге.':
            # r199 # reply5743
            jump ddhall_s32
        'Понятно. У меня еще вопросы…':
            # r200 # reply5744
            jump ddhall_s9
        'Прощай, Дхолл.':
            # r201 # reply5745
            jump ddhall_s11
