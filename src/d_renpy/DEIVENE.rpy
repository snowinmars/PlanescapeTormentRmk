init 10 python:
    from dlgs.eivene_logic import EiveneLogic
    eiveneLogic = EiveneLogic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/EIVENE.DLG
# ###


label eivene_init:
    return


label eivene_dispose:
    jump show_graphics_menu


# s0 # say3404
label eivene_s0:  # - # IF ~  Global("EiVene","GLOBAL",0)
    SPEAKER 'Перед тобой хрупкая девушка с бледным лицом. Из-за впалой кожи на щеках и шее кажется, будто она голодает. Судя по всему, она увлечена обследованием тела, лежащим перед ней, тыкая по телу пальцем.'

    menu:
        'Приветствую.':
            # r0 # reply3406
            jump eivene_s1

        'Оставить ее в покое.':
            # r1 # reply3407
            jump eivene_dispose


# s1 # say3410
label eivene_s1:  # from 0.0
    SPEAKER 'Женщина не отвечает… похоже, она слишком увлечена трупом, лежащим перед ней. Следя за ее работой, ты случайно обращаешь внимание на ее руки… ее пальцы похожи на когти. Она с легкостью погружает их, словно ножи, в грудь трупа, доставая органы.'

    menu:
        'Приветствую, говорю.' if eiveneLogic.r3412_condition():
            # r2 # reply3412
            jump eivene_s2

        'Приветствую, говорю.' if eiveneLogic.r3413_condition():
            # r3 # reply3413
            jump eivene_s3

        'Что с твоими руками?' if eiveneLogic.r3414_condition():
            # r4 # reply3414
            jump eivene_s2

        'Что с твоими руками?' if eiveneLogic.r3415_condition():
            # r5 # reply3415
            jump eivene_s19

        'Оставить ее в покое.':
            # r6 # reply3416
            jump eivene_dispose


# s2 # say3417
label eivene_s2:  # from 1.0 1.2
    SPEAKER 'Женщина не отвечает.'

    menu:
        'Прикоснуться к женщине, привлечь ее внимание.':
            # r7 # reply3418
            $ eiveneLogic.r3418_action()
            jump eivene_s4

        'Оставить ее в покое.':
            # r8 # reply3419
            jump eivene_dispose


# s3 # say3420
label eivene_s3:  # from 1.1 # Check EXTERN ~DMORTE~ : 55
    SPEAKER 'Женщина не отвечает.'

    jump eivene_dispose

# s4 # say3421
label eivene_s4:  # from 2.0
    SPEAKER 'Женщина вздрагивает и круто разворачивается к тебе… у нее тусклые желтые глаза с маленькими оранжевыми точками вместо зрачков. При виде тебя ее удивление сменяется раздраженностью, она хмуро смотрит на тебя.'

    menu:
        'Э… Приветствую.':
            # r9 # reply3422
            $ eiveneLogic.r3422_action()
            jump eivene_s5


# s5 # say3423
label eivene_s5:  # from 4.0
    SPEAKER 'Кажется, она тебя даже не слышала. Щурясь, она наклоняется вперед, как будто не может разглядеть тебя… что бы ни случилось с ее глазами, но ее вид с близкого расстояния вселяет страх. Ты. Она соединяет когти вместе, затем делает странное движение рукой. Найди НИТКУ и БАЛЬЗАМ, принеси СЮДА, к Эи-Вейн. Пшел — пшел — пшел.'

    menu:
        'Дать ей нитку и банку с бальзамирующей жидкостью.' if eiveneLogic.r3424_condition():
            # r10 # reply3424
            $ eiveneLogic.r3424_action()
            jump eivene_s7

        'Сперва ответь на пару вопросов…' if eiveneLogic.r3425_condition():
            # r11 # reply3425
            $ eiveneLogic.r3425_action()
            jump eivene_s6

        'Сперва ответь на пару вопросов…' if eiveneLogic.r3426_condition():
            # r12 # reply3426
            $ eiveneLogic.r3426_action()
            jump eivene_s20

        'Что с твоими руками?' if eiveneLogic.r3427_condition():
            # r13 # reply3427
            $ eiveneLogic.r3427_action()
            jump eivene_s6

        'Что с твоими руками?' if eiveneLogic.r3428_condition():
            # r14 # reply3428
            $ eiveneLogic.r3428_action()
            jump eivene_s20

        'Уйти.':
            # r15 # reply3429
            $ eiveneLogic.r3429_action()
            jump eivene_dispose


# s6 # say3430
label eivene_s6:  # from 5.1 5.3
    SPEAKER 'Она отворачивается… непохоже, чтобы она тебя услышала. Должно быть, ее слух не лучше зрения.'

    menu:
        'Коснуться ее плеча, привлечь ее внимание.':
            # r16 # reply3431
            jump eivene_s17

        'Уйти.':
            # r17 # reply3432
            jump eivene_dispose


# s7 # say3433
label eivene_s7:  # from 5.0 17.0
    SPEAKER 'Не теряя ни минуты, Эи-Вейн выхватывает нитку из твоих рук и цепляет на один из своих когтей, а затем начинает зашивать трупу грудь. Затем она берет бальзамирующую жидкость и начинает намазывать ею мертвеца.'

    menu:
        'Подождать.':
            # r18 # reply3434
            jump eivene_s9

        'Уйти.':
            # r19 # reply3435
            jump eivene_s8


# s8 # say3436
label eivene_s8:  # from 7.1
    SPEAKER 'Едва ты собираешься уйти, Эи-Вейн говорит: Стой. Ты следующий.'

    menu:
        'Подождать.':
            # r20 # reply3437
            jump eivene_s9

        'Уйти. Быстро.':
            # r21 # reply3438
            jump eivene_dispose


# s9 # say3439
label eivene_s9:  # from 7.0 8.0 # Check EXTERN ~DMORTE~ : 59
    SPEAKER 'Спустя несколько минут она заканчивает. Щелкнув когтями, она поворачивается к тебе. К твоему удивлению, она протягивает руку и проводит когтями по твоим рукам и груди.'

    menu:
        'Э, не то, чтобы я не польщен, но…' if eiveneLogic.r3440_condition():
            # r22 # reply3440
            jump eivene_s11

        'Э, не то, чтобы я не польщен, но…' if eiveneLogic.r3441_condition():
            # r23 # reply3441
            jump eivene_dispose

        'Продолжать строить из себя зомби.' if eiveneLogic.r3442_condition():
            # r24 # reply3442
            jump eivene_s11

        'Продолжать строить из себя зомби.' if eiveneLogic.r3443_condition():
            # r25 # reply3443
            jump eivene_dispose

        'Оттолкнуть ее, уйти.':
            # r26 # reply3444
            jump eivene_s10


# s10 # say3445
label eivene_s10:  # from 9.4 12.1
    SPEAKER 'Она потрясена тем, что ты ее оттолкнул. Зомфи? Ты не зомфи! Она отступает на шаг, и ты не успеваешь среагировать, как она трижды хлопает в ладони. В ответ повсюду Морге раздается звон огромного колокола.'

    menu:
        'Ну хорошо…':
            # r27 # reply3491
            $ eiveneLogic.r3491_action()
            jump eivene_dispose


# s11 # say3446
label eivene_s11:  # from 9.0 9.2
    SPEAKER 'Когда она касается твоих рук и тела, ты вдруг понимаешь, что она изучает твои шрамы. Она отводит свои когти, дважды ими щелкает, затем наклоняется вперед и осматривает татуировки на теле. Хм-м. Кто это так тебя изрисовал? Никакого уважения к зомфи. Зомфи — не картина. Она принюхивается, затем похлопывает по твоим шрамам. Этот в плохой форме, много шрамов, не законсервирован.'

    menu:
        'Подождать.':
            # r28 # reply3447
            jump eivene_s12


# s12 # say3448
label eivene_s12:  # from 11.0
    SPEAKER 'Неожиданно ее когти зацепляют нитку, которую ты принес, а другой рукой она молниеносно пронзает твою кожу в месте шрама. Не больнее, чем укол булавки. Кажется, она собирается тебя заштопать.'

    menu:
        'Позволить ей работать.':
            # r29 # reply3449
            $ eiveneLogic.r3449_action()
            jump eivene_s13

        'Оттолкнуть ее, уйти.':
            # r30 # reply3450
            jump eivene_s10


# s13 # say3451
label eivene_s13:  # from 12.0 # Check EXTERN ~DMORTE~ : 60
    SPEAKER 'Эи-Вейн начинает зашивать твои шрамы; ощущения при этом на удивление безболезненны.  Закончив, она обнюхивает тебя, хмурится, затем окунает пальцы в бальзамирующую жидкость. В течении нескольких минут она наносит жидкость на твое тело… довольно странно, но ты чувствуешь себя *лучше*.'

    menu:
        'Позволить ей работать.' if eiveneLogic.r3452_condition():
            # r31 # reply3452
            jump eivene_s14

        'Позволить ей работать.' if eiveneLogic.r3453_condition():
            # r32 # reply3453
            jump eivene_dispose


# s14 # say3454
label eivene_s14:  # from 13.0
    SPEAKER 'Эи-Вейн в последний раз прикасается к твоему телу, еще раз фыркает, кивает, а затем отмахивается своими когтями. Готово. Пшел-пшел.'

    menu:
        'Минуточку. Жестом ты показываешь, как открываешь что-то ключом. Мне нужен ключ от бальзамационной. У тебя он есть?' if eiveneLogic.r3456_condition():
            # r33 # reply3456
            $ eiveneLogic.r3456_action()
            jump eivene_s18

        'Минуточку. Жестом ты показываешь, как открываешь что-то ключом. Мне нужен ключ от бальзамационной. У тебя он есть?' if eiveneLogic.r3457_condition():
            # r34 # reply3457
            jump eivene_s24

        'Уйти.':
            # r35 # reply4350
            jump eivene_dispose


# s15 # say3458
label eivene_s15:  # - # IF ~  Global("EiVene","GLOBAL",1)
    SPEAKER 'Перед тобой Эи-Вейн. Она все еще потрошит труп своими когтями. Ритм движений когтей что-то тебе напоминает, но ты не можешь вспомнить что.'

    menu:
        'Наблюдать за ней, изучая движения ее рук.' if eiveneLogic.r3459_condition():
            # r36 # reply3459
            $ eiveneLogic.r3459_action()
            jump eivene_s16

        'Коснуться ее плеча, привлечь ее внимание.' if eiveneLogic.r3463_condition():
            # r37 # reply3463
            jump eivene_s17

        'Коснуться ее плеча, привлечь ее внимание.' if eiveneLogic.r4351_condition():
            # r38 # reply4351
            jump eivene_s22

        'Уйти.':
            # r39 # reply4352
            jump eivene_dispose


# s16 # say3464
label eivene_s16:  # from 15.0 # ~FadeToColor([20.0],0) Wait(3) FadeFromColor([20.0],0) Wait(3) ~ GOTO 26
    SPEAKER 'Наблюдая за движением рук Эи-Вейн, ты чувствуешь покалывание в голове. Внезапно у тебя в глазах все начинает размываться и плыть…'

    jump eivene_dispose

# s17 # say3468
label eivene_s17:  # from 6.0 15.1 25.0 27.0
    SPEAKER 'Заметив тебя, она поворачивается, а затем хмурится. Тупые зомфи. Она нетерпеливо щелкает когтистыми пальцами, а затем делает движение рукой, как будто что-то зашивает. Найди нитку и бальзам, принеси сюда, к Эи-Вейн. Пшел-пшел-пшел.'

    menu:
        'Дать ей нитку и банку с бальзамирующей жидкостью.' if eiveneLogic.r3469_condition():
            # r40 # reply3469
            $ eiveneLogic.r3469_action()
            jump eivene_s7

        'Минуточку. Жестом ты показываешь, как открываешь что-то ключом. Мне нужен ключ от бальзамационной. У тебя он есть?' if eiveneLogic.r3470_condition():
            # r41 # reply3470
            $ eiveneLogic.r3470_action()
            jump eivene_s18

        'Минуточку. Жестом ты показываешь, как открываешь что-то ключом. Мне нужен ключ от бальзамационной. У тебя он есть?' if eiveneLogic.r3497_condition():
            # r42 # reply3497
            jump eivene_s24

        'Уйти.':
            # r43 # reply4357
            jump eivene_dispose


# s18 # say3471
label eivene_s18:  # from 14.0 17.1 22.0
    SPEAKER 'Она наклоняется вперед, присматриваясь к твоему жесту, затем фыркает. Ее рука скрывается в одежде, затем появляется вместе с ключом, висящим на ее угрожающе-остром когте. Она кладет его тебе на ладонь. Принеси потом обратно. Пшел-пшел.'

    menu:
        'Что с твоими руками?' if eiveneLogic.r3494_condition():
            # r44 # reply3494
            $ eiveneLogic.r3494_action()
            jump eivene_s23

        'Что с твоими руками?' if eiveneLogic.r3495_condition():
            # r45 # reply3495
            $ eiveneLogic.r3495_action()
            jump eivene_s21

        'Уйти.':
            # r46 # reply3496
            $ eiveneLogic.r3496_action()
            jump eivene_dispose


# s19 # say3472
label eivene_s19:  # from 1.3 # Check EXTERN ~DMORTE~ : 56
    SPEAKER 'Женщина не отвечает.'

    jump eivene_dispose

# s20 # say3485
label eivene_s20:  # from 5.2 5.4 # Check EXTERN ~DMORTE~ : 57
    SPEAKER 'Она отворачивается… непохоже, чтобы она тебя услышала.'

    jump eivene_dispose

# s21 # say3486
label eivene_s21:  # from 18.1 # Check EXTERN ~DMORTE~ : 58
    SPEAKER 'Она отворачивается… непохоже, чтобы она тебя услышала. Должно быть, ее слух не лучше зрения.'

    jump eivene_dispose

# s22 # say3493
label eivene_s22:  # from 15.2 25.1 27.1
    SPEAKER 'Заметив тебя, она поворачивается, а затем хмурится. Тупые зомфи. Она нетерпеливо щелкает когтистыми пальцами, а затем делает движение рукой, как будто что-то зашивает. Ты готов. Все зашито. Пшел-пшел-пшел.'

    menu:
        'Минуточку. Жестом ты показываешь, как открываешь что-то ключом. Мне нужен ключ от бальзамационной. У тебя он есть?' if eiveneLogic.r3501_condition():
            # r47 # reply3501
            $ eiveneLogic.r3501_action()
            jump eivene_s18

        'Минуточку. Жестом ты показываешь, как открываешь что-то ключом. Мне нужен ключ от бальзамационной. У тебя он есть?' if eiveneLogic.r3502_condition():
            # r48 # reply3502
            jump eivene_s24

        'Уйти.':
            # r49 # reply4358
            jump eivene_dispose


# s23 # say3498
label eivene_s23:  # from 18.0
    SPEAKER 'Она отворачивается… непохоже, чтобы она тебя услышала. Должно быть, ее слух не лучше зрения.'

    menu:
        'Уйти.':
            # r50 # reply3499
            jump eivene_dispose


# s24 # say4200
label eivene_s24:  # from 14.1 17.2 22.1
    SPEAKER 'Она наклоняется вперед, присматриваясь к твоему жесту, затем фыркает. Ее рука скрывается в одежде, что-то ищет, затем она пожимает плечами. Ключа нет. Она делает отгоняющее движение. Пшел-пшел-пшел.'

    menu:
        'Уйти.':
            # r51 # reply4201
            jump eivene_dispose


# s25 # say4353
label eivene_s25:  # -
    SPEAKER 'Некоторое время ты наблюдаешь за ней; под ритм движения ее рук в твоей памяти всплывает два эпизода. В одном из них ты играешь на каком-то струнном инструменте, похожим на арфу. В другом кто-то ворует чей-то кошелек… к твоему удивлению, это воспоминание внезапно толкает тебя на осмотр карманов Эи-Вейн.'

    menu:
        'Коснуться ее плеча, привлечь ее внимание.' if eiveneLogic.r4354_condition():
            # r52 # reply4354
            jump eivene_s17

        'Коснуться ее плеча, привлечь ее внимание.' if eiveneLogic.r4355_condition():
            # r53 # reply4355
            jump eivene_s22

        'Уйти.':
            # r54 # reply4356
            jump eivene_dispose


# s26 # say63477
label eivene_s26:  # from 16.0
    SPEAKER '…ты стоишь перед свежеубитым телом; предсмертная судорога оставила издевательскую улыбку на его лице. К черепу пришит номер 42. Ты только что зашил тело зомби, лежащего на плите. Ты кое-что оставил внутри, что-то, что может пригодиться в случае, если ты снова вернешься сюда…'

    menu:
        'Эхо: Храни это, пока я не вернусь.' if eiveneLogic.r63478_condition():
            # r55 # reply63478
            $ eiveneLogic.r63478_action()
            jump eivene_s27

        'Эхо: Храни это, пока я не вернусь.' if eiveneLogic.r63479_condition():
            # r56 # reply63479
            jump eivene_s27


# s27 # say63480
label eivene_s27:  # from 26.0 26.1
    SPEAKER 'В памяти эхом отозвался твой голос, странный и пустой. Ты скрещиваешь руки перед собой, и, к твоему удивлению, труп повторяет твое движение. Секунду спустя его руки падают по швам и видение меркнет… ты снова наблюдаешь, как руки Эи-Вейн зашивают тело.'

    menu:
        'Коснуться ее плеча, привлечь ее внимание.' if eiveneLogic.r63482_condition():
            # r57 # reply63482
            jump eivene_s17

        'Коснуться ее плеча, привлечь ее внимание.' if eiveneLogic.r63481_condition():
            # r58 # reply63481
            jump eivene_s22

        'Уйти.':
            # r59 # reply63483
            jump eivene_dispose
