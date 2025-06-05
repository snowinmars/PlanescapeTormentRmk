init python:
    def _r3418_action(gsm):        FaceObject(Protagonist)
    def _r3422_action(gsm):        
        gsm.set_meet_eivene(True)
    def _r3424_action(gsm):        
        gsm.set_has_embalm(False) 
        gsm.set_has_needle(False) 
        gsm.set_eivene_delivery(True) 
        gsm.inc_exp(250)    # '37701': ' ~В Морге я повстречался с тленной-бальзамировщицей по имени Эи-Вейн. Мало того, что она бледная как смерть и с когтями на руках, так она еще и близорукая и глухая, и спутала меня с зомби. Она приказала мне найти ей банку с бальзамирующей жидкостью и иголку с ниткой, предположительно для того, чтобы зашить тело, лежащее на столе перед ней. Оба предмета у меня уже были, так что я сразу же дал их ей. ~ '
    def _r3425_action(gsm):        
        gsm.update_journal('37702')    # '37702': ' ~В Морге я повстречался с тленной-бальзамировщицей по имени Эи-Вейн. Мало того, что она бледная как смерть и с когтями на руках, так она еще и близорукая и глухая, и спутала меня с зомби. Она приказала мне найти ей банку с бальзамирующей жидкостью и иголку с ниткой, предположительно для того, чтобы зашить тело, лежащее на столе перед ней. Они должны быть где-то в Морге, возможно в одной из соседних комнат. ~ '
    def _r3426_action(gsm):        
        gsm.update_journal('37702')    # '37702': ' ~В Морге я повстречался с тленной-бальзамировщицей по имени Эи-Вейн. Мало того, что она бледная как смерть и с когтями на руках, так она еще и близорукая и глухая, и спутала меня с зомби. Она приказала мне найти ей банку с бальзамирующей жидкостью и иголку с ниткой, предположительно для того, чтобы зашить тело, лежащее на столе перед ней. Они должны быть где-то в Морге, возможно в одной из соседних комнат. ~ '
    def _r3427_action(gsm):        
        gsm.update_journal('37702')    # '37702': ' ~В Морге я повстречался с тленной-бальзамировщицей по имени Эи-Вейн. Мало того, что она бледная как смерть и с когтями на руках, так она еще и близорукая и глухая, и спутала меня с зомби. Она приказала мне найти ей банку с бальзамирующей жидкостью и иголку с ниткой, предположительно для того, чтобы зашить тело, лежащее на столе перед ней. Они должны быть где-то в Морге, возможно в одной из соседних комнат. ~ '
    def _r3428_action(gsm):        
        gsm.update_journal('37702')    # '37702': ' ~В Морге я повстречался с тленной-бальзамировщицей по имени Эи-Вейн. Мало того, что она бледная как смерть и с когтями на руках, так она еще и близорукая и глухая, и спутала меня с зомби. Она приказала мне найти ей банку с бальзамирующей жидкостью и иголку с ниткой, предположительно для того, чтобы зашить тело, лежащее на столе перед ней. Они должны быть где-то в Морге, возможно в одной из соседних комнат. ~ '
    def _r3429_action(gsm):        
        gsm.update_journal('37702')    # '37702': ' ~В Морге я повстречался с тленной-бальзамировщицей по имени Эи-Вейн. Мало того, что она бледная как смерть и с когтями на руках, так она еще и близорукая и глухая, и спутала меня с зомби. Она приказала мне найти ей банку с бальзамирующей жидкостью и иголку с ниткой, предположительно для того, чтобы зашить тело, лежащее на столе перед ней. Они должны быть где-то в Морге, возможно в одной из соседних комнат. ~ '
    def _r3491_action(gsm):        # ?.play_sound('AMB_M01') Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself) 
        gsm.set_mortualy_alarmed(True)
    def _r3449_action(gsm):        
        gsm.change_stat_permanent('Protagonist', 'MAXHITPOINTS', 'RAISE', 1) 
        gsm.full_heal('Protagonist') 
        gsm.set_ravel_eivene(True) ~ 
        gsm.update_journal('38199')    # '38199': ' ~После того, как я принес Эи-Вейн бальзамирующую жидкость и нитку, она зашила мои шрамы и нанесла бальзамирующую жидкость на мое тело. Довольно странно, но я чувствую себя... здоровее.~ '
    def _r3456_action(gsm):        
        gsm.inc_exp(250)
    def _r3459_action(gsm):        # ?.play_sound('SPTR_01') ~ 
        gsm.update_journal('61612')    # '61612': ' ~Наблюдая за тем, как Эи-Вейн зашивает своими когтями тело умершего, я что-то вспомнил... Очень давно я делал точно такое же действие над телом, однако при этом я ничего не вынимал, а наоборот, что-то положил *внутрь* тела. Такое чувство, что я положил что-то, что смогу позже забрать. В воспоминании я скрестил свои руки на груди, и труп повторил мои движения... на его черепе был написан номер «42». ~ '
    def _r3469_action(gsm):        
        gsm.set_has_embalm(False) 
        gsm.set_has_needle(False) 
        gsm.set_eivene_delivery(True) 
        gsm.inc_exp(250)    # '38202': ' ~Я принес Эи-Вейн бальзамирующую жидкость и нитку. Не могу сказать, что она ужасно обрадовалась этому. ~ '
    def _r3470_action(gsm):        
        gsm.inc_exp(250)
    def _r3494_action(gsm):        
        gsm.update_journal('38203')    # '38203': ' ~Я убедил Эи-Вейн дать мне ключ от бальзамационной. ~ '
    def _r3495_action(gsm):        
        gsm.update_journal('38203')    # '38203': ' ~Я убедил Эи-Вейн дать мне ключ от бальзамационной. ~ '
    def _r3496_action(gsm):        
        gsm.update_journal('38203')    # '38203': ' ~Я убедил Эи-Вейн дать мне ключ от бальзамационной. ~ '
    def _r3501_action(gsm):        
        gsm.inc_exp(250)
    def _r63478_action(gsm):        
        gsm.inc_exp('Protagonist', 250)


init python:
    def _r3412_condition(gsm):
        return not gsm.get_in_party_morte()
    def _r3413_condition(gsm):
        return gsm.get_in_party_morte()
    def _r3414_condition(gsm):
        return not gsm.get_in_party_morte()
    def _r3415_condition(gsm):
        return gsm.get_in_party_morte()
    def _r3424_condition(gsm):
        return gsm.get_has_embalm() \
               and gsm.get_has_needle()
    def _r3425_condition(gsm):
        return not gsm.get_in_party_morte()
    def _r3426_condition(gsm):
        return gsm.get_in_party_morte()
    def _r3427_condition(gsm):
        return not gsm.get_in_party_morte()
    def _r3428_condition(gsm):
        return gsm.get_in_party_morte()
    def _r3440_condition(gsm):
        return not gsm.get_in_party_morte()
    def _r3441_condition(gsm):
        return gsm.get_in_party_morte()
    def _r3442_condition(gsm):
        return not gsm.get_in_party_morte()
    def _r3443_condition(gsm):
        return gsm.get_in_party_morte()
    def _r3452_condition(gsm):
        return not gsm.get_in_party_morte()
    def _r3453_condition(gsm):
        return gsm.get_in_party_morte()
    def _r3456_condition(gsm):
        return gsm.get_embalm_key_quest() == 1 \
               and gsm.get_has_keyem()
    def _r3457_condition(gsm):
        return gsm.get_embalm_key_quest() == 1 \
               and not gsm.get_has_keyem()
    def _r3459_condition(gsm):
        return not gsm.get_42_secret()
    def _r3463_condition(gsm):
        return not gsm.get_eivene_delivery()
    def _r4351_condition(gsm):
        return gsm.get_eivene_delivery()
    def _r3469_condition(gsm):
        return gsm.get_has_embalm() \
               and gsm.get_has_needle()
    def _r3470_condition(gsm):
        return gsm.get_embalm_key_quest() == 1 \
               and gsm.get_has_keyem()
    def _r3497_condition(gsm):
        return gsm.get_embalm_key_quest() == 1 \
               and not gsm.get_has_keyem()
    def _r3494_condition(gsm):
        return not gsm.get_in_party_morte()
    def _r3495_condition(gsm):
        return gsm.get_in_party_morte()
    def _r3501_condition(gsm):
        return gsm.get_embalm_key_quest() == 1 \
               and gsm.get_has_keyem()
    def _r3502_condition(gsm):
        return gsm.get_embalm_key_quest() == 1 \
               and not gsm.get_has_keyem()
    def _r4354_condition(gsm):
        return not gsm.get_eivene_delivery()
    def _r4355_condition(gsm):
        return gsm.get_eivene_delivery()
    def _r63478_condition(gsm):
        return not gsm.get_42_secret()
    def _r63479_condition(gsm):
        return gsm.get_42_secret()
    def _r63482_condition(gsm):
        return not gsm.get_eivene_delivery()
    def _r63481_condition(gsm):
        return gsm.get_eivene_delivery()


init 10 python:
    gsm = renpy.store.global_settings_manager


# ###
# Original:  DLG/DEIVENE.DLG
# Starts:    deivene_s
# ###


label deivene_init:
    return


label deivene_dispose:
    jump show_graphics_menu


# s0 # say3404
label deivene_s0:  # from - # IF ~  Global("EiVene","GLOBAL",0)~ THEN BEGIN 0 // from:
    SPEAKER 'Перед тобой хрупкая девушка с бледным лицом. Из-за впалой кожи на щеках и шее кажется, будто она голодает. Судя по всему, она увлечена обследованием тела, лежащим перед ней, тыкая по телу пальцем.'

    menu:
        'Приветствую.':
            # r0 # reply3406
            jump deivene_s1
        'Оставить ее в покое.':
            # r1 # reply3407
            jump show_graphics_menu


# s1 # say3410
label deivene_s1:  # from 0.0
    SPEAKER 'Женщина не отвечает… похоже, она слишком увлечена трупом, лежащим перед ней. Следя за ее работой, ты случайно обращаешь внимание на ее руки… ее пальцы похожи на когти. Она с легкостью погружает их, словно ножи, в грудь трупа, доставая органы.'

    menu:
        'Приветствую, говорю.' if _r3412_condition(gsm):
            # r2 # reply3412
            jump deivene_s2
        'Приветствую, говорю.' if _r3413_condition(gsm):
            # r3 # reply3413
            jump deivene_s3
        'Что с твоими руками?' if _r3414_condition(gsm):
            # r4 # reply3414
            jump deivene_s2
        'Что с твоими руками?' if _r3415_condition(gsm):
            # r5 # reply3415
            jump deivene_s19
        'Оставить ее в покое.':
            # r6 # reply3416
            jump show_graphics_menu


# s2 # say3417
label deivene_s2:  # from 1.0 1.2
    SPEAKER 'Женщина не отвечает.'

    menu:
        'Прикоснуться к женщине, привлечь ее внимание.':
            # r7 # reply3418
            $ _r3418_action(gsm)
            jump deivene_s4
        'Оставить ее в покое.':
            # r8 # reply3419
            jump show_graphics_menu


# s3 # say3420
label deivene_s3:  # from 1.1 # Check EXTERN ~DMORTE~ : 55
    SPEAKER 'Женщина не отвечает.'

    jump show_graphics_menu

# s4 # say3421
label deivene_s4:  # from 2.0
    SPEAKER 'Женщина вздрагивает и круто разворачивается к тебе… у нее тусклые желтые глаза с маленькими оранжевыми точками вместо зрачков. При виде тебя ее удивление сменяется раздраженностью, она хмуро смотрит на тебя.'

    menu:
        'Э… Приветствую.':
            # r9 # reply3422
            $ _r3422_action(gsm)
            jump deivene_s5


# s5 # say3423
label deivene_s5:  # from 4.0
    SPEAKER 'Кажется, она тебя даже не слышала. Щурясь, она наклоняется вперед, как будто не может разглядеть тебя… что бы ни случилось с ее глазами, но ее вид с близкого расстояния вселяет страх. Ты. Она соединяет когти вместе, затем делает странное движение рукой. Найди НИТКУ и БАЛЬЗАМ, принеси СЮДА, к Эи-Вейн. Пшел — пшел — пшел.'

    menu:
        'Дать ей нитку и банку с бальзамирующей жидкостью.' if _r3424_condition(gsm):
            # r10 # reply3424
            $ _r3424_action(gsm)
            jump deivene_s7
        'Сперва ответь на пару вопросов…' if _r3425_condition(gsm):
            # r11 # reply3425
            $ _r3425_action(gsm)
            jump deivene_s6
        'Сперва ответь на пару вопросов…' if _r3426_condition(gsm):
            # r12 # reply3426
            $ _r3426_action(gsm)
            jump deivene_s20
        'Что с твоими руками?' if _r3427_condition(gsm):
            # r13 # reply3427
            $ _r3427_action(gsm)
            jump deivene_s6
        'Что с твоими руками?' if _r3428_condition(gsm):
            # r14 # reply3428
            $ _r3428_action(gsm)
            jump deivene_s20
        'Уйти.':
            # r15 # reply3429
            $ _r3429_action(gsm)
            jump show_graphics_menu


# s6 # say3430
label deivene_s6:  # from 5.1 5.3
    SPEAKER 'Она отворачивается… непохоже, чтобы она тебя услышала. Должно быть, ее слух не лучше зрения.'

    menu:
        'Коснуться ее плеча, привлечь ее внимание.':
            # r16 # reply3431
            jump deivene_s17
        'Уйти.':
            # r17 # reply3432
            jump show_graphics_menu


# s7 # say3433
label deivene_s7:  # from 5.0 17.0
    SPEAKER 'Не теряя ни минуты, Эи-Вейн выхватывает нитку из твоих рук и цепляет на один из своих когтей, а затем начинает зашивать трупу грудь. Затем она берет бальзамирующую жидкость и начинает намазывать ею мертвеца.'

    menu:
        'Подождать.':
            # r18 # reply3434
            jump deivene_s9
        'Уйти.':
            # r19 # reply3435
            jump deivene_s8


# s8 # say3436
label deivene_s8:  # from 7.1
    SPEAKER 'Едва ты собираешься уйти, Эи-Вейн говорит: Стой. Ты следующий.'

    menu:
        'Подождать.':
            # r20 # reply3437
            jump deivene_s9
        'Уйти. Быстро.':
            # r21 # reply3438
            jump show_graphics_menu


# s9 # say3439
label deivene_s9:  # from 7.0 8.0 # Check EXTERN ~DMORTE~ : 59
    SPEAKER 'Спустя несколько минут она заканчивает. Щелкнув когтями, она поворачивается к тебе. К твоему удивлению, она протягивает руку и проводит когтями по твоим рукам и груди.'

    menu:
        'Э, не то, чтобы я не польщен, но…' if _r3440_condition(gsm):
            # r22 # reply3440
            jump deivene_s11
        'Э, не то, чтобы я не польщен, но…' if _r3441_condition(gsm):
            # r23 # reply3441
            jump show_graphics_menu
        'Продолжать строить из себя зомби.' if _r3442_condition(gsm):
            # r24 # reply3442
            jump deivene_s11
        'Продолжать строить из себя зомби.' if _r3443_condition(gsm):
            # r25 # reply3443
            jump show_graphics_menu
        'Оттолкнуть ее, уйти.':
            # r26 # reply3444
            jump deivene_s10


# s10 # say3445
label deivene_s10:  # from 9.4 12.1
    SPEAKER 'Она потрясена тем, что ты ее оттолкнул. Зомфи? Ты не зомфи! Она отступает на шаг, и ты не успеваешь среагировать, как она трижды хлопает в ладони. В ответ повсюду Морге раздается звон огромного колокола.'

    menu:
        'Ну хорошо…':
            # r27 # reply3491
            $ _r3491_action(gsm)
            jump show_graphics_menu


# s11 # say3446
label deivene_s11:  # from 9.0 9.2
    SPEAKER 'Когда она касается твоих рук и тела, ты вдруг понимаешь, что она изучает твои шрамы. Она отводит свои когти, дважды ими щелкает, затем наклоняется вперед и осматривает татуировки на теле. Хм-м. Кто это так тебя изрисовал? Никакого уважения к зомфи. Зомфи — не картина. Она принюхивается, затем похлопывает по твоим шрамам. Этот в плохой форме, много шрамов, не законсервирован.'

    menu:
        'Подождать.':
            # r28 # reply3447
            jump deivene_s12


# s12 # say3448
label deivene_s12:  # from 11.0
    SPEAKER 'Неожиданно ее когти зацепляют нитку, которую ты принес, а другой рукой она молниеносно пронзает твою кожу в месте шрама. Не больнее, чем укол булавки. Кажется, она собирается тебя заштопать.'

    menu:
        'Позволить ей работать.':
            # r29 # reply3449
            $ _r3449_action(gsm)
            jump deivene_s13
        'Оттолкнуть ее, уйти.':
            # r30 # reply3450
            jump deivene_s10


# s13 # say3451
label deivene_s13:  # from 12.0 # Check EXTERN ~DMORTE~ : 60
    SPEAKER 'Эи-Вейн начинает зашивать твои шрамы; ощущения при этом на удивление безболезненны.  Закончив, она обнюхивает тебя, хмурится, затем окунает пальцы в бальзамирующую жидкость. В течении нескольких минут она наносит жидкость на твое тело… довольно странно, но ты чувствуешь себя *лучше*.'

    menu:
        'Позволить ей работать.' if _r3452_condition(gsm):
            # r31 # reply3452
            jump deivene_s14
        'Позволить ей работать.' if _r3453_condition(gsm):
            # r32 # reply3453
            jump show_graphics_menu


# s14 # say3454
label deivene_s14:  # from 13.0 # Global("EiVene","GLOBAL",1)
    SPEAKER 'Эи-Вейн в последний раз прикасается к твоему телу, еще раз фыркает, кивает, а затем отмахивается своими когтями. Готово. Пшел-пшел.'

    menu:
        'Минуточку. Жестом ты показываешь, как открываешь что-то ключом. Мне нужен ключ от бальзамационной. У тебя он есть?' if _r3456_condition(gsm):
            # r33 # reply3456
            $ _r3456_action(gsm)
            jump deivene_s18
        'Минуточку. Жестом ты показываешь, как открываешь что-то ключом. Мне нужен ключ от бальзамационной. У тебя он есть?' if _r3457_condition(gsm):
            # r34 # reply3457
            jump deivene_s24
        'Уйти.':
            # r35 # reply4350
            jump show_graphics_menu


# s15 # say3458
label deivene_s15:  # from -
    SPEAKER 'Перед тобой Эи-Вейн. Она все еще потрошит труп своими когтями. Ритм движений когтей что-то тебе напоминает, но ты не можешь вспомнить что.'

    menu:
        'Наблюдать за ней, изучая движения ее рук.' if _r3459_condition(gsm):
            # r36 # reply3459
            $ _r3459_action(gsm)
            jump deivene_s16
        'Коснуться ее плеча, привлечь ее внимание.' if _r3463_condition(gsm):
            # r37 # reply3463
            jump deivene_s17
        'Коснуться ее плеча, привлечь ее внимание.' if _r4351_condition(gsm):
            # r38 # reply4351
            jump deivene_s22
        'Уйти.':
            # r39 # reply4352
            jump show_graphics_menu


# s16 # say3464
label deivene_s16:  # from 15.0 # ~FadeToColor([20.0],0) Wait(3) FadeFromColor([20.0],0) Wait(3) ~ GOTO 26
    SPEAKER 'Наблюдая за движением рук Эи-Вейн, ты чувствуешь покалывание в голове. Внезапно у тебя в глазах все начинает размываться и плыть…'

    jump show_graphics_menu

# s17 # say3468
label deivene_s17:  # from 6.0 15.1 25.0 27.0
    SPEAKER 'Заметив тебя, она поворачивается, а затем хмурится. Тупые зомфи. Она нетерпеливо щелкает когтистыми пальцами, а затем делает движение рукой, как будто что-то зашивает. Найди нитку и бальзам, принеси сюда, к Эи-Вейн. Пшел-пшел-пшел.'

    menu:
        'Дать ей нитку и банку с бальзамирующей жидкостью.' if _r3469_condition(gsm):
            # r40 # reply3469
            $ _r3469_action(gsm)
            jump deivene_s7
        'Минуточку. Жестом ты показываешь, как открываешь что-то ключом. Мне нужен ключ от бальзамационной. У тебя он есть?' if _r3470_condition(gsm):
            # r41 # reply3470
            $ _r3470_action(gsm)
            jump deivene_s18
        'Минуточку. Жестом ты показываешь, как открываешь что-то ключом. Мне нужен ключ от бальзамационной. У тебя он есть?' if _r3497_condition(gsm):
            # r42 # reply3497
            jump deivene_s24
        'Уйти.':
            # r43 # reply4357
            jump show_graphics_menu


# s18 # say3471
label deivene_s18:  # from 14.0 17.1 22.0
    SPEAKER 'Она наклоняется вперед, присматриваясь к твоему жесту, затем фыркает. Ее рука скрывается в одежде, затем появляется вместе с ключом, висящим на ее угрожающе-остром когте. Она кладет его тебе на ладонь. Принеси потом обратно. Пшел-пшел.'

    menu:
        'Что с твоими руками?' if _r3494_condition(gsm):
            # r44 # reply3494
            $ _r3494_action(gsm)
            jump deivene_s23
        'Что с твоими руками?' if _r3495_condition(gsm):
            # r45 # reply3495
            $ _r3495_action(gsm)
            jump deivene_s21
        'Уйти.':
            # r46 # reply3496
            $ _r3496_action(gsm)
            jump show_graphics_menu


# s19 # say3472
label deivene_s19:  # from 1.3 # Check EXTERN ~DMORTE~ : 56
    SPEAKER 'Женщина не отвечает.'

    jump show_graphics_menu

# s20 # say3485
label deivene_s20:  # from 5.2 5.4 # Check EXTERN ~DMORTE~ : 57
    SPEAKER 'Она отворачивается… непохоже, чтобы она тебя услышала.'

    jump show_graphics_menu

# s21 # say3486
label deivene_s21:  # from 18.1 # Check EXTERN ~DMORTE~ : 58
    SPEAKER 'Она отворачивается… непохоже, чтобы она тебя услышала. Должно быть, ее слух не лучше зрения.'

    jump show_graphics_menu

# s22 # say3493
label deivene_s22:  # from 15.2 25.1 27.1
    SPEAKER 'Заметив тебя, она поворачивается, а затем хмурится. Тупые зомфи. Она нетерпеливо щелкает когтистыми пальцами, а затем делает движение рукой, как будто что-то зашивает. Ты готов. Все зашито. Пшел-пшел-пшел.'

    menu:
        'Минуточку. Жестом ты показываешь, как открываешь что-то ключом. Мне нужен ключ от бальзамационной. У тебя он есть?' if _r3501_condition(gsm):
            # r47 # reply3501
            $ _r3501_action(gsm)
            jump deivene_s18
        'Минуточку. Жестом ты показываешь, как открываешь что-то ключом. Мне нужен ключ от бальзамационной. У тебя он есть?' if _r3502_condition(gsm):
            # r48 # reply3502
            jump deivene_s24
        'Уйти.':
            # r49 # reply4358
            jump show_graphics_menu


# s23 # say3498
label deivene_s23:  # from 18.0
    SPEAKER 'Она отворачивается… непохоже, чтобы она тебя услышала. Должно быть, ее слух не лучше зрения.'

    menu:
        'Уйти.':
            # r50 # reply3499
            jump show_graphics_menu


# s24 # say4200
label deivene_s24:  # from 14.1 17.2 22.1
    SPEAKER 'Она наклоняется вперед, присматриваясь к твоему жесту, затем фыркает. Ее рука скрывается в одежде, что-то ищет, затем она пожимает плечами. Ключа нет. Она делает отгоняющее движение. Пшел-пшел-пшел.'

    menu:
        'Уйти.':
            # r51 # reply4201
            jump show_graphics_menu


# s25 # say4353
label deivene_s25:  # from -
    SPEAKER 'Некоторое время ты наблюдаешь за ней; под ритм движения ее рук в твоей памяти всплывает два эпизода. В одном из них ты играешь на каком-то струнном инструменте, похожим на арфу. В другом кто-то ворует чей-то кошелек… к твоему удивлению, это воспоминание внезапно толкает тебя на осмотр карманов Эи-Вейн.'

    menu:
        'Коснуться ее плеча, привлечь ее внимание.' if _r4354_condition(gsm):
            # r52 # reply4354
            jump deivene_s17
        'Коснуться ее плеча, привлечь ее внимание.' if _r4355_condition(gsm):
            # r53 # reply4355
            jump deivene_s22
        'Уйти.':
            # r54 # reply4356
            jump show_graphics_menu


# s26 # say63477
label deivene_s26:  # from 16.0
    SPEAKER '…ты стоишь перед свежеубитым телом; предсмертная судорога оставила издевательскую улыбку на его лице. К черепу пришит номер 42. Ты только что зашил тело зомби, лежащего на плите. Ты кое-что оставил внутри, что-то, что может пригодиться в случае, если ты снова вернешься сюда…'

    menu:
        'Эхо: Храни это, пока я не вернусь.' if _r63478_condition(gsm):
            # r55 # reply63478
            $ _r63478_action(gsm)
            jump deivene_s27
        'Эхо: Храни это, пока я не вернусь.' if _r63479_condition(gsm):
            # r56 # reply63479
            jump deivene_s27


# s27 # say63480
label deivene_s27:  # from 26.0 26.1
    SPEAKER 'В памяти эхом отозвался твой голос, странный и пустой. Ты скрещиваешь руки перед собой, и, к твоему удивлению, труп повторяет твое движение. Секунду спустя его руки падают по швам и видение меркнет… ты снова наблюдаешь, как руки Эи-Вейн зашивают тело.'

    menu:
        'Коснуться ее плеча, привлечь ее внимание.' if _r63482_condition(gsm):
            # r57 # reply63482
            jump deivene_s17
        'Коснуться ее плеча, привлечь ее внимание.' if _r63481_condition(gsm):
            # r58 # reply63481
            jump deivene_s22
        'Уйти.':
            # r59 # reply63483
            jump show_graphics_menu