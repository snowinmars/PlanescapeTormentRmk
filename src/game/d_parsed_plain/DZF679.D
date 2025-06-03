init python:
    def _r35179_action(gsm):        
        gsm.dec_law('law') 
        gsm.set_zombie_chaotic(True)


init python:
    def _r35179_condition(gsm):
        return not gsm.get_zombie_chaotic()
    def _r35196_condition(gsm):
        return gsm.get_zombie_chaotic()
    def _r35197_condition(gsm):
        return gsm.get_vaxis_exposed()
    def _r35198_condition(gsm):
        return gsm.get_can_speak_with_dead()
    def _r35203_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35204_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35205_condition(gsm):
        return gsm.get_morte_quip()
    def _r35206_condition(gsm):
        return gsm.get_morte_quip()
    def _r35207_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35208_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35181_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35194_condition(gsm):
        return gsm.get_morte_quip()
    def _r35195_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35200_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35201_condition(gsm):
        return gsm.get_morte_quip()
    def _r35202_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()


define gsm = renpy.store.global_settings_manager


# ###
# Original:  DLG/DZF679.DLG
# Starts:    dzf679_s
# ###


label dzf679_init:
    return


label dzf679_dispose:
    jump show_graphics_menu


# s0 # say35178
label dzf679_s0:  # from - # Check EXTENDS ~DMORTE~ : 354
    SPEAKER 'Похоже, это труп довольно таки старой, даже древней женщины. Если не обращать внимание на зловоние бальзамирующей жидкости, швы на ее рту и номер 679, вышитый на правой щеке, то она выглядит почти так же, как и в последние годы своей жизни.'

    menu:
        'Итак… чем занимаешься вечером?' if _r35179_condition(gsm):
            # r0 # reply35179
            $ _r35179_action(gsm)
            jump dzf679_s1
        'Итак… чем занимаешься вечером?' if _r35196_condition(gsm):
            # r1 # reply35196
            jump dzf679_s1
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if _r35197_condition(gsm):
            # r2 # reply35197
            jump dzf679_s1
        'Использовать на трупе свою способность История костей.' if _r35198_condition(gsm):
            # r3 # reply35198
            jump dzf679_s2
        'Было приятно с тобой поболтать. Прощай.' if _r35203_condition(gsm):
            # r4 # reply35203
            jump show_graphics_menu
        'Оставить труп в покое.' if _r35204_condition(gsm):
            # r5 # reply35204
            jump show_graphics_menu
        'Было приятно с тобой поболтать. Прощай.' if _r35205_condition(gsm):
            # r6 # reply35205
            jump show_graphics_menu
        'Оставить труп в покое.' if _r35206_condition(gsm):
            # r7 # reply35206
            jump show_graphics_menu
        'Было приятно с тобой поболтать. Прощай.' if _r35207_condition(gsm):
            # r8 # reply35207
            jump show_graphics_menu
        'Оставить труп в покое.' if _r35208_condition(gsm):
            # r9 # reply35208
            jump show_graphics_menu


# s1 # say35180
label dzf679_s1:  # from 0.0 0.1 0.2 # Check EXTENDS ~DMORTE~ : 354
    SPEAKER 'Труп продолжает пялиться на тебя.'

    menu:
        'Тогда прощай.' if _r35181_condition(gsm):
            # r10 # reply35181
            jump show_graphics_menu
        'Тогда прощай.' if _r35194_condition(gsm):
            # r11 # reply35194
            jump show_graphics_menu
        'Тогда прощай.' if _r35195_condition(gsm):
            # r12 # reply35195
            jump show_graphics_menu


# s2 # say35199
label dzf679_s2:  # from 0.3 # Check EXTENDS ~DMORTE~ : 354
    SPEAKER 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Тогда прощай.' if _r35200_condition(gsm):
            # r13 # reply35200
            jump show_graphics_menu
        'Тогда прощай.' if _r35201_condition(gsm):
            # r14 # reply35201
            jump show_graphics_menu
        'Тогда прощай.' if _r35202_condition(gsm):
            # r15 # reply35202
            jump show_graphics_menu


# s3 # say35209
label dzf679_s3:  # from -
    SPEAKER 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    jump show_graphics_menu