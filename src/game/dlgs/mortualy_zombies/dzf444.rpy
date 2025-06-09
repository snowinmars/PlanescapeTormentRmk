init python:
    def _r35211_action(gsm):
        gsm.dec_law()
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
    glm = renpy.store.global_location_manager


# ###
# Original:  DLG/DZF444.DLG
# ###


label start_dzf444_talk:
    call dzf444_init
    jump dzf444_s0
label start_dzf444_kill:
    call dzf444_init
    jump dzf444_kill
label dzf444_init:
    $ glm.set_location('mortuary_f2r2')
    $ gsm.set_meet_dzf444(True)
    scene bg mortuary2
    show dzf444_img default at center_left_down
    return
label dzf444_dispose:
    hide dzf444_img
    jump show_graphics_menu


# s0 # say35210
label dzf444_s0:  # from - # Manually checked EXTERN ~DMORTE~ : 358 as dmorte_s330
    teller 'У этого трупа женщины ужасный вид. Ее грубая, обработанная бальзамом кожа покрыта сотнями небольших укусов, вероятно, крысиных.'
    teller 'Судя по складкам вокруг ран, они, скорее всего, были нанесены еще до того, как труп препарировали. Ее губы зашиты, а на лице темно-синими чернилами выведен номер «444».'

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
            jump dmorte_s330
        'Было приятно с тобой поболтать. Прощай.' if _r35237_condition(gsm):
            # r6 # reply35237
            jump dzf444_dispose
        'Было приятно с тобой поболтать. Прощай.' if _r35239_condition(gsm):
            # r8 # reply35239
            jump dzf444_dispose
        'Оставить труп в покое.' if _r35236_condition(gsm):
            # r5 # reply35236
            jump dmorte_s330
        'Оставить труп в покое.' if _r35238_condition(gsm):
            # r7 # reply35238
            jump dzf444_dispose
        'Оставить труп в покое.' if _r35240_condition(gsm):
            # r9 # reply35240
            jump dzf444_dispose


# s1 # say35212
label dzf444_s1:  # from 0.0 0.1 0.2 # Manually checked EXTERN ~DMORTE~ : 358 as dmorte_s330 (dmorte_s358 in the original Ps:T)
    teller 'Труп продолжает пялиться на тебя.'

    menu:
        'Использовать на трупе свою способность История костей.' if _r35230_condition(gsm):
            # r3 # reply35230
            jump dzf444_s2
        'Было приятно с тобой поболтать. Прощай.' if _r35235_condition(gsm):
            # r4 # reply35235
            jump dmorte_s330
        'Было приятно с тобой поболтать. Прощай.' if _r35237_condition(gsm):
            # r6 # reply35237
            jump dzf444_dispose
        'Было приятно с тобой поболтать. Прощай.' if _r35239_condition(gsm):
            # r8 # reply35239
            jump dzf444_dispose
        'Тогда прощай.' if _r35213_condition(gsm):
            # r10 # reply35213
            jump dmorte_s330
        'Тогда прощай.' if _r35226_condition(gsm):
            # r11 # reply35226
            jump dzf444_dispose
        'Тогда прощай.' if _r35227_condition(gsm):
            # r12 # reply35227
            jump dzf444_dispose
        'Оставить труп в покое.' if _r35236_condition(gsm):
            # r5 # reply35236
            jump dmorte_s330
        'Оставить труп в покое.' if _r35238_condition(gsm):
            # r7 # reply35238
            jump dzf444_dispose
        'Оставить труп в покое.' if _r35240_condition(gsm):
            # r9 # reply35240
            jump dzf444_dispose


# s2 # say35231
label dzf444_s2:  # from 0.3 # Manually checked EXTERN ~DMORTE~ : 358 as dmorte_s330 (dmorte_s358 in the original Ps:T)
    teller 'Труп не реагирует. Кажется, он слишкомдалек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if _r35229_condition(gsm):
            # r2 # reply35229
            jump dzf444_s1
        'Было приятно с тобой поболтать. Прощай.' if _r35235_condition(gsm):
            # r4 # reply35235
            jump dmorte_s330
        'Было приятно с тобой поболтать. Прощай.' if _r35237_condition(gsm):
            # r6 # reply35237
            jump dzf444_dispose
        'Было приятно с тобой поболтать. Прощай.' if _r35239_condition(gsm):
            # r8 # reply35239
            jump dzf444_dispose
        'Тогда прощай.' if _r35232_condition(gsm):
            # r13 # reply35232
            jump dmorte_s330
        'Тогда прощай.' if _r35233_condition(gsm):
            # r14 # reply35233
            jump dzf444_dispose
        'Тогда прощай.' if _r35234_condition(gsm):
            # r15 # reply35234
            jump dzf444_dispose
        'Оставить труп в покое.' if _r35236_condition(gsm):
            # r5 # reply35236
            jump dmorte_s330
        'Оставить труп в покое.' if _r35238_condition(gsm):
            # r7 # reply35238
            jump dzf444_dispose
        'Оставить труп в покое.' if _r35240_condition(gsm):
            # r9 # reply35240
            jump dzf444_dispose
