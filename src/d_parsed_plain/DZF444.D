init python:
    def _r35211_action(gsm):
        gsm.gcm.modify_property('protagonist', 'law', -1)
        gsm.set_zombie_chaotic(True)


init python:
    def _r35211_condition(gsm):
        return not gsm.get_zombie_chaotic()
    def _r35228_condition(gsm):
        return gsm.get_zombie_chaotic()
    def _r35229_condition(gsm):
        return gsm.get_vaxis_exposed()
    def _r35230_condition(gsm):
        return gsm.get_can_speak_with_dead()
    def _r35235_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35236_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35237_condition(gsm):
        return gsm.get_morte_quip()
    def _r35238_condition(gsm):
        return gsm.get_morte_quip()
    def _r35239_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35240_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35213_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35226_condition(gsm):
        return gsm.get_morte_quip()
    def _r35227_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35232_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35233_condition(gsm):
        return gsm.get_morte_quip()
    def _r35234_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()


init 10 python:
    gsm = renpy.store.global_settings_manager


# ###
# Original:  DLG/DZF444.DLG
# ###


label dzf444_init:
    return


label dzf444_dispose:
    jump show_graphics_menu


# s0 # say35210
label dzf444_s0:  # from - # IF ~  True() Check EXTERN ~DMORTE~ : 358
    SPEAKER 'У этого трупа женщины ужасный вид. Ее грубая, обработанная бальзамом кожа покрыта сотнями небольших укусов, вероятно, крысиных. Судя по складкам вокруг ран, они, скорее всего, были нанесены еще до того, как труп препарировали. Ее губы зашиты, а на лице темно-синими чернилами выведен номер 444.'

    menu:
        'Итак… чем занимаешься вечером?' if _r35211_condition(gsm):
            # r0 # reply35211
            $ _r35211_action(gsm)
            jump dzf444_s1
        'Итак… чем занимаешься вечером?' if _r35228_condition(gsm):
            # r1 # reply35228
            jump dzf444_s1
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if _r35229_condition(gsm):
            # r2 # reply35229
            jump dzf444_s1
        'Использовать на трупе свою способность История костей.' if _r35230_condition(gsm):
            # r3 # reply35230
            jump dzf444_s2
        'Было приятно с тобой поболтать. Прощай.' if _r35235_condition(gsm):
            # r4 # reply35235
            jump show_graphics_menu
        'Оставить труп в покое.' if _r35236_condition(gsm):
            # r5 # reply35236
            jump show_graphics_menu
        'Было приятно с тобой поболтать. Прощай.' if _r35237_condition(gsm):
            # r6 # reply35237
            jump show_graphics_menu
        'Оставить труп в покое.' if _r35238_condition(gsm):
            # r7 # reply35238
            jump show_graphics_menu
        'Было приятно с тобой поболтать. Прощай.' if _r35239_condition(gsm):
            # r8 # reply35239
            jump show_graphics_menu
        'Оставить труп в покое.' if _r35240_condition(gsm):
            # r9 # reply35240
            jump show_graphics_menu


# s1 # say35212
label dzf444_s1:  # from 0.0 0.1 0.2 # Check EXTERN ~DMORTE~ : 358
    SPEAKER 'Труп продолжает пялиться на тебя.'

    menu:
        'Тогда прощай.' if _r35213_condition(gsm):
            # r10 # reply35213
            jump show_graphics_menu
        'Тогда прощай.' if _r35226_condition(gsm):
            # r11 # reply35226
            jump show_graphics_menu
        'Тогда прощай.' if _r35227_condition(gsm):
            # r12 # reply35227
            jump show_graphics_menu


# s2 # say35231
label dzf444_s2:  # from 0.3 # Check EXTERN ~DMORTE~ : 358
    SPEAKER 'Труп не реагирует. Кажется, он слишкомдалек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Тогда прощай.' if _r35232_condition(gsm):
            # r13 # reply35232
            jump show_graphics_menu
        'Тогда прощай.' if _r35233_condition(gsm):
            # r14 # reply35233
            jump show_graphics_menu
        'Тогда прощай.' if _r35234_condition(gsm):
            # r15 # reply35234
            jump show_graphics_menu


# s3 # say35241
label dzf444_s3:  # from - # IF ~  False()
    SPEAKER 'Труп не реагирует. Кажется, он слишкомдалек от того, чтобы отвечать на твои вопросы.'

    jump show_graphics_menu
