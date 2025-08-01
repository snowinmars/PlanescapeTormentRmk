init python:
    def _r6499_action(gsm):
        gsm.gcm.modify_property('protagonist', 'law', -1)
        gsm.set_zombie_chaotic(True)
    def _r6502_action(gsm):
        gsm.set_meet_oinosian(True)


init python:
    def _r6499_condition(gsm):
        return not gsm.get_zombie_chaotic()
    def _r6500_condition(gsm):
        return gsm.get_zombie_chaotic()
    def _r6501_condition(gsm):
        return gsm.get_vaxis_exposed()
    def _r6502_condition(gsm):
        return gsm.get_can_speak_with_dead()
    def _r9664_condition(gsm):
        return not gsm.get_meet_pharod()


init 10 python:
    gsm = renpy.store.global_settings_manager


# ###
# Original:  DLG/DZM310.DLG
# ###


label dzm310_init:
    return


label dzm310_dispose:
    jump show_graphics_menu


# s0 # say6495
label dzm310_s0:  # from - # IF ~  Global("Oinosian","GLOBAL",0)
    SPEAKER 'Губы этого ходячего трупа крепко сшиты, над бровью вырезан номер 310; воздух вокруг него насыщен формальдегидом. Как только ты встаешь на его пути, он поворачивает к тебе свой безжизненный взгляд.'

    menu:
        'Итак… что тут у нас интересного?' if _r6499_condition(gsm):
            # r0 # reply6499
            $ _r6499_action(gsm)
            jump dzm310_s1
        'Итак… что тут у нас интересного?' if _r6500_condition(gsm):
            # r1 # reply6500
            jump dzm310_s1
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if _r6501_condition(gsm):
            # r2 # reply6501
            jump dzm310_s1
        'Использовать на трупе свою способность История костей.' if _r6502_condition(gsm):
            # r3 # reply6502
            $ _r6502_action(gsm)
            jump dzm310_s2
        'Было приятно с тобой поболтать. Прощай.':
            # r4 # reply6503
            jump show_graphics_menu
        'Оставить труп в покое.':
            # r5 # reply6504
            jump show_graphics_menu


# s1 # say6496
label dzm310_s1:  # from 0.0 0.1 0.2
    SPEAKER 'Труп продолжает пялиться на тебя.'

    menu:
        'Оставить труп в покое.':
            # r6 # reply6505
            jump show_graphics_menu


# s2 # say6498
label dzm310_s2:  # from 0.3
    SPEAKER 'Ты уж было решаешь, что труп слишком далек от того, чтобы отвечать… но вдруг ты замечаешь страдания, отпечатанные на его лице, и ощущаешь в них беспредельное отчаяние — дух точно вернулся в свою старую оболочку.'

    menu:
        'Я хотел бы задать тебе вопрос…':
            # r7 # reply6506
            jump dzm310_s3
        'Оставить духа в покое.':
            # r8 # reply9657
            jump dzm310_s17


# s3 # say9642
label dzm310_s3:  # from 2.0 4.2 5.2 6.2 7.2 8.1 9.0 10.0 11.2 12.1 13.1 14.1 15.1 16.0 18.0
    SPEAKER 'Он говорит медленно и монотонно, его голос полон страдания и безысходности. Даже сейчас его почти не отличить от бездушного зомби. Что ты хочешь знать, милорд?'

    menu:
        'Так кто ты?':
            # r9 # reply9658
            jump dzm310_s4
        'Откуда ты?':
            # r10 # reply9659
            jump dzm310_s5
        'Как ты попал сюда? То есть, как стал зомби?':
            # r11 # reply9660
            jump dzm310_s6
        'Где ты… где находится твой дух… теперь?':
            # r12 # reply9661
            jump dzm310_s7
        'Почему ты говоришь с таким отчаянием?':
            # r13 # reply9662
            jump dzm310_s8
        'Что ты знаешь об этом месте?':
            # r14 # reply9663
            jump dzm310_s9
        'Ты знаешь кого-нибудь по имени Фарод?' if _r9664_condition(gsm):
            # r15 # reply9664
            jump dzm310_s10
        'Ничего, неважно.':
            # r16 # reply9665
            jump dzm310_s17


# s4 # say9643
label dzm310_s4:  # from 3.0
    SPEAKER 'Дух говорит так тихо, что ты с трудом его слышишь: губы трупа едва двигаются при каждом слове. Я никто, милорд; бедное насекомое, отчаянно вцепившееся в Башню Утрат в Ойносе. Когда-то меня называли Арабеймом, милорд… давно, очень давно.'

    menu:
        'Башне Утрат?':
            # r17 # reply9666
            jump dzm310_s13
        'Ойносе?':
            # r18 # reply9667
            jump dzm310_s7
        'У меня есть другие вопросы…':
            # r19 # reply9668
            jump dzm310_s3
        'Больше нет ничего, что я хотел бы узнать. Прощай.':
            # r20 # reply9669
            jump dzm310_s17


# s5 # say9644
label dzm310_s5:  # from 3.1
    SPEAKER 'Я жил в Сигиле, милорд. В Улье. Это было не самое ужасное место, как теперь мне кажется, по крайней мере, по сравнению с моим новым домом, где я теперь… Ойносом. Труп моргает, так медленно, что на мгновенье тебе кажется, что он просто закрыл глаза.'

    menu:
        'В Улье?':
            # r21 # reply9670
            jump dzm310_s12
        'Ойносе?':
            # r22 # reply9671
            jump dzm310_s7
        'У меня есть другие вопросы…':
            # r23 # reply9672
            jump dzm310_s3
        'Это все, что я хотел узнать. Прощай.':
            # r24 # reply9673
            jump dzm310_s17


# s6 # say9645
label dzm310_s6:  # from 3.2
    SPEAKER 'Я был убит разбойниками, милорд. Я напился и заблудился по улицам Улья. В конце концов, я стал добычей банды головорезов. Вот и все. Наверно, моя жизнь стоила даже меньше тех медяков, которые получил сборщик за мое тело.'

    menu:
        'Почему ты такого низкого мнения о своей жизни?':
            # r25 # reply9674
            jump dzm310_s16
        'Сборщик?':
            # r26 # reply9675
            jump dzm310_s15
        'У меня есть другие вопросы…':
            # r27 # reply9676
            jump dzm310_s3
        'Это все, что я хотел узнать. Прощай.':
            # r28 # reply9677
            jump dzm310_s17


# s7 # say9646
label dzm310_s7:  # from 3.3 4.1 5.1 8.0 12.0
    SPEAKER 'На секунду дух закрывает глаза; труп слегка дрожит. Ужасный Ойнос, милорд. В Серой пустоши. Там, где пребывает моя душа, в тени Хин-Ойна, Башни Утрат.'

    menu:
        'Расскажи мне больше об этом… Ойносе.':
            # r29 # reply9678
            jump dzm310_s11
        'Хин-Ойна?':
            # r30 # reply9679
            jump dzm310_s13
        'У меня есть другие вопросы…':
            # r31 # reply9680
            jump dzm310_s3
        'Больше нет ничего, что я хотел бы узнать. Прощай.':
            # r32 # reply9681
            jump dzm310_s17


# s8 # say9647
label dzm310_s8:  # from 3.4
    SPEAKER 'Для меня больше ничего нет, милорд. Я в вечной западне в чумной пустоши, в Ойносе. Для таких, как я, больше нет надежд. Кажется, дух опустился в более чем патетичное состояние, плечи трупа поникли под весом его скорби.'

    menu:
        'Ойносе?':
            # r33 # reply9682
            jump dzm310_s7
        'Понятно. У меня есть другой вопрос…':
            # r34 # reply9683
            jump dzm310_s3
        'Это все, что я хотел узнать. Прощай.':
            # r35 # reply9684
            jump dzm310_s17


# s9 # say9648
label dzm310_s9:  # from 3.5 15.0
    SPEAKER 'Очень мало, милорд. Только то, что сюда доставляют умерших для погребения или кремации… или в качестве дешевой рабочей силы, как это случилось с моим телом.'

    menu:
        'Теперь понятно. Еще вопрос…':
            # r36 # reply9685
            jump dzm310_s3
        'Больше нет ничего, что я хотел бы узнать. Прощай.':
            # r37 # reply9686
            jump dzm310_s17


# s10 # say9649
label dzm310_s10:  # from 3.6
    SPEAKER 'Труп медленно качает головой из стороны в сторону. Нет, милорд. Я не знаю никого с таким именем. Прошу прощения, милорд.'

    menu:
        'Не надо извиняться. У меня еще вопрос…':
            # r38 # reply9687
            jump dzm310_s3
        'Тогда прощай.':
            # r39 # reply9688
            jump dzm310_s17


# s11 # say9650
label dzm310_s11:  # from 7.0
    SPEAKER 'Мало что можно сказать, милорд. Это земля моего Повелителя, лорда Хин-Ойна… полная боли и страданий, разлагающихся тел и душ. Это место полной безнадеги.'

    menu:
        'Кто такой этот… «Повелитель»?':
            # r40 # reply9689
            jump dzm310_s14
        'Хин-Ойна?':
            # r41 # reply9690
            jump dzm310_s13
        'У меня есть другие вопросы…':
            # r42 # reply9691
            jump dzm310_s3
        'Безусловно, это так. Прощай, дух.':
            # r43 # reply9692
            jump dzm310_s17


# s12 # say9651
label dzm310_s12:  # from 5.0
    SPEAKER 'Да, милорд. Плохое место, но там не так страшно, как в Ойносе.'

    menu:
        'Ойносе?':
            # r44 # reply9693
            jump dzm310_s7
        'У меня есть другие вопросы…':
            # r45 # reply9694
            jump dzm310_s3
        'Это все, что я хотел узнать. Прощай.':
            # r46 # reply9695
            jump dzm310_s17


# s13 # say9652
label dzm310_s13:  # from 4.0 7.1 11.1 14.0
    SPEAKER 'Да, милорд. Это очень большая башня, намного выше любого здания в Сигиле. Она сделана из кости, милорд, она очень похоже на позвоночник огромного существа. Там я и тружусь, восстанавливая урон, нанесенный армиями мятежных принцев, врагов моего Повелителя.'

    menu:
        'Кто такой этот «Повелитель»?':
            # r47 # reply9696
            jump dzm310_s14
        'Понятно. У меня есть другой вопрос…':
            # r48 # reply9697
            jump dzm310_s3
        'Понятно. Теперь мне нужно идти, дух. Прощай.':
            # r49 # reply9698
            jump dzm310_s17


# s14 # say9653
label dzm310_s14:  # from 11.0 13.0
    SPEAKER 'Я знаю его только как Повелителя, милорд. Он — лорд Хин-Ойна, принц нечисти, несказанно могущественный ультралот. Он тот, кому принадлежит моя душа, и будет принадлежать вечно, обреченная чахнуть под его ступней, пока вечность не будет перемолота в Забвение.'

    menu:
        'Расскажи мне об этом «Хин-Ойне».':
            # r50 # reply9699
            jump dzm310_s13
        'У меня есть другие вопросы…':
            # r51 # reply9700
            jump dzm310_s3
        'Больше нет ничего, что я хотел бы узнать. Прощай.':
            # r52 # reply9701
            jump dzm310_s17


# s15 # say9654
label dzm310_s15:  # from 6.1
    SPEAKER 'Да, милорд, сборщик. Тот, кто собирает мертвецов Сигила и доставляет их в Морг — там, где мы находимся — за небольшую цену. Дух оглядывает окружающую обстановку, затем тихо вздыхает.'

    menu:
        'Что ты знаешь об этом Морге?':
            # r53 # reply9702
            jump dzm310_s9
        'Понятно. У меня есть другой вопрос к тебе…':
            # r54 # reply9703
            jump dzm310_s3
        'Это все, что я хотел узнать. Прощай.':
            # r55 # reply9704
            jump dzm310_s17


# s16 # say9655
label dzm310_s16:  # from 6.0
    SPEAKER 'Я не хочу говорить об этом, милорд. Это не тема для разговоров. Похоже, дух непоколебим в данном вопросе.'

    menu:
        'Хорошо. Тогда у меня есть вопросы…':
            # r56 # reply9705
            jump dzm310_s3
        'Тогда прощай.':
            # r57 # reply9706
            jump dzm310_s17


# s17 # say9656
label dzm310_s17:  # from 2.1 3.7 4.3 5.3 6.3 7.3 8.2 9.1 10.1 11.3 12.2 13.2 14.2 15.2 16.1
    SPEAKER 'Ты даже не замечаешь, как дух покинул тело, до тех пор, пока зомби, неуклюже шагая, не вернулся к своей работе.'

    jump show_graphics_menu

# s18 # say20102
label dzm310_s18:  # from - # IF ~  Global("Oinosian","GLOBAL",1)
    SPEAKER 'Похоже, этот труп сгорбился под тяжестью страданий духа.'

    menu:
        'У меня есть несколько вопросов…':
            # r58 # reply20103
            jump dzm310_s3
        'Я просто проходил мимо. Прощай.':
            # r59 # reply20104
            jump show_graphics_menu
