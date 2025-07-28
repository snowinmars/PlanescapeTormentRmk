init python:
    def _r35019_action(gsm):
        gsm.gcm.modify_property('protagonist', 'law', -1)
        gsm.set_zombie_chaotic(True)


init python:
    def _r35019_condition(gsm):
        return not gsm.get_zombie_chaotic()
    def _r35036_condition(gsm):
        return gsm.get_zombie_chaotic()
    def _r35037_condition(gsm):
        return gsm.get_vaxis_exposed()
    def _r35038_condition(gsm):
        return gsm.get_can_speak_with_dead()
    def _r35043_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35044_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35045_condition(gsm):
        return gsm.get_morte_quip()
    def _r35046_condition(gsm):
        return gsm.get_morte_quip()
    def _r35047_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35048_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35021_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35034_condition(gsm):
        return gsm.get_morte_quip()
    def _r35035_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35040_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35041_condition(gsm):
        return gsm.get_morte_quip()
    def _r35042_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()


init 10 python:
    gsm = renpy.store.global_settings_manager


# ###
# Original:  DLG/DZF594.DLG
# ###


label dzf594_init:
    return


label dzf594_dispose:
    jump show_graphics_menu


# s0 # say35018
label dzf594_s0:  # from - # IF ~  True() Check EXTERN ~DMORTE~ : 334
    SPEAKER 'Неуклюжий труп женщины уставился на тебя пустым взглядом. Ее кожа похожа на бумагу, совсем тонкая… как будто кто-то обернул ее тело в простыню из легкой ткани. На ее лбу угольным карандашом нацарапан номер 594.'

    menu:
        'Итак… чем занимаешься вечером?' if _r35019_condition(gsm):
            # r0 # reply35019
            $ _r35019_action(gsm)
            jump dzf594_s1
        'Итак… чем занимаешься вечером?' if _r35036_condition(gsm):
            # r1 # reply35036
            jump dzf594_s1
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if _r35037_condition(gsm):
            # r2 # reply35037
            jump dzf594_s1
        'Использовать на трупе свою способность История костей.' if _r35038_condition(gsm):
            # r3 # reply35038
            jump dzf594_s2
        'Было приятно с тобой поболтать. Прощай.' if _r35043_condition(gsm):
            # r4 # reply35043
            jump show_graphics_menu
        'Оставить труп в покое.' if _r35044_condition(gsm):
            # r5 # reply35044
            jump show_graphics_menu
        'Было приятно с тобой поболтать. Прощай.' if _r35045_condition(gsm):
            # r6 # reply35045
            jump show_graphics_menu
        'Оставить труп в покое.' if _r35046_condition(gsm):
            # r7 # reply35046
            jump show_graphics_menu
        'Было приятно с тобой поболтать. Прощай.' if _r35047_condition(gsm):
            # r8 # reply35047
            jump show_graphics_menu
        'Оставить труп в покое.' if _r35048_condition(gsm):
            # r9 # reply35048
            jump show_graphics_menu


# s1 # say35020
label dzf594_s1:  # from 0.0 0.1 0.2 # Check EXTERN ~DMORTE~ : 334
    SPEAKER 'Труп продолжает пялиться на тебя.'

    menu:
        'Тогда прощай.' if _r35021_condition(gsm):
            # r10 # reply35021
            jump show_graphics_menu
        'Тогда прощай.' if _r35034_condition(gsm):
            # r11 # reply35034
            jump show_graphics_menu
        'Тогда прощай.' if _r35035_condition(gsm):
            # r12 # reply35035
            jump show_graphics_menu


# s2 # say35039
label dzf594_s2:  # from 0.3 # Check EXTERN ~DMORTE~ : 334
    SPEAKER 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Тогда прощай.' if _r35040_condition(gsm):
            # r13 # reply35040
            jump show_graphics_menu
        'Тогда прощай.' if _r35041_condition(gsm):
            # r14 # reply35041
            jump show_graphics_menu
        'Тогда прощай.' if _r35042_condition(gsm):
            # r15 # reply35042
            jump show_graphics_menu


# s3 # say35049
label dzf594_s3:  # from - # IF ~  False()
    SPEAKER 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    jump show_graphics_menu
