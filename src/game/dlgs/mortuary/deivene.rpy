init 10 python:
    from dlgs.mortuary.deivene_logic import DeiveneLogic
    deiveneLogic = DeiveneLogic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/DEIVENE.DLG
# ###


label start_deivene_talk_first:
    call deivene_init
    jump deivene_s0
label start_deivene_talk:
    call deivene_init
    jump deivene_s15
label start_deivene_kill_first:
    call deivene_init
    jump deivene_kill_first
label start_deivene_kill:
    call deivene_init
    jump deivene_kill
label deivene_init:
    $ deiveneLogic.eivene_init()
    scene bg mortuary_f2r5
    show eivene_img default at center_left_down
    return
label deivene_dispose:
    hide eivene_img
    jump show_graphics_menu


# s0 # say3404
label deivene_s0:  # - # IF ~  Global("EiVene","GLOBAL",0)
    call deivene_init
    teller 'Перед тобой хрупкая девушка с бледным лицом. Из-за впалой кожи на щеках и шее кажется, будто она голодает.'
    teller 'Судя по всему, она увлечена обследованием тела, лежащим перед ней, тыкая по телу пальцем.'

    menu:
        'Приветствую.':
            # r0 # reply3406
            jump deivene_s1

        'Оставить ее в покое.':
            # r1 # reply3407
            jump deivene_dispose


# s1 # say3410
label deivene_s1:  # from 0.0
    teller 'Женщина не отвечает… похоже, она слишком увлечена трупом, лежащим перед ней. Следя за ее работой, ты случайно обращаешь внимание на ее руки…'
    teller '…ее пальцы похожи на когти. Она с легкостью погружает их, словно ножи, в грудь трупа, доставая органы.'
    menu:
        'Приветствую, говорю.' if deiveneLogic.r3412_condition():
            # r2 # reply3412
            jump deivene_s2

        'Приветствую, говорю.' if deiveneLogic.r3413_condition():
            # r3 # reply3413
            jump deivene_s3

        'Что с твоими руками?' if deiveneLogic.r3414_condition():
            # r4 # reply3414
            jump deivene_s2

        'Что с твоими руками?' if deiveneLogic.r3415_condition():
            # r5 # reply3415
            jump deivene_s19

        'Оставить ее в покое.':
            # r6 # reply3416
            jump deivene_dispose


# s2 # say3417
label deivene_s2:  # from 1.0 1.2
    teller 'Женщина не отвечает.'

    menu:
        'Прикоснуться к женщине, привлечь ее внимание.':
            # r7 # reply3418
            $ deiveneLogic.r3418_action()
            jump deivene_s4

        'Оставить ее в покое.':
            # r8 # reply3419
            jump deivene_dispose


# s3 # say3420
label deivene_s3:  # from 1.1 # Manually checked EXTERN ~DMORTE~ : 55
    teller 'Женщина не отвечает.'

    jump dmorte_s55

# s4 # say3421
label deivene_s4:  # from 2.0
    teller 'Женщина вздрагивает и круто разворачивается к тебе… у нее тусклые желтые глаза с маленькими оранжевыми точками вместо зрачков.'
    teller 'При виде тебя ее удивление сменяется раздраженностью, она хмуро смотрит на тебя.'

    menu:
        'Э… Приветствую.':
            # r9 # reply3422
            $ deiveneLogic.r3422_action()
            jump deivene_s5


# s5 # say3423
label deivene_s5:  # from 4.0
    teller 'Кажется, она тебя даже не слышала. Щурясь, она наклоняется вперед, как будто не может разглядеть тебя… что бы ни случилось с ее глазами, но ее вид с близкого расстояния вселяет страх.'
    eivene_unknown 'Ты.'
    teller 'Она соединяет когти вместе, затем делает странное движение рукой.'
    eivene 'Найди НИТКУ и БАЛЬЗАМ, принеси СЮДА, к Эи-Вейн. Пшел — пшел — пшел.'

    menu:
        'Дать ей нитку и банку с бальзамирующей жидкостью.' if deiveneLogic.r3424_condition():
            # r10 # reply3424
            $ deiveneLogic.r3424_action()
            jump deivene_s7

        'Сперва ответь на пару вопросов…' if deiveneLogic.r3425_condition():
            # r11 # reply3425
            $ deiveneLogic.r3425_action()
            jump deivene_s6

        'Сперва ответь на пару вопросов…' if deiveneLogic.r3426_condition():
            # r12 # reply3426
            $ deiveneLogic.r3426_action()
            jump deivene_s20

        'Что с твоими руками?' if deiveneLogic.r3427_condition():
            # r13 # reply3427
            $ deiveneLogic.r3427_action()
            jump deivene_s6

        'Что с твоими руками?' if deiveneLogic.r3428_condition():
            # r14 # reply3428
            $ deiveneLogic.r3428_action()
            jump deivene_s20

        'Уйти.':
            # r15 # reply3429
            $ deiveneLogic.r3429_action()
            jump deivene_dispose


# s6 # say3430
label deivene_s6:  # from 5.1 5.3
    teller 'Она отворачивается… непохоже, чтобы она тебя услышала. Должно быть, ее слух не лучше зрения.'

    menu:
        'Коснуться ее плеча, привлечь ее внимание.':
            # r16 # reply3431
            jump deivene_s17

        'Уйти.':
            # r17 # reply3432
            jump deivene_dispose


# s7 # say3433
label deivene_s7:  # from 5.0 17.0
    teller 'Не теряя ни минуты, Эи-Вейн выхватывает нитку из твоих рук и цепляет на один из своих когтей, а затем начинает зашивать трупу грудь.'
    teller 'Затем она берет бальзамирующую жидкость и начинает намазывать ею мертвеца.'

    menu:
        'Подождать.':
            # r18 # reply3434
            jump deivene_s9

        'Уйти.':
            # r19 # reply3435
            jump deivene_s8


# s8 # say3436
label deivene_s8:  # from 7.1
    teller 'Едва ты собираешься уйти, Эи-Вейн говорит.'
    eivene 'Стой. Ты следующий.'

    menu:
        'Подождать.':
            # r20 # reply3437
            jump deivene_s9

        'Уйти. Быстро.':
            # r21 # reply3438
            jump deivene_dispose


# s9 # say3439
label deivene_s9:  # from 7.0 8.0 # Check EXTERN ~DMORTE~ : 59
    teller 'Спустя несколько минут она заканчивает. Щелкнув когтями, она поворачивается к тебе.'
    teller 'К твоему удивлению, она протягивает руку и проводит когтями по твоим рукам и груди.'

    menu:
        'Э, не то, чтобы я не польщен, но…' if deiveneLogic.r3440_condition():
            # r22 # reply3440
            jump deivene_s11

        'Э, не то, чтобы я не польщен, но…' if deiveneLogic.r3441_condition():
            # r23 # reply3441
            jump dmorte_s59

        'Продолжать строить из себя зомби.' if deiveneLogic.r3442_condition():
            # r24 # reply3442
            jump deivene_s11

        'Продолжать строить из себя зомби.' if deiveneLogic.r3443_condition():
            # r25 # reply3443
            jump dmorte_s59

        'Оттолкнуть ее, уйти.':
            # r26 # reply3444
            jump deivene_s10


# s10 # say3445
label deivene_s10:  # from 9.4 12.1
    teller 'Она потрясена тем, что ты ее оттолкнул.'
    eivene 'Зомфи? Ты не зомфи!'
    teller 'Она отступает на шаг, и ты не успеваешь среагировать, как она трижды хлопает в ладони. В ответ повсюду Морге раздается звон огромного колокола.'

    menu:
        'Ну хорошо…':
            # r27 # reply3491
            $ deiveneLogic.r3491_action()
            jump deivene_dispose


# s11 # say3446
label deivene_s11:  # from 9.0 9.2
    teller 'Когда она касается твоих рук и тела, ты вдруг понимаешь, что она изучает твои шрамы. Она отводит свои когти, дважды ими щелкает, затем наклоняется вперед и осматривает татуировки на теле.'
    eivene 'Хм-м. Кто это так тебя изрисовал? Никакого уважения к зомфи. Зомфи — не картина.'
    teller 'Она принюхивается, затем похлопывает по твоим шрамам.'
    eivene 'Этот в плохой форме, много шрамов, не законсервирован.'

    menu:
        'Подождать.':
            # r28 # reply3447
            jump deivene_s12


# s12 # say3448
label deivene_s12:  # from 11.0
    teller 'Неожиданно ее когти зацепляют нитку, которую ты принес, а другой рукой она молниеносно пронзает твою кожу в месте шрама.'
    teller 'Не больнее, чем укол булавки. Кажется, она собирается тебя заштопать.'

    menu:
        'Позволить ей работать.':
            # r29 # reply3449
            $ deiveneLogic.r3449_action()
            jump deivene_s13

        'Оттолкнуть ее, уйти.':
            # r30 # reply3450
            jump deivene_s10


# s13 # say3451
label deivene_s13:  # from 12.0 # Manually checked EXTERN ~DMORTE~ : 60
    teller 'Эи-Вейн начинает зашивать твои шрамы; ощущения при этом на удивление безболезненны.  Закончив, она обнюхивает тебя, хмурится, затем окунает пальцы в бальзамирующую жидкость.'
    teller 'В течении нескольких минут она наносит жидкость на твое тело… довольно странно, но ты чувствуешь себя *лучше*.'

    menu:
        'Позволить ей работать.' if deiveneLogic.r3452_condition():
            # r31 # reply3452
            jump deivene_s14

        'Позволить ей работать.' if deiveneLogic.r3453_condition():
            # r32 # reply3453
            jump dmorte_s60


# s14 # say3454
label deivene_s14:  # from 13.0
    teller 'Эи-Вейн в последний раз прикасается к твоему телу, еще раз фыркает, кивает, а затем отмахивается своими когтями.'
    eivene 'Готово. Пшел-пшел.'

    menu:
        'Минуточку. Жестом ты показываешь, как открываешь что-то ключом. Мне нужен ключ от бальзамационной. У тебя он есть?' if deiveneLogic.r3456_condition():
            # r33 # reply3456
            $ deiveneLogic.r3456_action()
            jump deivene_s18

        'Минуточку. Жестом ты показываешь, как открываешь что-то ключом. Мне нужен ключ от бальзамационной. У тебя он есть?' if deiveneLogic.r3457_condition():
            # r34 # reply3457
            jump deivene_s24

        'Уйти.':
            # r35 # reply4350
            jump deivene_dispose


# s15 # say3458
label deivene_s15:  # - # IF ~  Global("EiVene","GLOBAL",1)
    call deivene_init
    teller 'Перед тобой Эи-Вейн. Она все еще потрошит труп своими когтями. Ритм движений когтей что-то тебе напоминает, но ты не можешь вспомнить что.'

    menu:
        'Наблюдать за ней, изучая движения ее рук.' if deiveneLogic.r3459_condition():
            # r36 # reply3459
            $ deiveneLogic.r3459_action()
            jump deivene_s16

        'Коснуться ее плеча, привлечь ее внимание.' if deiveneLogic.r3463_condition():
            # r37 # reply3463
            jump deivene_s17

        'Коснуться ее плеча, привлечь ее внимание.' if deiveneLogic.r4351_condition():
            # r38 # reply4351
            jump deivene_s22

        'Уйти.':
            # r39 # reply4352
            jump deivene_dispose


# s16 # say3464
label deivene_s16:  # from 15.0 # ~FadeToColor([20.0],0) Wait(3) FadeFromColor([20.0],0) Wait(3) ~ GOTO 26
    teller 'Наблюдая за движением рук Эи-Вейн, ты чувствуешь покалывание в голове. Внезапно у тебя в глазах все начинает размываться и плыть…'

    jump deivene_s26

# s17 # say3468
label deivene_s17:  # from 6.0 15.1 25.0 27.0
    teller 'Заметив тебя, она поворачивается, а затем хмурится.'
    eivene 'Тупые зомфи.'
    teller 'Она нетерпеливо щелкает когтистыми пальцами, а затем делает движение рукой, как будто что-то зашивает.'
    eivene 'Найди нитку и бальзам, принеси сюда, к Эи-Вейн. Пшел-пшел-пшел.'

    menu:
        'Дать ей нитку и банку с бальзамирующей жидкостью.' if deiveneLogic.r3469_condition():
            # r40 # reply3469
            $ deiveneLogic.r3469_action()
            jump deivene_s7

        'Минуточку. Жестом ты показываешь, как открываешь что-то ключом. Мне нужен ключ от бальзамационной. У тебя он есть?' if deiveneLogic.r3470_condition():
            # r41 # reply3470
            $ deiveneLogic.r3470_action()
            jump deivene_s18

        'Минуточку. Жестом ты показываешь, как открываешь что-то ключом. Мне нужен ключ от бальзамационной. У тебя он есть?' if deiveneLogic.r3497_condition():
            # r42 # reply3497
            jump deivene_s24

        'Уйти.':
            # r43 # reply4357
            jump deivene_dispose


# s18 # say3471
label deivene_s18:  # from 14.0 17.1 22.0
    teller 'Она наклоняется вперед, присматриваясь к твоему жесту, затем фыркает.'
    teller 'Ее рука скрывается в одежде, затем появляется вместе с ключом, висящим на ее угрожающе-остром когте. Она кладет его тебе на ладонь.'
    eivene 'Принеси потом обратно. Пшел-пшел.'  # TODO [snow]: дописать, что ключ можно вернуть

    menu:
        'Что с твоими руками?' if deiveneLogic.r3494_condition():
            # r44 # reply3494
            $ deiveneLogic.r3494_action()
            jump deivene_s23

        'Что с твоими руками?' if deiveneLogic.r3495_condition():
            # r45 # reply3495
            $ deiveneLogic.r3495_action()
            jump deivene_s21

        'Уйти.':
            # r46 # reply3496
            $ deiveneLogic.r3496_action()
            jump deivene_dispose


# s19 # say3472
label deivene_s19:  # from 1.3 # Manually checked EXTERN ~DMORTE~ : 56
    teller 'Женщина не отвечает.'

    jump dmorte_s56

# s20 # say3485
label deivene_s20:  # from 5.2 5.4 # Manually checked EXTERN ~DMORTE~ : 57
    teller 'Она отворачивается… непохоже, чтобы она тебя услышала.'

    jump dmorte_s57

# s21 # say3486
label deivene_s21:  # from 18.1 # Manually checked EXTERN ~DMORTE~ : 58
    teller 'Она отворачивается… непохоже, чтобы она тебя услышала. Должно быть, ее слух не лучше зрения.'

    jump dmorte_s58

# s22 # say3493
label deivene_s22:  # from 15.2 25.1 27.1
    teller 'Заметив тебя, она поворачивается, а затем хмурится.'
    eivene 'Тупые зомфи.'
    teller 'Она нетерпеливо щелкает когтистыми пальцами, а затем делает движение рукой, как будто что-то зашивает.'
    eivene 'Ты готов. Все зашито. Пшел-пшел-пшел.'

    menu:
        'Минуточку. Жестом ты показываешь, как открываешь что-то ключом. Мне нужен ключ от бальзамационной. У тебя он есть?' if deiveneLogic.r3501_condition():
            # r47 # reply3501
            $ deiveneLogic.r3501_action()
            jump deivene_s18

        'Минуточку. Жестом ты показываешь, как открываешь что-то ключом. Мне нужен ключ от бальзамационной. У тебя он есть?' if deiveneLogic.r3502_condition():
            # r48 # reply3502
            jump deivene_s24

        'Уйти.':
            # r49 # reply4358
            jump deivene_dispose


# s23 # say3498
label deivene_s23:  # from 18.0
    teller 'Она отворачивается… непохоже, чтобы она тебя услышала. Должно быть, ее слух не лучше зрения.'

    menu:
        'Уйти.':
            # r50 # reply3499
            jump deivene_dispose


# s24 # say4200
label deivene_s24:  # from 14.1 17.2 22.1
    teller 'Она наклоняется вперед, присматриваясь к твоему жесту, затем фыркает. Ее рука скрывается в одежде, что-то ищет, затем она пожимает плечами.'
    teller 'Ключа нет. Она делает отгоняющее движение.'
    eivene 'Пшел-пшел-пшел.'

    menu:
        'Уйти.':
            # r51 # reply4201
            jump deivene_dispose


# s25 # say4353
label deivene_s25:  # -
    teller 'Некоторое время ты наблюдаешь за ней; под ритм движения ее рук в твоей памяти всплывает два эпизода. В одном из них ты играешь на каком-то струнном инструменте, похожим на арфу.'
    teller 'В другом кто-то ворует чей-то кошелек… к твоему удивлению, это воспоминание внезапно толкает тебя на осмотр карманов Эи-Вейн.'

    menu:
        'Коснуться ее плеча, привлечь ее внимание.' if deiveneLogic.r4354_condition():
            # r52 # reply4354
            jump deivene_s17

        'Коснуться ее плеча, привлечь ее внимание.' if deiveneLogic.r4355_condition():
            # r53 # reply4355
            jump deivene_s22

        'Уйти.':
            # r54 # reply4356
            jump deivene_dispose


# s26 # say63477
label deivene_s26:  # from 16.0
    teller '…ты стоишь перед свежеубитым телом; предсмертная судорога оставила издевательскую улыбку на его лице.'
    teller 'К черепу пришит номер 42. Ты только что зашил тело зомби, лежащего на плите.'
    teller 'Ты кое-что оставил внутри, что-то, что может пригодиться в случае, если ты снова вернешься сюда…'

    menu:
        'Эхо: Храни это, пока я не вернусь.' if deiveneLogic.r63478_condition():
            # r55 # reply63478
            $ deiveneLogic.r63478_action()
            jump deivene_s27

        'Эхо: Храни это, пока я не вернусь.' if deiveneLogic.r63479_condition():
            # r56 # reply63479
            jump deivene_s27


# s27 # say63480
label deivene_s27:  # from 26.0 26.1
    teller 'В памяти эхом отозвался твой голос, странный и пустой. Ты скрещиваешь руки перед собой, и, к твоему удивлению, труп повторяет твое движение.'
    teller 'Секунду спустя его руки падают по швам и видение меркнет… ты снова наблюдаешь, как руки Эи-Вейн зашивают тело.'

    menu:
        'Коснуться ее плеча, привлечь ее внимание.' if deiveneLogic.r63482_condition():
            # r57 # reply63482
            jump deivene_s17

        'Коснуться ее плеча, привлечь ее внимание.' if deiveneLogic.r63481_condition():
            # r58 # reply63481
            jump deivene_s22

        'Уйти.':
            # r59 # reply63483
            jump deivene_dispose


label deivene_kill:
    teller 'Перед тобой Эи-Вейн. Она все еще потрошит труп своими когтями. Ритм движений когтей что-то тебе напоминает, но ты не можешь вспомнить что.'

    menu:
        '(Уйти.)':
            jump deivene_dispose
        '(Убить Эи-Вейн).':
            jump deivene_killed


label deivene_killed:
    $ deiveneLogic.kill_deivene()
    teller 'Я знаю, что она не услышит, как я подойду. Я знаю, что её пальцы похожи на когти.'
    teller 'Я проскальзываю за её спиной и ломаю её правую руку, а когда она с криком оборачивается, я ломаю левую.'
    teller 'Но через несколько ударов она сдаётся и падает на пол.'
    teller 'От последнего удара тело переваливается на спину. Что-то заставляет меня взглянуть в её глаза.'
    teller 'Они светятся…'
    teller '…нежностью?'
    jump deivene_dispose


label deivene_kill_first:
    teller 'Перед тобой хрупкая девушка с бледным лицом. Из-за впалой кожи на щеках и шее кажется, будто она голодает.'
    teller 'Судя по всему, она увлечена обследованием тела, лежащим перед ней, тыкая по телу пальцем.'

    menu:
        '(Уйти.)':
            jump deivene_dispose
        '(Убить девушку).':
            jump deivene_killed_first


label deivene_killed_first:
    $ deiveneLogic.kill_eivene()
    teller 'Я знаю, что я быстрее. Я прикасаюсь к её плечу - и девушка оборачивается в ту сторону, где меня уже нет.'
    teller 'Она всё равно пытается сопротивляться, используя сломанные руки на манер плетей.'
    teller 'Через несколько ударов она затихает. Я провёл пальцем по порезу, который она мне оставила и пнул дважды мёртвое тело.'
    teller 'От пинка тело переваливается на спину. Что-то заставляет меня взглянуть в её глаза.'
    teller 'Они светятся…'
    teller '…нежностью?'
    jump deivene_dispose
