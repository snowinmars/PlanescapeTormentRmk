python:
    def _r35147_action(gsm):        
        gsm.dec_law() 
        gsm.set_zombie_chaotic(True)

        return python:
    def _r35147_condition(gsm):
        return not gsm.get_zombie_chaotic()
    def _r35164_condition(gsm):
        return gsm.get_zombie_chaotic()
    def _r35165_condition(gsm):
        return gsm.get_vaxis_exposed()
    def _r35166_condition(gsm):
        return gsm.get_can_speak_with_dead()
    def _r35171_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35172_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35173_condition(gsm):
        return gsm.get_morte_quip()
    def _r35174_condition(gsm):
        return gsm.get_morte_quip()
    def _r35175_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35176_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35149_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35162_condition(gsm):
        return gsm.get_morte_quip()
    def _r35163_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35168_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35169_condition(gsm):
        return gsm.get_morte_quip()
    def _r35170_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()

python:
    gsm           = renpy.store.global_settings_manager


# s0 # say35146
label DZF832.D_s0:  # from - # Check EXTENDS ~DMORTE~ : 350
    SPEAKER 'Несмотря на жесткую иссохшую кожу, совершенно очевидно, что раньше это была красивая женщина средних лет. Тот, кто препарировал труп, похоже, сжалился над ней: он зашил ей рот аккуратными мелкими стежками и наколол на лбу номер 832 элегантным шрифтом.'

    menu:
        'Итак… чем занимаешься вечером?' if _r35147_condition(gsm):
            # r0 # reply35147
            $ _r35147_action(gsm)
            jump 'DZF832.D_s1'
        'Итак… чем занимаешься вечером?' if _r35164_condition(gsm):
            # r1 # reply35164
            jump 'DZF832.D_s1'
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if _r35165_condition(gsm):
            # r2 # reply35165
            jump 'DZF832.D_s1'
        'Использовать на трупе свою способность История костей.' if _r35166_condition(gsm):
            # r3 # reply35166
            jump 'DZF832.D_s2'
        'Было приятно с тобой поболтать. Прощай.' if _r35171_condition(gsm):
            # r4 # reply35171
            jump 'show_graphics_menu'
        'Оставить труп в покое.' if _r35172_condition(gsm):
            # r5 # reply35172
            jump 'show_graphics_menu'
        'Было приятно с тобой поболтать. Прощай.' if _r35173_condition(gsm):
            # r6 # reply35173
            jump 'show_graphics_menu'
        'Оставить труп в покое.' if _r35174_condition(gsm):
            # r7 # reply35174
            jump 'show_graphics_menu'
        'Было приятно с тобой поболтать. Прощай.' if _r35175_condition(gsm):
            # r8 # reply35175
            jump 'show_graphics_menu'
        'Оставить труп в покое.' if _r35176_condition(gsm):
            # r9 # reply35176
            jump 'show_graphics_menu'


# s1 # say35148
label DZF832.D_s1:  # from 0.0 0.1 0.2 # Check EXTENDS ~DMORTE~ : 350
    SPEAKER 'Труп продолжает пялиться на тебя.'

    menu:
        'Тогда прощай.' if _r35149_condition(gsm):
            # r10 # reply35149
            jump 'show_graphics_menu'
        'Тогда прощай.' if _r35162_condition(gsm):
            # r11 # reply35162
            jump 'show_graphics_menu'
        'Тогда прощай.' if _r35163_condition(gsm):
            # r12 # reply35163
            jump 'show_graphics_menu'


# s2 # say35167
label DZF832.D_s2:  # from 0.3 # Check EXTENDS ~DMORTE~ : 350
    SPEAKER 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Тогда прощай.' if _r35168_condition(gsm):
            # r13 # reply35168
            jump 'show_graphics_menu'
        'Тогда прощай.' if _r35169_condition(gsm):
            # r14 # reply35169
            jump 'show_graphics_menu'
        'Тогда прощай.' if _r35170_condition(gsm):
            # r15 # reply35170
            jump 'show_graphics_menu'


# s3 # say35177
label DZF832.D_s3:  # from -
    SPEAKER 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    jump 'show_graphics_menu'