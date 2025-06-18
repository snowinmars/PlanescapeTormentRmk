init python:
    def _kill_dzf594(gsm):
        gsm.set_dead_dzf594(True)


init python:
    def _r35019_action(gsm):
        gsm.dec_law()
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
    glm = renpy.store.global_location_manager

# ###
# Original:  DLG/DZF594.DLG
# ###


label start_dzf594_talk:
    call dzf594_init
    jump dzf594_s0
label start_dzf594_kill:
    call dzf594_init
    jump dzf594_kill
label dzf594_init:
    $ glm.set_location('mortuary_f2r2')
    $ gsm.set_meet_dzf594(True)
    scene bg mortuary2
    show dzf594_img default at center_left_down
    return
label dzf594_dispose:
    hide dzf594_img
    jump show_graphics_menu


# s0 # say35018
label dzf594_s0:  # from - # Manually checked EXTERN ~DMORTE~ : 334 as dmorte_s330
    teller 'Неуклюжий труп женщины уставился на тебя пустым взглядом. Ее кожа похожа на бумагу, совсем тонкая… как будто кто-то обернул ее тело в простыню из легкой ткани.'
    teller 'На ее лбу угольным карандашом нацарапан номер «594».'

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
            jump dmorte_s330
        'Было приятно с тобой поболтать. Прощай.' if _r35045_condition(gsm):
            # r6 # reply35045
            jump dzf594_dispose
        'Было приятно с тобой поболтать. Прощай.' if _r35047_condition(gsm):
            # r8 # reply35047
            jump dzf594_dispose
        'Оставить труп в покое.' if _r35044_condition(gsm):
            # r5 # reply35044
            jump dmorte_s330
        'Оставить труп в покое.' if _r35046_condition(gsm):
            # r7 # reply35046
            jump dzf594_dispose
        'Оставить труп в покое.' if _r35048_condition(gsm):
            # r9 # reply35048
            jump dzf594_dispose


# s1 # say35020
label dzf594_s1:  # from 0.0 0.1 0.2 # Manually checked EXTERN ~DMORTE~ : 334 as dmorte_s330
    teller 'Труп продолжает пялиться на тебя.'

    menu:
        'Использовать на трупе свою способность История костей.' if _r35038_condition(gsm):
            # r3 # reply35038
            jump dzf594_s2
        'Было приятно с тобой поболтать. Прощай.' if _r35043_condition(gsm):
            # r4 # reply35043
            jump dmorte_s330
        'Было приятно с тобой поболтать. Прощай.' if _r35045_condition(gsm):
            # r6 # reply35045
            jump dzf594_dispose
        'Было приятно с тобой поболтать. Прощай.' if _r35047_condition(gsm):
            # r8 # reply35047
            jump dzf594_dispose
        'Тогда прощай.' if _r35021_condition(gsm):
            # r10 # reply35021
            jump dmorte_s330
        'Тогда прощай.' if _r35034_condition(gsm):
            # r11 # reply35034
            jump dzf594_dispose
        'Тогда прощай.' if _r35035_condition(gsm):
            # r12 # reply35035
            jump dzf594_dispose
        'Оставить труп в покое.' if _r35044_condition(gsm):
            # r5 # reply35044
            jump dmorte_s330
        'Оставить труп в покое.' if _r35046_condition(gsm):
            # r7 # reply35046
            jump dzf594_dispose
        'Оставить труп в покое.' if _r35048_condition(gsm):
            # r9 # reply35048
            jump dzf594_dispose


# s2 # say35039
label dzf594_s2:  # from 0.3 # Manually checked EXTERN ~DMORTE~ : 334 as dmorte_s330
    teller 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if _r35037_condition(gsm):
            # r2 # reply35037
            jump dzf594_s1
        'Было приятно с тобой поболтать. Прощай.' if _r35043_condition(gsm):
            # r4 # reply35043
            jump dmorte_s330
        'Было приятно с тобой поболтать. Прощай.' if _r35045_condition(gsm):
            # r6 # reply35045
            jump dzf594_dispose
        'Было приятно с тобой поболтать. Прощай.' if _r35047_condition(gsm):
            # r8 # reply35047
            jump dzf594_dispose
        'Тогда прощай.' if _r35040_condition(gsm):
            # r13 # reply35040
            jump dmorte_s330
        'Тогда прощай.' if _r35041_condition(gsm):
            # r14 # reply35041
            jump dzf594_dispose
        'Тогда прощай.' if _r35042_condition(gsm):
            # r15 # reply35042
            jump dzf594_dispose
        'Оставить труп в покое.' if _r35044_condition(gsm):
            # r5 # reply35044
            jump dmorte_s330
        'Оставить труп в покое.' if _r35046_condition(gsm):
            # r7 # reply35046
            jump dzf594_dispose
        'Оставить труп в покое.' if _r35048_condition(gsm):
            # r9 # reply35048
            jump dzf594_dispose


label dzf594_kill:
    teller 'Неуклюжий труп женщины уставился на тебя пустым взглядом. Ее кожа похожа на бумагу, совсем тонкая… как будто кто-то обернул ее тело в простыню из легкой ткани.'
    teller 'На ее лбу угольным карандашом нацарапан номер «594».'
    teller 'Ты думаешь о том, как разрезал бы её кожу.'

    menu:
        '(Уйти.)':
            jump dzf594_dispose
        '(Убить зомби).':
            jump dzf594_killed


label dzf594_killed:
    $ _kill_dzf594(gsm)
    teller 'Её кожа и правда тонкая - как летнее платье; удивительно приятная на ощупь. Она смотрит на меня пустыми глазами.'
    teller 'В них нет ни жизни, ни разума. Я без сожалений снимаю с неё остатки жизни.'
    jump dzf594_dispose
