python:
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
    def _r45539_action(gsm):        # ?.play_sound('SPE_11') SetAnimState(Myself,ANIM_MIMEDIE)

        return python:
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

python:
    gsm           = renpy.store.global_settings_manager


# s0 # say45515
label DZM985.D_s0:  # from - # Check EXTENDS ~DMORTE~ : 482
    SPEAKER 'Этот труп, номер 985, встал как вкопанный; судя по состоянию его левой ноги, похоже, что его колено сгнило либо изъедено трупной плесенью. Труп неуверенно качается вперед и назад, пытаясь сохранить равновесие.'

    menu:
        'Толкнуть труп.' if _r45516_condition(gsm):
            # r0 # reply45516
            $ _r45516_action(gsm)
            jump 'show_graphics_menu'
        'Толкнуть труп.' if _r45517_condition(gsm):
            # r1 # reply45517
            $ _r45517_action(gsm)
            jump 'DZM985.D_s3'
        'Помочь трупу остаться в равновесии.' if _r45518_condition(gsm):
            # r2 # reply45518
            $ _r45518_action(gsm)
            jump 'DZM985.D_s4'
        'Помочь трупу остаться в равновесии.' if _r45519_condition(gsm):
            # r3 # reply45519
            $ _r45519_action(gsm)
            jump 'DZM985.D_s6'
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if _r45520_condition(gsm):
            # r4 # reply45520
            jump 'DZM985.D_s1'
        'Использовать на трупе свою способность История костей.' if _r45521_condition(gsm):
            # r5 # reply45521
            jump 'DZM985.D_s2'
        'Было приятно с тобой поболтать. Прощай.':
            # r6 # reply45522
            jump 'show_graphics_menu'
        'Оставить труп в покое.':
            # r7 # reply45523
            jump 'show_graphics_menu'


# s1 # say45524
label DZM985.D_s1:  # from 0.4 5.0 5.1 5.2
    SPEAKER 'Труп самозабвенно смотрит вперед, не подавая никаких признаков того, что он тебя услышал.'

    menu:
        'Оставить труп в покое.':
            # r8 # reply45525
            jump 'show_graphics_menu'


# s2 # say45526
label DZM985.D_s2:  # from 0.5 5.3
    SPEAKER 'Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Оставить труп в покое.':
            # r9 # reply45527
            jump 'show_graphics_menu'


# s3 # say45528
label DZM985.D_s3:  # from 0.1 6.0
    SPEAKER 'В левой ноге трупа раздается хруст, и тело падает, как срубленное дерево. Туловище ударяется о каменные плиты и раскалывается, как гнилая дыня; гной, булькая, вытекает из трещин. К твоему удивлению, никто даже не заметил падения мертвеца… и что еще более странно, левая нога продолжает стоять там, где стояло тело, словно по стойке смирно. Спустя мгновенье, нога падает с сочным гулким ударом.'

    jump 'show_graphics_menu'

# s4 # say45530
label DZM985.D_s4:  # from 0.2 # Check EXTENDS ~DMORTE~ : 482
    SPEAKER 'Ты тянешься к левой руке трупа, желая помочь ему устоять. Но когда ты хватаешься за его руку, труп неожиданно кренится вправо, и ты скорее тянешь его, чем помогаешь удержаться…'

    jump 'show_graphics_menu'

# s5 # say45531
label DZM985.D_s5:  # from -
    SPEAKER 'Похоже, кто-то заменил этому трупу левую руку и ногу от другого тела. Левая нога короче, чем надо, но теперь, по крайней мере, труп может стоять.'

    menu:
        'Извини, что сбил тебя с ног. Я случайно.' if _r45532_condition(gsm):
            # r10 # reply45532
            $ _r45532_action(gsm)
            jump 'DZM985.D_s1'
        'Извини, что сбил тебя с ног. Я случайно.' if _r45533_condition(gsm):
            # r11 # reply45533
            jump 'DZM985.D_s1'
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if _r45534_condition(gsm):
            # r12 # reply45534
            jump 'DZM985.D_s1'
        'Использовать на трупе свою способность История костей.' if _r45535_condition(gsm):
            # r13 # reply45535
            jump 'DZM985.D_s2'
        'Было приятно с тобой поболтать. Прощай.':
            # r14 # reply45536
            jump 'show_graphics_menu'
        'Оставить труп в покое.':
            # r15 # reply45537
            jump 'show_graphics_menu'


# s6 # say45538
label DZM985.D_s6:  # from 0.3
    SPEAKER 'Ты тянешься к левой руке трупа, желая помочь ему устоять. Но когда ты хватаешься за его руку, труп неожиданно кренится вправо, и ты скорее тянешь его, чем помогаешь удержаться…'

    menu:
        'Ой-ой…':
            # r16 # reply45539
            $ _r45539_action(gsm)
            jump 'DZM985.D_s3'


# s7 # say64205
label DZM985.D_s7:  # from 3.0
    SPEAKER 'Рассматривая гнилые остатки тела, ты замечаешь, левая рука совсем не тронута: она отвалилась от туловища во время падения, и совсем не похоже, чтобы она была поражена трупным гниением, как это случилось с остальной частью тела.'

    menu:
        'Хм-м. Думаю, я смогу найти применение этой руке…':
            # r17 # reply64206
            jump 'show_graphics_menu'