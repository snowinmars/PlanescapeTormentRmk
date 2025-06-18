init python:
    def _r24720_action(gsm):
        gsm.dec_law()
        gsm.set_zombie_chaotic(True)


init python:
    def _r24720_condition(gsm):
        return not gsm.get_zombie_chaotic()
    def _r24737_condition(gsm):
        return gsm.get_zombie_chaotic()
    def _r24738_condition(gsm):
        return gsm.get_vaxis_exposed()
    def _r24739_condition(gsm):
        return gsm.get_can_speak_with_dead()
    def _r24744_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r24745_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r24746_condition(gsm):
        return gsm.get_morte_quip()
    def _r24747_condition(gsm):
        return gsm.get_morte_quip()
    def _r24748_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r24749_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r24722_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r24735_condition(gsm):
        return gsm.get_morte_quip()
    def _r24736_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r24741_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r24742_condition(gsm):
        return gsm.get_morte_quip()
    def _r24743_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()


init 10 python:
    gsm = renpy.store.global_settings_manager


# ###
# Original:  DLG/DZF916.DLG
# ###


label dzf916_init:
    return


label dzf916_dispose:
    jump show_graphics_menu


# s0 # say24719
label dzf916_s0:  # from - # IF ~  True() Check EXTERN ~DMORTE~ : 46
    SPEAKER 'Труп женщины смотрит на тебя пустым взглядом. На ее лбу вырезан номер 916; ее губы крепко зашиты. От тела исходит легкий запах формальдегида.'

    menu:
        'Итак… чем занимаешься вечером?' if _r24720_condition(gsm):
            # r0 # reply24720
            $ _r24720_action(gsm)
            jump dzf916_s1
        'Итак… чем занимаешься вечером?' if _r24737_condition(gsm):
            # r1 # reply24737
            jump dzf916_s1
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if _r24738_condition(gsm):
            # r2 # reply24738
            jump dzf916_s1
        'Использовать на трупе свою способность История костей.' if _r24739_condition(gsm):
            # r3 # reply24739
            jump dzf916_s2
        'Было приятно с тобой поболтать. Прощай.' if _r24744_condition(gsm):
            # r4 # reply24744
            jump show_graphics_menu
        'Оставить труп в покое.' if _r24745_condition(gsm):
            # r5 # reply24745
            jump show_graphics_menu
        'Было приятно с тобой поболтать. Прощай.' if _r24746_condition(gsm):
            # r6 # reply24746
            jump show_graphics_menu
        'Оставить труп в покое.' if _r24747_condition(gsm):
            # r7 # reply24747
            jump show_graphics_menu
        'Было приятно с тобой поболтать. Прощай.' if _r24748_condition(gsm):
            # r8 # reply24748
            jump show_graphics_menu
        'Оставить труп в покое.' if _r24749_condition(gsm):
            # r9 # reply24749
            jump show_graphics_menu


# s1 # say24721
label dzf916_s1:  # from 0.0 0.1 0.2 # Check EXTERN ~DMORTE~ : 46
    SPEAKER 'Труп продолжает пялиться на тебя.'

    menu:
        'Тогда прощай.' if _r24722_condition(gsm):
            # r10 # reply24722
            jump show_graphics_menu
        'Тогда прощай.' if _r24735_condition(gsm):
            # r11 # reply24735
            jump show_graphics_menu
        'Тогда прощай.' if _r24736_condition(gsm):
            # r12 # reply24736
            jump show_graphics_menu


# s2 # say24740
label dzf916_s2:  # from 0.3 # Check EXTERN ~DMORTE~ : 46
    SPEAKER 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Тогда прощай.' if _r24741_condition(gsm):
            # r13 # reply24741
            jump show_graphics_menu
        'Тогда прощай.' if _r24742_condition(gsm):
            # r14 # reply24742
            jump show_graphics_menu
        'Тогда прощай.' if _r24743_condition(gsm):
            # r15 # reply24743
            jump show_graphics_menu


# s3 # say24750
label dzf916_s3:  # from - # IF ~  False()
    SPEAKER 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    jump show_graphics_menu
