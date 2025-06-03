init python:
    def _r35083_action(gsm):        
        gsm.dec_law('law') 
        gsm.set_zombie_chaotic(True)


init python:
    def _r35083_condition(gsm):
        return not gsm.get_zombie_chaotic()
    def _r35100_condition(gsm):
        return gsm.get_zombie_chaotic()
    def _r35101_condition(gsm):
        return gsm.get_vaxis_exposed()
    def _r35102_condition(gsm):
        return gsm.get_can_speak_with_dead()
    def _r35107_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35108_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35109_condition(gsm):
        return gsm.get_morte_quip()
    def _r35110_condition(gsm):
        return gsm.get_morte_quip()
    def _r35111_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35112_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35085_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35098_condition(gsm):
        return gsm.get_morte_quip()
    def _r35099_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35104_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35105_condition(gsm):
        return gsm.get_morte_quip()
    def _r35106_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()


define gsm = renpy.store.global_settings_manager


# ###
# Original:  DLG/DZF1096.DLG
# Starts:    dzf1096_s
# ###


label dzf1096_init:
    return


label dzf1096_dispose:
    jump show_graphics_menu


# s0 # say35082
label dzf1096_s0:  # from - # Check EXTENDS ~DMORTE~ : 342
    SPEAKER 'Этот труп женщины совершает круговой обход между плитами в комнате. Ее волосы заплетены в длинную косу, которая обернута вокруг шеи в виде петли. Кто-то под трафарет написал номер 1096 у нее на лбу; ее губы крепко зашиты.'

    menu:
        'Э… Красивая коса.' if _r35083_condition(gsm):
            # r0 # reply35083
            $ _r35083_action(gsm)
            jump dzf1096_s1
        'Э… Красивая коса.' if _r35100_condition(gsm):
            # r1 # reply35100
            jump dzf1096_s1
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if _r35101_condition(gsm):
            # r2 # reply35101
            jump dzf1096_s1
        'Использовать на трупе свою способность История костей.' if _r35102_condition(gsm):
            # r3 # reply35102
            jump dzf1096_s2
        'Было приятно с тобой поболтать. Прощай.' if _r35107_condition(gsm):
            # r4 # reply35107
            jump show_graphics_menu
        'Оставить труп в покое.' if _r35108_condition(gsm):
            # r5 # reply35108
            jump show_graphics_menu
        'Было приятно с тобой поболтать. Прощай.' if _r35109_condition(gsm):
            # r6 # reply35109
            jump show_graphics_menu
        'Оставить труп в покое.' if _r35110_condition(gsm):
            # r7 # reply35110
            jump show_graphics_menu
        'Было приятно с тобой поболтать. Прощай.' if _r35111_condition(gsm):
            # r8 # reply35111
            jump show_graphics_menu
        'Оставить труп в покое.' if _r35112_condition(gsm):
            # r9 # reply35112
            jump show_graphics_menu


# s1 # say35084
label dzf1096_s1:  # from 0.0 0.1 0.2 # Check EXTENDS ~DMORTE~ : 342
    SPEAKER 'Труп не отвечает. Ты сомневаешься, знает ли она вообще о твоем присутствии.'

    menu:
        'Тогда прощай.' if _r35085_condition(gsm):
            # r10 # reply35085
            jump show_graphics_menu
        'Тогда прощай.' if _r35098_condition(gsm):
            # r11 # reply35098
            jump show_graphics_menu
        'Тогда прощай.' if _r35099_condition(gsm):
            # r12 # reply35099
            jump show_graphics_menu


# s2 # say35103
label dzf1096_s2:  # from 0.3 # Check EXTENDS ~DMORTE~ : 342
    SPEAKER 'Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Тогда прощай.' if _r35104_condition(gsm):
            # r13 # reply35104
            jump show_graphics_menu
        'Тогда прощай.' if _r35105_condition(gsm):
            # r14 # reply35105
            jump show_graphics_menu
        'Тогда прощай.' if _r35106_condition(gsm):
            # r15 # reply35106
            jump show_graphics_menu


# s3 # say35113
label dzf1096_s3:  # from -
    SPEAKER 'Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    jump show_graphics_menu