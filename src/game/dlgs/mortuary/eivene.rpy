init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.mortuary.EiveneLogic import (EiveneLogic)

    eiveneLogic = EiveneLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DEIVENE.DLG
# ###


# s0 # say3404
label eivene_s0: # - # IF ~  Global("EiVene","GLOBAL",0)
    'eivene_s0{#eivene_s0}'
    # nr 'Перед тобой хрупкая девушка с бледным лицом. Из-за впалой кожи на щеках и шее кажется, будто она голодает. Судя по всему, она увлечена обследованием тела, лежащим перед ней, тыкая по телу пальцем.{#eivene_s0_1}'

    menu:
        'eivene_s0_r3406{#eivene_s0_r3406}': # '«Приветствую».{#eivene_s0_r3406}'
            # a0 # r3406
            jump eivene_s1

        'eivene_s0_r3407{#eivene_s0_r3407}': # 'Оставить ее в покое.{#eivene_s0_r3407}'
            # a1 # r3407
            jump eivene_dispose


# s1 # say3410
label eivene_s1: # from 0.0
    'eivene_s1{#eivene_s1}'
    # nr 'Женщина не отвечает… похоже, она слишком увлечена трупом, лежащим перед ней. Следя за ее работой, ты случайно обращаешь внимание на ее руки… ее пальцы похожи на когти. Она с легкостью погружает их, словно ножи, в грудь трупа, доставая органы.{#eivene_s1_1}'

    menu:
        'eivene_s1_r3412{#eivene_s1_r3412}' if eiveneLogic.r3412_condition(): # '«Приветствую, говорю».{#eivene_s1_r3412}'
            # a2 # r3412
            jump eivene_s2

        'eivene_s1_r3413{#eivene_s1_r3413}' if eiveneLogic.r3413_condition(): # '«Приветствую, говорю».{#eivene_s1_r3413}'
            # a3 # r3413
            jump eivene_s3

        'eivene_s1_r3414{#eivene_s1_r3414}' if eiveneLogic.r3414_condition(): # '«Что с твоими руками?»{#eivene_s1_r3414}'
            # a4 # r3414
            jump eivene_s2

        'eivene_s1_r3415{#eivene_s1_r3415}' if eiveneLogic.r3415_condition(): # '«Что с твоими руками?»{#eivene_s1_r3415}'
            # a5 # r3415
            jump eivene_s19

        'eivene_s1_r3416{#eivene_s1_r3416}': # 'Оставить ее в покое.{#eivene_s1_r3416}'
            # a6 # r3416
            jump eivene_dispose


# s2 # say3417
label eivene_s2: # from 1.0 1.2
    'eivene_s2{#eivene_s2}'
    # nr 'Женщина не отвечает.{#eivene_s2_1}'

    menu:
        'eivene_s2_r3418{#eivene_s2_r3418}': # 'Прикоснуться к женщине, привлечь ее внимание.{#eivene_s2_r3418}'
            # a7 # r3418
            $ eiveneLogic.r3418_action()
            jump eivene_s4

        'eivene_s2_r3419{#eivene_s2_r3419}': # 'Оставить ее в покое.{#eivene_s2_r3419}'
            # a8 # r3419
            jump eivene_dispose


# s3 # say3420
label eivene_s3: # from 1.1
    'eivene_s3{#eivene_s3}'
    # nr 'Женщина не отвечает.{#eivene_s3_1}'

    jump morte_s55  # EXTERN


# s4 # say3421
label eivene_s4: # from 2.0
    'eivene_s4{#eivene_s4}'
    # nr 'Женщина вздрагивает и круто разворачивается к тебе… у нее тусклые желтые глаза с маленькими оранжевыми точками вместо зрачков. При виде тебя ее удивление сменяется раздраженностью, она хмуро смотрит на тебя.{#eivene_s4_1}'

    menu:
        'eivene_s4_r3422{#eivene_s4_r3422}': # '«Э… Приветствую».{#eivene_s4_r3422}'
            # a9 # r3422
            $ eiveneLogic.r3422_action()
            jump eivene_s5


# s5 # say3423
label eivene_s5: # from 4.0
    $ eiveneLogic.talk()
    'eivene_s5{#eivene_s5_1}'
    # nr 'Кажется, она тебя даже не слышала. Щурясь, она наклоняется вперед, как будто не может разглядеть тебя… что бы ни случилось с ее глазами, но ее вид с близкого расстояния вселяет страх.{#eivene_s5_1}'
    # eivene '«Ты».{#eivene_s5_2}'
    # nr 'Она соединяет когти вместе, затем делает странное движение рукой.{#eivene_s5_3}'
    $ eiveneLogic.set_know_eivene_name()
    $ achievement_meet_eivene.grant()
    'eivene_s5{#eivene_s5_2}'
    # eivene '«Найди НИТКУ и БАЛЬЗАМ, принеси СЮДА, к Эи-Вейн.  Пшел — пшел — пшел»{#eivene_s5_4}'

    menu:
        'eivene_s5_r3424{#eivene_s5_r3424}' if eiveneLogic.r3424_condition(): # 'Дать ей нитку и банку с бальзамирующей жидкостью.{#eivene_s5_r3424}'
            # a10 # r3424
            $ eiveneLogic.j37701_s5_r3424_action()
            $ eiveneLogic.r3424_action()
            jump eivene_s7

        'eivene_s5_r3425{#eivene_s5_r3425}' if eiveneLogic.r3425_condition(): # '«Сперва ответь на пару вопросов…»{#eivene_s5_r3425}'
            # a11 # r3425
            $ eiveneLogic.j37702_s5_r3425_action()
            jump eivene_s6

        'eivene_s5_r3426{#eivene_s5_r3426}' if eiveneLogic.r3426_condition(): # '«Сперва ответь на пару вопросов…»{#eivene_s5_r3426}'
            # a12 # r3426
            $ eiveneLogic.j37702_s5_r3426_action()
            jump eivene_s20

        'eivene_s5_r3427{#eivene_s5_r3427}' if eiveneLogic.r3427_condition(): # '«Что с твоими руками?»{#eivene_s5_r3427}'
            # a13 # r3427
            $ eiveneLogic.j37702_s5_r3427_action()
            jump eivene_s6

        'eivene_s5_r3428{#eivene_s5_r3428}' if eiveneLogic.r3428_condition(): # '«Что с твоими руками?»{#eivene_s5_r3428}'
            # a14 # r3428
            $ eiveneLogic.j37702_s5_r3428_action()
            jump eivene_s20

        'eivene_s5_r3429{#eivene_s5_r3429}': # 'Уйти.{#eivene_s5_r3429}'
            # a15 # r3429
            $ eiveneLogic.j37702_s5_r3429_action()
            jump eivene_dispose


# s6 # say3430
label eivene_s6: # from 5.1 5.3
    'eivene_s6{#eivene_s6}'
    # nr 'Она отворачивается… непохоже, чтобы она тебя услышала. Должно быть, ее слух не лучше зрения.{#eivene_s6_1}'

    menu:
        'eivene_s6_r3431{#eivene_s6_r3431}': # 'Коснуться ее плеча, привлечь ее внимание.{#eivene_s6_r3431}'
            # a16 # r3431
            jump eivene_s17

        'eivene_s6_r3432{#eivene_s6_r3432}': # 'Уйти.{#eivene_s6_r3432}'
            # a17 # r3432
            jump eivene_dispose


# s7 # say3433
label eivene_s7: # from 5.0 17.0
    'eivene_s7{#eivene_s7}'
    # nr 'Не теряя ни минуты, Эи-Вейн выхватывает нитку из твоих рук и цепляет на один из своих когтей, а затем начинает зашивать трупу грудь. Затем она берет бальзамирующую жидкость и начинает намазывать ею мертвеца.{#eivene_s7_1}'

    menu:
        'eivene_s7_r3434{#eivene_s7_r3434}': # 'Подождать.{#eivene_s7_r3434}'
            # a18 # r3434
            jump eivene_s9

        'eivene_s7_r3435{#eivene_s7_r3435}': # 'Уйти.{#eivene_s7_r3435}'
            # a19 # r3435
            jump eivene_s8


# s8 # say3436
label eivene_s8: # from 7.1
    'eivene_s8{#eivene_s8}'
    # nr 'Едва ты собираешься уйти, Эи-Вейн говорит.{#eivene_s8_1}'
    # eivene '«Стой. Ты следующий».{#eivene_s8_2}'

    menu:
        'eivene_s8_r3437{#eivene_s8_r3437}': # 'Подождать.{#eivene_s8_r3437}'
            # a20 # r3437
            jump eivene_s9

        'eivene_s8_r3438{#eivene_s8_r3438}': # 'Уйти. Быстро.{#eivene_s8_r3438}'
            # a21 # r3438
            jump eivene_dispose


# s9 # say3439
label eivene_s9: # from 7.0 8.0
    'eivene_s9{#eivene_s9}'
    # nr 'Спустя несколько минут она заканчивает. Щелкнув когтями, она поворачивается к тебе. К твоему удивлению, она протягивает руку и проводит когтями по твоим рукам и груди.{#eivene_s9_1}'

    menu:
        'eivene_s9_r3440{#eivene_s9_r3440}' if eiveneLogic.r3440_condition(): # '«Э, не то, чтобы я не польщен, но…»{#eivene_s9_r3440}'
            # a22 # r3440
            jump eivene_s11

        'eivene_s9_r3441{#eivene_s9_r3441}' if eiveneLogic.r3441_condition(): # '«Э, не то, чтобы я не польщен, но…»{#eivene_s9_r3441}'
            # a23 # r3441
            jump morte_s59  # EXTERN

        'eivene_s9_r3442{#eivene_s9_r3442}' if eiveneLogic.r3442_condition(): # 'Продолжать строить из себя зомби.{#eivene_s9_r3442}'
            # a24 # r3442
            jump eivene_s11

        'eivene_s9_r3443{#eivene_s9_r3443}' if eiveneLogic.r3443_condition(): # 'Продолжать строить из себя зомби.{#eivene_s9_r3443}'
            # a25 # r3443
            jump morte_s59  # EXTERN

        'eivene_s9_r3444{#eivene_s9_r3444}': # 'Оттолкнуть ее, уйти.{#eivene_s9_r3444}'
            # a26 # r3444
            jump eivene_s10


# s10 # say3445
label eivene_s10: # from 9.4 12.1
    'eivene_s10{#eivene_s10}'
    # nr 'Она потрясена тем, что ты ее оттолкнул.{#eivene_s10_1}'
    # eivene '«Зомфи? Ты не зомфи!»{#eivene_s10_2}'
    # nr 'Она отступает на шаг, и ты не успеваешь среагировать, как она трижды хлопает в ладони. В ответ повсюду Морге раздается звон огромного колокола.{#eivene_s10_3}'

    menu:
        'eivene_s10_r3491{#eivene_s10_r3491}': # '«Ну хорошо…»{#eivene_s10_r3491}'
            # a27 # r3491
            $ eiveneLogic.r3491_action()
            jump eivene_dispose


# s11 # say3446
label eivene_s11: # from 9.0 9.2
    'eivene_s11{#eivene_s11}'
    # nr 'Когда она касается твоих рук и тела, ты вдруг понимаешь, что она изучает твои шрамы. Она отводит свои когти, дважды ими щелкает, затем наклоняется вперед и осматривает татуировки на теле.{#eivene_s11_1}'
    # eivene '«Хм-м. Кто это так тебя изрисовал? Никакого уважения к зомфи. Зомфи — не картина».{#eivene_s11_2}'
    # nr 'Она принюхивается, затем похлопывает по твоим шрамам.{#eivene_s11_3}'
    # eivene '«Этот в плохой форме, много шрамов, не законсервирован».{#eivene_s11_4}'

    menu:
        'eivene_s11_r3447{#eivene_s11_r3447}': # 'Подождать.{#eivene_s11_r3447}'
            # a28 # r3447
            jump eivene_s12


# s12 # say3448
label eivene_s12: # from 11.0
    'eivene_s12{#eivene_s12}'
    # nr 'Неожиданно ее когти зацепляют нитку, которую ты принес, а другой рукой она молниеносно пронзает твою кожу в месте шрама. Не больнее, чем укол булавки. Кажется, она собирается тебя заштопать.{#eivene_s12_1}'

    menu:
        'eivene_s12_r3449{#eivene_s12_r3449}': # 'Позволить ей работать.{#eivene_s12_r3449}'
            # a29 # r3449
            $ eiveneLogic.r3449_action()
            jump eivene_s13

        'eivene_s12_r3450{#eivene_s12_r3450}': # 'Оттолкнуть ее, уйти.{#eivene_s12_r3450}'
            # a30 # r3450
            jump eivene_s10


# s13 # say3451
label eivene_s13: # from 12.0
    'eivene_s13{#eivene_s13}'
    # nr 'Эи-Вейн начинает зашивать твои шрамы; ощущения при этом на удивление безболезненны.  Закончив, она обнюхивает тебя, хмурится, затем окунает пальцы в бальзамирующую жидкость. В течении нескольких минут она наносит жидкость на твое тело… довольно странно, но ты чувствуешь себя *лучше*.{#eivene_s13_1}'

    menu:
        'eivene_s13_r3452{#eivene_s13_r3452}' if eiveneLogic.r3452_condition(): # 'Позволить ей работать.{#eivene_s13_r3452}'
            # a31 # r3452
            jump eivene_s14

        'eivene_s13_r3453{#eivene_s13_r3453}' if eiveneLogic.r3453_condition(): # 'Позволить ей работать.{#eivene_s13_r3453}'
            # a32 # r3453
            jump morte_s60  # EXTERN


# s14 # say3454
label eivene_s14: # from 13.0
    'eivene_s14{#eivene_s14}'
    # nr 'Эи-Вейн в последний раз прикасается к твоему телу, еще раз фыркает, кивает, а затем отмахивается своими когтями.{#eivene_s14_1}'
    # eivene '«Готово. Пшел-пшел».{#eivene_s14_2}'

    menu:
        'eivene_s14_r3456{#eivene_s14_r3456}' if eiveneLogic.r3456_condition(): # '«Минуточку». Жестом ты показываешь, как открываешь что-то ключом. «Мне нужен ключ от бальзамационной. У тебя он есть?»{#eivene_s14_r3456}'
            # a33 # r3456
            $ eiveneLogic.r3456_action()
            jump eivene_s18

        'eivene_s14_r3457{#eivene_s14_r3457}' if eiveneLogic.r3457_condition(): # '«Минуточку». Жестом ты показываешь, как открываешь что-то ключом. «Мне нужен ключ от бальзамационной. У тебя он есть?»{#eivene_s14_r3457}'
            # a34 # r3457
            jump eivene_s24

        'eivene_s14_r4350{#eivene_s14_r4350}': # 'Уйти.{#eivene_s14_r4350}'
            # a35 # r4350
            jump eivene_dispose


# s15 # say3458
label eivene_s15: # - # IF ~  Global("EiVene","GLOBAL",1)
    'eivene_s15{#eivene_s15}'
    # nr 'Перед тобой Эи-Вейн. Она все еще потрошит труп своими когтями. Ритм движений когтей что-то тебе напоминает, но ты не можешь вспомнить что.{#eivene_s15_1}'

    menu:
        'eivene_s15_r3459{#eivene_s15_r3459}' if eiveneLogic.r3459_condition(): # 'Наблюдать за ней, изучая движения ее рук.{#eivene_s15_r3459}'
            # a36 # r3459
            $ eiveneLogic.j61612_s15_r3459_action()
            $ eiveneLogic.r3459_action()
            jump eivene_s16

        'eivene_s15_r3463{#eivene_s15_r3463}' if eiveneLogic.r3463_condition(): # 'Коснуться ее плеча, привлечь ее внимание.{#eivene_s15_r3463}'
            # a37 # r3463
            jump eivene_s17

        'eivene_s15_r4351{#eivene_s15_r4351}' if eiveneLogic.r4351_condition(): # 'Коснуться ее плеча, привлечь ее внимание.{#eivene_s15_r4351}'
            # a38 # r4351
            jump eivene_s22

        'eivene_s15_r4352{#eivene_s15_r4352}': # 'Уйти.{#eivene_s15_r4352}'
            # a39 # r4352
            jump eivene_dispose


# s16 # say3464
label eivene_s16: # from 15.0
    'eivene_s16{#eivene_s16}'
    # nr 'Наблюдая за движением рук Эи-Вейн, ты чувствуешь покалывание в голове. Внезапно у тебя в глазах все начинает размываться и плыть…{#eivene_s16_1}'

    $ eiveneLogic.s16_action()
    jump eivene_s26


# s17 # say3468
label eivene_s17: # from 6.0 15.1 25.0 27.0
    $ eiveneLogic.talk()
    'eivene_s17{#eivene_s17}'
    # nr 'Заметив тебя, она поворачивается, а затем хмурится.{#eivene_s17_1}'
    # eivene '«Тупые зомфи».{#eivene_s17_2}'
    # nr 'Она нетерпеливо щелкает когтистыми пальцами, а затем делает движение рукой, как будто что-то зашивает.{#eivene_s17_3}'
    # eivene '«Найди нитку и бальзам, принеси сюда, к Эи-Вейн. Пшел-пшел-пшел».{#eivene_s17_4}'

    menu:
        'eivene_s17_r3469{#eivene_s17_r3469}' if eiveneLogic.r3469_condition(): # 'Дать ей нитку и банку с бальзамирующей жидкостью.{#eivene_s17_r3469}'
            # a40 # r3469
            $ eiveneLogic.j38202_s17_r3469_action()
            $ eiveneLogic.r3469_action()
            jump eivene_s7

        'eivene_s17_r3470{#eivene_s17_r3470}' if eiveneLogic.r3470_condition(): # '«Минуточку». Жестом ты показываешь, как открываешь что-то ключом. «Мне нужен ключ от бальзамационной. У тебя он есть?»{#eivene_s17_r3470}'
            # a41 # r3470
            $ eiveneLogic.r3470_action()
            jump eivene_s18

        'eivene_s17_r3497{#eivene_s17_r3497}' if eiveneLogic.r3497_condition(): # '«Минуточку». Жестом ты показываешь, как открываешь что-то ключом. «Мне нужен ключ от бальзамационной. У тебя он есть?»{#eivene_s17_r3497}'
            # a42 # r3497
            jump eivene_s24

        'eivene_s17_r4357{#eivene_s17_r4357}': # 'Уйти.{#eivene_s17_r4357}'
            # a43 # r4357
            jump eivene_dispose


# s18 # say3471
label eivene_s18: # from 14.0 17.1 22.0
    'eivene_s18{#eivene_s18}'
    # nr 'Она наклоняется вперед, присматриваясь к твоему жесту, затем фыркает. Ее рука скрывается в одежде, затем появляется вместе с ключом, висящим на ее угрожающе-остром когте. Она кладет его тебе на ладонь.{#eivene_s18_1}'
    # eivene '«Принеси потом обратно. Пшел-пшел».{#eivene_s18_2}' # TODO [snow]: дописать, что ключ можно вернуть

    menu:
        'eivene_s18_r3494{#eivene_s18_r3494}' if eiveneLogic.r3494_condition(): # '«Что с твоими руками?»{#eivene_s18_r3494}'
            # a44 # r3494
            $ eiveneLogic.j38203_s18_r3494_action()
            jump eivene_s23

        'eivene_s18_r3495{#eivene_s18_r3495}' if eiveneLogic.r3495_condition(): # '«Что с твоими руками?»{#eivene_s18_r3495}'
            # a45 # r3495
            $ eiveneLogic.j38203_s18_r3495_action()
            jump eivene_s21

        'eivene_s18_r3496{#eivene_s18_r3496}': # 'Уйти.{#eivene_s18_r3496}'
            # a46 # r3496
            $ eiveneLogic.j38203_s18_r3496_action()
            jump eivene_dispose


# s19 # say3472
label eivene_s19: # from 1.3
    'eivene_s19{#eivene_s19}'
    # nr 'Женщина не отвечает.{#eivene_s19_1}'

    $ eiveneLogic.j38205_s19_action()
    jump morte_s56  # EXTERN


# s20 # say3485
label eivene_s20: # from 5.2 5.4
    'eivene_s20{#eivene_s20}'
    # nr 'Она отворачивается… непохоже, чтобы она тебя услышала.{#eivene_s20_1}'

    jump morte_s57  # EXTERN


# s21 # say3486
label eivene_s21: # from 18.1
    'eivene_s21{#eivene_s21}'
    # nr 'Она отворачивается… непохоже, чтобы она тебя услышала. Должно быть, ее слух не лучше зрения.{#eivene_s21_1}'

    $ eiveneLogic.j38205_s21_action()
    jump morte_s58  # EXTERN


# s22 # say3493
label eivene_s22: # from 15.2 25.1 27.1
    $ eiveneLogic.talk()
    'eivene_s22{#eivene_s22}'
    # nr 'Заметив тебя, она поворачивается, а затем хмурится.{#eivene_s22_1}'
    # eivene '«Тупые зомфи».{#eivene_s22_2}'
    # nr 'Она нетерпеливо щелкает когтистыми пальцами, а затем делает движение рукой, как будто что-то зашивает.{#eivene_s22_3}'
    # eivene '«Ты готов. Все зашито. Пшел-пшел-пшел».{#eivene_s22_4}'

    menu:
        'eivene_s22_r3501{#eivene_s22_r3501}' if eiveneLogic.r3501_condition(): # '«Минуточку». Жестом ты показываешь, как открываешь что-то ключом. «Мне нужен ключ от бальзамационной. У тебя он есть?»{#eivene_s22_r3501}'
            # a47 # r3501
            $ eiveneLogic.r3501_action()
            jump eivene_s18

        'eivene_s22_r3502{#eivene_s22_r3502}' if eiveneLogic.r3502_condition(): # '«Минуточку». Жестом ты показываешь, как открываешь что-то ключом. «Мне нужен ключ от бальзамационной. У тебя он есть?»{#eivene_s22_r3502}'
            # a48 # r3502
            jump eivene_s24

        'eivene_s22_r4358{#eivene_s22_r4358}': # 'Уйти.{#eivene_s22_r4358}'
            # a49 # r4358
            jump eivene_dispose


# s23 # say3498
label eivene_s23: # from 18.0
    'eivene_s23{#eivene_s23}'
    # nr 'Она отворачивается… непохоже, чтобы она тебя услышала. Должно быть, ее слух не лучше зрения.{#eivene_s23_1}'

    menu:
        'eivene_s23_r3499{#eivene_s23_r3499}': # 'Уйти.{#eivene_s23_r3499}'
            # a50 # r3499
            jump eivene_dispose


# s24 # say4200
label eivene_s24: # from 14.1 17.2 22.1
    'eivene_s24{#eivene_s24}'
    # nr 'Она наклоняется вперед, присматриваясь к твоему жесту, затем фыркает. Ее рука скрывается в одежде, что-то ищет, затем она пожимает плечами.{#eivene_s24_1}'
    # eivene '«Ключа нет».{#eivene_s24_2}'
    # nr 'Она делает отгоняющее движение.{#eivene_s24_3}'
    # eivene '«Пшел-пшел-пшел».{#eivene_s24_4}'

    menu:
        'eivene_s24_r4201{#eivene_s24_r4201}': # 'Уйти.{#eivene_s24_r4201}'
            # a51 # r4201
            jump eivene_dispose


# s25 # say4353
label eivene_s25: # -
    'eivene_s25{#eivene_s25}'
    # nr 'Некоторое время ты наблюдаешь за ней; под ритм движения ее рук в твоей памяти всплывает два эпизода. В одном из них ты играешь на каком-то струнном инструменте, похожим на арфу. В другом кто-то ворует чей-то кошелек… к твоему удивлению, это воспоминание внезапно толкает тебя на осмотр карманов Эи-Вейн.{#eivene_s25_1}'

    menu:
        'eivene_s25_r4354{#eivene_s25_r4354}' if eiveneLogic.r4354_condition(): # 'Коснуться ее плеча, привлечь ее внимание.{#eivene_s25_r4354}'
            # a52 # r4354
            jump eivene_s17

        'eivene_s25_r4355{#eivene_s25_r4355}' if eiveneLogic.r4355_condition(): # 'Коснуться ее плеча, привлечь ее внимание.{#eivene_s25_r4355}'
            # a53 # r4355
            jump eivene_s22

        'eivene_s25_r4356{#eivene_s25_r4356}': # 'Уйти.{#eivene_s25_r4356}'
            # a54 # r4356
            jump eivene_dispose


# s26 # say63477
label eivene_s26: # from 16.0
    'eivene_s26{#eivene_s26}'
    # nr '…ты стоишь перед свежеубитым телом; предсмертная судорога оставила издевательскую улыбку на его лице. К черепу пришит номер «42». Ты только что зашил тело зомби, лежащего на плите. Ты кое-что оставил внутри, что-то, что может пригодиться в случае, если ты снова вернешься сюда…{#eivene_s26_1}'

    menu:
        'eivene_s26_r63478{#eivene_s26_r63478}' if eiveneLogic.r63478_condition(): # 'Эхо: «Храни это, пока я не вернусь».{#eivene_s26_r63478}'
            # a55 # r63478
            $ eiveneLogic.r63478_action()
            jump eivene_s27

        'eivene_s26_r63479{#eivene_s26_r63479}' if eiveneLogic.r63479_condition(): # 'Эхо: «Храни это, пока я не вернусь».{#eivene_s26_r63479}'
            # a56 # r63479
            jump eivene_s27


# s27 # say63480
label eivene_s27: # from 26.0 26.1
    'eivene_s27{#eivene_s27}'
    # nr 'В памяти эхом отозвался твой голос, странный и пустой. Ты скрещиваешь руки перед собой, и, к твоему удивлению, труп повторяет твое движение. Секунду спустя его руки падают по швам и видение меркнет… ты снова наблюдаешь, как руки Эи-Вейн зашивают тело.{#eivene_s27_1}'

    menu:
        'eivene_s27_r63482{#eivene_s27_r63482}' if eiveneLogic.r63482_condition(): # 'Коснуться ее плеча, привлечь ее внимание.{#eivene_s27_r63482}'
            # a57 # r63482
            jump eivene_s17

        'eivene_s27_r63481{#eivene_s27_r63481}' if eiveneLogic.r63481_condition(): # 'Коснуться ее плеча, привлечь ее внимание.{#eivene_s27_r63481}'
            # a58 # r63481
            jump eivene_s22

        'eivene_s27_r63483{#eivene_s27_r63483}': # 'Уйти.{#eivene_s27_r63483}'
            # a59 # r63483
            jump eivene_dispose
