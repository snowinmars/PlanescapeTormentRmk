init python:
    def _r35275_action(gsm):        
        gsm.dec_law('law') 
        gsm.set_zombie_chaotic(True)


init python:
    def _r35275_condition(gsm):
        return not gsm.get_zombie_chaotic()
    def _r35292_condition(gsm):
        return gsm.get_zombie_chaotic()
    def _r35293_condition(gsm):
        return gsm.get_vaxis_exposed()
    def _r35294_condition(gsm):
        return gsm.get_can_speak_with_dead()
    def _r35299_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35300_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35301_condition(gsm):
        return gsm.get_morte_quip()
    def _r35302_condition(gsm):
        return gsm.get_morte_quip()
    def _r35303_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35304_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35277_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35290_condition(gsm):
        return gsm.get_morte_quip()
    def _r35291_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35296_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35297_condition(gsm):
        return gsm.get_morte_quip()
    def _r35298_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()


init 10 python:
    gsm = renpy.store.global_settings_manager


# ###
# Original:  DLG/DZF891.DLG
# Starts:    dzf891_s
# ###


label dzf891_init:
    return


label dzf891_dispose:
    jump show_graphics_menu


# s0 # say35274
label dzf891_s0:  # from - # IF ~  True()~ THEN BEGIN 0 // from:Check EXTENDS ~DMORTE~ : 366Check EXTENDS ~DMORTE~ : 366
    SPEAKER 'Этот труп женщины выглядит особенно отвратительно: он лишен ушей, носа и губ. Чтобы зашить рот, препарирующему пришлось стягивать кожу вокруг рта очень туго; через оставшуюся открытой щель все еще можно разглядеть ряд кривых желтых зубов. На лбу вырезан номер 891.'

    menu:
        'Итак… чем занимаешься вечером?' if _r35275_condition(gsm):
            # r0 # reply35275
            $ _r35275_action(gsm)
            jump dzf891_s1
        'Итак… чем занимаешься вечером?' if _r35292_condition(gsm):
            # r1 # reply35292
            jump dzf891_s1
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if _r35293_condition(gsm):
            # r2 # reply35293
            jump dzf891_s1
        'Использовать на трупе свою способность История костей.' if _r35294_condition(gsm):
            # r3 # reply35294
            jump dzf891_s2
        'Было приятно с тобой поболтать. Прощай.' if _r35299_condition(gsm):
            # r4 # reply35299
            jump show_graphics_menu
        'Оставить труп в покое.' if _r35300_condition(gsm):
            # r5 # reply35300
            jump show_graphics_menu
        'Было приятно с тобой поболтать. Прощай.' if _r35301_condition(gsm):
            # r6 # reply35301
            jump show_graphics_menu
        'Оставить труп в покое.' if _r35302_condition(gsm):
            # r7 # reply35302
            jump show_graphics_menu
        'Было приятно с тобой поболтать. Прощай.' if _r35303_condition(gsm):
            # r8 # reply35303
            jump show_graphics_menu
        'Оставить труп в покое.' if _r35304_condition(gsm):
            # r9 # reply35304
            jump show_graphics_menu


# s1 # say35276
label dzf891_s1:  # from 0.0 0.1 0.2 # Check EXTENDS ~DMORTE~ : 366
    SPEAKER 'Труп продолжает пялиться на тебя.'

    menu:
        'Тогда прощай.' if _r35277_condition(gsm):
            # r10 # reply35277
            jump show_graphics_menu
        'Тогда прощай.' if _r35290_condition(gsm):
            # r11 # reply35290
            jump show_graphics_menu
        'Тогда прощай.' if _r35291_condition(gsm):
            # r12 # reply35291
            jump show_graphics_menu


# s2 # say35295
label dzf891_s2:  # from 0.3 # Check EXTENDS ~DMORTE~ : 366 # False()
    SPEAKER 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Тогда прощай.' if _r35296_condition(gsm):
            # r13 # reply35296
            jump show_graphics_menu
        'Тогда прощай.' if _r35297_condition(gsm):
            # r14 # reply35297
            jump show_graphics_menu
        'Тогда прощай.' if _r35298_condition(gsm):
            # r15 # reply35298
            jump show_graphics_menu


# s3 # say35305
label dzf891_s3:  # from -
    SPEAKER 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    jump show_graphics_menu