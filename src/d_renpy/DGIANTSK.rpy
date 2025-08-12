init 10 python:
    from game.dlgs.giantsk_logic import GiantskLogic
    giantskLogic = GiantskLogic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/GIANTSK.DLG
# ###


label start_giantsk_talk_first:
    call giantsk_init
    jump todo
label start_giantsk_talk:
    call giantsk_init
    jump todo
label start_giantsk_kill_first:
    call giantsk_init
    jump giantsk_kill_first
label start_giantsk_kill:
    call giantsk_init
    jump giantsk_kill
label giantsk_init:
    $ giantskLogic.giantsk_init()
    scene bg LOCATION
    show giantsk_img default at center_left_down
    return
label giantsk_dispose:
    hide giantsk_img
    jump graphics_menu


# s0 # say292
label giantsk_s0:  # - # IF ~  True()
    SPEAKER 'Перед тобой возвышается огромный скелет в богато украшенных бронзовых доспехах. Доспехи прикреплены к костям скелета, а на нагруднике вырезана серия замысловатых символов. Удивительно, откуда мог взяться такой скелет; ты не можешь представить себе людей таких размеров. Огромный клинок в его руках, похоже, весит как целая повозка.'

    menu:
        '«Не против, если я немного подержу клинок? Должно быть, ты устал его держать».':
            # r0 # reply293
            $ giantskLogic.r293_action()
            jump giantsk_s1

        '«Как долго ты здесь стоишь? Наверно, давно?»':
            # r1 # reply1165
            $ giantskLogic.r1165_action()
            jump giantsk_s1

        'Осмотреть гигантского скелета… осторожно.':
            # r2 # reply3996
            jump giantsk_s4

        'Посмотреть, сможешь ли ты разрушить чары, наложенные на нагрудник скелета.' if giantskLogic.r3997_condition():
            # r3 # reply3997
            jump giantsk_s9

        'Попробовать вытащить клинок из рук скелета.' if giantskLogic.r3998_condition():
            # r4 # reply3998
            jump giantsk_s2

        'Попробовать вытащить клинок из рук скелета.' if giantskLogic.r3999_condition():
            # r5 # reply3999
            jump giantsk_s3

        'Попробовать вытащить винты, держащие доспехи скелета.' if giantskLogic.r4000_condition():
            # r6 # reply4000
            jump giantsk_s2

        'Попробовать вытащить винты, держащие доспехи скелета.' if giantskLogic.r4001_condition():
            # r7 # reply4001
            jump giantsk_s3

        '«Эй, а как насчет ЭТОГО скелета, Морт? Пойдет такое тело?»' if giantskLogic.r4002_condition():
            # r8 # reply4002
            jump morte_s73  # EXTERN

        'Использовать на скелете свою способность «История костей».' if giantskLogic.r4003_condition():
            # r9 # reply4003
            jump giantsk_s1

        'Оставить скелета в покое.':
            # r10 # reply4004
            jump giantsk_dispose


# s1 # say1166
label giantsk_s1:  # from 0.0 0.1 0.9 # IF ~  False()
    SPEAKER 'Похоже, скелет мертв уже слишком давно, чтобы отвечать на твои вопросы. Либо это, либо его голова находится слишком высоко, чтобы услышать тебя.'

    menu:
        'Осмотреть гигантского скелета… осторожно.':
            # r11 # reply1167
            jump giantsk_s4

        'Посмотреть, сможешь ли ты разрушить чары, наложенные на нагрудник скелета.' if giantskLogic.r4035_condition():
            # r12 # reply4035
            jump giantsk_s9

        'Попробовать вытащить клинок из рук скелета.' if giantskLogic.r4036_condition():
            # r13 # reply4036
            jump giantsk_s2

        'Попробовать вытащить клинок из рук скелета.' if giantskLogic.r4037_condition():
            # r14 # reply4037
            jump giantsk_s3

        'Попробовать вытащить винты, держащие доспехи скелета.' if giantskLogic.r4038_condition():
            # r15 # reply4038
            jump giantsk_s2

        'Попробовать вытащить винты, держащие доспехи скелета.' if giantskLogic.r4039_condition():
            # r16 # reply4039
            jump giantsk_s3

        '«Эй, а как насчет ЭТОГО скелета, Морт? Пойдет такое тело?»' if giantskLogic.r4040_condition():
            # r17 # reply4040
            jump morte_s73  # EXTERN

        'Оставить скелета в покое.':
            # r18 # reply4041
            jump giantsk_dispose


# s2 # say4005
label giantsk_s2:  # from 0.4 0.6 1.2 1.4 3.0 4.1 4.3 5.3 5.5 6.2 6.4 7.3 7.5 8.2 8.4 9.4 9.6
    SPEAKER 'Как только ты касаешься скелета, по всему Моргу раздается звон железного колокола… а скелет моментально пробуждается, поднимая клинок для нападения!'

    menu:
        '«Лучше бы тебе оставаться мертвым, костяшка…»':
            # r19 # reply4042
            $ giantskLogic.r4042_action()
            jump giantsk_dispose


# s3 # say4006
label giantsk_s3:  # from 0.5 0.7 1.3 1.5 4.2 4.4 5.4 5.6 6.3 6.5 7.4 7.6 8.3 8.5 9.5 9.7
    SPEAKER 'Едва начав, ты внезапно останавливаешься… твой взгляд останавливается на доспехах скелета. Что-то в символах, вырезанных на нагруднике, заставляет тебя задержаться. Если эти скелеты — охранники, то лучше их не беспокоить, иначе… они могут проснуться.'

    menu:
        '«Ладно, попробую рискнуть…»':
            # r20 # reply4043
            jump giantsk_s2

        'Осмотреть гигантского скелета… осторожно.':
            # r21 # reply4044
            jump giantsk_s4

        'Оставить скелета в покое.':
            # r22 # reply4046
            jump giantsk_dispose


# s4 # say4007
label giantsk_s4:  # from 0.2 1.0 3.1 7.1 15.1 16.3
    SPEAKER 'Замысловатые бронзовые доспехи скелета закреплены на грудной клетке и плечах с помощью нескольких железных скоб. Изучив тело под броней, ты замечаешь, что такие же железные скобы закреплены на плечевых, локтевых, тазовых и коленных суставах. Куча тонких кожаных лент и прочных веревок вьются по всей длине рук и ног скелета на манер мускулов и сухожилий.'

    menu:
        'Осмотреть доспехи.':
            # r23 # reply4045
            jump giantsk_s5

        'Попробовать вытащить клинок из рук скелета.' if giantskLogic.r4048_condition():
            # r24 # reply4048
            jump giantsk_s2

        'Попробовать вытащить клинок из рук скелета.' if giantskLogic.r4049_condition():
            # r25 # reply4049
            jump giantsk_s3

        'Попробовать вытащить винты, держащие доспехи скелета.' if giantskLogic.r4050_condition():
            # r26 # reply4050
            jump giantsk_s2

        'Попробовать вытащить винты, держащие доспехи скелета.' if giantskLogic.r4051_condition():
            # r27 # reply4051
            jump giantsk_s3

        '«Эй, а как насчет ЭТОГО скелета, Морт? Пойдет такое тело?»' if giantskLogic.r4052_condition():
            # r28 # reply4052
            jump morte_s73  # EXTERN

        'Оставить скелета в покое.':
            # r29 # reply4053
            jump giantsk_dispose


# s5 # say4008
label giantsk_s5:  # from 4.0
    SPEAKER 'Несмотря на почтенный возраст доспехов, за ними хорошо присматривали. Они ярко блестят, и символы, вырезанные на нагруднике, играют на свету, слегка подрагивая каждый раз, когда ты пытаешься сконцентрироваться на них.'

    menu:
        'Изучить символы.' if giantskLogic.r4054_condition():
            # r30 # reply4054
            jump giantsk_s6

        'Изучить символы.' if giantskLogic.r4055_condition():
            # r31 # reply4055
            jump giantsk_s6

        'Изучить символы.' if giantskLogic.r64293_condition():
            # r32 # reply64293
            jump giantsk_s7

        'Попробовать вытащить клинок из рук скелета.' if giantskLogic.r4056_condition():
            # r33 # reply4056
            jump giantsk_s2

        'Попробовать вытащить клинок из рук скелета.' if giantskLogic.r4057_condition():
            # r34 # reply4057
            jump giantsk_s3

        'Попробовать вытащить винты, держащие доспехи скелета.' if giantskLogic.r4058_condition():
            # r35 # reply4058
            jump giantsk_s2

        'Попробовать вытащить винты, держащие доспехи скелета.' if giantskLogic.r4059_condition():
            # r36 # reply4059
            jump giantsk_s3

        '«Эй, а как насчет ЭТОГО скелета, Морт? Пойдет такое тело?»' if giantskLogic.r4060_condition():
            # r37 # reply4060
            jump morte_s73  # EXTERN

        'Оставить скелета в покое.':
            # r38 # reply4061
            jump giantsk_dispose


# s6 # say4009
label giantsk_s6:  # from 5.0 5.1
    SPEAKER 'Почти неосознанно ты расслабляешь взгляд и оглядываешь символы. Спустя минуту символы перестают дрожать и превращаются в цепочку рун, бегущих вверх и вниз по нагруднику. Довольно странно, но цепляющиеся друг за друга руны напоминают тебе цепи… едва поняв это, неожиданно ты вспоминаешь, что эти руны являются какими-то охранными чарами.'

    menu:
        'Изучить руны, попробовать вспомнить чары.' if giantskLogic.r4062_condition():
            # r39 # reply4062
            jump giantsk_s8

        'Изучить руны, попробовать вспомнить чары.' if giantskLogic.r4063_condition():
            # r40 # reply4063
            jump giantsk_s7

        'Попробовать вытащить клинок из рук скелета.' if giantskLogic.r4064_condition():
            # r41 # reply4064
            jump giantsk_s2

        'Попробовать вытащить клинок из рук скелета.' if giantskLogic.r4065_condition():
            # r42 # reply4065
            jump giantsk_s3

        'Попробовать вытащить винты, держащие доспехи скелета.' if giantskLogic.r4066_condition():
            # r43 # reply4066
            jump giantsk_s2

        'Попробовать вытащить винты, держащие доспехи скелета.' if giantskLogic.r4067_condition():
            # r44 # reply4067
            jump giantsk_s3

        '«Эй, а как насчет ЭТОГО скелета, Морт? Пойдет такое тело?»' if giantskLogic.r4068_condition():
            # r45 # reply4068
            jump morte_s73  # EXTERN

        'Оставить скелета в покое.':
            # r46 # reply4069
            jump giantsk_dispose


# s7 # say4010
label giantsk_s7:  # from 5.2 6.1 7.2
    SPEAKER 'Ты изучаешь руны некоторое время, но никак не можешь расшифровать чары. Они довольно сложно выглядят, и тебе приходится сильно сосредотачиваться.'

    menu:
        'Сравнить руны с рунами в Книге Костей и Праха.' if giantskLogic.r64294_condition():
            # r47 # reply64294
            jump giantsk_s15

        'Снова осмотреть скелет.':
            # r48 # reply4070
            jump giantsk_s4

        'Снова осмотреть руны.':
            # r49 # reply4071
            jump giantsk_s7

        'Попробовать вытащить клинок из рук скелета.' if giantskLogic.r4072_condition():
            # r50 # reply4072
            jump giantsk_s2

        'Попробовать вытащить клинок из рук скелета.' if giantskLogic.r4073_condition():
            # r51 # reply4073
            jump giantsk_s3

        'Попробовать вытащить винты, держащие доспехи скелета.' if giantskLogic.r4074_condition():
            # r52 # reply4074
            jump giantsk_s2

        'Попробовать вытащить винты, держащие доспехи скелета.' if giantskLogic.r4075_condition():
            # r53 # reply4075
            jump giantsk_s3

        '«Эй, а как насчет ЭТОГО скелета, Морт? Пойдет такое тело?»' if giantskLogic.r4076_condition():
            # r54 # reply4076
            jump morte_s73  # EXTERN

        'Оставить скелета в покое.':
            # r55 # reply4077
            jump giantsk_dispose


# s8 # say4011
label giantsk_s8:  # from 6.0
    SPEAKER 'Ты изучаешь образец рун, пробегающий через нагрудник. По своей сути они являются слабым защитным заклинанием, но несколько черепоподобных и шарообразных следов, идущих по краям доспехов заставляют тебя думать о более сильных наложенных некромантских и охранных заклинаниях. Если дотронуться до скелета, то, скорее всего, он пробудится… и будет защищаться.'

    menu:
        'Попробовать, сможешь ли ты как-нибудь разрушить чары.' if giantskLogic.r4079_condition():
            # r56 # reply4079
            $ giantskLogic.r4079_action()
            jump giantsk_s9

        'Попробовать, сможешь ли ты как-нибудь разрушить чары.' if giantskLogic.r4080_condition():
            # r57 # reply4080
            jump giantsk_s9

        'Попробовать вытащить клинок из рук скелета.' if giantskLogic.r4081_condition():
            # r58 # reply4081
            jump giantsk_s2

        'Попробовать вытащить клинок из рук скелета.' if giantskLogic.r4082_condition():
            # r59 # reply4082
            jump giantsk_s3

        'Попробовать вытащить винты, держащие доспехи скелета.' if giantskLogic.r4083_condition():
            # r60 # reply4083
            jump giantsk_s2

        'Попробовать вытащить винты, держащие доспехи скелета.' if giantskLogic.r4084_condition():
            # r61 # reply4084
            jump giantsk_s3

        '«Эй, а как насчет ЭТОГО скелета, Морт? Пойдет такое тело?»' if giantskLogic.r4085_condition():
            # r62 # reply4085
            jump morte_s73  # EXTERN

        'Оставить скелета в покое.':
            # r63 # reply4078
            jump giantsk_dispose


# s9 # say4012
label giantsk_s9:  # from 0.3 1.1 8.0 8.1
    SPEAKER 'Ты думаешь, что если исказить образец рун на нагруднике, то заклинания будут разрушены, но это достаточно сложно… шаблон защищен, в нем присутствуют неверные символы, которые могут пробудить скелет.'

    menu:
        'Сравнить образец заклинаний с Книгой Костей и Праха, определить, сможешь ли ты их разрушить.' if giantskLogic.r64296_condition():
            # r64 # reply64296
            jump giantsk_s16

        'Сначала разрушить руны, поддерживающие защитное заклинание, затем — некромантское, а затем — охранное заклинание.':
            # r65 # reply4086
            jump giantsk_s10

        'Сначала разрушить руны, поддерживающие охранное заклинание, затем пройтись по рунному узору в обратном порядке, отменив некромантское, а затем — защитное заклинание.' if giantskLogic.r4087_condition():
            # r66 # reply4087
            $ giantskLogic.r4087_action()
            jump giantsk_s11

        'Сначала разрушить руны, поддерживающие охранное заклинание, затем пройтись по рунному узору в обратном порядке, отменив некромантское, а затем — защитное заклинание.' if giantskLogic.r4088_condition():
            # r67 # reply4088
            $ giantskLogic.r4088_action()
            jump giantsk_s13

        'Попробовать вытащить клинок из рук скелета.' if giantskLogic.r4089_condition():
            # r68 # reply4089
            jump giantsk_s2

        'Попробовать вытащить клинок из рук скелета.' if giantskLogic.r4090_condition():
            # r69 # reply4090
            jump giantsk_s3

        'Попробовать вытащить винты, держащие доспехи скелета.' if giantskLogic.r4091_condition():
            # r70 # reply4091
            jump giantsk_s2

        'Попробовать вытащить винты, держащие доспехи скелета.' if giantskLogic.r4092_condition():
            # r71 # reply4092
            jump giantsk_s3

        '«Эй, а как насчет ЭТОГО скелета, Морт? Пойдет такое тело?»' if giantskLogic.r4093_condition():
            # r72 # reply4093
            jump morte_s73  # EXTERN

        'Оставить скелета в покое.':
            # r73 # reply4094
            jump giantsk_dispose


# s10 # say4013
label giantsk_s10:  # from 9.1 16.0
    SPEAKER 'Как только ты начинаешь работать с рунами, украшающими нагрудник, по всему Моргу раздается звон железного колокола… а скелет моментально пробуждается, поднимая клинок в атаку!'

    menu:
        '«Лучше бы тебе оставаться мертвым, костяшка…»':
            # r74 # reply4095
            $ giantskLogic.r4095_action()
            jump giantsk_dispose


# s11 # say4014
label giantsk_s11:  # from 9.2 16.1
    SPEAKER 'Работа очень сложна, и поначалу ты несколько раз срываешься, но все же медленно, но верно твой разум начинает концентрироваться, и руны разрушаются под твоей атакой. Спустя несколько минут, ты избавляешь скелет от наложенных на него заклинаний. Падая на пол, он разваливается с сильным грохотом!'

    menu:
        '«Чертова куча костей!..»':
            # r75 # reply4096
            $ giantskLogic.r4096_action()
            jump giantsk_s12


# s12 # say4015
label giantsk_s12:  # from 11.0
    SPEAKER 'На секунду ты замираешь, но никто не обращает внимания на шум. Ты осматриваешь предметы, оставшиеся от скелета на полу. Большинство из них слишком тяжелые или слишком древние, чтобы ими воспользоваться, но ты обнаруживаешь часть нагрудника скелета с большей частью разрушенного заклинания, написанного на нем. Ты чувствуешь, что эта вещь может пригодиться.'

    menu:
        '«Возьму-ка я это…»':
            # r76 # reply4097
            $ giantskLogic.r4097_action()
            jump giantsk_dispose


# s13 # say4016
label giantsk_s13:  # from 9.3 16.2
    SPEAKER 'На этот раз снятие заклинаний заняло гораздо меньше времени, и руны быстро разрушаются под твоей атакой. Спустя несколько минут, ты избавляешь скелет от наложенных на него заклинаний. Помня о прошлом случае, ты подхватываешь скелет до того, как он упадет, и тяжело пыхтя, медленно кладешь его на пол.'

    menu:
        '«Посмотрим, что тут у нас на этот раз…»':
            # r77 # reply4098
            $ giantskLogic.r4098_action()
            jump giantsk_s14


# s14 # say4017
label giantsk_s14:  # from 13.0
    SPEAKER 'Ты быстро оглядываешь останки скелета и, как и в прошлый раз, обнаруживаешь часть нагрудника скелета… как и в первый раз, на нем высечен фрагмент разрушенного заклинания. Эта вещь может пригодиться.'

    menu:
        '«Возьму-ка я это…»' if giantskLogic.r4099_condition():
            # r78 # reply4099
            $ giantskLogic.r4099_action()
            jump giantsk_dispose

        '«Возьму-ка я это…»' if giantskLogic.r4100_condition():
            # r79 # reply4100
            $ giantskLogic.r4100_action()
            jump giantsk_dispose

        '«Возьму-ка я это…»' if giantskLogic.r4101_condition():
            # r80 # reply4101
            $ giantskLogic.r4101_action()
            jump giantsk_dispose


# s15 # say64295
label giantsk_s15:  # from 7.0
    SPEAKER 'Ты сравниваешь диаграммы из книги с символами на нагруднике. Судя по всему, они являются слабым защитным заклинанием, но несколько сферических рисунков и рун в форме черепов, идущих по краям доспехов, наводят на мысль о более сильных некромантских и охранных заклинаниях. Если дотронуться до скелета, то, скорее всего, он пробудится… и будет защищаться.'

    menu:
        'Заглянуть в Книгу Костей и Праха, посмотреть, можно ли их разрушить.':
            # r81 # reply64298
            jump giantsk_s16

        'Оставить руны в покое и осмотреть гигантского скелета еще раз.':
            # r82 # reply64299
            jump giantsk_s4


# s16 # say64297
label giantsk_s16:  # from 9.0 15.0
    SPEAKER 'Согласно Книге, защитное заклинание применено только к нагруднику, некромантское заклинание позволяет скелету пробудиться, однако охранное заклинание предоставляет скелету только ограниченные сведения об окружающей обстановке. Ты предполагаешь, что если сначала разрушить охранное заклинание, то это может быть расценено как атака… если только перед этим ты не скроешь свое присутствие.'

    menu:
        'Сначала разрушить руны, поддерживающие защитное заклинание, затем — некромантское, а затем — охранное заклинание.':
            # r83 # reply64300
            jump giantsk_s10

        'Сначала разрушить руны, поддерживающие охранное заклинание, затем пройтись по рунному узору в обратном порядке, отменив некромантское, а затем — защитное заклинание.' if giantskLogic.r64301_condition():
            # r84 # reply64301
            $ giantskLogic.r64301_action()
            jump giantsk_s11

        'Сначала разрушить руны, поддерживающие охранное заклинание, затем пройтись по рунному узору в обратном порядке, отменив некромантское, а затем — защитное заклинание.' if giantskLogic.r64302_condition():
            # r85 # reply64302
            $ giantskLogic.r64302_action()
            jump giantsk_s13

        'Оставить руны в покое и осмотреть гигантского скелета еще раз.':
            # r86 # reply64303
            jump giantsk_s4


label giantsk_kill:
    nr 'Todo.'

    menu:
        'Уйти.':
            jump giantsk_dispose
        'Убить.':
            jump giantsk_killed


label giantsk_killed:
    $ giantskLogic.kill_giantsk()
    nr 'Whose motorcycle is this?'
    nr 'Its a chopper, baby.'
    nr 'Whose chopper is this?'
    nr 'giantsks.'
    nr 'Who is giantsk?'
    nr 'giantsk is dead, baby, giantsk is dead.'
    jump giantsk_dispose


label giantsk_kill_first:
    nr 'Todo.'

    menu:
        'Уйти.':
            jump giantsk_dispose
        'Убить.':
            jump giantsk_killed_first


label giantsk_killed_first:
    $ giantskLogic.kill_giantsk()
    nr 'Whose motorcycle is this?'
    nr 'Its a chopper, baby.'
    nr 'Whose chopper is this?'
    nr 'giantsks.'
    nr 'Who is giantsk?'
    nr 'giantsk is dead, baby, giantsk is dead.'
    jump giantsk_dispose
