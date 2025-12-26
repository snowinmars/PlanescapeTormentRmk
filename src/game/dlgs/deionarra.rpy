init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.deionarra_logic import DeionarraLogic
    deionarraLogic = DeionarraLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DDEIONS.DLG
# ###


# s0 # say69459
label deionarra_s0: # from 5.2 9.5 10.8 11.3 12.3 13.4 14.2 25.3 27.4 28.4 30.2 31.3 32.2 41.4 41.5 42.3 42.4 43.4 44.4
    'deionarra_s0{#deionarra_s0}'
    # deionarra '«Я буду ждать тебя в залах смерти, любовь моя».{#deionarra_s0_1}'
    # nr 'Дейонарра улыбается, но в улыбке нет ничего, кроме печали. Закрыв глаза, она исчезает с беззвучным вздохом.{#deionarra_s0_2}' # [DEN008B]

    menu:
        'deionarra_s0_r701{#deionarra_s0_r701}' if deionarraLogic.r701_condition(): # 'Уйти.{#deionarra_s0_r701}'
            # a0 # r701
            $ deionarraLogic.r701_action()
            jump deionarra_dispose

        'deionarra_s0_r699{#deionarra_s0_r699}' if deionarraLogic.r699_condition(): # 'Уйти.{#deionarra_s0_r699}'
            # a1 # r699
            $ deionarraLogic.r699_action()
            jump morte_s105  # EXTERN

        'deionarra_s0_r9616{#deionarra_s0_r9616}' if deionarraLogic.r9616_condition(): # 'Уйти.{#deionarra_s0_r9616}'
            # a2 # r9616
            $ deionarraLogic.r9616_action()
            jump deionarra_dispose


# s1 # say5
label deionarra_s1: # - # IF WEIGHT #0 ~  Global("Deionarra","GLOBAL",0) !Global("Current_Area","GLOBAL",1203) !Global("Current_Area","GLOBAL",1200)
    'deionarra_s1{#deionarra_s1}'
    # nr 'Ты видишь перед собой поразительно красивый призрачный силуэт девушки. Ее руки скрещены, а глаза закрыты. У нее длинные развевающиеся волосы, ее платье будто колышется от какого-то неземного ветра. Она слегка вздрагивает; ее глаза мерцают.{#deionarra_s1_1}'

    menu:
        'deionarra_s1_r703{#deionarra_s1_r703}': # '«Приветствую…»{#deionarra_s1_r703}'
            # a3 # r703
            jump deionarra_s2

        'deionarra_s1_r704{#deionarra_s1_r704}': # 'Подождать.{#deionarra_s1_r704}'
            # a4 # r704
            jump deionarra_s2

        'deionarra_s1_r705{#deionarra_s1_r705}': # 'Уйти до того, как дух обратит на тебя внимание.{#deionarra_s1_r705}'
            # a5 # r705
            $ deionarraLogic.r705_action()
            jump deionarra_dispose


# s2 # say706
label deionarra_s2: # from 1.0 1.1
    'deionarra_s2{#deionarra_s2_1}'
    # nr 'Ее глаза медленно открываются, секунду она смущенно моргает, будто не понимая, где она находится. Девушка медленно окидывает взглядом комнату. Увидев тебя, ее спокойное лицо искажается яростью.{#deionarra_s2_1}'
    play sound deionarra_s1
    'deionarra_s2{#deionarra_s2_2}'
    # deionarra '«Ты! Что привело сюда *тебя*?! Захотел лично полюбоваться на причиненные тобой страдания? Или, быть может, даже после моей смерти ты надеешься получить от меня пользу?..»{#deionarra_s2_2}'
    # nr 'Ее голос превращается в шипение.{#deionarra_s2_3}'
    # deionarra '«„Любовь моя“».{#deionarra_s2_4}' # [DEN001]

    menu:
        'deionarra_s2_r707{#deionarra_s2_r707}': # '«Кто ты?»{#deionarra_s2_r707}'
            # a6 # r707
            $ deionarraLogic.r707_action()
            jump deionarra_s3

        'deionarra_s2_r708{#deionarra_s2_r708}' if deionarraLogic.r708_condition(): # '«Любовь моя? Я знаю тебя?»{#deionarra_s2_r708}'
            # a7 # r708
            $ deionarraLogic.r708_action()
            jump deionarra_s3

        'deionarra_s2_r709{#deionarra_s2_r709}' if deionarraLogic.r709_condition(): # '«Любовь моя? Я знаю тебя?»{#deionarra_s2_r709}'
            # a8 # r709
            $ deionarraLogic.r709_action()
            jump deionarra_s3


# s3 # say710
label deionarra_s3: # from 2.0 2.1 2.2 10.0
    'deionarra_s3{#deionarra_s3_1}'
    # nr 'Дух складывает руки в мольбе.{#deionarra_s3_1}'
    # deionarra '«Ну почему же воры разума продолжают красть мое имя из твоей памяти? Неужели ты *не помнишь* меня, любовь моя?»{#deionarra_s3_2}'
    # nr 'Дух протягивает руки.{#deionarra_s3_3}'
    # deionarra '«Подумай…»{#deionarra_s3_4}'
    # nr 'Ее голос снова наполняется отчаянием.{#deionarra_s3_5}'
    $ deionarraLogic.set_know_deionarra_name()
    'deionarra_s3{#deionarra_s3_2}'
    # deionarra '«Имя *Дейонарра* должно пробудить в тебе хоть немного воспоминаний».{#deionarra_s3_6}'

    menu:
        'deionarra_s3_r711{#deionarra_s3_r711}': # '«Прости. Моя память покинула меня».{#deionarra_s3_r711}'
            # a9 # r711
            jump deionarra_s6

        'deionarra_s3_r712{#deionarra_s3_r712}': # 'Ложь: «Да… это имя мне *кажется* знакомым».{#deionarra_s3_r712}'
            # a10 # r712
            $ deionarraLogic.r712_action()
            jump deionarra_s7

        'deionarra_s3_r713{#deionarra_s3_r713}' if deionarraLogic.r713_condition(): # '«*Кажется*, я чувствую касание памяти. Поговори со мной еще. Быть может, твои слова воскресят тени моей памяти, Дейонарра».{#deionarra_s3_r713}'
            # a11 # r713
            jump deionarra_s9

        'deionarra_s3_r714{#deionarra_s3_r714}' if deionarraLogic.r714_condition(): # '«*Кажется*, я чувствую касание памяти. Поговори со мной еще. Быть может, твои слова воскресят тени моей памяти, Дейонарра».{#deionarra_s3_r714}'
            # a12 # r714
            jump deionarra_s9

        'deionarra_s3_r1308{#deionarra_s3_r1308}' if deionarraLogic.r1308_condition(): # '«Ничего не происходит. Прощай… Дейонарра».{#deionarra_s3_r1308}'
            # a13 # r1308
            jump deionarra_s15

        'deionarra_s3_r6080{#deionarra_s3_r6080}' if deionarraLogic.r6080_condition(): # '«Ничего не происходит. Прощай… Дейонарра».{#deionarra_s3_r6080}'
            # a14 # r6080
            jump deionarra_s26


# s4 # say715
label deionarra_s4: # - # IF WEIGHT #1 ~  Global("Deionarra","GLOBAL",2) !Global("Current_Area","GLOBAL",1203) !Global("Current_Area","GLOBAL",1200)
    'deionarra_s4{#deionarra_s4_1}'
    # nr 'Дейонарра снова появляется… на этот раз ее лицо полно отчаяния, ее руки вытянуты, будто пытаются за что-то ухватиться. При твоем появлении отчаяние на ее лице сменяется яростью.{#deionarra_s4_1}'
    play sound deionarra_s4
    'deionarra_s4{#deionarra_s4_2}'
    # deionarra '«Ты снова пришел! Почему ты продолжаешь мучить меня?»{#deionarra_s4_2}' # [DEN002]

    menu:
        'deionarra_s4_r765{#deionarra_s4_r765}': # '«Мне нужно многое узнать. У меня есть вопросы к тебе…»{#deionarra_s4_r765}'
            # a15 # r765
            jump deionarra_s33

        'deionarra_s4_r1307{#deionarra_s4_r1307}': # '«Я больше не хочу мучить тебя. Прощай».{#deionarra_s4_r1307}'
            # a16 # r1307
            jump deionarra_s26


# s5 # say716
label deionarra_s5: # - # IF WEIGHT #2 ~  Global("Deionarra","GLOBAL",1) !Global("Current_Area","GLOBAL",1203) !Global("Current_Area","GLOBAL",1200)
    'deionarra_s5{#deionarra_s5_1}'
    # nr 'Дейонарра снова появляется… на этот раз ее лицо полно отчаяния, ее руки вытянуты, будто пытаются за что-то ухватиться. При твоем появлении отчаяние на ее лице сменяется надеждой.{#deionarra_s5_1}'
    play sound deionarra_s5
    'deionarra_s5{#deionarra_s5_2}'
    # deionarra '«Любовь моя… ты снова вернулся ко мне! Ты вспомнил меня?»{#deionarra_s5_2}' # [DEN003A]

    menu:
        'deionarra_s5_r766{#deionarra_s5_r766}': # '«У меня есть вопросы к тебе…»{#deionarra_s5_r766}'
            # a17 # r766
            jump deionarra_s10

        'deionarra_s5_r767{#deionarra_s5_r767}' if deionarraLogic.r767_condition(): # '«Пока нет. Прощай, Дейонарра».{#deionarra_s5_r767}'
            # a18 # r767
            jump deionarra_s15

        'deionarra_s5_r1309{#deionarra_s5_r1309}' if deionarraLogic.r1309_condition(): # '«Пока нет. Прощай, Дейонарра».{#deionarra_s5_r1309}'
            # a19 # r1309
            jump deionarra_s0


# s6 # say717
label deionarra_s6: # from 3.0
    'deionarra_s6{#deionarra_s6}'
    # deionarra '«Этого я и боялась. Я действительно потеряла тебя… и то, что раньше приносило тебе неудобства, теперь стало оправданием для того, чтобы отказаться от меня так же, как ты отринул воспоминания обо мне!»{#deionarra_s6_1}'

    menu:
        'deionarra_s6_r720{#deionarra_s6_r720}': # '«Неудобства? Отказаться от тебя? Я не знаю тебя, дух… я ничего не помню. Скажи мне… кто ты? Что ты знаешь обо мне?»{#deionarra_s6_r720}'
            # a20 # r720
            jump deionarra_s11

        'deionarra_s6_r718{#deionarra_s6_r718}' if deionarraLogic.r718_condition(): # '«*Кажется*, я чувствую касание памяти. Поговори со мной еще. Быть может, твои слова воскресят тени моей памяти, Дейонарра».{#deionarra_s6_r718}'
            # a21 # r718
            jump deionarra_s9

        'deionarra_s6_r719{#deionarra_s6_r719}' if deionarraLogic.r719_condition(): # '«*Кажется*, я чувствую касание памяти. Поговори со мной еще. Быть может, твои слова воскресят тени моей памяти, Дейонарра».{#deionarra_s6_r719}'
            # a22 # r719
            jump deionarra_s9

        'deionarra_s6_r721{#deionarra_s6_r721}' if deionarraLogic.r721_condition(): # '«Если я отказывался от тебя раньше, то, похоже, что мне снова придется это сделать. Прощай, дух».{#deionarra_s6_r721}'
            # a23 # r721
            jump deionarra_s15

        'deionarra_s6_r1310{#deionarra_s6_r1310}' if deionarraLogic.r1310_condition(): # '«Я должен идти, Дейонарра. Прощай».{#deionarra_s6_r1310}'
            # a24 # r1310
            jump deionarra_s15

        'deionarra_s6_r1311{#deionarra_s6_r1311}' if deionarraLogic.r1311_condition(): # '«Если я отказывался от тебя раньше, то, похоже, что мне снова придется это сделать. Прощай, дух».{#deionarra_s6_r1311}'
            # a25 # r1311
            jump deionarra_s26

        'deionarra_s6_r764{#deionarra_s6_r764}' if deionarraLogic.r764_condition(): # '«Я должен идти, Дейонарра. Прощай».{#deionarra_s6_r764}'
            # a26 # r764
            jump deionarra_s26


# s7 # say722
label deionarra_s7: # from 3.1
    'deionarra_s7{#deionarra_s7}'
    # deionarra '«Да…»{#deionarra_s7_1}'
    # nr 'Она выглядит обнадеженной.{#deionarra_s7_2}'
    # deionarra '«Что пробудило мое имя в твоей памяти?»{#deionarra_s7_3}'

    menu:
        'deionarra_s7_r700{#deionarra_s7_r700}': # '«Ничего. Я солгал».{#deionarra_s7_r700}'
            # a27 # r700
            $ deionarraLogic.r700_action()
            jump deionarra_s8

        'deionarra_s7_r702{#deionarra_s7_r702}': # 'Ложь: «Твое имя пробуждает во мне необузданные мысли, но их смысл мне неясен. Если только ты не расскажешь мне больше…»{#deionarra_s7_r702}'
            # a28 # r702
            $ deionarraLogic.r702_action()
            jump deionarra_s9

        'deionarra_s7_r723{#deionarra_s7_r723}' if deionarraLogic.r723_condition(): # '«Я не уверен… но, кажется, я чувствую касание памяти. Поговори со мной еще. Быть может, твои слова воскресят тени моей памяти, Дейонарра».{#deionarra_s7_r723}'
            # a29 # r723
            jump deionarra_s9

        'deionarra_s7_r724{#deionarra_s7_r724}' if deionarraLogic.r724_condition(): # '«Я не уверен… но, кажется, я чувствую касание памяти. Поговори со мной еще. Быть может, твои слова воскресят тени моей памяти, Дейонарра».{#deionarra_s7_r724}'
            # a30 # r724
            jump deionarra_s9

        'deionarra_s7_r1312{#deionarra_s7_r1312}' if deionarraLogic.r1312_condition(): # '«Я должен идти, Дейонарра. Прощай».{#deionarra_s7_r1312}'
            # a31 # r1312
            jump deionarra_s15

        'deionarra_s7_r6084{#deionarra_s7_r6084}' if deionarraLogic.r6084_condition(): # '«Я должен идти, Дейонарра. Прощай».{#deionarra_s7_r6084}'
            # a32 # r6084
            jump deionarra_s26


# s8 # say725
label deionarra_s8: # from 7.0 47.2
    'deionarra_s8{#deionarra_s8}'
    # nr 'Лицо Дейонарры превращается яростную маску.{#deionarra_s8_1}'
    # deionarra '«Ты прокаженный пес! Предатель моего сердца! Я бы прокляла тебя, но ты и без моих проклятий обречен на вечные страдания в своих воскрешениях! Прочь!»{#deionarra_s8_2}'
    # nr 'Она скрещивает свои руки и закрывает глаза.{#deionarra_s8_3}'

    menu:
        'deionarra_s8_r747{#deionarra_s8_r747}' if deionarraLogic.r747_condition(): # '«Хорошо…»{#deionarra_s8_r747}'
            # a33 # r747
            $ deionarraLogic.r747_action()
            jump deionarra_dispose

        'deionarra_s8_r1313{#deionarra_s8_r1313}' if deionarraLogic.r1313_condition(): # '«Хорошо…»{#deionarra_s8_r1313}'
            # a34 # r1313
            $ deionarraLogic.r1313_action()
            jump morte_s105  # EXTERN

        'deionarra_s8_r13255{#deionarra_s8_r13255}' if deionarraLogic.r13255_condition(): # 'Уйти.{#deionarra_s8_r13255}'
            # a35 # r13255
            $ deionarraLogic.r13255_action()
            jump deionarra_dispose


# s9 # say726
label deionarra_s9: # from 3.2 3.3 6.1 6.2 7.1 7.2 7.3
    'deionarra_s9{#deionarra_s9}'
    # deionarra '«Ах, наконец-то судьба проявила милосердие! Даже смерть не может изгнать меня из твоего разума, любовь моя! Разве ты не понимаешь? Твои воспоминания возвращаются! Скажи мне, как я могу помочь тебе, и я сделаю это!»{#deionarra_s9_1}'

    menu:
        'deionarra_s9_r729{#deionarra_s9_r729}': # '«Ты знаешь, кто я?»{#deionarra_s9_r729}'
            # a36 # r729
            jump deionarra_s11

        'deionarra_s9_r730{#deionarra_s9_r730}': # '«Можешь сказать мне, где я нахожусь?»{#deionarra_s9_r730}'
            # a37 # r730
            jump deionarra_s12

        'deionarra_s9_r731{#deionarra_s9_r731}' if deionarraLogic.r731_condition(): # '«Мне нужно выбраться из этого места. Ты поможешь мне?»{#deionarra_s9_r731}'
            # a38 # r731
            jump deionarra_s43

        'deionarra_s9_r732{#deionarra_s9_r732}' if deionarraLogic.r732_condition(): # '«Мне нужно выбраться из этого места. Ты поможешь мне?»{#deionarra_s9_r732}'
            # a39 # r732
            jump deionarra_s44

        'deionarra_s9_r1314{#deionarra_s9_r1314}' if deionarraLogic.r1314_condition(): # '«Пока ничем, Дейонарра, но я обязательно вернусь. Прощай».{#deionarra_s9_r1314}'
            # a40 # r1314
            jump deionarra_s15

        'deionarra_s9_r6127{#deionarra_s9_r6127}' if deionarraLogic.r6127_condition(): # '«Пока ничем, Дейонарра, но я обязательно вернусь. Прощай».{#deionarra_s9_r6127}'
            # a41 # r6127
            jump deionarra_s0


# s10 # say733
label deionarra_s10: # from 5.0 11.1 12.1 13.1 14.0 25.1 27.2 28.0 30.0 31.1 32.0 34.1 35.1 36.0 41.1 42.0 43.1 44.2 74.0
    'deionarra_s10{#deionarra_s10}'
    # deionarra '«Что ты желаешь знать?»{#deionarra_s10_1}'

    menu:
        'deionarra_s10_r734{#deionarra_s10_r734}': # '«Кто ты?»{#deionarra_s10_r734}'
            # a42 # r734
            jump deionarra_s3

        'deionarra_s10_r735{#deionarra_s10_r735}': # '«Ты можешь сказать, кто я?»{#deionarra_s10_r735}'
            # a43 # r735
            jump deionarra_s11

        'deionarra_s10_r736{#deionarra_s10_r736}': # '«Можешь сказать мне, где я нахожусь?»{#deionarra_s10_r736}'
            # a44 # r736
            jump deionarra_s12

        'deionarra_s10_r737{#deionarra_s10_r737}' if deionarraLogic.r737_condition(): # '«Мне нужно выбраться из этого места. Ты поможешь мне?»{#deionarra_s10_r737}'
            # a45 # r737
            jump deionarra_s43

        'deionarra_s10_r738{#deionarra_s10_r738}' if deionarraLogic.r738_condition(): # '«Мне нужно выбраться из этого места. Ты поможешь мне?»{#deionarra_s10_r738}'
            # a46 # r738
            jump deionarra_s44

        'deionarra_s10_r768{#deionarra_s10_r768}' if deionarraLogic.r768_condition(): # '«Что это было за видение, о котором ты говорила?»{#deionarra_s10_r768}'
            # a47 # r768
            jump deionarra_s22

        'deionarra_s10_r1315{#deionarra_s10_r1315}' if deionarraLogic.r1315_condition(): # '«Можешь ли ты снять проклятие, которое ты наложила на меня?»{#deionarra_s10_r1315}'
            # a48 # r1315
            jump deionarra_s41

        'deionarra_s10_r6107{#deionarra_s10_r6107}' if deionarraLogic.r6107_condition(): # '«Пока ничем, Дейонарра, но я обязательно вернусь. Прощай».{#deionarra_s10_r6107}'
            # a49 # r6107
            jump deionarra_s15

        'deionarra_s10_r6128{#deionarra_s10_r6128}' if deionarraLogic.r6128_condition(): # '«Пока ничем, Дейонарра, но я обязательно вернусь. Прощай».{#deionarra_s10_r6128}'
            # a50 # r6128
            jump deionarra_s0


# s11 # say739
label deionarra_s11: # from 6.0 9.0 10.1
    'deionarra_s11{#deionarra_s11}'
    # deionarra '«Ты тот, кто одновременно благословен и проклят, любовь моя. И тот, кто всегда пребывает в моих мыслях и в моем сердце».{#deionarra_s11_1}'

    menu:
        'deionarra_s11_r740{#deionarra_s11_r740}': # '«Благословен и проклят? Что ты имеешь в виду?»{#deionarra_s11_r740}'
            # a51 # r740
            jump deionarra_s13

        'deionarra_s11_r741{#deionarra_s11_r741}': # '«У меня есть другие вопросы к тебе…»{#deionarra_s11_r741}'
            # a52 # r741
            jump deionarra_s10

        'deionarra_s11_r742{#deionarra_s11_r742}' if deionarraLogic.r742_condition(): # '«Я должен идти. Прощай, Дейонарра».{#deionarra_s11_r742}'
            # a53 # r742
            jump deionarra_s15

        'deionarra_s11_r1316{#deionarra_s11_r1316}' if deionarraLogic.r1316_condition(): # '«Я должен идти. Прощай, Дейонарра».{#deionarra_s11_r1316}'
            # a54 # r1316
            jump deionarra_s0


# s12 # say743
label deionarra_s12: # from 9.1 10.2
    'deionarra_s12{#deionarra_s12}'
    # deionarra '«Где ты находишься? Ты здесь, рядом со мной, любовь моя… как в те времена, когда мы оба были живы. Теперь меж нами пролегла Граница Вечности».{#deionarra_s12_1}'

    menu:
        'deionarra_s12_r744{#deionarra_s12_r744}': # '«Граница Вечности?»{#deionarra_s12_r744}'
            # a55 # r744
            jump deionarra_s14

        'deionarra_s12_r745{#deionarra_s12_r745}': # '«У меня есть другие вопросы к тебе…»{#deionarra_s12_r745}'
            # a56 # r745
            jump deionarra_s10

        'deionarra_s12_r746{#deionarra_s12_r746}' if deionarraLogic.r746_condition(): # '«Я должен идти. Прощай, Дейонарра».{#deionarra_s12_r746}'
            # a57 # r746
            jump deionarra_s15

        'deionarra_s12_r792{#deionarra_s12_r792}' if deionarraLogic.r792_condition(): # '«Я должен идти. Прощай, Дейонарра».{#deionarra_s12_r792}'
            # a58 # r792
            jump deionarra_s0


# s13 # say748
label deionarra_s13: # from 11.0
    'deionarra_s13{#deionarra_s13}'
    # deionarra '«Природа твоего проклятия должна быть очевидной для тебя, любовь моя. Взгляни на себя».{#deionarra_s13_1}'
    # nr 'Она указывает на тебя пальцем.{#deionarra_s13_2}'
    # deionarra '«Смерть не принимает тебя. Твои воспоминания покинули тебя. Как ты думаешь, почему?»{#deionarra_s13_3}'

    menu:
        'deionarra_s13_r749{#deionarra_s13_r749}': # '«На самом деле я все еще пытаюсь во всем разобраться. Что ты еще можешь рассказать обо мне?»{#deionarra_s13_r749}'
            # a59 # r749
            jump deionarra_s27

        'deionarra_s13_r750{#deionarra_s13_r750}': # '«У меня есть другие вопросы…»{#deionarra_s13_r750}'
            # a60 # r750
            jump deionarra_s10

        'deionarra_s13_r751{#deionarra_s13_r751}': # '«Потерянные воспоминания… смерть, не принимающая меня… но почему это проклятие?»{#deionarra_s13_r751}'
            # a61 # r751
            jump deionarra_s25

        'deionarra_s13_r790{#deionarra_s13_r790}' if deionarraLogic.r790_condition(): # '«Я должен идти. Прощай, Дейонарра».{#deionarra_s13_r790}'
            # a62 # r790
            jump deionarra_s15

        'deionarra_s13_r1318{#deionarra_s13_r1318}' if deionarraLogic.r1318_condition(): # '«Я должен идти. Прощай, Дейонарра».{#deionarra_s13_r1318}'
            # a63 # r1318
            jump deionarra_s0


# s14 # say752
label deionarra_s14: # from 12.0
    'deionarra_s14{#deionarra_s14}'
    # nr 'Голос Дейонарры полон печалью.{#deionarra_s14_1}'
    # deionarra '«Это преграда, которую, боюсь, ты никогда не пересечешь, любовь моя. Она ограждает твою жизнь от того, что осталось от моей…»{#deionarra_s14_2}'

    menu:
        'deionarra_s14_r753{#deionarra_s14_r753}': # '«Я… понимаю. Может быть, ты сможешь ответить на несколько вопросов…»{#deionarra_s14_r753}'
            # a64 # r753
            jump deionarra_s10

        'deionarra_s14_r755{#deionarra_s14_r755}' if deionarraLogic.r755_condition(): # '«Я должен идти. Прощай, Дейонарра».{#deionarra_s14_r755}'
            # a65 # r755
            jump deionarra_s15

        'deionarra_s14_r1319{#deionarra_s14_r1319}' if deionarraLogic.r1319_condition(): # '«Я должен идти. Прощай, Дейонарра».{#deionarra_s14_r1319}'
            # a66 # r1319
            jump deionarra_s0


# s15 # say756
label deionarra_s15: # from 3.4 5.1 6.3 6.4 7.4 9.4 10.7 11.2 12.2 13.3 14.1 25.2 27.3 28.1 28.3 30.1 31.2 32.1 41.2 41.3 42.1 42.2 43.3 44.3 47.3
    'deionarra_s15{#deionarra_s15}'
    # deionarra '«Постой… Я многое узнала во время наших путешествий, любовь моя. И то, что ты потерял, я сберегла. Я еще не сказала всего, что знаю о тебе. Мой взор чист… в то время как ты мечешься в темноте в поисках искры разума».{#deionarra_s15_1}'

    menu:
        'deionarra_s15_r757{#deionarra_s15_r757}': # '«Что бы ты там ни знала, может подождать. Прощай».{#deionarra_s15_r757}'
            # a67 # r757
            jump deionarra_s26

        'deionarra_s15_r758{#deionarra_s15_r758}': # '«И что ты можешь рассказать мне такого, что могло бы мне пригодиться?»{#deionarra_s15_r758}'
            # a68 # r758
            jump deionarra_s17

        'deionarra_s15_r759{#deionarra_s15_r759}': # '«И что же ты видишь, чего я не могу разглядеть?»{#deionarra_s15_r759}'
            # a69 # r759
            jump deionarra_s17

        'deionarra_s15_r761{#deionarra_s15_r761}': # '«Я должен идти. Прощай, Дейонарра».{#deionarra_s15_r761}'
            # a70 # r761
            jump deionarra_s26


# s16 # say762
label deionarra_s16: # from 20.0 21.0
    'deionarra_s16{#deionarra_s16}'
    # nr 'Дейонарра выглядит ошеломленной, затем ее тон меняется, голос почти умоляет.{#deionarra_s16_1}'
    # deionarra '«Я… не хотела брать с тебя клятву, любовь моя. Просто я так долго ждала, когда ты присоединишься ко мне за пределами…»{#deionarra_s16_2}'

    menu:
        'deionarra_s16_r763{#deionarra_s16_r763}': # '«Если тебе не нужна клятва от меня, Дейонарра, то и не надо ее требовать. А теперь расскажи о своем видении, без всех этих клятв и обещаний».{#deionarra_s16_r763}'
            # a71 # r763
            jump deionarra_s40


# s17 # say769
label deionarra_s17: # from 15.1 15.2
    'deionarra_s17{#deionarra_s17}'
    # deionarra '«Время ослабляет свою хватку, а холод забвения медленно поглощает нас, любовь моя. Еще не все видения приобрели четкие очертания. Я вижу тебя, любовь моя. Я вижу тебя таким, какой ты сейчас, и…»{#deionarra_s17_1}'
    # nr 'Дейонарра умолкает.{#deionarra_s17_2}'

    menu:
        'deionarra_s17_r770{#deionarra_s17_r770}': # '«Почему ты замолчала? Твоя речь утомила тебя?»{#deionarra_s17_r770}'
            # a72 # r770
            jump deionarra_s18

        'deionarra_s17_r771{#deionarra_s17_r771}': # '«Что? Что ты видишь?»{#deionarra_s17_r771}'
            # a73 # r771
            jump deionarra_s18

        'deionarra_s17_r772{#deionarra_s17_r772}': # '«Мне неинтересны видения будущего. Прощай».{#deionarra_s17_r772}'
            # a74 # r772
            jump deionarra_s19


# s18 # say773
label deionarra_s18: # from 17.0 17.1
    'deionarra_s18{#deionarra_s18}'
    # deionarra '«Я вижу путь, лежащий перед тобой. Он берет свое начало отсюда и проходит сквозь планы. Должна ли я говорить о том, что я вижу?»{#deionarra_s18_1}'

    menu:
        'deionarra_s18_r774{#deionarra_s18_r774}': # '«Говори».{#deionarra_s18_r774}'
            # a75 # r774
            jump deionarra_s20

        'deionarra_s18_r775{#deionarra_s18_r775}': # '«Я не хочу знать. Будущее само себя раскроет… со временем».{#deionarra_s18_r775}'
            # a76 # r775
            jump deionarra_s19


# s19 # say776
label deionarra_s19: # from 17.2 18.1
    'deionarra_s19{#deionarra_s19}'
    # deionarra '«Ты всегда был таким, любовь моя. Ты уже отверг призыв смерти. Что ты отвергнешь в следующий раз? Быть может, само время?»{#deionarra_s19_1}'
    # nr 'Закрыв глаза, Дейонарра исчезает с беззвучным вздохом.{#deionarra_s19_2}'

    menu:
        'deionarra_s19_r803{#deionarra_s19_r803}' if deionarraLogic.r803_condition(): # 'Уйти.{#deionarra_s19_r803}'
            # a77 # r803
            $ deionarraLogic.r803_action()
            jump deionarra_dispose

        'deionarra_s19_r6085{#deionarra_s19_r6085}' if deionarraLogic.r6085_condition(): # 'Уйти.{#deionarra_s19_r6085}'
            # a78 # r6085
            $ deionarraLogic.r6085_action()
            jump morte_s105  # EXTERN

        'deionarra_s19_r13256{#deionarra_s19_r13256}' if deionarraLogic.r13256_condition(): # 'Уйти.{#deionarra_s19_r13256}'
            # a79 # r13256
            $ deionarraLogic.r13256_action()
            jump deionarra_dispose


# s20 # say777
label deionarra_s20: # from 18.0
    'deionarra_s20{#deionarra_s20}'
    # deionarra '«Сначала мне нужно обещание. Обещание, что ты вернешься. Что ты найдешь способ спасти меня или присоединиться ко мне».{#deionarra_s20_1}'

    menu:
        'deionarra_s20_r778{#deionarra_s20_r778}' if deionarraLogic.r778_condition(): # '«Трудно поверить, что женщина, которую я когда-то любил, будет вымогать у меня обещания, суля предсказаниями. Ты не веришь мне, Дейонарра?»{#deionarra_s20_r778}'
            # a80 # r778
            jump deionarra_s16

        'deionarra_s20_r779{#deionarra_s20_r779}': # '«Цена такого обещания слишком высока».{#deionarra_s20_r779}'
            # a81 # r779
            jump deionarra_s21

        'deionarra_s20_r780{#deionarra_s20_r780}': # 'Ложь: «Обещаю, я найду способ спасти тебя или присоединиться к тебе».{#deionarra_s20_r780}'
            # a82 # r780
            $ deionarraLogic.r780_action()
            jump deionarra_s22

        'deionarra_s20_r781{#deionarra_s20_r781}': # '«Я не буду давать никаких обещаний, призрак! Не дразни меня больше… говори или исчезни!»{#deionarra_s20_r781}'
            # a83 # r781
            jump deionarra_s26

        'deionarra_s20_r782{#deionarra_s20_r782}': # '«Я… я сделаю все, что в моих силах».{#deionarra_s20_r782}'
            # a84 # r782
            jump deionarra_s40

        'deionarra_s20_r6093{#deionarra_s20_r6093}': # 'Клятва: «Обещаю: я найду способ спасти тебя или присоединиться к тебе».{#deionarra_s20_r6093}'
            # a85 # r6093
            $ deionarraLogic.r6093_action()
            jump deionarra_s22


# s21 # say783
label deionarra_s21: # from 20.1
    'deionarra_s21{#deionarra_s21}'
    # nr 'Дейонарра скрещивает руки на груди.{#deionarra_s21_1}'
    # deionarra '«Да, это так, любовь моя. А цена бессмертия, по всей видимости, была не так уж высока? Или честность — это слишком для тебя?»{#deionarra_s21_2}'

    menu:
        'deionarra_s21_r804{#deionarra_s21_r804}': # '«Трудно поверить, что женщина, которую я когда-то любил, будет вымогать у меня обещания, суля предсказаниями. Ты не веришь мне, Дейонарра?»{#deionarra_s21_r804}'
            # a86 # r804
            jump deionarra_s16

        'deionarra_s21_r805{#deionarra_s21_r805}': # 'Ложь: «Обещаю, я найду способ спасти тебя или присоединиться к тебе».{#deionarra_s21_r805}'
            # a87 # r805
            $ deionarraLogic.r805_action()
            jump deionarra_s22

        'deionarra_s21_r806{#deionarra_s21_r806}': # '«Я не буду давать никаких обещаний, призрак! Не дразни меня больше… говори или исчезни!»{#deionarra_s21_r806}'
            # a88 # r806
            jump deionarra_s26

        'deionarra_s21_r807{#deionarra_s21_r807}': # '«Я… я сделаю все, что в моих силах».{#deionarra_s21_r807}'
            # a89 # r807
            jump deionarra_s40

        'deionarra_s21_r808{#deionarra_s21_r808}': # 'Клятва: «Обещаю: я найду способ спасти тебя или присоединиться к тебе».{#deionarra_s21_r808}'
            # a90 # r808
            $ deionarraLogic.r808_action()
            jump deionarra_s22

        'deionarra_s21_r6094{#deionarra_s21_r6094}': # '«Ну и пусть. Прощай, Дейонарра».{#deionarra_s21_r6094}'
            # a91 # r6094
            jump deionarra_s26


# s22 # say784
label deionarra_s22: # from 10.5 20.2 20.5 21.1 21.4 40.0
    'deionarra_s22{#deionarra_s22}'
    # deionarra '«Любовь моя, вот что видят мои глаза, освобожденные от оков времени…»{#deionarra_s22_1}' # [DEN020]

    menu:
        'deionarra_s22_r786{#deionarra_s22_r786}': # 'Подождать, пока она не продолжит.{#deionarra_s22_r786}'
            # a92 # r786
            $ deionarraLogic.r786_action()
            jump deionarra_s23


# s23 # say785
label deionarra_s23: # from 22.0
    'deionarra_s23{#deionarra_s23}'
    # deionarra '«Ты встретишь трех врагов, но ни один из них не был бы тебе ровней в период полного расцвета твоих сил. Они — тени зла, добра и нейтральности, которых породили и извратили законы планов».{#deionarra_s23_1}' # [DEN021]

    menu:
        'deionarra_s23_r787{#deionarra_s23_r787}': # 'Подождать, пока она не продолжит.{#deionarra_s23_r787}'
            # a93 # r787
            jump deionarra_s24


# s24 # say788
label deionarra_s24: # from 23.0
    'deionarra_s24{#deionarra_s24}'
    # deionarra '«Ты попадешь в тюрьму, построенную из сожалений и скорби, где даже тени теряют рассудок. Там тебя попросят принести ужасную жертву, любовь моя. Чтобы обрести покой, ты должен будешь уничтожить то, что удерживает тебя в живых, и отринуть свое бессмертие».{#deionarra_s24_1}' # [DEN022]

    menu:
        'deionarra_s24_r789{#deionarra_s24_r789}': # '«Уничтожить то, что удерживает меня в живых?»{#deionarra_s24_r789}'
            # a94 # r789
            jump deionarra_s29


# s25 # say791
label deionarra_s25: # from 13.2 29.0
    'deionarra_s25{#deionarra_s25}'
    # deionarra '«Я не сомневаюсь в твоей способности восставать из мертвых. Но я уверена, что с каждым перерождением твои мысли и память слабеют. Ты утверждаешь, что потерял память. Быть может, это следствие бесчисленных смертей? Если это так, то что ты потеряешь в следующих смертях? Если ты потеряешь свой рассудок, то даже не сможешь осознать собственное бессмертие. И тогда ты будешь по-настоящему обречен».{#deionarra_s25_1}'

    menu:
        'deionarra_s25_r812{#deionarra_s25_r812}': # '«Бесчисленных смертей? Как долго это продолжается?»{#deionarra_s25_r812}'
            # a95 # r812
            jump deionarra_s30

        'deionarra_s25_r811{#deionarra_s25_r811}': # '«У меня есть другие вопросы…»{#deionarra_s25_r811}'
            # a96 # r811
            jump deionarra_s10

        'deionarra_s25_r813{#deionarra_s25_r813}' if deionarraLogic.r813_condition(): # '«Прощай, Дейонарра».{#deionarra_s25_r813}'
            # a97 # r813
            jump deionarra_s15

        'deionarra_s25_r1320{#deionarra_s25_r1320}' if deionarraLogic.r1320_condition(): # '«Прощай, Дейонарра».{#deionarra_s25_r1320}'
            # a98 # r1320
            jump deionarra_s0


# s26 # say793
label deionarra_s26: # from 3.5 4.1 6.5 6.6 7.5 15.0 15.3 20.3 21.2 21.5 28.2 47.4
    'deionarra_s26{#deionarra_s26}'
    # nr 'Дейонарра выглядит разъяренной.{#deionarra_s26_1}'
    # deionarra '«Тогда уходи, как уходил уже триста раз! Зачем ты приходишь сюда? Чтобы помучить меня?! Уходи и никогда больше не возвращайся!»{#deionarra_s26_2}'
    # nr 'Закрыв глаза, Дейонарра исчезает с беззвучным вздохом.{#deionarra_s26_3}'

    menu:
        'deionarra_s26_r6081{#deionarra_s26_r6081}' if deionarraLogic.r6081_condition(): # 'Уйти.{#deionarra_s26_r6081}'
            # a99 # r6081
            $ deionarraLogic.r6081_action()
            jump deionarra_dispose

        'deionarra_s26_r6082{#deionarra_s26_r6082}' if deionarraLogic.r6082_condition(): # 'Уйти.{#deionarra_s26_r6082}'
            # a100 # r6082
            $ deionarraLogic.r6082_action()
            jump morte_s105  # EXTERN

        'deionarra_s26_r13257{#deionarra_s26_r13257}' if deionarraLogic.r13257_condition(): # 'Уйти.{#deionarra_s26_r13257}'
            # a101 # r13257
            $ deionarraLogic.r13257_action()
            jump deionarra_dispose


# s27 # say795
label deionarra_s27: # from 13.0
    'deionarra_s27{#deionarra_s27}'
    # deionarra '«Я знаю, что когда-то ты говорил, что любишь меня и что будешь любить до тех пор, пока смерть не заберет нас обоих. Я верила тебе, не зная всей правды о том, кто ты и что ты на самом деле».{#deionarra_s27_1}'

    menu:
        'deionarra_s27_r797{#deionarra_s27_r797}' if deionarraLogic.r797_condition(): # '«И кто же я такой?»{#deionarra_s27_r797}'
            # a102 # r797
            jump deionarra_s28

        'deionarra_s27_r66911{#deionarra_s27_r66911}' if deionarraLogic.r66911_condition(): # '«И кто же я такой?»{#deionarra_s27_r66911}'
            # a103 # r66911
            jump deionarra_s72

        'deionarra_s27_r796{#deionarra_s27_r796}': # '«У меня есть другие вопросы…»{#deionarra_s27_r796}'
            # a104 # r796
            jump deionarra_s10

        'deionarra_s27_r798{#deionarra_s27_r798}' if deionarraLogic.r798_condition(): # '«Прощай, Дейонарра».{#deionarra_s27_r798}'
            # a105 # r798
            jump deionarra_s15

        'deionarra_s27_r1321{#deionarra_s27_r1321}' if deionarraLogic.r1321_condition(): # '«Прощай, Дейонарра».{#deionarra_s27_r1321}'
            # a106 # r1321
            jump deionarra_s0


# s28 # say799
label deionarra_s28: # from 27.0
    'deionarra_s28{#deionarra_s28}'
    # deionarra '«Мы уже говорили о твоей природе».{#deionarra_s28_1}'
    # nr 'Взгляд Дейонарры холодеет.{#deionarra_s28_2}'
    # deionarra '«И этот разговор больше не повторится».{#deionarra_s28_3}'

    menu:
        'deionarra_s28_r800{#deionarra_s28_r800}': # '«Хорошо… У меня есть другие вопросы…»{#deionarra_s28_r800}'
            # a107 # r800
            jump deionarra_s10

        'deionarra_s28_r801{#deionarra_s28_r801}' if deionarraLogic.r801_condition(): # '«Ты заявляла, что знаешь меня, хотя на самом деле знаешь обо мне очень мало. Прощай, Дейонарра».{#deionarra_s28_r801}'
            # a108 # r801
            jump deionarra_s15

        'deionarra_s28_r802{#deionarra_s28_r802}' if deionarraLogic.r802_condition(): # '«Ты заявляла, что знаешь меня, хотя на самом деле знаешь обо мне очень мало. Прощай, Дейонарра».{#deionarra_s28_r802}'
            # a109 # r802
            jump deionarra_s26

        'deionarra_s28_r1322{#deionarra_s28_r1322}' if deionarraLogic.r1322_condition(): # '«Тогда прощай, Дейонарра».{#deionarra_s28_r1322}'
            # a110 # r1322
            jump deionarra_s15

        'deionarra_s28_r1323{#deionarra_s28_r1323}' if deionarraLogic.r1323_condition(): # '«Тогда прощай, Дейонарра».{#deionarra_s28_r1323}'
            # a111 # r1323
            jump deionarra_s0


# s29 # say809
label deionarra_s29: # from 24.0
    'deionarra_s29{#deionarra_s29}'
    # deionarra '«Я знаю, что ты должен умереть… пока еще можешь. Круг *должен* замкнуться, любовь моя. Ты не предназначен для такой жизни. Ты должен найти то, что у тебя отнято, и уйти дальше, в земли мертвых».{#deionarra_s29_1}' # [DEN023]

    menu:
        'deionarra_s29_r810{#deionarra_s29_r810}': # '«Пока я еще могу?»{#deionarra_s29_r810}'
            # a112 # r810
            $ deionarraLogic.j26087_s29_r810_action()
            jump deionarra_s25


# s30 # say814
label deionarra_s30: # from 25.0
    'deionarra_s30{#deionarra_s30}'
    # deionarra '«Я не знаю точно. Мне известно лишь, что это продолжается достаточно долго».{#deionarra_s30_1}'

    menu:
        'deionarra_s30_r815{#deionarra_s30_r815}': # '«У меня есть другие вопросы…»{#deionarra_s30_r815}'
            # a113 # r815
            jump deionarra_s10

        'deionarra_s30_r816{#deionarra_s30_r816}' if deionarraLogic.r816_condition(): # '«Прощай, Дейонарра».{#deionarra_s30_r816}'
            # a114 # r816
            jump deionarra_s15

        'deionarra_s30_r1324{#deionarra_s30_r1324}' if deionarraLogic.r1324_condition(): # '«Прощай, Дейонарра».{#deionarra_s30_r1324}'
            # a115 # r1324
            jump deionarra_s0


# s31 # say817
label deionarra_s31: # from 45.0
    'deionarra_s31{#deionarra_s31}'
    # deionarra '«Порталы — это дыры в реальности, ведущие в различные места на внутренних и внешних планах… если ты найдешь подходящий ключ, то сможешь сбежать через один из них».{#deionarra_s31_1}'

    menu:
        'deionarra_s31_r819{#deionarra_s31_r819}': # '«Ключ?»{#deionarra_s31_r819}'
            # a116 # r819
            jump deionarra_s32

        'deionarra_s31_r818{#deionarra_s31_r818}': # '«У меня есть другие вопросы…»{#deionarra_s31_r818}'
            # a117 # r818
            jump deionarra_s10

        'deionarra_s31_r820{#deionarra_s31_r820}' if deionarraLogic.r820_condition(): # '«Прощай, Дейонарра».{#deionarra_s31_r820}'
            # a118 # r820
            jump deionarra_s15

        'deionarra_s31_r1325{#deionarra_s31_r1325}' if deionarraLogic.r1325_condition(): # '«Прощай, Дейонарра».{#deionarra_s31_r1325}'
            # a119 # r1325
            jump deionarra_s0


# s32 # say821
label deionarra_s32: # from 31.0
    'deionarra_s32{#deionarra_s32}'
    # nr 'Дейонарра умолкает, пытаясь что-то вспомнить.{#deionarra_s32_1}'
    # deionarra '«Порталы раскрываются лишь только в том случае, если у тебя есть подходящий „ключ“. К сожалению, ключом может быть все что угодно… эмоция, кусочек дерева, кинжал из посеребренного стекла, обрывок одежды, твое посвистывание… Боюсь, что только тленные знают, какие ключи нужно использовать, чтобы покинуть эти залы, любовь моя».{#deionarra_s32_2}'

    menu:
        'deionarra_s32_r824{#deionarra_s32_r824}': # '«Понятно. У меня есть другие вопросы…»{#deionarra_s32_r824}'
            # a120 # r824
            jump deionarra_s10

        'deionarra_s32_r823{#deionarra_s32_r823}' if deionarraLogic.r823_condition(): # '«Тогда я расспрошу одного из них. Прощай, Дейонарра».{#deionarra_s32_r823}'
            # a121 # r823
            jump deionarra_s15

        'deionarra_s32_r1326{#deionarra_s32_r1326}' if deionarraLogic.r1326_condition(): # '«Тогда я расспрошу одного из них. Прощай, Дейонарра».{#deionarra_s32_r1326}'
            # a122 # r1326
            jump deionarra_s0


# s33 # say6083
label deionarra_s33: # from 4.0
    'deionarra_s33{#deionarra_s33}'
    # deionarra '«У меня для тебя нет ответов! Твое лживое сердце привело тебя сюда, пусть оно ведет тебя и дальше! Уходи прочь!»{#deionarra_s33_1}'

    menu:
        'deionarra_s33_r6129{#deionarra_s33_r6129}' if deionarraLogic.r6129_condition(): # 'Ложь: «Я не помню тебя такой. Та Дейонарра, что я любил, была чуткой, нежной… и она никогда бы не бросила нуждающегося в помощи. Неужели ты так низко пала?»{#deionarra_s33_r6129}'
            # a123 # r6129
            $ deionarraLogic.r6129_action()
            jump deionarra_s35

        'deionarra_s33_r6130{#deionarra_s33_r6130}': # '«Мне нужна твоя помощь, Дейонарра. Неужели ты отвергнешь меня в час нужды?»{#deionarra_s33_r6130}'
            # a124 # r6130
            jump deionarra_s37

        'deionarra_s33_r6131{#deionarra_s33_r6131}' if deionarraLogic.r6131_condition(): # 'Блеф: «Хорошо. Я уважаю твои желания, Дейонарра… Я уйду и больше никогда не вернусь».{#deionarra_s33_r6131}'
            # a125 # r6131
            $ deionarraLogic.r6131_action()
            jump deionarra_s34

        'deionarra_s33_r6132{#deionarra_s33_r6132}' if deionarraLogic.r6132_condition(): # 'Блеф: «Хорошо. Я уважаю твои желания, Дейонарра… Я уйду и больше никогда не вернусь».{#deionarra_s33_r6132}'
            # a126 # r6132
            $ deionarraLogic.r6132_action()
            jump deionarra_s34

        'deionarra_s33_r6133{#deionarra_s33_r6133}': # '«Прости, что я обидел тебя, Дейонарра. Я уйду и не буду больше тебя мучить».{#deionarra_s33_r6133}'
            # a127 # r6133
            $ deionarraLogic.r6133_action()
            jump deionarra_s34

        'deionarra_s33_r6134{#deionarra_s33_r6134}': # 'Тихо уйти.{#deionarra_s33_r6134}'
            # a128 # r6134
            jump deionarra_s48


# s34 # say6086
label deionarra_s34: # from 33.2 33.3 33.4
    'deionarra_s34{#deionarra_s34}'
    # nr 'Гневное выражение спадает с лица Дейонарры… с пугающей скоростью оно сменяется выражением отчаяния.{#deionarra_s34_1}'
    # deionarra '«Нет! Постой, любовь моя».{#deionarra_s34_2}'
    # nr 'Говорит она жалобно.{#deionarra_s34_3}'
    # deionarra '«Пожалуйста, прости меня, умоляю! Не уходи!»{#deionarra_s34_4}'

    menu:
        'deionarra_s34_r6095{#deionarra_s34_r6095}': # '«Дейонарра, мое терпение по отношению к тебе истекает. *Держи* себя в руках, если хочешь со мной общаться, иначе мы никогда не заговорим снова. Я понятно излагаю?»{#deionarra_s34_r6095}'
            # a129 # r6095
            $ deionarraLogic.r6095_action()
            jump deionarra_s36

        'deionarra_s34_r6096{#deionarra_s34_r6096}': # '«Я прощаю тебя. А теперь мне нужна твоя помощь, Дейонарра».{#deionarra_s34_r6096}'
            # a130 # r6096
            jump deionarra_s10


# s35 # say6087
label deionarra_s35: # from 33.0
    'deionarra_s35{#deionarra_s35}'
    # nr 'Гневное выражение спадает с лица Дейонарры… с пугающей скоростью оно сменяется выражением отчаянья.{#deionarra_s35_1}'
    # deionarra '«Нет… нет… нет… Я все еще Дейонарра, которую ты помнишь, любовь моя. Пожалуйста, прости меня, умоляю».{#deionarra_s35_2}'

    menu:
        'deionarra_s35_r6097{#deionarra_s35_r6097}': # '«Дейонарра, мое терпение по отношению к тебе истекает. *Держи* себя в руках, если хочешь со мной общаться, иначе мы никогда не заговорим снова. Я понятно излагаю?»{#deionarra_s35_r6097}'
            # a131 # r6097
            $ deionarraLogic.r6097_action()
            jump deionarra_s36

        'deionarra_s35_r6098{#deionarra_s35_r6098}': # '«Я прощаю тебя. А теперь мне нужна твоя помощь, Дейонарра».{#deionarra_s35_r6098}'
            # a132 # r6098
            jump deionarra_s10


# s36 # say6088
label deionarra_s36: # from 34.0 35.0
    'deionarra_s36{#deionarra_s36}'
    # nr 'Ее голос становится едва различимым шепотом.{#deionarra_s36_1}'
    # deionarra '«Да… да, пожалуйста. Не уходи».{#deionarra_s36_2}'
    # nr 'Ее молящее выражение лица бросает тебя в дрожь… но не от страха, а от удовольствия. Ты чувствуешь, что уже не впервые манипулируешь этой женщиной.{#deionarra_s36_3}'

    menu:
        'deionarra_s36_r6099{#deionarra_s36_r6099}': # '«Послушай, Дейонарра. У меня есть несколько вопросов к тебе…»{#deionarra_s36_r6099}'
            # a133 # r6099
            jump deionarra_s10


# s37 # say6089
label deionarra_s37: # from 33.1 47.0
    'deionarra_s37{#deionarra_s37}'
    # deionarra '«Отвергну *тебя*?! Да как ты СМЕЕШЬ обвинять меня в том, что я отвергаю ТЕБЯ?!»{#deionarra_s37_1}'
    # nr 'Дейонарра выбрасывает руки вверх, образуя полукруг, затем опускает их, пальцами указывая на тебя. Похоже, она произносит какое-то заклинание.{#deionarra_s37_2}'
    # deionarra '«Да как ты СМЕЕШЬ!..»{#deionarra_s37_3}'

    menu:
        'deionarra_s37_r6100{#deionarra_s37_r6100}': # '«Молчи и слушай, дух! Я сыт по горло твоими играми…»{#deionarra_s37_r6100}'
            # a134 # r6100
            $ deionarraLogic.r6100_action()
            jump deionarra_s38

        'deionarra_s37_r6101{#deionarra_s37_r6101}': # 'Приготовиться к защите.{#deionarra_s37_r6101}'
            # a135 # r6101
            $ deionarraLogic.r6101_action()
            jump deionarra_s38


# s38 # say6090
label deionarra_s38: # from 37.0 37.1
    'deionarra_s38{#deionarra_s38}'
    # deionarra '«Гори! Гори, как если бы огонь Баатора пожирал тебя изнутри! Гори и знай, что это лишь *крупица* моей ненависти! Я проклинаю тебя, проклинаю всем своим сердцем и душой! Ты никогда не освободишься от оков своей несчастной нежизни. Ты зачахнешь и умрешь! А разум твой иссохнет и сгниет вслед за телом!»{#deionarra_s38_1}'

    menu:
        'deionarra_s38_r6102{#deionarra_s38_r6102}': # '«Поосторожнее с проклятиями, женщина! Я не стану терпеть…»{#deionarra_s38_r6102}'
            # a136 # r6102
            jump deionarra_s39

        'deionarra_s38_r6103{#deionarra_s38_r6103}': # '«Дейонарра! Постой, прости меня…»{#deionarra_s38_r6103}'
            # a137 # r6103
            jump deionarra_s39


# s39 # say6091
label deionarra_s39: # from 38.0 38.1
    'deionarra_s39{#deionarra_s39}'
    # deionarra '«Будучи произнесенным, проклятие уже не может быть снято».{#deionarra_s39_1}'
    # nr 'Голос Дейонарры превращается в шипение.{#deionarra_s39_2}'
    # deionarra '«Знай: у меня вечность в запасе, „любовь моя“. Я буду ждать тебя в залах смерти».{#deionarra_s39_3}'
    # nr 'Она улыбается, но в улыбке нет ничего, кроме печали.{#deionarra_s39_4}'
    # deionarra '«Мы снова будем *вместе*».{#deionarra_s39_5}'

    menu:
        'deionarra_s39_r6104{#deionarra_s39_r6104}': # '«Постой! Я хочу поговорить с…»{#deionarra_s39_r6104}'
            # a138 # r6104
            jump deionarra_s48

        'deionarra_s39_r6105{#deionarra_s39_r6105}': # '«Сними свое чертово проклятье! Иначе…»{#deionarra_s39_r6105}'
            # a139 # r6105
            jump deionarra_s48


# s40 # say6092
label deionarra_s40: # from 16.0 20.4 21.3
    'deionarra_s40{#deionarra_s40}'
    # nr 'Дейонарра застывает. Кажется, она хочет что-то сказать, но затем, вздохнув, сдается.{#deionarra_s40_1}'
    # deionarra '«Хорошо, любовь моя… как и прежде, я поверю тебе».{#deionarra_s40_2}'
    # nr 'Она закрывает глаза.{#deionarra_s40_3}'

    menu:
        'deionarra_s40_r6106{#deionarra_s40_r6106}': # 'Подождать…{#deionarra_s40_r6106}'
            # a140 # r6106
            jump deionarra_s22


# s41 # say6108
label deionarra_s41: # from 10.6
    'deionarra_s41{#deionarra_s41}'
    # nr 'Дейонарра горестно качает головой.{#deionarra_s41_1}'
    # deionarra '«Будучи произнесенным, проклятие уже не может быть снято. Прости меня, любовь моя».{#deionarra_s41_2}'

    menu:
        'deionarra_s41_r6110{#deionarra_s41_r6110}': # '«И нет никого, кто смог бы его снять?»{#deionarra_s41_r6110}'
            # a141 # r6110
            jump deionarra_s42

        'deionarra_s41_r6111{#deionarra_s41_r6111}': # '«Понятно… Я хотел бы спросить тебя кое о чем еще…»{#deionarra_s41_r6111}'
            # a142 # r6111
            jump deionarra_s10

        'deionarra_s41_r6112{#deionarra_s41_r6112}' if deionarraLogic.r6112_condition(): # '«Наверное, уже поздновато просить прощения. Прощай, Дейонарра».{#deionarra_s41_r6112}'
            # a143 # r6112
            jump deionarra_s15

        'deionarra_s41_r6113{#deionarra_s41_r6113}' if deionarraLogic.r6113_condition(): # '«Возможно, кто-нибудь сможет мне помочь. Прощай, Дейонарра».{#deionarra_s41_r6113}'
            # a144 # r6113
            jump deionarra_s15

        'deionarra_s41_r6114{#deionarra_s41_r6114}' if deionarraLogic.r6114_condition(): # '«Наверное, уже поздновато просить прощения. Прощай, Дейонарра».{#deionarra_s41_r6114}'
            # a145 # r6114
            jump deionarra_s0

        'deionarra_s41_r6115{#deionarra_s41_r6115}' if deionarraLogic.r6115_condition(): # '«Возможно, кто-нибудь сможет мне помочь. Прощай, Дейонарра».{#deionarra_s41_r6115}'
            # a146 # r6115
            jump deionarra_s0


# s42 # say6109
label deionarra_s42: # from 41.0
    'deionarra_s42{#deionarra_s42}'
    # deionarra '«Если и есть, то он мне незнаком».{#deionarra_s42_1}'
    # nr 'Дейонарра вдруг воодушевляется.{#deionarra_s42_2}'
    # deionarra '«Но, возможно, кто-нибудь более могущественный, чем я, сможет снять проклятье. Прости меня, любовь моя. Я не ведала, что творила».{#deionarra_s42_3}'

    menu:
        'deionarra_s42_r6116{#deionarra_s42_r6116}': # '«У меня есть еще несколько вопросов к тебе…»{#deionarra_s42_r6116}'
            # a147 # r6116
            jump deionarra_s10

        'deionarra_s42_r6117{#deionarra_s42_r6117}' if deionarraLogic.r6117_condition(): # '«Наверное, уже поздновато просить прощения. Прощай, Дейонарра».{#deionarra_s42_r6117}'
            # a148 # r6117
            jump deionarra_s15

        'deionarra_s42_r6118{#deionarra_s42_r6118}' if deionarraLogic.r6118_condition(): # '«Возможно, кто-нибудь сможет мне помочь. Прощай, Дейонарра».{#deionarra_s42_r6118}'
            # a149 # r6118
            jump deionarra_s15

        'deionarra_s42_r6119{#deionarra_s42_r6119}' if deionarraLogic.r6119_condition(): # '«Наверное, уже поздновато просить прощения. Прощай, Дейонарра».{#deionarra_s42_r6119}'
            # a150 # r6119
            jump deionarra_s0

        'deionarra_s42_r6120{#deionarra_s42_r6120}' if deionarraLogic.r6120_condition(): # '«Возможно, кто-нибудь сможет мне помочь. Прощай, Дейонарра».{#deionarra_s42_r6120}'
            # a151 # r6120
            jump deionarra_s0


# s43 # say6121
label deionarra_s43: # from 9.2 10.3 44.0
    'deionarra_s43{#deionarra_s43}'
    # deionarra '«Выбраться?..»{#deionarra_s43_1}'
    # nr 'Шепчет Дейонарра, затем снова повышает голос.{#deionarra_s43_2}'
    # deionarra '«*Выбраться*?! Из-за тебя я навеки здесь заточена, и ты меня еще спрашиваешь, как отсюда *выбраться*?!»{#deionarra_s43_3}'

    menu:
        'deionarra_s43_r6137{#deionarra_s43_r6137}': # '«Да, мне нужно выбраться из этого места. Тебе известен какой-нибудь выход отсюда?»{#deionarra_s43_r6137}'
            # a152 # r6137
            jump deionarra_s47

        'deionarra_s43_r6138{#deionarra_s43_r6138}': # '«Я прошу прощения за свою просьбу. Я не хотел тебя обидеть. Пожалуйста, ответь на вопрос…»{#deionarra_s43_r6138}'
            # a153 # r6138
            jump deionarra_s10

        'deionarra_s43_r6139{#deionarra_s43_r6139}' if deionarraLogic.r6139_condition(): # '«Дейонарра, я в опасности. Можешь вывести меня в безопасное место? Я вернусь к тебе, как только смогу».{#deionarra_s43_r6139}'
            # a154 # r6139
            jump deionarra_s46

        'deionarra_s43_r6140{#deionarra_s43_r6140}' if deionarraLogic.r6140_condition(): # '«Я должен идти. Прощай, Дейонарра».{#deionarra_s43_r6140}'
            # a155 # r6140
            jump deionarra_s15

        'deionarra_s43_r6141{#deionarra_s43_r6141}' if deionarraLogic.r6141_condition(): # '«Я должен идти. Прощай, Дейонарра».{#deionarra_s43_r6141}'
            # a156 # r6141
            jump deionarra_s0


# s44 # say6122
label deionarra_s44: # from 9.3 10.4
    'deionarra_s44{#deionarra_s44}'
    # nr 'Ты уже собираешься спросить Дейонарру, но слова застревают у тебя в горле. Внезапно ты осознаешь, что, если ты скажешь ей, что ищешь выход отсюда, Дейонарра может решить, что ты бросаешь ее. Если ты собираешься спросить ее о том, как отсюда выбраться, тебе нужно сделать это поделикатнее.{#deionarra_s44_1}'

    menu:
        'deionarra_s44_r6142{#deionarra_s44_r6142}': # '«Ты знаешь, как отсюда выбраться?»{#deionarra_s44_r6142}'
            # a157 # r6142
            jump deionarra_s43

        'deionarra_s44_r6143{#deionarra_s44_r6143}': # '«Дейонарра, я в опасности. Можешь вывести меня в безопасное место? Я вернусь к тебе, как только смогу».{#deionarra_s44_r6143}'
            # a158 # r6143
            jump deionarra_s46

        'deionarra_s44_r6144{#deionarra_s44_r6144}': # '«У меня есть другие вопросы к тебе…»{#deionarra_s44_r6144}'
            # a159 # r6144
            jump deionarra_s10

        'deionarra_s44_r6145{#deionarra_s44_r6145}' if deionarraLogic.r6145_condition(): # '«Я должен идти. Прощай, Дейонарра».{#deionarra_s44_r6145}'
            # a160 # r6145
            jump deionarra_s15

        'deionarra_s44_r6146{#deionarra_s44_r6146}' if deionarraLogic.r6146_condition(): # '«Я должен идти. Прощай, Дейонарра».{#deionarra_s44_r6146}'
            # a161 # r6146
            jump deionarra_s0


# s45 # say6123
label deionarra_s45: # from 46.0 46.1
    'deionarra_s45{#deionarra_s45}'
    # deionarra '«Я чувствую, что в этом месте есть много дверей, скрытых от глаз смертных. Возможно, ты сможешь воспользоваться одним из этих порталов для побега».{#deionarra_s45_1}'

    menu:
        'deionarra_s45_r6124{#deionarra_s45_r6124}': # '«Порталы?»{#deionarra_s45_r6124}'
            # a162 # r6124
            jump deionarra_s31


# s46 # say6125
label deionarra_s46: # from 43.2 44.1 47.1
    'deionarra_s46{#deionarra_s46}'
    # deionarra '«В опасности?»{#deionarra_s46_1}'
    # nr 'Дейонарра выглядит обеспокоенной.{#deionarra_s46_2}'
    # deionarra '«Конечно же, любовь моя, я помогу тебе…»{#deionarra_s46_3}'
    # nr 'Она закрывает глаза, и ты видишь, как призрачный ветерок проходит сквозь ее тело, колыша волосы. Спустя минуту ветер стихает и ее глаза медленно открываются.{#deionarra_s46_4}'
    # deionarra '«Возможно, отсюда есть выход».{#deionarra_s46_5}'

    menu:
        'deionarra_s46_r6147{#deionarra_s46_r6147}' if deionarraLogic.r6147_condition(): # '«Да?»{#deionarra_s46_r6147}'
            # a163 # r6147
            jump deionarra_s45

        'deionarra_s46_r6148{#deionarra_s46_r6148}' if deionarraLogic.r6148_condition(): # '«Да?»{#deionarra_s46_r6148}'
            # a164 # r6148
            $ deionarraLogic.r6148_action()
            jump deionarra_s45


# s47 # say6135
label deionarra_s47: # from 43.0
    'deionarra_s47{#deionarra_s47}'
    # deionarra '«Ты пришел ко мне после моей смерти лишь для того, чтобы *снова* меня бросить, да еще и просишь помочь тебе в этом?»{#deionarra_s47_1}'
    # nr 'Ее лицо искажается в гримасе ярости.{#deionarra_s47_2}'
    # deionarra '«Я *умерла* ради тебя, любовь моя. И до сих пор от этого *страдаю*!»{#deionarra_s47_3}'

    menu:
        'deionarra_s47_r6149{#deionarra_s47_r6149}': # '«Дейонарра, пожалуйста… Мне нужна твоя помощь. Неужели ты отвергнешь меня в час нужды?»{#deionarra_s47_r6149}'
            # a165 # r6149
            jump deionarra_s37

        'deionarra_s47_r6150{#deionarra_s47_r6150}' if deionarraLogic.r6150_condition(): # '«Дейонарра, я прошу тебя лишь потому, что я в опасности. Можешь вывести меня в безопасное место? Я вернусь к тебе, как только смогу».{#deionarra_s47_r6150}'
            # a166 # r6150
            jump deionarra_s46

        'deionarra_s47_r6151{#deionarra_s47_r6151}': # '«Неважно. Послушай, у меня есть другие вопросы…»{#deionarra_s47_r6151}'
            # a167 # r6151
            jump deionarra_s8

        'deionarra_s47_r6152{#deionarra_s47_r6152}' if deionarraLogic.r6152_condition(): # '«Я должен идти. Прощай, Дейонарра».{#deionarra_s47_r6152}'
            # a168 # r6152
            jump deionarra_s15

        'deionarra_s47_r6153{#deionarra_s47_r6153}' if deionarraLogic.r6153_condition(): # '«Я должен идти. Прощай, Дейонарра».{#deionarra_s47_r6153}'
            # a169 # r6153
            jump deionarra_s26


# s48 # say6136
label deionarra_s48: # from 33.5 39.0 39.1
    'deionarra_s48{#deionarra_s48}'
    # nr 'Закрыв глаза, Дейонарра исчезает с беззвучным вздохом.{#deionarra_s48_1}'

    menu:
        'deionarra_s48_r6154{#deionarra_s48_r6154}' if deionarraLogic.r6154_condition(): # 'Уйти.{#deionarra_s48_r6154}'
            # a170 # r6154
            $ deionarraLogic.r6154_action()
            jump deionarra_dispose

        'deionarra_s48_r6155{#deionarra_s48_r6155}' if deionarraLogic.r6155_condition(): # 'Уйти.{#deionarra_s48_r6155}'
            # a171 # r6155
            $ deionarraLogic.r6155_action()
            jump morte_s105  # EXTERN

        'deionarra_s48_r13258{#deionarra_s48_r13258}' if deionarraLogic.r13258_condition(): # 'Уйти.{#deionarra_s48_r13258}'
            # a172 # r13258
            $ deionarraLogic.r13258_action()
            jump deionarra_dispose


# s49 # say63356
label deionarra_s49: # - # IF WEIGHT #3 ~  Global("Deionarra","GLOBAL",0) Global("Current_Area","GLOBAL",1203)
    'deionarra_s49{#deionarra_s49}'
    # nr 'Перед собой ты видишь поразительно красивый призрачный силуэт девушки. У нее длинные развевающиеся волосы, ее платье будто колышется от какого-то неземного ветра. Ваши взгляды пересекаются, и тебя охватывает странное ощущение, как будто ты смотришь сразу в несколько пар глаз.{#deionarra_s49_1}'

    menu:
        'deionarra_s49_r63357{#deionarra_s49_r63357}': # '«Ты — Дейонарра?..»{#deionarra_s49_r63357}'
            # a173 # r63357
            jump deionarra_s51


# s50 # say63358
label deionarra_s50: # - # IF WEIGHT #4 ~  GlobalGT("Deionarra","GLOBAL",0) Global("Current_Area","GLOBAL",1203)
    'deionarra_s50{#deionarra_s50}'
    # nr 'Перед тобой призрачный силуэт Дейонарры. Ее призрачное платье будто колышется от какого-то неземного ветра. Ваши взгляды пересекаются, и тебя охватывает странное ощущение, как будто ты смотришь сразу в несколько пар глаз.{#deionarra_s50_1}'

    menu:
        'deionarra_s50_r63359{#deionarra_s50_r63359}': # '«Дейонарра?..»{#deionarra_s50_r63359}'
            # a174 # r63359
            jump deionarra_s51


# s51 # say63360
label deionarra_s51: # from 49.0 50.0
    'deionarra_s51{#deionarra_s51}'
    # deionarra '«Любовь моя, наконец-то я *нашла* тебя… Я искала тебя с тех пор, как ты был разделен кристаллом: эта Крепость простирается на сотни миль, и я боялась, что ты потерял меня».{#deionarra_s51_1}'
    # nr 'Ее призрачные глаза осматривают тебя с ног до головы в поисках новых ран.{#deionarra_s51_2}'
    # deionarra '«Ты в порядке?»{#deionarra_s51_3}'

    menu:
        'deionarra_s51_r63362{#deionarra_s51_r63362}': # '«Думаю, да — кристалл разделил меня, но теперь я единое целое. Хоть и заперт в ловушке».{#deionarra_s51_r63362}'
            # a175 # r63362
            jump deionarra_s52


# s52 # say63363
label deionarra_s52: # from 51.0
    'deionarra_s52{#deionarra_s52}'
    # deionarra «Подозреваю, что истинное предназначение кристалла — твое заключение здесь. Но он — не преграда для таких как я».{#deionarra_s52_1}'
    # nr 'Она закрывает глаза.{#deionarra_s52_2}'
    # deionarra '«Мои глаза видят многое, и залы этой Крепости очень знакомы мне».{#deionarra_s52_3}'

    jump deionarra_s53


# s53 # say63364
label deionarra_s53: # from 52.0 58.0 59.0
    'deionarra_s53{#deionarra_s53}'
    # deionarra '«Если ты пленен здесь, любовь моя, я помогу тебе освободиться. Куда ты хочешь попасть?»{#deionarra_s53_1}'

    menu:
        'deionarra_s53_r63365{#deionarra_s53_r63365}': # '«Я хочу встретиться со своим врагом и победить его».{#deionarra_s53_r63365}'
            # a176 # r63365
            jump deionarra_s54

        'deionarra_s53_r63366{#deionarra_s53_r63366}': # '«Я хочу попасть туда, где пребывает моя смертность, и вернуть ее себе».{#deionarra_s53_r63366}'
            # a177 # r63366
            jump deionarra_s54

        'deionarra_s53_r63367{#deionarra_s53_r63367}' if deionarraLogic.r63367_condition(): # '«Я хочу воссоединиться с моими друзьями».{#deionarra_s53_r63367}'
            # a178 # r63367
            jump deionarra_s54

        'deionarra_s53_r63368{#deionarra_s53_r63368}' if deionarraLogic.r63368_condition(): # '«Я хочу воссоединиться с моими спутниками. Мне кое-что от них нужно».{#deionarra_s53_r63368}'
            # a179 # r63368
            jump deionarra_s54

        'deionarra_s53_r63369{#deionarra_s53_r63369}' if deionarraLogic.r63369_condition(): # '«Я хочу немного поговорить с тобой и рассказать, как ты умерла… и почему».{#deionarra_s53_r63369}'
            # a180 # r63369
            jump deionarra_s55


# s54 # say63370
label deionarra_s54: # from 53.0 53.1 53.2 53.3
    'deionarra_s54{#deionarra_s54}'
    # deionarra '«Как пожелаешь, любовь моя».{#deionarra_s54_1}'
    # nr 'Она протягивает руку.{#deionarra_s54_2}'
    # deionarra '«Прикоснись к моей руке, и стены этой Крепости больше не будут преградой».{#deionarra_s54_3}'

    menu:
        'deionarra_s54_r63371{#deionarra_s54_r63371}' if deionarraLogic.r63371_condition(): # 'Прикоснуться к ее руке…{#deionarra_s54_r63371}'
            # a181 # r63371
            $ deionarraLogic.r63371_action()
            jump deionarra_dispose

        'deionarra_s54_r64594{#deionarra_s54_r64594}' if deionarraLogic.r64594_condition(): # 'Прикоснуться к ее руке…{#deionarra_s54_r64594}'
            # a182 # r64594
            $ deionarraLogic.r64594_action()
            jump deionarra_dispose


# s55 # say63372
label deionarra_s55: # from 53.4
    'deionarra_s55{#deionarra_s55}'
    # deionarra '«О чем ты говоришь?»{#deionarra_s55_1}'

    menu:
        'deionarra_s55_r63373{#deionarra_s55_r63373}': # 'Правда: «Когда я привел тебя в эту Крепость, я хотел, чтобы ты здесь умерла. Мне нужен был кто-нибудь, кто мог бы остаться позади, чтобы он смог служить указателем в этом месте. Я знал, что ты меня очень сильно любишь, и эта любовь не позволит смерти забрать тебя, превратив тебя в призрака. Вот почему ты теперь страдаешь».{#deionarra_s55_r63373}'
            # a183 # r63373
            $ deionarraLogic.r63373_action()
            jump deionarra_s56

        'deionarra_s55_r63374{#deionarra_s55_r63374}': # 'Ложь: «Ты умерла здесь, в Крепости, из-за того, что враг уже поджидал нас. Он хотел, чтобы ты умерла и мы разделились. Скоро я с ним встречусь, и он сполна насытится моей местью».{#deionarra_s55_r63374}'
            # a184 # r63374
            $ deionarraLogic.r63374_action()
            jump deionarra_s58


# s56 # say63375
label deionarra_s56: # from 55.0
    'deionarra_s56{#deionarra_s56}'
    # nr 'Пока ты говоришь, лицо Дейонарры остается непроницаемым.{#deionarra_s56_1}'

    menu:
        'deionarra_s56_r63376{#deionarra_s56_r63376}': # 'Ложь: «Мне очень жаль, Дейонарра».{#deionarra_s56_r63376}'
            # a185 # r63376
            $ deionarraLogic.r63376_action()
            jump deionarra_s57

        'deionarra_s56_r63377{#deionarra_s56_r63377}': # 'Правда: «Мне очень жаль, Дейонарра».{#deionarra_s56_r63377}'
            # a186 # r63377
            $ deionarraLogic.r63377_action()
            jump deionarra_s57

        'deionarra_s56_r63378{#deionarra_s56_r63378}': # 'Правда: «Так было надо, Дейонарра. Мне очень жаль, что ты страдала все это время».{#deionarra_s56_r63378}'
            # a187 # r63378
            jump deionarra_s57


# s57 # say63379
label deionarra_s57: # from 56.0 56.1 56.2
    'deionarra_s57{#deionarra_s57}'
    # deionarra '«Ты *любишь* меня? Если ты скажешь да, любовь моя, то все остальное будет неважно».{#deionarra_s57_1}'

    menu:
        'deionarra_s57_r63380{#deionarra_s57_r63380}': # 'Ложь: «Конечно же, я люблю тебя. Даже смерть не сможет убить связь между нами».{#deionarra_s57_r63380}'
            # a188 # r63380
            $ deionarraLogic.r63380_action()
            jump deionarra_s58

        'deionarra_s57_r63381{#deionarra_s57_r63381}': # 'Правда: «Хотя в начале я не знал тебя, но затем я полюбил тебя. Твои страдания стали моими, и я готов сделать все, чтобы помочь тебе».{#deionarra_s57_r63381}'
            # a189 # r63381
            $ deionarraLogic.r63381_action()
            jump deionarra_s58

        'deionarra_s57_r63382{#deionarra_s57_r63382}': # 'Правда: «Прости, Дейонарра, но нет. Я никогда не знал тебя. Но если бы я тебя встретил при иных обстоятельствах…»{#deionarra_s57_r63382}'
            # a190 # r63382
            $ deionarraLogic.r63382_action()
            jump deionarra_s59


# s58 # say63383
label deionarra_s58: # from 55.1 57.0 57.1
    'deionarra_s58{#deionarra_s58}'
    # deionarra '«Тогда я помогу тебе, любовь моя. Скажи мне, как я могу помочь тебе, и я это сделаю».{#deionarra_s58_1}'

    menu:
        'deionarra_s58_r63384{#deionarra_s58_r63384}': # '«Я заперт здесь. Ты можешь помочь выбраться отсюда?»{#deionarra_s58_r63384}'
            # a191 # r63384
            $ deionarraLogic.r63384_action()
            jump deionarra_s53


# s59 # say63385
label deionarra_s59: # from 57.2
    'deionarra_s59{#deionarra_s59}'
    # deionarra '«Тогда… тогда это будет концом всего, что было между нами, любовь моя. Я осталась здесь только ради тебя — и ничего больше. Я помогу тебе в последний раз, а затем отправлюсь за Границу Вечности, как и намеревалась».{#deionarra_s59_1}'

    menu:
        'deionarra_s59_r63386{#deionarra_s59_r63386}': # '«Тогда, перед тем как ты уйдешь, я попрошу тебя о последнем. Я заперт здесь. Ты можешь мне помочь?»{#deionarra_s59_r63386}'
            # a192 # r63386
            jump deionarra_s53


# s60 # say63387
label deionarra_s60: # - # IF WEIGHT #6 /* Triggers after states #: 62 even though they appear after this state */ ~  Global("Deionarra","GLOBAL",0) Global("Current_Area","GLOBAL",1200) Global("1200_Cut_Scene_2","GLOBAL",0)
    'deionarra_s60{#deionarra_s60}'
    # nr 'Ты видишь поразительно красивый призрачный силуэт девушки. У нее длинные развевающиеся волосы, ее платье будто колышется от какого-то неземного ветра. Она стоит на краю вымощенной черным камнем дороги, всматриваясь в пустоту плана.{#deionarra_s60_1}'

    menu:
        'deionarra_s60_r63388{#deionarra_s60_r63388}': # '«Кто ты?»{#deionarra_s60_r63388}'
            # a193 # r63388
            $ deionarraLogic.r63388_action()
            jump deionarra_s62

        'deionarra_s60_r63389{#deionarra_s60_r63389}': # 'Оставить призрачную фигуру в покое.{#deionarra_s60_r63389}'
            # a194 # r63389
            jump deionarra_dispose


# s61 # say63390
label deionarra_s61: # - # IF WEIGHT #7 /* Triggers after states #: 62 even though they appear after this state */ ~  GlobalGT("Deionarra","GLOBAL",0) Global("Current_Area","GLOBAL",1200) Global("1200_Cut_Scene_2","GLOBAL",0)
    'deionarra_s61{#deionarra_s61}'
    # nr 'Перед тобой призрачный силуэт Дейонарры. Ее призрачное платье будто колышется от какого-то неземного ветра. Она стоит на краю вымощенной черным камнем дороги, всматриваясь в пустоту плана.{#deionarra_s61_1}'

    menu:
        'deionarra_s61_r63391{#deionarra_s61_r63391}': # '«Дейонарра?..»{#deionarra_s61_r63391}'
            # a195 # r63391
            $ deionarraLogic.r63391_action()
            jump deionarra_s62

        'deionarra_s61_r63392{#deionarra_s61_r63392}': # 'Оставить Дейонарру в покое.{#deionarra_s61_r63392}'
            # a196 # r63392
            jump deionarra_dispose


# s62 # say63393
label deionarra_s62: # from 60.0 61.0 # IF WEIGHT #5 ~  Global("Current_Area","GLOBAL",1200) Global("1200_Cut_Scene_2","GLOBAL",1)
    'deionarra_s62{#deionarra_s62}'
    # deionarra '«Любовь моя! Ты *не должен* находиться здесь! Ты должен уйти!»{#deionarra_s62_1}'

    menu:
        'deionarra_s62_r63394{#deionarra_s62_r63394}' if deionarraLogic.r63394_condition(): # '«Почему? Кто ты, дух… что это за место?»{#deionarra_s62_r63394}'
            # a197 # r63394
            jump deionarra_s63

        'deionarra_s62_r63395{#deionarra_s62_r63395}' if deionarraLogic.r63395_condition(): # '«Дейонарра, что это за место? Это Крепость?»{#deionarra_s62_r63395}'
            # a198 # r63395
            jump deionarra_s63


# s63 # say63396
label deionarra_s63: # from 62.0 62.1
    'deionarra_s63{#deionarra_s63}'
    # deionarra '«Это Крепость сожалений. Это место, которое удерживает миг моей смерти в узниках, и я не могу далеко уходить от его залов. Если тебе известен путь назад в Сигил, немедленно *возвращайся*. Если ты останешься здесь, любовь моя, ты умрешь».{#deionarra_s63_1}'

    menu:
        'deionarra_s63_r63397{#deionarra_s63_r63397}' if deionarraLogic.r63397_condition(): # '«Я бессмертен, дух. Спасибо за предупреждение, но смерть — меньшее, чего мне стоит бояться».{#deionarra_s63_r63397}'
            # a199 # r63397
            jump deionarra_s64

        'deionarra_s63_r63398{#deionarra_s63_r63398}' if deionarraLogic.r63398_condition(): # '«Я бессмертен, Дейонарра. Не думаю, что мне стоит об этом слишком беспокоиться, даже здесь».{#deionarra_s63_r63398}'
            # a200 # r63398
            jump deionarra_s64

        'deionarra_s63_r63399{#deionarra_s63_r63399}': # '«А как насчет моего бессмертия? Ведь я же все еще бессмертен, даже здесь?..»{#deionarra_s63_r63399}'
            # a201 # r63399
            jump deionarra_s64


# s64 # say63400
label deionarra_s64: # from 63.0 63.1 63.2
    'deionarra_s64{#deionarra_s64}'
    # nr 'Она качает головой.{#deionarra_s64_1}'
    # deionarra '«Нет, любовь моя. Здесь, в Крепости, есть нечто — оболочка, которая окружает ее и ограждает от остальных планов. И это оболочка является преградой для твоего бессмертия».{#deionarra_s64_2}'

    menu:
        'deionarra_s64_r63401{#deionarra_s64_r63401}' if deionarraLogic.r63401_condition(): # '«Оболочка? Колонна сказала мне, что когда я умираю, то вместо меня умирает другой. И если я не найду никого, кто умрет вместо меня…»{#deionarra_s64_r63401}'
            # a202 # r63401
            jump deionarra_s66

        'deionarra_s64_r63402{#deionarra_s64_r63402}' if deionarraLogic.r63402_condition(): # '«Как оболочка может служить преградой? Это немыслимо».{#deionarra_s64_r63402}'
            # a203 # r63402
            jump deionarra_s65


# s65 # say63403
label deionarra_s65: # from 64.1
    'deionarra_s65{#deionarra_s65}'
    # deionarra '«Блуждая по этому месту, я познала природу твоего бессмертия, любовь моя. Оно жаждет жизней других. В момент твоей смерти оно хватает вместо тебя другое живое существо, благодаря чему ты остаешься живым. Душа, погибшая вместо тебя, попадает тенью сюда, в Крепость. Я думаю, что эта оболочка не позволит твоему бессмертию найти новую жертву».{#deionarra_s65_1}'

    menu:
        'deionarra_s65_r63404{#deionarra_s65_r63404}': # '«Итак… когда я умираю, кто-то умирает вместо меня. И если оно не найдет никого живого, кто умрет *вместо* меня…»{#deionarra_s65_r63404}'
            # a204 # r63404
            jump deionarra_s66


# s66 # say63405
label deionarra_s66: # from 64.0 65.0
    'deionarra_s66{#deionarra_s66}'
    # deionarra '«То смерть твоя будет окончательной. Здесь нет ничего *живого*, так что будь осторожен. Покинь это проклятое место и возвращайся назад в Сигил!»{#deionarra_s66_1}'

    menu:
        'deionarra_s66_r63406{#deionarra_s66_r63406}' if deionarraLogic.r63406_condition(): # '«Но здесь мои союзники. Это значит, что они внутри этой оболочки. Что произойдет с *ними*, если я умру?»{#deionarra_s66_r63406}'
            # a205 # r63406
            jump deionarra_s67

        'deionarra_s66_r63407{#deionarra_s66_r63407}' if deionarraLogic.r63407_condition(): # '«Но здесь один из моих союзников. Это значит, что он внутри этой оболочки. Что произойдет с ним, если я умру?»{#deionarra_s66_r63407}'
            # a206 # r63407
            jump deionarra_s67

        'deionarra_s66_r63408{#deionarra_s66_r63408}' if deionarraLogic.r63408_condition(): # '«Дейонарра, ты можешь сказать что-нибудь еще, что может быть полезным? Что меня ждет внутри?»{#deionarra_s66_r63408}'
            # a207 # r63408
            jump deionarra_s68

        'deionarra_s66_r63409{#deionarra_s66_r63409}' if deionarraLogic.r63409_condition(): # '«Дух, ты можешь сказать что-нибудь еще, что может быть полезным? Что меня ждет внутри?»{#deionarra_s66_r63409}'
            # a208 # r63409
            jump deionarra_s68


# s67 # say63410
label deionarra_s67: # from 66.0 66.1
    'deionarra_s67{#deionarra_s67}'
    # deionarra '«Любовь моя, если ты привел сюда *что-либо* живое, то ему угрожает великая опасность — и от теней, и от тебя. Если ты умрешь здесь, твое бессмертие будет охотиться за первым попавшимся живым существом в Крепости, и *оно* умрет вместо тебя. Теперь ты должен уходить отсюда!»{#deionarra_s67_1}'

    menu:
        'deionarra_s67_r63411{#deionarra_s67_r63411}': # '«Я не могу *вернуться*. Так ты можешь сказать *что-нибудь*, что может быть полезным? Что меня ждет внутри Крепости?»{#deionarra_s67_r63411}'
            # a209 # r63411
            jump deionarra_s68


# s68 # say63412
label deionarra_s68: # from 66.2 66.3 67.0
    'deionarra_s68{#deionarra_s68}'
    # deionarra '«Внутри Крепости нет настоящей темноты, любовь моя, лишь только тени тех, кто погиб вместо тебя. Энергия этого плана питает их, и их ненависть к тебе выше всяких границ. Они не позволят тебе уйти».{#deionarra_s68_1}'
    # nr 'Она бросает взгляд на стены Крепости.{#deionarra_s68_2}'
    # deionarra '«Умоляю тебя, *не входи*!»{#deionarra_s68_3}'

    menu:
        'deionarra_s68_r63413{#deionarra_s68_r63413}' if deionarraLogic.r63413_condition(): # '«Но мои союзники здесь. Я не могу их бросить. Есть какие-нибудь мысли, где они могут быть?»{#deionarra_s68_r63413}'
            # a210 # r63413
            jump deionarra_s69

        'deionarra_s68_r63414{#deionarra_s68_r63414}' if deionarraLogic.r63414_condition(): # '«Но один из моих союзников здесь. Я не могу уйти. Есть какие-нибудь мысли, может быть мой спутник?»{#deionarra_s68_r63414}'
            # a211 # r63414
            jump deionarra_s69

        'deionarra_s68_r63415{#deionarra_s68_r63415}' if deionarraLogic.r63415_condition(): # '«Мне придется войти в Крепость. Я не могу отступить».{#deionarra_s68_r63415}'
            # a212 # r63415
            $ deionarraLogic.j68117_s68_r63415_action()
            jump deionarra_s75


# s69 # say63416
label deionarra_s69: # from 68.0 68.1
    'deionarra_s69{#deionarra_s69}'
    # deionarra '«Всех, кого ты привел сюда, разбросало по разным местам: природа этого места такова, что оно разделяет живых существ… а затем убивает их».{#deionarra_s69_1}'
    # nr 'Она выглядит обезумевшей.{#deionarra_s69_2}'
    # deionarra '«Крепость простирается на много миль: найти твоих друзей будет очень трудно».{#deionarra_s69_3}'

    menu:
        'deionarra_s69_r63417{#deionarra_s69_r63417}': # '«Я найду их. У меня нет выбора».{#deionarra_s69_r63417}'
            # a213 # r63417
            $ deionarraLogic.j68117_s69_r63417_action()
            jump deionarra_s75


# s70 # say63418
label deionarra_s70: # from 75.0
    'deionarra_s70{#deionarra_s70}'
    # deionarra '«И еще одно…»{#deionarra_s70_1}'
    # nr 'Дейонарра умолкает, будто пытаясь поймать ускользающее воспоминание.{#deionarra_s70_2}'
    # deionarra '«Внутри… внутри комнаты есть огромные часы…»{#deionarra_s70_3}'
    # nr 'Ее голос становится более спокойным и уверенным.{#deionarra_s70_4}'
    # deionarra '«Часы, о которых ты однажды говорил, что они помогли тебе выбраться из этой комнаты… когда ты был пойман здесь в предыдущий раз».{#deionarra_s70_5}'
    # nr 'Она смотрит на тебя.{#deionarra_s70_6}'
    # deionarra '«Я знаю, что не смогу уговорить тебя свернуть с этого пути, любовь моя… но я буду следить за тобой и помогу, если смогу».{#deionarra_s70_7}'

    menu:
        'deionarra_s70_r63419{#deionarra_s70_r63419}' if deionarraLogic.r63419_condition(): # '«Я принес твое кольцо, Дейонарра. Я нашел твое наследство, завещанное мне».{#deionarra_s70_r63419}'
            # a214 # r63419
            $ deionarraLogic.r63419_action()
            jump deionarra_s71

        'deionarra_s70_r63420{#deionarra_s70_r63420}' if deionarraLogic.r63420_condition(): # '«Благодарю тебя, дух. Теперь я должен идти».{#deionarra_s70_r63420}'
            # a215 # r63420
            jump deionarra_dispose

        'deionarra_s70_r63421{#deionarra_s70_r63421}' if deionarraLogic.r63421_condition(): # '«Благодарю тебя, Дейонарра. Теперь я должен идти».{#deionarra_s70_r63421}'
            # a216 # r63421
            jump deionarra_dispose


# s71 # say63422
label deionarra_s71: # from 70.0
    'deionarra_s71{#deionarra_s71}'
    # deionarra '«Кольцо все еще содержит частичку меня, любовь моя. Нося его, ты носишь с собой мое сердце».{#deionarra_s71_1}'
    # nr 'На секунду она закрывает глаза, и ты неожиданно чувствуешь тепло, пронизывающее тебя. Открыв глаза, Дейонарра улыбается.{#deionarra_s71_2}'
    # deionarra '«Я знала, что ты вернешься ко мне вместе с ним. Носи же теперь его с моим благословением и держи поближе к своему сердцу. Через него я буду защищать тебя».{#deionarra_s71_3}'

    menu:
        'deionarra_s71_r63423{#deionarra_s71_r63423}' if deionarraLogic.r63423_condition(): # '«Благодарю тебя, Дейонарра. Теперь я должен идти».{#deionarra_s71_r63423}'
            # a217 # r63423
            jump deionarra_dispose


# s72 # say66912
label deionarra_s72: # from 27.1
    'deionarra_s72{#deionarra_s72}'
    # deionarra '«Ты… я… не могу…»{#deionarra_s72_1}'
    # nr 'Она неожиданно замирает, затем продолжает говорить, медленно и осторожно, будто боясь собственного голоса.{#deionarra_s72_2}'
    # deionarra '«Вот в чем правда: ты тот, кто умирал тысячью смертей. И через это ты постиг саму сущность смертности, в твоих руках теперь находится искра жизни… и смерти. Умирающий рядом с тобой оставляет след, по которому ты можешь его воскресить…»{#deionarra_s72_3}'

    jump deionarra_s73


# s73 # say66913
label deionarra_s73: # from 72.0
    'deionarra_s73{#deionarra_s73}'
    # nr 'При этих словах Дейонарры твой череп пронзает внезапное озарение… неожиданно ты ощущаешь непреодолимое желание взглянуть на собственную руку. Подняв ее и *посмотрев* на нее, ты ВИДИШЬ кровь, текущую по запястью, омывающую твои мускулы, дающую силу твоим костям…{#deionarra_s73_1}'

    menu:
        'deionarra_s73_r66914{#deionarra_s73_r66914}': # '«Чт…»{#deionarra_s73_r66914}'
            # a218 # r66914
            $ deionarraLogic.j66917_s73_r66914_action()
            $ deionarraLogic.r66914_action()
            jump deionarra_s74


# s74 # say66915
label deionarra_s74: # from 73.0
    'deionarra_s74{#deionarra_s74}'
    # nr 'И ты понимаешь, что Дейонарра *права*. Неожиданно ты вспоминаешь, как находить самую слабую искорку жизни в теле и оживлять его… эта мысль одновременно пугает и интригует тебя.{#deionarra_s74_1}'

    menu:
        'deionarra_s74_r66916{#deionarra_s74_r66916}': # '«Я… я… У меня есть другие вопросы…»{#deionarra_s74_r66916}'
            # a219 # r66916
            jump deionarra_s10


# s75 # say68114
label deionarra_s75: # from 68.2 69.0
    'deionarra_s75{#deionarra_s75}'
    # deionarra '«Хорошо, любовь моя… если ты хочешь идти, то ты должен знать: за входом в Крепость расположен огромный вестибюль с бесчисленным множеством теней. Ты должен идти без промедления и не позволить им обнаружить себя, иначе ты погибнешь!»{#deionarra_s75_1}'

    jump deionarra_s70
