init python:
    def _r35243_action(gsm):        
        gsm.dec_law('law') 
        gsm.set_zombie_chaotic(True)


init python:
    def _r35243_condition(gsm):
        return not gsm.get_zombie_chaotic()
    def _r35260_condition(gsm):
        return gsm.get_zombie_chaotic()
    def _r35261_condition(gsm):
        return gsm.get_vaxis_exposed()
    def _r35262_condition(gsm):
        return gsm.get_can_speak_with_dead()
    def _r35267_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35268_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35269_condition(gsm):
        return gsm.get_morte_quip()
    def _r35270_condition(gsm):
        return gsm.get_morte_quip()
    def _r35271_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35272_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35245_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35258_condition(gsm):
        return gsm.get_morte_quip()
    def _r35259_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35264_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35265_condition(gsm):
        return gsm.get_morte_quip()
    def _r35266_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()


define gsm = renpy.store.global_settings_manager


# ###
# Original:  DLG/DZF1148.DLG
# Starts:    dzf1148_s
# ###


label dzf1148_init:
    return


label dzf1148_dispose:
    jump show_graphics_menu


# s0 # say35242
label dzf1148_s0:  # from - # Check EXTENDS ~DMORTE~ : 362
    SPEAKER 'Кожа этого женского трупа покрыто замысловатыми узорами татуировок. Кожа на лбу отвалилась, так что номер 1148 вырезан прямо на черепе. Ее рот зашит крепкими грубыми стежками.'

    menu:
        'Итак… чем занимаешься вечером?' if _r35243_condition(gsm):
            # r0 # reply35243
            $ _r35243_action(gsm)
            jump dzf1148_s1
        'Итак… чем занимаешься вечером?' if _r35260_condition(gsm):
            # r1 # reply35260
            jump dzf1148_s1
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if _r35261_condition(gsm):
            # r2 # reply35261
            jump dzf1148_s1
        'Использовать на трупе свою способность История костей.' if _r35262_condition(gsm):
            # r3 # reply35262
            jump dzf1148_s2
        'Было приятно с тобой поболтать. Прощай.' if _r35267_condition(gsm):
            # r4 # reply35267
            jump show_graphics_menu
        'Оставить труп в покое.' if _r35268_condition(gsm):
            # r5 # reply35268
            jump show_graphics_menu
        'Было приятно с тобой поболтать. Прощай.' if _r35269_condition(gsm):
            # r6 # reply35269
            jump show_graphics_menu
        'Оставить труп в покое.' if _r35270_condition(gsm):
            # r7 # reply35270
            jump show_graphics_menu
        'Было приятно с тобой поболтать. Прощай.' if _r35271_condition(gsm):
            # r8 # reply35271
            jump show_graphics_menu
        'Оставить труп в покое.' if _r35272_condition(gsm):
            # r9 # reply35272
            jump show_graphics_menu


# s1 # say35244
label dzf1148_s1:  # from 0.0 0.1 0.2 # Check EXTENDS ~DMORTE~ : 362
    SPEAKER 'Труп продолжает пялиться на тебя.'

    menu:
        'Тогда прощай.' if _r35245_condition(gsm):
            # r10 # reply35245
            jump show_graphics_menu
        'Тогда прощай.' if _r35258_condition(gsm):
            # r11 # reply35258
            jump show_graphics_menu
        'Тогда прощай.' if _r35259_condition(gsm):
            # r12 # reply35259
            jump show_graphics_menu


# s2 # say35263
label dzf1148_s2:  # from 0.3 # Check EXTENDS ~DMORTE~ : 362
    SPEAKER 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Тогда прощай.' if _r35264_condition(gsm):
            # r13 # reply35264
            jump show_graphics_menu
        'Тогда прощай.' if _r35265_condition(gsm):
            # r14 # reply35265
            jump show_graphics_menu
        'Тогда прощай.' if _r35266_condition(gsm):
            # r15 # reply35266
            jump show_graphics_menu


# s3 # say35273
label dzf1148_s3:  # from -
    SPEAKER 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    jump show_graphics_menu