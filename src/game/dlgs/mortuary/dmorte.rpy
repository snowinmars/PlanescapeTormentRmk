init python:
    def _r3871_action(gsm):
        gsm.set_warning(1)
    def _r3874_action(gsm):
        gsm.set_warning(2)
    def _r3877_action(gsm):
        gsm.set_warning(2)
    def _r4339_action(gsm):
        gsm.set_warning(1)
    def _r4342_action(gsm):
        gsm.set_warning(2)
    def _r4345_action(gsm):
        gsm.set_warning(2)
    def _r34991_action(gsm):
        gsm.set_morte_quip(True)
    def _r35001_action(gsm):
        gsm.set_morte_quip(True)
    def _r34993_action(gsm):
        gsm.dec_once_law('morte_zombie_1')
    def _r45093_action(gsm):
        gsm.update_journal('39477')
    def _r45103_action(gsm):
        gsm.update_journal('39477')
    def _r4676_action(gsm):
        gsm.update_journal('64512')
    def _r3483_action(gsm):
        gsm.update_journal('38205')
    def _r4678_action(gsm):
        gsm.dec_once_law(3)
    def _r4679_action(gsm):
        gsm.dec_once_law()
    def _r4682_action(gsm):
        gsm.inc_once_law(3)
    def _r4687_action(gsm):
        gsm.inc_once_law()
        gsm.inc_once_good()
    def _r4693_action(gsm):
        gsm.update_journal('64512')
    def _r4695_action(gsm):
        gsm.dec_once_law(3)
    def _r4699_action(gsm):
        gsm.inc_once_law(3)
    def _r35396_action(gsm):
        gsm.dec_once_law()
    def _r35435_action(gsm):
        gsm.set_morte_skel_mort_quip(True)
    def _r64535_action(gsm):      #  FadeToColor([20.0],0) Wait(1)
        gsm.set_looks_like("zombie")# Wait(2) FadeFromColor([20.0],0)
        gsm.inc_exp_custom('party', 500)
    def _r64534_action(gsm):        #FadeToColor([20.0],0) Wait(1)
        gsm.set_looks_like("zombie") #Wait(2) FadeFromColor([20.0],0)
    def _r3474_action(gsm):
        gsm.update_journal('38205')
    def _r6658_action(gsm):
        gsm.dec_good()
    def _r6659_action(gsm):
        gsm.inc_good()
    def _r35319_action(gsm):
        gsm.dec_once_law()
    def _r35342_action(gsm):
        gsm.dec_good()
    def _r35360_action(gsm):
        gsm.inc_good()
    def _r35473_action(gsm):
        gsm.dec_once_law()
    def _r35496_action(gsm):
        gsm.dec_good()
    def _r35514_action(gsm):
        gsm.inc_good()
    def _r6664_condition(gsm):
        return gsm.get_42_secret()
    def _r35512_action(gsm):
        gsm.set_morte_skel_mort_quip(True)
    def _r35550_action(gsm):
        gsm.dec_once_law()
    def _r35573_action(gsm):
        gsm.dec_good()
    def _r35591_action(gsm):
        gsm.inc_good()
    def _r35589_action(gsm):
        gsm.set_morte_skel_mort_quip(True)
    def _r35358_action(gsm):
        gsm.set_morte_skel_mort_quip(True)
    def _r35419_action(gsm):
        gsm.dec_good()
    def _r35437_action(gsm):
        gsm.inc_good()


init python:
    def _r6665_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'wis') \
                and not gsm.get_42_secret()
    def _r35344_condition(gsm):
        return not gsm.get_has_prybar() \
                and gsm.check_char_prop_lt('protagonist',13,'str')
    def _r35352_condition(gsm):
        return not gsm.get_has_prybar() \
                and gsm.check_char_prop_gt('protagonist',12,'str')
    def _r35355_condition(gsm):
        return gsm.get_has_prybar()
    def _r35358_condition(gsm):
        return not gsm.get_morte_skel_mort_quip()
    def _r35359_condition(gsm):
        return gsm.get_morte_skel_mort_quip()
    def _r35421_condition(gsm):
        return not gsm.get_has_prybar() \
                and gsm.check_char_prop_lt('protagonist',13,'str')
    def _r35429_condition(gsm):
        return not gsm.get_has_prybar() \
                and gsm.check_char_prop_gt('protagonist',12,'str')
    def _r35432_condition(gsm):
        return gsm.get_has_prybar()
    def _r35435_condition(gsm):
        return not gsm.get_morte_skel_mort_quip()
    def _r35436_condition(gsm):
        return gsm.get_morte_skel_mort_quip()
    def _r35498_condition(gsm):
        return not gsm.get_has_prybar() \
                and gsm.check_char_prop_lt('protagonist',13,'str')
    def _r35506_condition(gsm):
        return not gsm.get_has_prybar() \
                and gsm.check_char_prop_gt('protagonist',12,'str')
    def _r35509_condition(gsm):
        return gsm.get_has_prybar()
    def _r35512_condition(gsm):
        return not gsm.get_morte_skel_mort_quip()
    def _r35513_condition(gsm):
        return gsm.get_morte_skel_mort_quip()
    def _r35575_condition(gsm):
        return not gsm.get_has_prybar() \
                and gsm.check_char_prop_lt('protagonist',13,'str')
    def _r35583_condition(gsm):
        return not gsm.get_has_prybar() \
                and gsm.check_char_prop_gt('protagonist',12,'str')
    def _r35586_condition(gsm):
        return gsm.get_has_prybar()
    def _r35589_condition(gsm):
        return not gsm.get_morte_skel_mort_quip()
    def _r35590_condition(gsm):
        return gsm.get_morte_skel_mort_quip()
    def _r4686_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',13,'int')
    def _r64535_condition(gsm):
        return not gsm.get_vaxis_global_xp()
    def _r64534_condition(gsm):
        return gsm.get_vaxis_global_xp()


init 10 python:
    gsm = renpy.store.global_settings_manager


# ###
# Original:  DLG/DMORTE.DLG
# ###


label dmorte_s330_init:
    show morte_img default at center_left_down
    return
label dmorte_s330_dispose:
    hide morte_img
    jump show_graphics_menu


# ### starts extern 61
# ##
# #
# s61 # say3870
label dmorte_s61:  # from -
    morte 'Эй! Эй! Что ты делаешь?'

    menu:
        'Я *хотел* поговорить с этим парнем. Проблемы?':
            # r178 # reply3871
            $ _r3871_action(gsm)
            jump dmorte_s62
        'Ничего. Идем.':
            # r179 # reply3872
            jump show_graphics_menu


# s62 # say3873
label dmorte_s62:  # from 61.0
    morte 'Если ты собираешься трясти черепушкой с трухлявыми, то, пожалуйста, без меня. Я с ними не в лучших отношениях… и тебе не стоит с ними родниться.'
    morte 'Они скорее спалят тебя или заживо зароют, чем будут слушать. Не валяй дурака, давай выбираться отсюда.'

    menu:
        'Спасибо за совет, но я *все еще* хочу поговорить с этим парнем.':
            # r180 # reply3874
            $ _r3874_action(gsm)
            jump dmorte_s64
        'Согласен. Идем.':
            # r181 # reply3875
            jump show_graphics_menu


# s63 # say3876
label dmorte_s63:  # from -
    morte 'Эй! Ты оглох, что ли? Ты что творишь?'

    menu:
        'Слушай, я хочу поговорить с этим парнем. Проблемы?':
            # r182 # reply3877
            $ _r3877_action(gsm)
            jump dmorte_s64
        'Ничего. Идем.':
            # r183 # reply3878
            jump show_graphics_menu


# s64 # say3879
label dmorte_s64:  # from 62.0 63.0 # Manually checked EXTERN ~DDUST~ : 3
    morte 'Тогда *не слушай* меня больше — тебя похоронят.'

    menu:
        'Да-да, а ты сможешь поплакаться на панихиде. А пока — умолкни.':
            # r184 # reply3880
            jump ddust_s3
        'А, ты прав. Забудь об этом. Идем.':
            # r185 # reply3881
            jump show_graphics_menu
# #
# ##
# ### ends extern 61


# ### starts extern 81
# ##
# #
# s81 # say4338
label dmorte_s81:  # from -
    morte 'Эй! Эй! Что ты делаешь?'

    menu:
        'Я *хотел* поговорить с этой дамочкой. Проблемы?':
            # r227 # reply4339
            $ _r4339_action(gsm)
            jump dmorte_s82
        'Ничего. Идем.':
            # r228 # reply4340
            jump show_graphics_menu


# s82 # say4341
label dmorte_s82:  # from 81.0
    morte 'Если ты собираешься трясти черепушкой с трухлявыми, то, пожалуйста, без меня. Я с ними не в лучших отношениях… и тебе не стоит с ними родниться. Они скорее спалят тебя или заживо зароют, чем будут слушать. Не валяй дурака, давай выбираться отсюда.'

    menu:
        'Спасибо за совет, но *все еще* хочу поговорить с этой дамочкой.':
            # r229 # reply4342
            $ _r4342_action(gsm)
            jump dmorte_s84
        'Согласен. Идем.':
            # r230 # reply4343
            jump show_graphics_menu


# s83 # say4344
label dmorte_s83:  # from -
    morte 'Эй! Ты оглох, что ли? Ты что творишь?'

    menu:
        'Слушай, я хочу поговорить с этой дамочкой. Проблемы?':
            # r231 # reply4345
            $ _r4345_action(gsm)
            jump dmorte_s84
        'Ничего. Идем.':
            # r232 # reply4346
            jump show_graphics_menu


# s84 # say4347
label dmorte_s84:  # from 82.0 83.0 # Manually checked EXTERN ~DDUSTFEM~ : 3
    morte 'Тогда *не слушай* меня больше — тебя похоронят.'

    menu:
        'Да-да, а ты сможешь поплакаться на панихиде. А пока — умолкни.':
            # r233 # reply4348
            jump ddustfem_s3
        'А, ты прав. Забудь об этом. Идем.':
            # r234 # reply4349
            jump show_graphics_menu
# #
# ##
# ### ends extern 81


# ### starts extern 110
# ##
# #
# s110 # say6609
label dmorte_s110:  # from - # Manually checked EXTERN ~DS42~ : 1
    morte 'Эй, шеф. Это уже вандализм. Эти скобы — возможно, единственное, что не дает рассыпаться этому мешку с костями.'
    morte 'Знаешь, с такими приятелями некромантия чудес не творит.'

    menu:
        'И что?':
            # r284 # reply6658
            $ _r6658_action(gsm)
            jump ds42_s1
        'О… Я не хотел ему навредить.':
            # r285 # reply6659
            $ _r6659_action(gsm)
            jump ds42_s1
        'Ну, тогда ладно. Может, в другой раз.':
            # r286 # reply6660
            jump ds42_s1
# #
# ##
# ### ends extern 110


# ### starts extern 111
# ##
# #
# s111 # say6610
label dmorte_s111:  # from - # Manually checked EXTERN ~DS42~ : 1
    morte 'Хм-м. Интересно, что подумает этот седобородый, если *я* возьму взаймы его тело…'

    menu:
        'Седобородый?':
            # r287 # reply6661
            jump ds42_s1
        'Не думаю, что он имеет что-то против.':
            # r288 # reply6662
            jump ds42_s1
        'Что-то мне подсказывает, что будь у тебя руки, ты бы был в два раза назойливее. Идем.':
            # r289 # reply6663
            jump ds42_s1
# #
# ##
# ### ends extern 111


# ### starts extern 112
# ##
# #
# s112 # say6611
label dmorte_s112:  # from - # Manually checked EXTERN ~DS42~ : 4 Manually checked EXTERN ~DS42~ : 9 Manually checked EXTERN ~DS42~ : 10
    morte 'Может, уже хватит? У него руки сейчас отвалятся.'

    menu:
        'Скрестить свои руки.' if _r6664_condition(gsm):
            # r290 # reply6664
            jump ds42_s4
        'Подстроиться под движения скелета… посмотреть, что получится.' if _r6665_condition(gsm):
            # r291 # reply6665
            jump ds42_s9
        'Э…':
            # r292 # reply6666
            jump ds42_s10
        'Оставить скелета в покое.':
            # r293 # reply6667
            jump show_graphics_menu
# #
# ##
# ### ends extern 112


# ### starts extern 370
# ##
# #
# s370 # say35310
label dmorte_s370:  # from 377.3
    morte 'Хм-м. Интересно, что подумает этот седобородый, если *я* возьму взаймы его тело…'

    menu:
        'Седобородый?':
            # r757 # reply35311
            jump dmorte_s371
        'Не думаю, что он имеет что-то против.':
            # r758 # reply35326
            jump dmorte_s372
        'Что-то мне подсказывает, что будь у тебя руки, ты бы был в два раза назойливее. Идем.':
            # r759 # reply35327
            jump dmorte_s373


# s371 # say35312
label dmorte_s371:  # from 370.0
    morte 'Седобородый… ну знаешь, старикашка, старичье, рухлядь… старый.'

    menu:
        'Ну, не думаю, что у него есть хоть один аргумент против. Почему бы и не взять его тело?':
            # r760 # reply35313
            jump dmorte_s372
        'Что-то мне подсказывает, что будь у тебя руки, ты бы был в два раза назойливее. Идем.':
            # r761 # reply35325
            jump dmorte_s373


# s372 # say35314
label dmorte_s372:  # from 370.1 371.0
    teller 'Морт изучает скелет, но затем качает головой.'
    morte 'Не… Мне нужно что-нибудь посвежее. И что-нибудь чуть более величественней… а этот какой-то весь скрипучий и в трещинах.'

    menu:
        'А ты, значит, нет?':
            # r762 # reply35315
            jump dmorte_s373
        'Ладно. Идем.':
            # r763 # reply35324
            jump show_graphics_menu


# s373 # say35316
label dmorte_s373:  # from 370.2 371.1 372.0
    morte 'Ох, да ты просто кладезь хохм.'
    teller 'Морт свирепо смотрит на тебя.'
    morte 'Да и вообще. НА СЕБЯ посмотри. Зеркала молят о пощаде, когда ты проходишь мимо них.'

    menu:
        'Да? Зато у *меня* все при себе.':
            # r764 # reply35317
            jump dmorte_s374
        'Идем.':
            # r765 # reply35323
            jump show_graphics_menu


# s374 # say35318
label dmorte_s374:  # from 373.0
    morte 'Морт фыркает. Тебе совершенно непонятно, как это ему удалось без легких.'

    menu:
        'Позволь мне сказать, Морт. Нет ничего лучше, чем ходить, размахивать руками, вдыхать свежий воздух через полные легкие. Иметь тело — это ОЧЕНЬ приятно.':
            # r766 # reply35319
            $ _r35319_action(gsm)
            jump dmorte_s375
        'Идем.':
            # r767 # reply35322
            jump show_graphics_menu


# s375 # say35320
label dmorte_s375:  # from 374.0
    morte 'Да будет тебе известно, что помощь тебе в побеге из препараторской только что добавлена в растущий список моих сожалений.'
    teller 'Морт снова фыркает.'
    morte 'Надо было оставить тебя там гнить… подольше, то есть.'

    menu:
        'Очень приятно это слышать. Идем.':
            # r768 # reply35321
            jump show_graphics_menu


# s376 # say35341
label dmorte_s376:  # from -
    morte 'Эй, шеф. Это уже вандализм. Эти скобы — возможно, единственное, что не дает рассыпаться этому мешку с костями.'
    morte 'Знаешь, с такими приятелями некромантия чудес не творит.'

    menu:
        'И что?':
            # r769 # reply35342
            $ _r35342_action(gsm)
            jump dmorte_s377
        'О… Я не хотел ему навредить.':
            # r770 # reply35360
            $ _r35360_action(gsm)
            jump dmorte_s377
        'Ну, тогда ладно. Может, в другой раз.':
            # r771 # reply35361
            jump dmorte_s377


# s377 # say35343
label dmorte_s377:  # from 376.0 376.1 376.2 # Manually checked EXTERN ~DS1221~ : 4 Manually checked EXTERN ~DS1221~ : 5 Manually checked EXTERN ~DS1221~ : 6
    morte 'Да нет, ничего.'
    teller 'Морт делает странный жест. Тебе это кажется похожим на пожимание плечами.'
    morte 'Просто не был уверен, что ты это знаешь. Валяй, можешь попробовать.'

    menu:
        'Попробовать вытащить скобы из суставов скелета.' if _r35344_condition(gsm):
            # r772 # reply35344
            jump ds1221_s4
        'Попробовать вытащить скобы из суставов скелета.' if _r35352_condition(gsm):
            # r773 # reply35352
            jump ds1221_s5
        'Попробовать вытащить скобы из суставов скелета.' if _r35355_condition(gsm):
            # r774 # reply35355
            jump ds1221_s6
        'Неважно, может быть, в другой раз.' if _r35358_condition(gsm):
            # r775 # reply35358
            $ _r35358_action(gsm)
            jump dmorte_s370
        'Неважно, может быть, в другой раз.' if _r35359_condition(gsm):
            # r776 # reply35359
            jump show_graphics_menu


# s378 # say35387
label dmorte_s378:  # from 385.3
    morte 'Хм-м. Интересно, что подумает этот седобородый, если *я* возьму взаймы его тело…'

    menu:
        'Седобородый?':
            # r777 # reply35388
            jump dmorte_s379
        'Не думаю, что он имеет что-то против.':
            # r778 # reply35403
            jump dmorte_s380
        'Что-то мне подсказывает, что будь у тебя руки, ты бы был в два раза назойливее. Идем.':
            # r779 # reply35404
            jump dmorte_s381


# s379 # say35389
label dmorte_s379:  # from 378.0
    morte 'Седобородый… ну знаешь, старикашка, старичье, рухлядь… старый.'

    menu:
        'Ну, не думаю, что у него есть хоть один аргумент против. Почему бы и не взять его тело?':
            # r780 # reply35390
            jump dmorte_s380
        'Что-то мне подсказывает, что будь у тебя руки, ты бы был в два раза назойливее. Идем.':
            # r781 # reply35402
            jump dmorte_s381


# s380 # say35391
label dmorte_s380:  # from 378.1 379.0
    teller 'Морт изучает скелет, но затем качает головой.'
    morte 'Не… Мне нужно что-нибудь посвежее. И что-нибудь чуть более величественней… а этот какой-то весь скрипучий и в трещинах.'

    menu:
        'А ты, значит, нет?':
            # r782 # reply35392
            jump dmorte_s381
        'Ладно. Идем.':
            # r783 # reply35401
            jump show_graphics_menu


# s381 # say35393
label dmorte_s381:  # from 378.2 379.1 380.0
    morte 'Ох, да ты просто кладезь хохм.'
    teller 'Морт свирепо смотрит на тебя.'
    morte 'Да и вообще. НА СЕБЯ посмотри. Зеркала молят о пощаде, когда ты проходишь мимо них.'

    menu:
        'Да? Зато у *меня* все при себе.':
            # r784 # reply35394
            jump dmorte_s382
        'Идем.':
            # r785 # reply35400
            jump show_graphics_menu


# s382 # say35395
label dmorte_s382:  # from 381.0
    teller 'Морт фыркает. Тебе совершенно непонятно, как это ему удалось без легких.'

    menu:
        'Позволь мне сказать, Морт. Нет ничего лучше, чем ходить, размахивать руками, вдыхать свежий воздух через полные легкие. Иметь тело — это ОЧЕНЬ приятно.':
            # r786 # reply35396
            $ _r35396_action(gsm)
            jump dmorte_s383
        'Идем.':
            # r787 # reply35399
            jump show_graphics_menu


# s383 # say35397
label dmorte_s383:  # from 382.0
    morte 'Да будет тебе известно, что помощь тебе в побеге из препараторской только что добавлена в растущий список моих сожалений.'
    teller 'Морт снова фыркает.'
    morte 'Надо было оставить тебя там гнить… подольше, то есть.'

    menu:
        'Очень приятно это слышать. Идем.':
            # r788 # reply35398
            jump show_graphics_menu
# #
# ##
# ### ends extern 380


# ### starts extern 384
# ##
# #
# s384 # say35418
label dmorte_s384:  # from -
    morte 'Эй, шеф. Это уже вандализм. Эти скобы — возможно, единственное, что не дает рассыпаться этому мешку с костями.'
    morte 'Знаешь, с такими приятелями некромантия чудес не творит.'

    menu:
        'И что?':
            # r789 # reply35419
            $ _r35419_action(gsm)
            jump dmorte_s385
        'О… Я не хотел ему навредить.':
            # r790 # reply35437
            $ _r35437_action(gsm)
            jump dmorte_s385
        'Ну, тогда ладно. Может, в другой раз.':
            # r791 # reply35438
            jump dmorte_s385

# s385 # say35420
label dmorte_s385:  # from 384.0 384.1 384.2 # Manually checked EXTERN ~DS748~ : 4 Manually checked EXTERN ~DS748~ : 5 Manually checked EXTERN ~DS748~ : 6
    morte 'Да нет, ничего.'
    teller 'Морт делает странный жест. Тебе это кажется похожим на пожимание плечами.'
    morte 'Просто не был уверен, что ты это знаешь. Валяй, можешь попробовать.'

    menu:
        'Попробовать вытащить скобы из суставов скелета.' if _r35421_condition(gsm):
            # r792 # reply35421
            jump ds748_s4
        'Попробовать вытащить скобы из суставов скелета.' if _r35429_condition(gsm):
            # r793 # reply35429
            jump ds748_s5
        'Попробовать вытащить скобы из суставов скелета.' if _r35432_condition(gsm):
            # r794 # reply35432
            jump ds748_s6
        'Неважно, может быть, в другой раз.' if _r35435_condition(gsm):
            # r795 # reply35435
            $ _r35435_action(gsm)
            jump dmorte_s378
        'Неважно, может быть, в другой раз.' if _r35436_condition(gsm):
            # r796 # reply35436
            jump show_graphics_menu
# #
# ##
# ### ends extern 384


# ### starts extern 386
# ##
# #

# #
# ##
# ### ends extern 386


# ### starts extern 330
# ##
# #
# s330 # say34990 # This state was a copypasted state in the original Ps:T as dmorte_s338 dmorte_s358 etc
label dmorte_s330:  # from -
    call dmorte_s330_init
    morte 'Пссст. Видел, как она посмотрела на меня? А? Ты видел это? Как она огибала взглядом кривую моей затылочной кости?'

    menu:
        'О чем это ты *толкуешь*?':
            # r677 # reply34991
            $ _r34991_action(gsm)
            jump dmorte_s331
        'Ты имеешь в виду этот бессмысленный пустой могильный взгляд?':
            # r678 # reply35001
            $ _r35001_action(gsm)
            jump dmorte_s331


# s331 # say34992
label dmorte_s331:  # from 330.0 330.1
    morte 'Чт… да ты что, ОСЛЕП?! Она меня изучала! Она бесстыдно меня ХОТЕЛА!'

    menu:
        'Скорее хотела, чтобы ты *исчез*. Да она была слишком занята МНОЙ, чтобы отвлекаться на какую-то болтающуюся голову с большим ртом.':
            # r679 # reply34993
            $ _r34993_action(gsm)
            jump dmorte_s332
        'По-моему, у тебя слишком богатое воображение. Она зомби. Труп. Мертвая. Скорее всего, она тебя даже не заметила.':
            # r680 # reply34996
            jump dmorte_s333
        'По-моему, тебе стоит время от времени отключать свое воображение.':
            # r681 # reply34999
            jump dmorte_s333
        'Как знаешь, Морт. Идем.':
            # r682 # reply35000
            jump dmorte_s330_dispose


# s332 # say34994
label dmorte_s332:  # from 331.0
    morte 'Тобой? Ага, конечно! Уж поверь мне, крошкам из могил нет дела до «мускулатуры», «у меня великолепное тело» и «я весь в шрамах и круто выгляжу».'
    morte 'Им нужны парни с ДУШОЙ. Типа меня, шеф. А трупов вроде ТЕБЯ повсюду навалом, как грязи.'

    menu:
        'Как знаешь, Морт. Идем.':
            # r683 # reply34995
            jump dmorte_s330_dispose


# s333 # say34997
label dmorte_s333:  # from 331.1 331.2
    morte 'Да-да-да, как пожелаешь. Если бы ты был настолько долго мертв, как я, ты бы улавливал сигналы.'
    morte 'Для тебя они, наверно, слишком ТОНКИЕ, чтобы их уловить, но именно поэтому я буду проводить ночи напролет с сочной свежеумершей крошкой.'
    morte 'А ты будешь бегать вокруг с воплями «А? Чего здесь творится? Куда пропала моя па-па-память?»'

    menu:
        'Как знаешь, Морт. Идем.':
            # r684 # reply34998
            jump dmorte_s330_dispose
# #
# ##
# ### ends extern 330


# ### starts extern 386
# ##
# #
# s386 # say35464
label dmorte_s386:  # from 393.3
    morte 'Хм-м. Интересно, что подумает этот седобородый, если *я* возьму взаймы его тело…'

    menu:
        'Седобородый?':
            # r797 # reply35465
            jump dmorte_s387
        'Не думаю, что он имеет что-то против.':
            # r798 # reply35480
            jump dmorte_s388
        'Что-то мне подсказывает, что будь у тебя руки, ты бы был в два раза назойливее. Идем.':
            # r799 # reply35481
            jump dmorte_s389


# s387 # say35466
label dmorte_s387:  # from 386.0
    morte 'Седобородый… ну знаешь, старикашка, старичье, рухлядь… старый.'

    menu:
        'Ну, не думаю, что у него есть хоть один аргумент против. Почему бы и не взять его тело?':
            # r800 # reply35467
            jump dmorte_s388
        'Что-то мне подсказывает, что будь у тебя руки, ты бы был в два раза назойливее. Идем.':
            # r801 # reply35479
            jump dmorte_s389


# s388 # say35468
label dmorte_s388:  # from 386.1 387.0
    teller 'Морт изучает скелет, но затем качает головой.'
    morte 'Не… Мне нужно что-нибудь посвежее. И что-нибудь чуть более величественней… а этот какой-то весь скрипучий и в трещинах.'

    menu:
        'А ты, значит, нет?':
            # r802 # reply35469
            jump dmorte_s389
        'Ладно. Идем.':
            # r803 # reply35478
            jump show_graphics_menu


# s389 # say35470
label dmorte_s389:  # from 386.2 387.1 388.0
    morte 'Ох, да ты просто кладезь хохм.'
    teller 'Морт свирепо смотрит на тебя.'
    morte 'Да и вообще. НА СЕБЯ посмотри. Зеркала молят о пощаде, когда ты проходишь мимо них.'

    menu:
        'Да? Зато у *меня* все при себе.':
            # r804 # reply35471
            jump dmorte_s390
        'Идем.':
            # r805 # reply35477
            jump show_graphics_menu


# s390 # say35472
label dmorte_s390:  # from 389.0
    teller 'Морт фыркает. Тебе совершенно непонятно, как это ему удалось без легких.'

    menu:
        'Позволь мне сказать, Морт. Нет ничего лучше, чем ходить, размахивать руками, вдыхать свежий воздух через полные легкие. Иметь тело — это ОЧЕНЬ приятно.':
            # r806 # reply35473
            $ _r35473_action(gsm)
            jump dmorte_s391
        'Идем.':
            # r807 # reply35476
            jump show_graphics_menu


# s391 # say35474
label dmorte_s391:  # from 390.0
    morte 'Да будет тебе известно, что помощь тебе в побеге из препараторской только что добавлена в растущий список моих сожалений.'
    teller 'Морт снова фыркает.'
    morte 'Надо было оставить тебя там гнить… подольше, то есть.'

    menu:
        'Очень приятно это слышать. Идем.':
            # r808 # reply35475
            jump show_graphics_menu


# s392 # say35495
label dmorte_s392:  # from -
    morte 'Эй, шеф. Это уже вандализм. Эти скобы — возможно, единственное, что не дает рассыпаться этому мешку с костями.'
    morte 'Знаешь, с такими приятелями некромантия чудес не творит.'

    menu:
        'И что?':
            # r809 # reply35496
            $ _r35496_action(gsm)
            jump dmorte_s393
        'О… Я не хотел ему навредить.':
            # r810 # reply35514
            $ _r35514_action(gsm)
            jump dmorte_s393
        'Ну, тогда ладно. Может, в другой раз.':
            # r811 # reply35515
            jump dmorte_s393


# s393 # say35497
label dmorte_s393:  # from 392.0 392.1 392.2 # Manually checked EXTERN ~DS996~ : 4 Manually checked EXTERN ~DS996~ : 5 Manually checked EXTERN ~DS996~ : 6
    morte 'Да нет, ничего.'
    teller 'Морт делает странный жест. Тебе это кажется похожим на пожимание плечами.'
    morte 'Просто не был уверен, что ты это знаешь. Валяй, можешь попробовать.'

    menu:
        'Попробовать вытащить скобы из суставов скелета.' if _r35498_condition(gsm):
            # r812 # reply35498
            jump ds996_s4
        'Попробовать вытащить скобы из суставов скелета.' if _r35506_condition(gsm):
            # r813 # reply35506
            jump ds996_s5
        'Попробовать вытащить скобы из суставов скелета.' if _r35509_condition(gsm):
            # r814 # reply35509
            jump ds996_s6
        'Неважно, может быть, в другой раз.' if _r35512_condition(gsm):
            # r815 # reply35512
            $ _r35512_action(gsm)
            jump dmorte_s386
        'Неважно, может быть, в другой раз.' if _r35513_condition(gsm):
            # r816 # reply35513
            jump show_graphics_menu


# s394 # say35541
label dmorte_s394:  # from 401.3
    morte 'Хм-м. Интересно, что подумает этот седобородый, если *я* возьму взаймы его тело…'

    menu:
        'Седобородый?':
            # r817 # reply35542
            jump dmorte_s395
        'Не думаю, что он имеет что-то против.':
            # r818 # reply35557
            jump dmorte_s396
        'Что-то мне подсказывает, что будь у тебя руки, ты бы был в два раза назойливее. Идем.':
            # r819 # reply35558
            jump dmorte_s397


# s395 # say35543
label dmorte_s395:  # from 394.0
    morte 'Седобородый… ну знаешь, старикашка, старичье, рухлядь… старый.'

    menu:
        'Ну, не думаю, что у него есть хоть один аргумент против. Почему бы и не взять его тело?':
            # r820 # reply35544
            jump dmorte_s396
        'Что-то мне подсказывает, что будь у тебя руки, ты бы был в два раза назойливее. Идем.':
            # r821 # reply35556
            jump dmorte_s397


# s396 # say35545
label dmorte_s396:  # from 394.1 395.0
    teller 'Морт изучает скелет, но затем качает головой.'
    morte 'Не… Мне нужно что-нибудь посвежее. И что-нибудь чуть более величественней… а этот какой-то весь скрипучий и в трещинах.'

    menu:
        'А ты, значит, нет?':
            # r822 # reply35546
            jump dmorte_s397
        'Ладно. Идем.':
            # r823 # reply35555
            jump show_graphics_menu


# s397 # say35547
label dmorte_s397:  # from 394.2 395.1 396.0
    morte 'Ох, да ты просто кладезь хохм.'
    teller 'Морт свирепо смотрит на тебя.'
    morte 'Да и вообще. НА СЕБЯ посмотри. Зеркала молят о пощаде, когда ты проходишь мимо них.'

    menu:
        'Да? Зато у *меня* все при себе.':
            # r824 # reply35548
            jump dmorte_s398
        'Идем.':
            # r825 # reply35554
            jump show_graphics_menu


# s398 # say35549
label dmorte_s398:  # from 397.0
    teller 'Морт фыркает. Тебе совершенно непонятно, как это ему удалось без легких.'

    menu:
        'Позволь мне сказать, Морт. Нет ничего лучше, чем ходить, размахивать руками, вдыхать свежий воздух через полные легкие. Иметь тело — это ОЧЕНЬ приятно.':
            # r826 # reply35550
            $ _r35550_action(gsm)
            jump dmorte_s399
        'Идем.':
            # r827 # reply35553
            jump show_graphics_menu


# s399 # say35551
label dmorte_s399:  # from 398.0
    morte 'Да будет тебе известно, что помощь тебе в побеге из препараторской только что добавлена в растущий список моих сожалений.'
    teller 'Морт снова фыркает.'
    morte 'Надо было оставить тебя там гнить… подольше, то есть.'

    menu:
        'Очень приятно это слышать. Идем.':
            # r828 # reply35552
            jump show_graphics_menu
# #
# ##
# ### ends extern 386


# ### starts extern 400
# ##
# #
# s400 # say35572
label dmorte_s400:  # from -
    morte 'Эй, шеф. Это уже вандализм. Эти скобы — возможно, единственное, что не дает рассыпаться этому мешку с костями.'
    morte 'Знаешь, с такими приятелями некромантия чудес не творит.'

    menu:
        'И что?':
            # r829 # reply35573
            $ _r35573_action(gsm)
            jump dmorte_s401
        'О… Я не хотел ему навредить.':
            # r830 # reply35591
            $ _r35591_action(gsm)
            jump dmorte_s401
        'Ну, тогда ладно. Может, в другой раз.':
            # r831 # reply35592
            jump dmorte_s401


# s401 # say35574
label dmorte_s401:  # from 400.0 400.1 400.2 # Manually checked EXTERN ~DS863~ : 4 Manually checked EXTERN ~DS863~ : 5 Manually checked EXTERN ~DS863~ : 6
    morte 'Да нет, ничего.'
    teller 'Морт делает странный жест. Тебе это кажется похожим на пожимание плечами.'
    morte 'Просто не был уверен, что ты это знаешь. Валяй, можешь попробовать.'

    menu:
        'Попробовать вытащить скобы из суставов скелета.' if _r35575_condition(gsm):
            # r832 # reply35575
            jump ds863_s4
        'Попробовать вытащить скобы из суставов скелета.' if _r35583_condition(gsm):
            # r833 # reply35583
            jump ds863_s5
        'Попробовать вытащить скобы из суставов скелета.' if _r35586_condition(gsm):
            # r834 # reply35586
            jump ds863_s6
        'Неважно, может быть, в другой раз.' if _r35589_condition(gsm):
            # r835 # reply35589
            $ _r35589_action(gsm)
            jump dmorte_s394
        'Неважно, может быть, в другой раз.' if _r35590_condition(gsm):
            # r836 # reply35590
            jump show_graphics_menu
# #
# ##
# ### ends extern 400


# ### starts extern 477
# ##
# #
# s477 # say45088
label dmorte_s477:  # from -
    morte 'Ха. Кажется, кто-то забыл приказать этому бедолаге прекратить следовать правилу трех.'

    menu:
        'О чем это ты?':
            # r980 # reply45089
            jump dmorte_s478


# s478 # say45091
label dmorte_s478:  # from 477.0
    morte 'У этих трупов котелок уже почти не варит, так что они могут выполнять не больше одного задания одновременно…'
    morte 'Если приказать им делать что-то, то они будут это делать до тех пор, пока кто-нибудь их не остановит. Этот бедолага, наверное, закончил свою работу, но сообщить об этом ему забыли.'
    morte 'Этот бедолага, наверное, закончил свою работу, но сообщить об этом ему забыли.'

    menu:
        'А кто отдает им приказы?':
            # r981 # reply45092 «965»
            jump dmorte_s481
        'Ты что-то сказал про «правило трех». Что ты имел ввиду?':
            # r982 # reply45093
            $ _r45093_action(gsm)
            jump dmorte_s479
        'Ладно. Давай двигаться дальше.':
            # r983 # reply45094
            jump dmorte_s330_dispose


# s479 # say45095
label dmorte_s479:  # from 478.1 481.0
    morte 'А? Ну, правило трех — это один из пресловутых законов планов, согласно которому все на свете случается по трое…'
    morte '…или состоит из трех частей… или что всегда есть выбор из трех вариантов, ну и так далее.'

    menu:
        'Ты так говоришь, как будто не очень веришь в это.':
            # r984 # reply45096
            jump dmorte_s480


# s480 # say45098
label dmorte_s480:  # from 479.0 # Manually checked EXTERN ~DZM965~ : 1
    morte 'По мне, так все это фигня. Если ты возьмешь с потолка число, любое число, и попытаешься к нему приделать великий смысл, то ты всегда найдешь кучу каких-нибудь совпадений.'

    menu:
        'Понятно. До этого ты говорил о том, что кто-то отдал этому трупу приказ, а потом забыл его остановить. А кто отдает трупам приказы?':
            # r985 # reply45099
            jump dmorte_s481
        'Понятно. Я хочу еще намного осмотреть этого зомби…':
            # r986 # reply45100
            jump dzm965_s1
        'Ладно. Давай двигаться дальше.':
            # r987 # reply45101
            jump dmorte_s330_dispose


# s481 # say45102
label dmorte_s481:  # from 478.0 480.0 # Manually checked EXTERN ~DZM965~ : 1
    morte 'Их выписал из книги мертвых либо один из здешних смотрителей, либо какой-то некромант. Скорее всего, это один из смотрителей… в конце концов, это им нужна дешевая рабочая сила.'

    menu:
        'Понятно. А что ты там говорил до этого… про «правило трех»?':
            # r988 # reply45103
            $ _r45103_action(gsm)
            jump dmorte_s479
        'Понятно. Я хочу еще намного осмотреть этого зомби…':
            # r989 # reply45104
            jump dzm965_s1
        'Ладно. Давай двигаться дальше.':
            # r990 # reply45105
            jump dmorte_s330_dispose
# #
# ##
# ### ends extern 477


# ### starts extern 482
# ##
# #
# s482 # say45540
label dmorte_s482:  # from - # Manually checked EXTERN ~DZM985~ : 3
    morte 'Э… шеф… осторож…'

    jump dzm985_s3
# #
# ##
# ### ends extern 482


# ### starts extern 102
# moved into ddhall_s0
# ### ends extern 102


# ### starts extern 85
# ##
# #
# s85 # say4675
label dmorte_s85:  # from -
    teller 'Морт шепотом вклинивается в разговор.'
    morte 'О силы… этот пень — *анархист*. Строить из себя зомби — это первое, что может взбрести в их пустые головы.'

    menu:
        'Анархист?':
            # r235 # reply4676
            $ _r4676_action(gsm)
            jump dmorte_s86


# s86 # say4677
label dmorte_s86:  # from 85.0 # Manually checked EXTERN ~DVAXIS~ : 11 Manually checked EXTERN ~DVAXIS~ : 10
    morte 'Анархисты… это такая фракция…'
    teller 'Похоже, Морт еле сдерживает поток оскорблений, но затем замечает, что зомби смотрит на вас обоих, внимательно слушая.'
    morte '…они, э, хотят *освободить* всех от оков правительства. Свергнуть старый порядок, чтобы установить новый — без никаких порядков.'

    menu:
        'Правда: Похоже на благородное стремление. Порядку время от времени не помешает хорошая встряска.':
            # r236 # reply4678
            $ _r4678_action(gsm)
            jump dvaxis_s11
        'Ложь: Похоже на благородное стремление. Любой анархист, посвятивший себя столь высокой цели, *определенно* является мне другом.':
            # r237 # reply4679
            $ _r4679_action(gsm)
            jump dvaxis_s11
        'Это все довольно… противоречиво.':
            # r238 # reply4680
            jump dvaxis_s10
        'Это одна из самых идиотских вещей, которую я когда-либо слышал.':
            # r239 # reply4681
            jump dvaxis_s10
        'Правда: Вряд ли кому-то это покажется созиданием. Для прогресса всегда нужны какой-никакой порядок и закон.':
            # r240 # reply4682
            $ _r4682_action(gsm)
            jump dvaxis_s10
# #
# ##
# ### ends extern 85


# ### starts extern 87
# ##
# #
# s87 # say4683
label dmorte_s87:  # from -
    teller 'Морт шепчет.'
    morte 'Он интересуется, не спятил ли ты, не слетел с катушек, не выжил из ума… и я, кстати, тоже.'
    morte 'А теперь выкинь это «Я очнулся из мертвых» из своего лексикона, хорошо?! Ты ставишь меня в глупое положение.'

    menu:
        'Я смущаю ТЕБЯ?':
            # r241 # reply4684
            jump dmorte_s88
        'Я просто хотел узнать, о чем этот… труп… говорит. Ясно?':
            # r242 # reply4685
            jump dmorte_s88
        'Не моя вина, что никто в этом сумасшедшем… «чокнутом»… месте не говорит нормально… или хотя бы не ВЫГЛЯДИТ так.' if _r4686_condition(gsm):
            # r243 # reply4686
            jump dmorte_s88
        'Слушай, я НЕ хочу лгать этому парню. Лучше говорить с ним напрямую.':
            # r244 # reply4687
            $ _r4687_action(gsm)
            jump dmorte_s88


# s88 # say4688
label dmorte_s88:  # from 87.0 87.1 87.2 87.3 # Manually checked EXTERN ~DVAXIS~ : 15
    teller 'Морт вздыхает.'
    morte 'Слушай, шеф… ты должен понимать свою ситуацию. Ты не сможешь разгуливать, рассказывая всем одну только ПРАВДУ. Мы не должны делать себя целями ловца кроликов, ясно?'

    menu:
        'Ловец кроликов? Цели? Что это… а, неважно.':
            # r245 # reply4689
            jump dvaxis_s15
        'Замолкни, Морт.':
            # r246 # reply4690
            jump dvaxis_s15
        'Я… я запомню это. Мне нужно поговорить с этим «зомби».':
            # r247 # reply4691
            jump dvaxis_s15
# #
# ##
# ### ends extern 87


# ### starts extern 89
# ##
# #
# s89 # say4692
label dmorte_s89:  # from -
    morte 'Погоди…'
    teller 'Морт говорит удивленно.'
    morte 'Да этот пень — *анархист*. Ха. Строить из себя зомби — это первое, что может взбрести в их пустые головы.'

    menu:
        'Анархист?':
            # r248 # reply4693
            $ _r4693_action(gsm)
            jump dmorte_s90


# s90 # say4694
label dmorte_s90:  # from 89.0 # Manually checked EXTERN ~DVAXIS~ : 71
    morte 'Анархисты — это фракция, которая тратит свое время на слежку за представителями власти и на поиски способов низвергнуть все, от чего несет порядком или контролем.'
    teller 'Морт фыркает.'
    morte 'Анархисты считают, что каждый пень на планах должен быть свободен и счастлив искать свою собственную «правду», как только правительство будет сожжено дотла.'
    morte 'Они хотят основать новый порядок, в котором не будет никакого порядка.'

    menu:
        'Правда: Похоже на благородное стремление. Порядку время от времени не помешает хорошая встряска.':
            # r249 # reply4695
            $ _r4695_action(gsm)
            jump dvaxis_s71
        'Это все довольно… противоречиво.':
            # r250 # reply4696
            jump dvaxis_s71
        'Это одна из самых идиотских вещей, которую я когда-либо слышал.':
            # r251 # reply4697
            jump dvaxis_s71
        'Как хочешь.':
            # r252 # reply4698
            jump dvaxis_s71
        'Правда: Вряд ли кому-то это покажется созиданием. Для прогресса всегда нужны какой-никакой порядок и закон.':
            # r253 # reply4699
            $ _r4699_action(gsm)
            jump dvaxis_s71
# #
# ##
# ### ends extern 89

# ### starts extern 91
# ##
# #
# s91 # say4700
label dmorte_s91:  # from - # Manually checked EXTERN ~DVAXIS~ : 43
    morte 'Он говорит, что этот Фарод продал очень много жмуриков… трупов… тленным. Ну, сборщики занимаются этим — находят тела мертвых и продают их тленным.'
    morte 'Похоже, этот Фарод запродал так много жмуриков, что трухлявые начали подозревать, что он записывает жителей Улья в книгу мертвых раньше положенного срока… ну, ты понял, просто убивает их.'

    menu:
        'Понятно. Я хотел бы знать кое-что еще…':
            # r254 # reply4701
            jump dvaxis_s43
        'Да этот Фарод просто святой. Возможно, позже у меня будут другие вопросы. Никуда не уходи.':
            # r255 # reply4702
            jump dmorte_s330_dispose
# #
# ##
# ### ends extern 91


# ### starts extern 92
# ##
# #
# s92 # say4703
label dmorte_s92:  # from - # Manually checked EXTERN ~DVAXIS~ : 43
    morte 'Он хочет знать, не обокрал ли кто тебя. Наверно, интересуется, что случилось.'

    menu:
        'Понятно. Я хотел бы знать кое-что еще…':
            # r256 # reply4704
            jump dvaxis_s43
        'Да, я жду не дождусь поймать этого вора. Слушай, возможно, позже у меня будут другие вопросы. Никуда не уходи.':
            # r257 # reply4705
            jump dmorte_s330_dispose
# #
# ##
# ### ends extern 92


# ### starts extern 93
# moved into dvaxis_s39
# ### ends extern 93


# ### starts extern 94
# ##
# #
# s94 # say4708
label dmorte_s94:  # from - # Manually checked EXTERN ~DVAXIS~ : 66
    morte 'Не могу поверить, что ты делаешь это. Ты, что, СОВСЕМ спятил?'

    menu:
        'Бред, как по мне…' if _r64535_condition(gsm):
            # r258 # reply64535
            $ _r64535_action(gsm)
            jump dvaxis_s66
        'Бред, как по мне…' if _r64534_condition(gsm):
            # r259 # reply64534
            $ _r64534_action(gsm)
            jump dmorte_s330_dispose
# #
# ##
# ### ends extern 94


# ### starts extern 95
# ##
# #
# s95 # say4710
label dmorte_s95:  # from - # Manually checked EXTERN ~DVAXIS~ : 67
    morte 'А нельзя ли ему зашить рот потуже?'

    menu:
        'Замоокни, Моот…':
            # r260 # reply4711
            jump dvaxis_s67
        'Ммм-ХММФ!':
            # r261 # reply4712
            jump dmorte_s330_dispose
# #
# ##
# ### ends extern 95


# ### starts extern 102
# ##
# #
# s102 # say5049
label dmorte_s102:  # from -
    call ddhall_init
    morte 'Эй, шеф! Ты что творишь?!'

    menu:
        'Я хотел поговорить с этим писарем. Он может кое-что знать о том, как я попал сюда.':
            # r271 # reply5050
            jump dmorte_s103


# s103 # say5052
label dmorte_s103:  # from 102.0 # Manually checked EXTERN ~DDHALL~ : 0
    morte 'Послушай, трясти черепушкой с трухлявыми — это ПОСЛЕДНЯЯ мысль, которая должна…'

    jump ddhall_s0

# s104 # say5053
label dmorte_s104:  # from - # Manually checked EXTERN ~DDHALL~ : 1
    morte 'И мы *тем более* не должны болтать с больными трухляками. Давай, пошли отсюда. Чем быстрее мы свалим отсюда, тем лучш…'

    jump ddhall_s1
# #
# ##
# ### ends extern 102



# ### starts extern 55
# ##
# #
# s55 # say3473
label dmorte_s55:  # from - # Manually checked EXTERN ~DEIVENE~ : 4
    morte 'Думаю, эта трухлявая цыпочка немного тугая на ухо, шеф. Давай просто свалим отсюда, а?'

    menu:
        'Что не так с ее руками?':
            # r167 # reply3474
            $ _r3474_action(gsm)
            jump dmorte_s56
        'Прикоснуться к женщине, привлечь ее внимание.':
            # r168 # reply3475
            jump deivene_s4
        'Оставить ее в покое.':
            # r169 # reply3476
            jump dmorte_s330_dispose


# s56 # say3477
label dmorte_s56:  # from 55.0 # Manually checked EXTERN ~DEIVENE~ : 4
    morte 'Э… она из тифлингов, шеф. В их жилах течет лихая кровь нечисти. Кто-то из предков спутался с каким-то нечистым духом.'
    morte 'Из-за этого некоторые из них немного тронутые… и обычно выглядят они соответствующе.'

    menu:
        'Прикоснуться к женщине, привлечь ее внимание.':
            # r170 # reply3478
            jump deivene_s4
        'Оставить ее в покое.':
            # r171 # reply3479
            jump dmorte_s330_dispose


# s57 # say3480
label dmorte_s57:  # from -
    morte 'Думаю, эта трухлявая цыпочка немного тугая на ухо, шеф. Давай просто свалим отсюда, а?'

    menu:
        'Что не так с ее руками?':
            # r172 # reply3483
            $ _r3483_action(gsm)
            jump dmorte_s58
        'Уйти.':
            # r173 # reply3484
            jump dmorte_s330_dispose


# s58 # say3481
label dmorte_s58:  # from 57.0
    morte 'Э… она из тифлингов, шеф. В их жилах течет лихая кровь нечисти. Кто-то из предков спутался с каким-то нечистым духом. Из-за этого некоторые из них немного тронутые… и обычно выглядят они соответствующе.'

    menu:
        'Уйти.':
            # r174 # reply3482
            jump dmorte_s330_dispose


# s59 # say3487
label dmorte_s59:  # from - # Manually checked EXTERN ~DEIVENE~ 11 Manually checked EXTERN ~DEIVENE~ 10
    morte 'Похоже, у тебя новая подруга, шеф. Может, вас оставить наедине на часок, или?..'

    menu:
        'Замолкни, Морт.':
            # r175 # reply3488
            jump deivene_s11
        'Продолжать строить из себя зомби.':
            # r176 # reply3489
            jump deivene_s11
        'Оттолкнуть женщину.':
            # r177 # reply3490
            jump deivene_s10


# s60 # say3492
label dmorte_s60:  # from - # Manually checked EXTERN ~DEIVENE~ 14
    morte 'Это второй случай в моей жизни, когда я счастлив, что у меня нет носа.'

    jump deivene_s14
# #
# ##
# ### ends extern 55
