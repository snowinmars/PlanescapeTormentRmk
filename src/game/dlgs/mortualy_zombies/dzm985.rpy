init python:
    def _s3_action(gsm):
        gsm.set_topple_985(True)
        gsm.set_dead_dzm985(True)


init python:
    def _r45516_action(gsm):
        gsm.dec_once_law('chaotic_zm985_1')
        gsm.dec_once_good('evil_zm985_1') # ?.play_sound('SPE_11') SetAnimState(Myself,ANIM_MIMEDIE)
    def _r45517_action(gsm):
        gsm.dec_once_law('chaotic_zm985_1')
        gsm.dec_once_good('evil_zm985_1') # ?.play_sound('SPE_11') SetAnimState(Myself,ANIM_MIMEDIE)
    def _r45518_action(gsm):
        gsm.inc_once_law('lawful_zm985_1')
        gsm.inc_once_good('good_zm985_1')
    def _r45519_action(gsm):
        gsm.inc_once_law('lawful_zm985_1')
        gsm.inc_once_good('good_zm985_1')
    def _r45532_action(gsm):
        gsm.dec_law()
        gsm.set_zombie_chaotic(True)
    def _r45539_action(gsm):
        # ?.play_sound('SPE_11') SetAnimState(Myself,ANIM_MIMEDIE)
        return


init python:
    def _r45516_condition(gsm):
        return gsm.get_in_party_morte()
    def _r45517_condition(gsm):
        return not gsm.get_in_party_morte()
    def _r45518_condition(gsm):
        return gsm.get_in_party_morte()
    def _r45519_condition(gsm):
        return not gsm.get_in_party_morte()
    def _r45520_condition(gsm):
        return gsm.get_vaxis_exposed()
    def _r45521_condition(gsm):
        return gsm.get_can_speak_with_dead()
    def _r45532_condition(gsm):
        return not gsm.get_zombie_chaotic()
    def _r45533_condition(gsm):
        return gsm.get_zombie_chaotic()
    def _r45534_condition(gsm):
        return gsm.get_vaxis_exposed()
    def _r45535_condition(gsm):
        return gsm.get_can_speak_with_dead()


init 10 python:
    gsm = renpy.store.global_settings_manager
    glm = renpy.store.global_location_manager


# ###
# Original:  DLG/DZM985.DLG
# ###


label start_dzm985_talk:
    call dzm985_init
    jump dzm985_s0
label start_dzm985_kill:
    call dzm985_init
    jump dzm985_s3
label dzm985_init:
    $ glm.set_location('mortuary_f2r5')
    $ gsm.set_meet_dzm985(True)
    scene bg mortuary5
    show dzm985_img default at center_left_down
    return
label dzm985_dispose:
    hide dzm985_img
    jump show_graphics_menu


# s0 # say45515
label dzm985_s0:  # from - # IF ~  Global("Topple_985","GLOBAL",0)~ THEN BEGIN 0 // from: Manually checked EXTERN ~DMORTE~ : 482
    teller 'Этот труп, номер «985», встал как вкопанный; судя по состоянию его левой ноги, похоже, что его колено сгнило либо изъедено трупной плесенью.'
    teller 'Труп неуверенно качается вперед и назад, пытаясь сохранить равновесие.'

    menu:
        'Толкнуть труп.' if _r45516_condition(gsm):
            # r0 # reply45516
            $ _r45516_action(gsm)
            jump dmorte_s482
        'Толкнуть труп.' if _r45517_condition(gsm):
            # r1 # reply45517
            $ _r45517_action(gsm)
            jump dzm985_s3
        'Помочь трупу остаться в равновесии.' if _r45518_condition(gsm):
            # r2 # reply45518
            $ _r45518_action(gsm)
            jump dzm985_s4
        'Помочь трупу остаться в равновесии.' if _r45519_condition(gsm):
            # r3 # reply45519
            $ _r45519_action(gsm)
            jump dzm985_s6
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if _r45520_condition(gsm):
            # r4 # reply45520
            jump dzm985_s1
        'Использовать на трупе свою способность История костей.' if _r45521_condition(gsm):
            # r5 # reply45521
            jump dzm985_s2
        'Было приятно с тобой поболтать. Прощай.':
            # r6 # reply45522
            jump dzm985_dispose
        'Оставить труп в покое.':
            # r7 # reply45523
            jump dzm985_dispose


# s1 # say45524
label dzm985_s1:  # from 0.4 5.0 5.1 5.2
    teller 'Труп самозабвенно смотрит вперед, не подавая никаких признаков того, что он тебя услышал.'

    menu:
        'Толкнуть труп.' if _r45516_condition(gsm):
            # r0 # reply45516
            $ _r45516_action(gsm)
            jump dmorte_s482
        'Толкнуть труп.' if _r45517_condition(gsm):
            # r1 # reply45517
            $ _r45517_action(gsm)
            jump dzm985_s3
        'Помочь трупу остаться в равновесии.' if _r45518_condition(gsm):
            # r2 # reply45518
            $ _r45518_action(gsm)
            jump dzm985_s4
        'Помочь трупу остаться в равновесии.' if _r45519_condition(gsm):
            # r3 # reply45519
            $ _r45519_action(gsm)
            jump dzm985_s6
        'Использовать на трупе свою способность История костей.' if _r45521_condition(gsm):
            # r5 # reply45521
            jump dzm985_s2
        'Было приятно с тобой поболтать. Прощай.':
            # r6 # reply45522
            jump dzm985_dispose
        'Оставить труп в покое.':
            # r8 # reply45525
            jump dzm985_dispose


# s2 # say45526
label dzm985_s2:  # from 0.5 5.3
    teller 'Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Толкнуть труп.' if _r45516_condition(gsm):
            # r0 # reply45516
            $ _r45516_action(gsm)
            jump dmorte_s482
        'Толкнуть труп.' if _r45517_condition(gsm):
            # r1 # reply45517
            $ _r45517_action(gsm)
            jump dzm985_s3
        'Помочь трупу остаться в равновесии.' if _r45518_condition(gsm):
            # r2 # reply45518
            $ _r45518_action(gsm)
            jump dzm985_s4
        'Помочь трупу остаться в равновесии.' if _r45519_condition(gsm):
            # r3 # reply45519
            $ _r45519_action(gsm)
            jump dzm985_s6
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if _r45520_condition(gsm):
            # r4 # reply45520
            jump dzm985_s1
        'Было приятно с тобой поболтать. Прощай.':
            # r6 # reply45522
            jump dzm985_dispose
        'Оставить труп в покое.':
            # r9 # reply45527
            jump dzm985_dispose


# s3 # say45528
label dzm985_s3:  # from 0.1 6.0 # PlaySoundNotRanged("SPE_11") SetAnimState(Myself,ANIM_MIMEDIE) CreateItem("Limb985",1,0,0) SetGlobal("Topple_985","GLOBAL",1) Kill(Myself) Deactivate(Myself)
    teller 'В левой ноге трупа раздается хруст, и тело падает, как срубленное дерево.'
    teller 'Туловище ударяется о каменные плиты и раскалывается, как гнилая дыня; гной, булькая, вытекает из трещин.'
    teller 'К твоему удивлению, никто даже не заметил падения мертвеца… и что еще более странно, левая нога продолжает стоять там, где стояло тело, словно по стойке смирно.'
    teller 'Спустя мгновенье, нога падает с сочным гулким ударом.'
    $ _s3_action(gsm)

    jump dzm985_s7

# s4 # say45530
label dzm985_s4:  # from 0.2 # Manually checked EXTERN ~DMORTE~ : 482 as dmorte1_s482 # ~PlaySoundNotRanged("SPE_11") SetAnimState(Myself,ANIM_MIMEDIE)
    teller 'Ты тянешься к левой руке трупа, желая помочь ему устоять. Но когда ты хватаешься за его руку, труп неожиданно кренится вправо, и ты скорее тянешь его, чем помогаешь удержаться…'

    jump dmorte_s482

# s5 # say45531
label dzm985_s5:  # from - # IF ~  GlobalGT("Topple_985","GLOBAL",0)
    teller 'Похоже, кто-то заменил этому трупу левую руку и ногу от другого тела. Левая нога короче, чем надо, но теперь, по крайней мере, труп может стоять.'

    menu:
        'Извини, что сбил тебя с ног. Я случайно.' if _r45532_condition(gsm):
            # r10 # reply45532
            $ _r45532_action(gsm)
            jump dzm985_s1
        'Извини, что сбил тебя с ног. Я случайно.' if _r45533_condition(gsm):
            # r11 # reply45533
            jump dzm985_s1
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if _r45534_condition(gsm):
            # r12 # reply45534
            jump dzm985_s1
        'Использовать на трупе свою способность История костей.' if _r45535_condition(gsm):
            # r13 # reply45535
            jump dzm985_s2
        'Было приятно с тобой поболтать. Прощай.':
            # r14 # reply45536
            jump dzm985_dispose
        'Оставить труп в покое.':
            # r15 # reply45537
            jump dzm985_dispose


# s6 # say45538
label dzm985_s6:  # from 0.3
    teller 'Ты тянешься к левой руке трупа, желая помочь ему устоять. Но когда ты хватаешься за его руку, труп неожиданно кренится вправо, и ты скорее тянешь его, чем помогаешь удержаться…'

    menu:
        'Ой-ой…':
            # r16 # reply45539
            $ _r45539_action(gsm)
            jump dzm985_s3


# s7 # say64205
label dzm985_s7:  # from 3.0
    teller 'Рассматривая гнилые остатки тела, ты замечаешь, левая рука совсем не тронута: она отвалилась от туловища во время падения, и совсем не похоже, чтобы она была поражена трупным гниением, как это случилось с остальной частью тела.'

    menu:
        'Хм-м. Думаю, я смогу найти применение этой руке…':
            # r17 # reply64206
            jump dzm985_dispose
