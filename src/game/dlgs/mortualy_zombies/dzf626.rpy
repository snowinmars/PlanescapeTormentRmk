init python:
    def _kill_dzm626(gsm):
        gsm.set_dead_dzf626(True)


init python:
    def _r35051_action(gsm):
        gsm.dec_law()
        gsm.set_zombie_chaotic(True)


init python:
    def _r35051_condition(gsm):
        return not gsm.get_zombie_chaotic()
    def _r35068_condition(gsm):
        return gsm.get_zombie_chaotic()
    def _r35069_condition(gsm):
        return gsm.get_vaxis_exposed()
    def _r35070_condition(gsm):
        return gsm.get_can_speak_with_dead()
    def _r35075_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35076_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35077_condition(gsm):
        return gsm.get_morte_quip()
    def _r35078_condition(gsm):
        return gsm.get_morte_quip()
    def _r35079_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35080_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35053_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35066_condition(gsm):
        return gsm.get_morte_quip()
    def _r35067_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35072_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35073_condition(gsm):
        return gsm.get_morte_quip()
    def _r35074_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()


init 10 python:
    gsm = renpy.store.global_settings_manager


# ###
# Original:  DLG/DZF626.DLG
# Starts:    dzf626_s0 dzf626_kill
# ###


label dzf626_init:
    $ gsm.set_location('mortuary2')
    $ gsm.set_meet_dzf626(True)
    scene bg mortuary2
    show dzf626_img default at center_left_down
    return


label dzf626_dispose:
    hide dzf626_img
    jump show_graphics_menu


# s0 # say35050
label dzf626_s0:  # from - # from - # Manually checked EXTERN ~DMORTE~ : 338 as dmorte_s330
    call dzf626_init
    teller 'Левая сторона лица этой женщины выглядит так, словно ее разбили дубиной; плоть, вся во вмятинах и синяках, едва держится на проломленном черепе.'
    teller 'Номер «626» вышит на правой щеке, прямо под глазом.'

    menu:
        'Э… здорово тебе досталось.' if _r35051_condition(gsm):
            # r0 # reply35051
            $ _r35051_action(gsm)
            jump dzf626_s1
        'Э… здорово тебе досталось.' if _r35068_condition(gsm):
            # r1 # reply35068
            jump dzf626_s1
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if _r35069_condition(gsm):
            # r2 # reply35069
            jump dzf626_s1
        'Использовать на трупе свою способность История костей.' if _r35070_condition(gsm):
            # r3 # reply35070
            jump dzf626_s2
        'Было приятно поболтать с тобой. Прощай.' if _r35075_condition(gsm):
            # r4 # reply35075
            jump dmorte_s330
        'Было приятно поболтать с тобой. Прощай.' if _r35077_condition(gsm):
            # r6 # reply35077
            jump dzf626_dispose
        'Было приятно поболтать с тобой. Прощай.' if _r35079_condition(gsm):
            # r8 # reply35079
            jump dzf626_dispose
        'Оставить труп в покое.' if _r35076_condition(gsm):
            # r5 # reply35076
            jump dmorte_s330
        'Оставить труп в покое.' if _r35078_condition(gsm):
            # r7 # reply35078
            jump dzf626_dispose
        'Оставить труп в покое.' if _r35080_condition(gsm):
            # r9 # reply35080
            jump dzf626_dispose


# s1 # say35052
label dzf626_s1:  # from 0.0 0.1 0.2 # Check EXTERN ~DMORTE~ : 338
    teller 'Труп продолжает смотреть на тебя одним уцелевшим глазом.'

    menu:
        'Использовать на трупе свою способность История костей.' if _r35070_condition(gsm):
            # r3 # reply35070
            jump dzf626_s2
        'Было приятно поболтать с тобой. Прощай.' if _r35075_condition(gsm):
            # r4 # reply35075
            jump dmorte_s330
        'Было приятно поболтать с тобой. Прощай.' if _r35077_condition(gsm):
            # r6 # reply35077
            jump dzf626_dispose
        'Было приятно поболтать с тобой. Прощай.' if _r35079_condition(gsm):
            # r8 # reply35079
            jump dzf626_dispose
        'Тогда прощай.' if _r35053_condition(gsm):
            # r10 # reply35053
            jump dmorte_s330
        'Тогда прощай.' if _r35066_condition(gsm):
            # r11 # reply35066
            jump dzf626_dispose
        'Тогда прощай.' if _r35067_condition(gsm):
            # r12 # reply35067
            jump dzf626_dispose
        'Оставить труп в покое.' if _r35076_condition(gsm):
            # r5 # reply35076
            jump dmorte_s330
        'Оставить труп в покое.' if _r35078_condition(gsm):
            # r7 # reply35078
            jump dzf626_dispose
        'Оставить труп в покое.' if _r35080_condition(gsm):
            # r9 # reply35080
            jump dzf626_dispose

# s2 # say35071
label dzf626_s2:  # from 0.3 # Check EXTERN ~DMORTE~ : 338
    teller 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if _r35069_condition(gsm):
            # r2 # reply35069
            jump dzf626_s1
        'Было приятно поболтать с тобой. Прощай.' if _r35075_condition(gsm):
            # r4 # reply35075
            jump dmorte_s330
        'Было приятно поболтать с тобой. Прощай.' if _r35077_condition(gsm):
            # r6 # reply35077
            jump dzf626_dispose
        'Было приятно поболтать с тобой. Прощай.' if _r35079_condition(gsm):
            # r8 # reply35079
            jump dzf626_dispose
        'Тогда прощай.' if _r35072_condition(gsm):
            # r13 # reply35072
            jump dmorte_s330
        'Тогда прощай.' if _r35073_condition(gsm):
            # r14 # reply35073
            jump dzf626_dispose
        'Тогда прощай.' if _r35074_condition(gsm):
            # r15 # reply35074
            jump dzf626_dispose
        'Оставить труп в покое.' if _r35076_condition(gsm):
            # r5 # reply35076
            jump dmorte_s330
        'Оставить труп в покое.' if _r35078_condition(gsm):
            # r7 # reply35078
            jump dzf626_dispose
        'Оставить труп в покое.' if _r35080_condition(gsm):
            # r9 # reply35080
            jump dzf626_dispose



label dzf626_kill:
    call dzf626_init
    teller 'Левая сторона лица этой женщины выглядит так, словно ее разбили дубиной; плоть, вся во вмятинах и синяках, едва держится на проломленном черепе.'
    teller 'Номер «626» вышит на правой щеке, прямо под глазом.'
    teller 'Ты думаешь о том, как разрезал бы её кожу.'

    menu:
        '(Уйти.)':
            jump dzf626_dispose
        '(Убить зомби).':
            jump dzf626_killed


label dzf626_killed:
    $ _kill_dzm626(gsm)
    teller 'Я делаю её лицо симметричным. Будь у неё глаза, она бы смотрела на меня.'
    teller 'Смотрела бы глазами без жизни и без разума. Есть ли работа для слепых трупов?'
    jump dzf626_dispose
