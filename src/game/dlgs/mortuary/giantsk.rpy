init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.mortuary.giantsk_logic import GiantskLogic
    giantskLogic = GiantskLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DGIANTSK.DLG
# ###


# s0 # say292
label giantsk_s0: # - # IF ~  True()
    'giantsk_s0{#giantsk_s0}'
    # nr 'Перед тобой возвышается огромный скелет в богато украшенных бронзовых доспехах. Доспехи прикреплены к костям скелета, а на нагруднике вырезана серия замысловатых символов. Удивительно, откуда мог взяться такой скелет; ты не можешь представить себе людей таких размеров. Огромный клинок в его руках, похоже, весит как целая повозка.{#giantsk_s0_1}'

    menu:
        'giantsk_s0_r293{#giantsk_s0_r293}': # '«Не против, если я немного подержу клинок? Должно быть, ты устал его держать».{#giantsk_s0_r293}'
            # a0 # r293
            $ giantskLogic.r293_action()
            jump giantsk_s1

        'giantsk_s0_r1165{#giantsk_s0_r1165}': # '«Как долго ты здесь стоишь? Наверно, давно?»{#giantsk_s0_r1165}'
            # a1 # r1165
            $ giantskLogic.r1165_action()
            jump giantsk_s1

        'giantsk_s0_r3996{#giantsk_s0_r3996}': # 'Осмотреть гигантского скелета… осторожно.{#giantsk_s0_r3996}'
            # a2 # r3996
            jump giantsk_s4

        'giantsk_s0_r3997{#giantsk_s0_r3997}' if giantskLogic.r3997_condition(): # 'Посмотреть, сможешь ли ты разрушить чары, наложенные на нагрудник скелета.{#giantsk_s0_r3997}'
            # a3 # r3997
            jump giantsk_s9

        'giantsk_s0_r3998{#giantsk_s0_r3998}' if giantskLogic.r3998_condition(): # 'Попробовать вытащить клинок из рук скелета.{#giantsk_s0_r3998}'
            # a4 # r3998
            jump giantsk_s2

        'giantsk_s0_r3999{#giantsk_s0_r3999}' if giantskLogic.r3999_condition(): # 'Попробовать вытащить клинок из рук скелета.{#giantsk_s0_r3999}'
            # a5 # r3999
            jump giantsk_s3

        'giantsk_s0_r4000{#giantsk_s0_r4000}' if giantskLogic.r4000_condition(): # 'Попробовать вытащить винты, держащие доспехи скелета.{#giantsk_s0_r4000}'
            # a6 # r4000
            jump giantsk_s2

        'giantsk_s0_r4001{#giantsk_s0_r4001}' if giantskLogic.r4001_condition(): # 'Попробовать вытащить винты, держащие доспехи скелета.{#giantsk_s0_r4001}'
            # a7 # r4001
            jump giantsk_s3

        'giantsk_s0_r4002{#giantsk_s0_r4002}' if giantskLogic.r4002_condition(): # '«Эй, а как насчет ЭТОГО скелета, Морт? Пойдет такое тело?»{#giantsk_s0_r4002}'
            # a8 # r4002
            jump morte_s73  # EXTERN

        'giantsk_s0_r4003{#giantsk_s0_r4003}' if giantskLogic.r4003_condition(): # 'Использовать на скелете свою способность «История костей».{#giantsk_s0_r4003}'
            # a9 # r4003
            jump giantsk_s1

        'giantsk_s0_r4004{#giantsk_s0_r4004}': # 'Оставить скелета в покое.{#giantsk_s0_r4004}'
            # a10 # r4004
            jump giantsk_dispose


# s1 # say1166
label giantsk_s1: # from 0.0 0.1 0.9 # IF ~  False()
    'giantsk_s1{#giantsk_s1}'
    # nr 'Похоже, скелет мертв уже слишком давно, чтобы отвечать на твои вопросы. Либо это, либо его голова находится слишком высоко, чтобы услышать тебя.{#giantsk_s1_1}'

    menu:
        'giantsk_s1_r1167{#giantsk_s1_r1167}': # 'Осмотреть гигантского скелета… осторожно.{#giantsk_s1_r1167}'
            # a11 # r1167
            jump giantsk_s4

        'giantsk_s1_r4035{#giantsk_s1_r4035}' if giantskLogic.r4035_condition(): # 'Посмотреть, сможешь ли ты разрушить чары, наложенные на нагрудник скелета.{#giantsk_s1_r4035}'
            # a12 # r4035
            jump giantsk_s9

        'giantsk_s1_r4036{#giantsk_s1_r4036}' if giantskLogic.r4036_condition(): # 'Попробовать вытащить клинок из рук скелета.{#giantsk_s1_r4036}'
            # a13 # r4036
            jump giantsk_s2

        'giantsk_s1_r4037{#giantsk_s1_r4037}' if giantskLogic.r4037_condition(): # 'Попробовать вытащить клинок из рук скелета.{#giantsk_s1_r4037}'
            # a14 # r4037
            jump giantsk_s3

        'giantsk_s1_r4038{#giantsk_s1_r4038}' if giantskLogic.r4038_condition(): # 'Попробовать вытащить винты, держащие доспехи скелета.{#giantsk_s1_r4038}'
            # a15 # r4038
            jump giantsk_s2

        'giantsk_s1_r4039{#giantsk_s1_r4039}' if giantskLogic.r4039_condition(): # 'Попробовать вытащить винты, держащие доспехи скелета.{#giantsk_s1_r4039}'
            # a16 # r4039
            jump giantsk_s3

        'giantsk_s1_r4040{#giantsk_s1_r4040}' if giantskLogic.r4040_condition(): # '«Эй, а как насчет ЭТОГО скелета, Морт? Пойдет такое тело?»{#giantsk_s1_r4040}'
            # a17 # r4040
            jump morte_s73  # EXTERN

        'giantsk_s1_r4041{#giantsk_s1_r4041}': # 'Оставить скелета в покое.{#giantsk_s1_r4041}'
            # a18 # r4041
            jump giantsk_dispose


# s2 # say4005
label giantsk_s2: # from 0.4 0.6 1.2 1.4 3.0 4.1 4.3 5.3 5.5 6.2 6.4 7.3 7.5 8.2 8.4 9.4 9.6
    'giantsk_s2{#giantsk_s2}'
    # nr 'Как только ты касаешься скелета, по всему Моргу раздается звон железного колокола… а скелет моментально пробуждается, поднимая клинок для нападения!{#giantsk_s2_1}'

    menu:
        'giantsk_s2_r4042{#giantsk_s2_r4042}': # '«Лучше бы тебе оставаться мертвым, костяшка…»{#giantsk_s2_r4042}'
            # a19 # r4042
            $ giantskLogic.r4042_action()
            jump giantsk_dispose


# s3 # say4006
label giantsk_s3: # from 0.5 0.7 1.3 1.5 4.2 4.4 5.4 5.6 6.3 6.5 7.4 7.6 8.3 8.5 9.5 9.7
    'giantsk_s3{#giantsk_s3}'
    # nr 'Едва начав, ты внезапно останавливаешься… твой взгляд останавливается на доспехах скелета. Что-то в символах, вырезанных на нагруднике, заставляет тебя задержаться. Если эти скелеты — охранники, то лучше их не беспокоить, иначе… они могут проснуться.{#giantsk_s3_1}'

    menu:
        'giantsk_s3_r4043{#giantsk_s3_r4043}': # '«Ладно, попробую рискнуть…»{#giantsk_s3_r4043}'
            # a20 # r4043
            jump giantsk_s2

        'giantsk_s3_r4044{#giantsk_s3_r4044}': # 'Осмотреть гигантского скелета… осторожно.{#giantsk_s3_r4044}'
            # a21 # r4044
            jump giantsk_s4

        'giantsk_s3_r4046{#giantsk_s3_r4046}': # 'Оставить скелета в покое.{#giantsk_s3_r4046}'
            # a22 # r4046
            jump giantsk_dispose


# s4 # say4007
label giantsk_s4: # from 0.2 1.0 3.1 7.1 15.1 16.3
    'giantsk_s4{#giantsk_s4}'
    # nr 'Замысловатые бронзовые доспехи скелета закреплены на грудной клетке и плечах с помощью нескольких железных скоб. Изучив тело под броней, ты замечаешь, что такие же железные скобы закреплены на плечевых, локтевых, тазовых и коленных суставах. Куча тонких кожаных лент и прочных веревок вьются по всей длине рук и ног скелета на манер мускулов и сухожилий.{#giantsk_s4_1}'

    menu:
        'giantsk_s4_r4045{#giantsk_s4_r4045}': # 'Осмотреть доспехи.{#giantsk_s4_r4045}'
            # a23 # r4045
            jump giantsk_s5

        'giantsk_s4_r4048{#giantsk_s4_r4048}' if giantskLogic.r4048_condition(): # 'Попробовать вытащить клинок из рук скелета.{#giantsk_s4_r4048}'
            # a24 # r4048
            jump giantsk_s2

        'giantsk_s4_r4049{#giantsk_s4_r4049}' if giantskLogic.r4049_condition(): # 'Попробовать вытащить клинок из рук скелета.{#giantsk_s4_r4049}'
            # a25 # r4049
            jump giantsk_s3

        'giantsk_s4_r4050{#giantsk_s4_r4050}' if giantskLogic.r4050_condition(): # 'Попробовать вытащить винты, держащие доспехи скелета.{#giantsk_s4_r4050}'
            # a26 # r4050
            jump giantsk_s2

        'giantsk_s4_r4051{#giantsk_s4_r4051}' if giantskLogic.r4051_condition(): # 'Попробовать вытащить винты, держащие доспехи скелета.{#giantsk_s4_r4051}'
            # a27 # r4051
            jump giantsk_s3

        'giantsk_s4_r4052{#giantsk_s4_r4052}' if giantskLogic.r4052_condition(): # '«Эй, а как насчет ЭТОГО скелета, Морт? Пойдет такое тело?»{#giantsk_s4_r4052}'
            # a28 # r4052
            jump morte_s73  # EXTERN

        'giantsk_s4_r4053{#giantsk_s4_r4053}': # 'Оставить скелета в покое.{#giantsk_s4_r4053}'
            # a29 # r4053
            jump giantsk_dispose


# s5 # say4008
label giantsk_s5: # from 4.0
    'giantsk_s5{#giantsk_s5}'
    # nr 'Несмотря на почтенный возраст доспехов, за ними хорошо присматривали. Они ярко блестят, и символы, вырезанные на нагруднике, играют на свету, слегка подрагивая каждый раз, когда ты пытаешься сконцентрироваться на них.{#giantsk_s5_1}'

    menu:
        'giantsk_s5_r4054{#giantsk_s5_r4054}' if giantskLogic.r4054_condition(): # 'Изучить символы.{#giantsk_s5_r4054}'
            # a30 # r4054
            jump giantsk_s6

        'giantsk_s5_r4055{#giantsk_s5_r4055}' if giantskLogic.r4055_condition(): # 'Изучить символы.{#giantsk_s5_r4055}'
            # a31 # r4055
            jump giantsk_s6

        'giantsk_s5_r64293{#giantsk_s5_r64293}' if giantskLogic.r64293_condition(): # 'Изучить символы.{#giantsk_s5_r64293}'
            # a32 # r64293
            jump giantsk_s7

        'giantsk_s5_r4056{#giantsk_s5_r4056}' if giantskLogic.r4056_condition(): # 'Попробовать вытащить клинок из рук скелета.{#giantsk_s5_r4056}'
            # a33 # r4056
            jump giantsk_s2

        'giantsk_s5_r4057{#giantsk_s5_r4057}' if giantskLogic.r4057_condition(): # 'Попробовать вытащить клинок из рук скелета.{#giantsk_s5_r4057}'
            # a34 # r4057
            jump giantsk_s3

        'giantsk_s5_r4058{#giantsk_s5_r4058}' if giantskLogic.r4058_condition(): # 'Попробовать вытащить винты, держащие доспехи скелета.{#giantsk_s5_r4058}'
            # a35 # r4058
            jump giantsk_s2

        'giantsk_s5_r4059{#giantsk_s5_r4059}' if giantskLogic.r4059_condition(): # 'Попробовать вытащить винты, держащие доспехи скелета.{#giantsk_s5_r4059}'
            # a36 # r4059
            jump giantsk_s3

        'giantsk_s5_r4060{#giantsk_s5_r4060}' if giantskLogic.r4060_condition(): # '«Эй, а как насчет ЭТОГО скелета, Морт? Пойдет такое тело?»{#giantsk_s5_r4060}'
            # a37 # r4060
            jump morte_s73  # EXTERN

        'giantsk_s5_r4061{#giantsk_s5_r4061}': # 'Оставить скелета в покое.{#giantsk_s5_r4061}'
            # a38 # r4061
            jump giantsk_dispose


# s6 # say4009
label giantsk_s6: # from 5.0 5.1
    'giantsk_s6{#giantsk_s6}'
    # nr 'Почти неосознанно ты расслабляешь взгляд и оглядываешь символы. Спустя минуту символы перестают дрожать и превращаются в цепочку рун, бегущих вверх и вниз по нагруднику. Довольно странно, но цепляющиеся друг за друга руны напоминают тебе цепи… едва поняв это, неожиданно ты вспоминаешь, что эти руны являются какими-то охранными чарами.{#giantsk_s6_1}'

    menu:
        'giantsk_s6_r4062{#giantsk_s6_r4062}' if giantskLogic.r4062_condition(): # 'Изучить руны, попробовать вспомнить чары.{#giantsk_s6_r4062}'
            # a39 # r4062
            jump giantsk_s8

        'giantsk_s6_r4063{#giantsk_s6_r4063}' if giantskLogic.r4063_condition(): # 'Изучить руны, попробовать вспомнить чары.{#giantsk_s6_r4063}'
            # a40 # r4063
            jump giantsk_s7

        'giantsk_s6_r4064{#giantsk_s6_r4064}' if giantskLogic.r4064_condition(): # 'Попробовать вытащить клинок из рук скелета.{#giantsk_s6_r4064}'
            # a41 # r4064
            jump giantsk_s2

        'giantsk_s6_r4065{#giantsk_s6_r4065}' if giantskLogic.r4065_condition(): # 'Попробовать вытащить клинок из рук скелета.{#giantsk_s6_r4065}'
            # a42 # r4065
            jump giantsk_s3

        'giantsk_s6_r4066{#giantsk_s6_r4066}' if giantskLogic.r4066_condition(): # 'Попробовать вытащить винты, держащие доспехи скелета.{#giantsk_s6_r4066}'
            # a43 # r4066
            jump giantsk_s2

        'giantsk_s6_r4067{#giantsk_s6_r4067}' if giantskLogic.r4067_condition(): # 'Попробовать вытащить винты, держащие доспехи скелета.{#giantsk_s6_r4067}'
            # a44 # r4067
            jump giantsk_s3

        'giantsk_s6_r4068{#giantsk_s6_r4068}' if giantskLogic.r4068_condition(): # '«Эй, а как насчет ЭТОГО скелета, Морт? Пойдет такое тело?»{#giantsk_s6_r4068}'
            # a45 # r4068
            jump morte_s73  # EXTERN

        'giantsk_s6_r4069{#giantsk_s6_r4069}': # 'Оставить скелета в покое.{#giantsk_s6_r4069}'
            # a46 # r4069
            jump giantsk_dispose


# s7 # say4010
label giantsk_s7: # from 5.2 6.1 7.2
    'giantsk_s7{#giantsk_s7}'
    # nr 'Ты изучаешь руны некоторое время, но никак не можешь расшифровать чары. Они довольно сложно выглядят, и тебе приходится сильно сосредотачиваться.{#giantsk_s7_1}'

    menu:
        'giantsk_s7_r64294{#giantsk_s7_r64294}' if giantskLogic.r64294_condition(): # 'Сравнить руны с рунами в Книге Костей и Праха.{#giantsk_s7_r64294}'
            # a47 # r64294
            jump giantsk_s15

        'giantsk_s7_r4070{#giantsk_s7_r4070}': # 'Снова осмотреть скелет.{#giantsk_s7_r4070}'
            # a48 # r4070
            jump giantsk_s4

        'giantsk_s7_r4071{#giantsk_s7_r4071}': # 'Снова осмотреть руны.{#giantsk_s7_r4071}'
            # a49 # r4071
            jump giantsk_s7

        'giantsk_s7_r4072{#giantsk_s7_r4072}' if giantskLogic.r4072_condition(): # 'Попробовать вытащить клинок из рук скелета.{#giantsk_s7_r4072}'
            # a50 # r4072
            jump giantsk_s2

        'giantsk_s7_r4073{#giantsk_s7_r4073}' if giantskLogic.r4073_condition(): # 'Попробовать вытащить клинок из рук скелета.{#giantsk_s7_r4073}'
            # a51 # r4073
            jump giantsk_s3

        'giantsk_s7_r4074{#giantsk_s7_r4074}' if giantskLogic.r4074_condition(): # 'Попробовать вытащить винты, держащие доспехи скелета.{#giantsk_s7_r4074}'
            # a52 # r4074
            jump giantsk_s2

        'giantsk_s7_r4075{#giantsk_s7_r4075}' if giantskLogic.r4075_condition(): # 'Попробовать вытащить винты, держащие доспехи скелета.{#giantsk_s7_r4075}'
            # a53 # r4075
            jump giantsk_s3

        'giantsk_s7_r4076{#giantsk_s7_r4076}' if giantskLogic.r4076_condition(): # '«Эй, а как насчет ЭТОГО скелета, Морт? Пойдет такое тело?»{#giantsk_s7_r4076}'
            # a54 # r4076
            jump morte_s73  # EXTERN

        'giantsk_s7_r4077{#giantsk_s7_r4077}': # 'Оставить скелета в покое.{#giantsk_s7_r4077}'
            # a55 # r4077
            jump giantsk_dispose


# s8 # say4011
label giantsk_s8: # from 6.0
    'giantsk_s8{#giantsk_s8}'
    # nr 'Ты изучаешь образец рун, пробегающий через нагрудник. По своей сути они являются слабым защитным заклинанием, но несколько черепоподобных и шарообразных следов, идущих по краям доспехов заставляют тебя думать о более сильных наложенных некромантских и охранных заклинаниях. Если дотронуться до скелета, то, скорее всего, он пробудится… и будет защищаться.{#giantsk_s8_1}'

    menu:
        'giantsk_s8_r4079{#giantsk_s8_r4079}' if giantskLogic.r4079_condition(): # 'Попробовать, сможешь ли ты как-нибудь разрушить чары.{#giantsk_s8_r4079}'
            # a56 # r4079
            $ giantskLogic.r4079_action()
            jump giantsk_s9

        'giantsk_s8_r4080{#giantsk_s8_r4080}' if giantskLogic.r4080_condition(): # 'Попробовать, сможешь ли ты как-нибудь разрушить чары.{#giantsk_s8_r4080}'
            # a57 # r4080
            jump giantsk_s9

        'giantsk_s8_r4081{#giantsk_s8_r4081}' if giantskLogic.r4081_condition(): # 'Попробовать вытащить клинок из рук скелета.{#giantsk_s8_r4081}'
            # a58 # r4081
            jump giantsk_s2

        'giantsk_s8_r4082{#giantsk_s8_r4082}' if giantskLogic.r4082_condition(): # 'Попробовать вытащить клинок из рук скелета.{#giantsk_s8_r4082}'
            # a59 # r4082
            jump giantsk_s3

        'giantsk_s8_r4083{#giantsk_s8_r4083}' if giantskLogic.r4083_condition(): # 'Попробовать вытащить винты, держащие доспехи скелета.{#giantsk_s8_r4083}'
            # a60 # r4083
            jump giantsk_s2

        'giantsk_s8_r4084{#giantsk_s8_r4084}' if giantskLogic.r4084_condition(): # 'Попробовать вытащить винты, держащие доспехи скелета.{#giantsk_s8_r4084}'
            # a61 # r4084
            jump giantsk_s3

        'giantsk_s8_r4085{#giantsk_s8_r4085}' if giantskLogic.r4085_condition(): # '«Эй, а как насчет ЭТОГО скелета, Морт? Пойдет такое тело?»{#giantsk_s8_r4085}'
            # a62 # r4085
            jump morte_s73  # EXTERN

        'giantsk_s8_r4078{#giantsk_s8_r4078}': # 'Оставить скелета в покое.{#giantsk_s8_r4078}'
            # a63 # r4078
            jump giantsk_dispose


# s9 # say4012
label giantsk_s9: # from 0.3 1.1 8.0 8.1
    'giantsk_s9{#giantsk_s9}'
    # nr 'Ты думаешь, что если исказить образец рун на нагруднике, то заклинания будут разрушены, но это достаточно сложно… шаблон защищен, в нем присутствуют неверные символы, которые могут пробудить скелет.{#giantsk_s9_1}'

    menu:
        'giantsk_s9_r64296{#giantsk_s9_r64296}' if giantskLogic.r64296_condition(): # 'Сравнить образец заклинаний с Книгой Костей и Праха, определить, сможешь ли ты их разрушить.{#giantsk_s9_r64296}'
            # a64 # r64296
            jump giantsk_s16

        'giantsk_s9_r4086{#giantsk_s9_r4086}': # 'Сначала разрушить руны, поддерживающие защитное заклинание, затем — некромантское, а затем — охранное заклинание.{#giantsk_s9_r4086}'
            # a65 # r4086
            jump giantsk_s10

        'giantsk_s9_r4087{#giantsk_s9_r4087}' if giantskLogic.r4087_condition(): # 'Сначала разрушить руны, поддерживающие охранное заклинание, затем пройтись по рунному узору в обратном порядке, отменив некромантское, а затем — защитное заклинание.{#giantsk_s9_r4087}'
            # a66 # r4087
            $ giantskLogic.r4087_action()
            jump giantsk_s11

        'giantsk_s9_r4088{#giantsk_s9_r4088}' if giantskLogic.r4088_condition(): # 'Сначала разрушить руны, поддерживающие охранное заклинание, затем пройтись по рунному узору в обратном порядке, отменив некромантское, а затем — защитное заклинание.{#giantsk_s9_r4088}'
            # a67 # r4088
            $ giantskLogic.r4088_action()
            jump giantsk_s13

        'giantsk_s9_r4089{#giantsk_s9_r4089}' if giantskLogic.r4089_condition(): # 'Попробовать вытащить клинок из рук скелета.{#giantsk_s9_r4089}'
            # a68 # r4089
            jump giantsk_s2

        'giantsk_s9_r4090{#giantsk_s9_r4090}' if giantskLogic.r4090_condition(): # 'Попробовать вытащить клинок из рук скелета.{#giantsk_s9_r4090}'
            # a69 # r4090
            jump giantsk_s3

        'giantsk_s9_r4091{#giantsk_s9_r4091}' if giantskLogic.r4091_condition(): # 'Попробовать вытащить винты, держащие доспехи скелета.{#giantsk_s9_r4091}'
            # a70 # r4091
            jump giantsk_s2

        'giantsk_s9_r4092{#giantsk_s9_r4092}' if giantskLogic.r4092_condition(): # 'Попробовать вытащить винты, держащие доспехи скелета.{#giantsk_s9_r4092}'
            # a71 # r4092
            jump giantsk_s3

        'giantsk_s9_r4093{#giantsk_s9_r4093}' if giantskLogic.r4093_condition(): # '«Эй, а как насчет ЭТОГО скелета, Морт? Пойдет такое тело?»{#giantsk_s9_r4093}'
            # a72 # r4093
            jump morte_s73  # EXTERN

        'giantsk_s9_r4094{#giantsk_s9_r4094}': # 'Оставить скелета в покое.{#giantsk_s9_r4094}'
            # a73 # r4094
            jump giantsk_dispose


# s10 # say4013
label giantsk_s10: # from 9.1 16.0
    'giantsk_s10{#giantsk_s10}'
    # nr 'Как только ты начинаешь работать с рунами, украшающими нагрудник, по всему Моргу раздается звон железного колокола… а скелет моментально пробуждается, поднимая клинок в атаку!{#giantsk_s10_1}'

    menu:
        'giantsk_s10_r4095{#giantsk_s10_r4095}': # '«Лучше бы тебе оставаться мертвым, костяшка…»{#giantsk_s10_r4095}'
            # a74 # r4095
            $ giantskLogic.r4095_action()
            jump giantsk_dispose


# s11 # say4014
label giantsk_s11: # from 9.2 16.1
    'giantsk_s11{#giantsk_s11}'
    # nr 'Работа очень сложна, и поначалу ты несколько раз срываешься, но все же медленно, но верно твой разум начинает концентрироваться, и руны разрушаются под твоей атакой. Спустя несколько минут, ты избавляешь скелет от наложенных на него заклинаний. Падая на пол, он разваливается с сильным грохотом!{#giantsk_s11_1}'

    menu:
        'giantsk_s11_r4096{#giantsk_s11_r4096}': # '«Чертова куча костей!..»{#giantsk_s11_r4096}'
            # a75 # r4096
            $ giantskLogic.r4096_action()
            jump giantsk_s12


# s12 # say4015
label giantsk_s12: # from 11.0
    'giantsk_s12{#giantsk_s12}'
    # nr 'На секунду ты замираешь, но никто не обращает внимания на шум. Ты осматриваешь предметы, оставшиеся от скелета на полу. Большинство из них слишком тяжелые или слишком древние, чтобы ими воспользоваться, но ты обнаруживаешь часть нагрудника скелета с большей частью разрушенного заклинания, написанного на нем. Ты чувствуешь, что эта вещь может пригодиться.{#giantsk_s12_1}'

    menu:
        'giantsk_s12_r4097{#giantsk_s12_r4097}': # '«Возьму-ка я это…»{#giantsk_s12_r4097}'
            # a76 # r4097
            $ giantskLogic.r4097_action()
            jump giantsk_dispose


# s13 # say4016
label giantsk_s13: # from 9.3 16.2
    'giantsk_s13{#giantsk_s13}'
    # nr 'На этот раз снятие заклинаний заняло гораздо меньше времени, и руны быстро разрушаются под твоей атакой. Спустя несколько минут, ты избавляешь скелет от наложенных на него заклинаний. Помня о прошлом случае, ты подхватываешь скелет до того, как он упадет, и тяжело пыхтя, медленно кладешь его на пол.{#giantsk_s13_1}'

    menu:
        'giantsk_s13_r4098{#giantsk_s13_r4098}': # '«Посмотрим, что тут у нас на этот раз…»{#giantsk_s13_r4098}'
            # a77 # r4098
            $ giantskLogic.r4098_action()
            jump giantsk_s14


# s14 # say4017
label giantsk_s14: # from 13.0
    'giantsk_s14{#giantsk_s14}'
    # nr 'Ты быстро оглядываешь останки скелета и, как и в прошлый раз, обнаруживаешь часть нагрудника скелета… как и в первый раз, на нем высечен фрагмент разрушенного заклинания.{#giantsk_s14_1}'
    # nr 'Эта вещь может пригодиться.' # TODO [snow]: Прикрутить?

    menu:
        'giantsk_s14_r4099{#giantsk_s14_r4099}' if giantskLogic.r4099_condition(): # '«Возьму-ка я это…»{#giantsk_s14_r4099}'
            # a78 # r4099
            $ giantskLogic.r4099_action()
            jump giantsk_dispose

        'giantsk_s14_r4100{#giantsk_s14_r4100}' if giantskLogic.r4100_condition(): # '«Возьму-ка я это…»{#giantsk_s14_r4100}'
            # a79 # r4100
            $ giantskLogic.r4100_action()
            jump giantsk_dispose

        'giantsk_s14_r4101{#giantsk_s14_r4101}' if giantskLogic.r4101_condition(): # '«Возьму-ка я это…»{#giantsk_s14_r4101}'
            # a80 # r4101
            $ giantskLogic.r4101_action()
            jump giantsk_dispose


# s15 # say64295
label giantsk_s15: # from 7.0
    'giantsk_s15{#giantsk_s15}'
    # nr 'Ты сравниваешь диаграммы из книги с символами на нагруднике. Судя по всему, они являются слабым защитным заклинанием, но несколько сферических рисунков и рун в форме черепов, идущих по краям доспехов, наводят на мысль о более сильных некромантских и охранных заклинаниях. Если дотронуться до скелета, то, скорее всего, он пробудится… и будет защищаться.{#giantsk_s15_1}'

    menu:
        'giantsk_s15_r64298{#giantsk_s15_r64298}': # 'Заглянуть в Книгу Костей и Праха, посмотреть, можно ли их разрушить.{#giantsk_s15_r64298}'
            # a81 # r64298
            jump giantsk_s16

        'giantsk_s15_r64299{#giantsk_s15_r64299}': # 'Оставить руны в покое и осмотреть гигантского скелета еще раз.{#giantsk_s15_r64299}'
            # a82 # r64299
            jump giantsk_s4


# s16 # say64297
label giantsk_s16: # from 9.0 15.0
    'giantsk_s16{#giantsk_s16}'
    # nr 'Согласно Книге, защитное заклинание применено только к нагруднику, некромантское заклинание позволяет скелету пробудиться, однако охранное заклинание предоставляет скелету только ограниченные сведения об окружающей обстановке. Ты предполагаешь, что если сначала разрушить охранное заклинание, то это может быть расценено как атака… если только перед этим ты не скроешь свое присутствие.{#giantsk_s16_1}'

    menu:
        'giantsk_s16_r64300{#giantsk_s16_r64300}': # 'Сначала разрушить руны, поддерживающие защитное заклинание, затем — некромантское, а затем — охранное заклинание.{#giantsk_s16_r64300}'
            # a83 # r64300
            jump giantsk_s10

        'giantsk_s16_r64301{#giantsk_s16_r64301}' if giantskLogic.r64301_condition(): # 'Сначала разрушить руны, поддерживающие охранное заклинание, затем пройтись по рунному узору в обратном порядке, отменив некромантское, а затем — защитное заклинание.{#giantsk_s16_r64301}'
            # a84 # r64301
            $ giantskLogic.r64301_action()
            jump giantsk_s11

        'giantsk_s16_r64302{#giantsk_s16_r64302}' if giantskLogic.r64302_condition(): # 'Сначала разрушить руны, поддерживающие охранное заклинание, затем пройтись по рунному узору в обратном порядке, отменив некромантское, а затем — защитное заклинание.{#giantsk_s16_r64302}'
            # a85 # r64302
            $ giantskLogic.r64302_action()
            jump giantsk_s13

        'giantsk_s16_r64303{#giantsk_s16_r64303}': # 'Оставить руны в покое и осмотреть гигантского скелета еще раз.{#giantsk_s16_r64303}'
            # a86 # r64303
            jump giantsk_s4
