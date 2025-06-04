init python:
    def _kill_dzf1072(gsm):
        gsm.set_dead_dzf1072(True)


init python:
    def _r35115_action(gsm):
        gsm.dec_law('law')
        gsm.set_zombie_chaotic(True)


init python:
    def _r35115_condition(gsm):
        return not gsm.get_zombie_chaotic()
    def _r35132_condition(gsm):
        return gsm.get_zombie_chaotic()
    def _r35133_condition(gsm):
        return gsm.get_vaxis_exposed()
    def _r35134_condition(gsm):
        return gsm.get_can_speak_with_dead()
    def _r35139_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35140_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35141_condition(gsm):
        return gsm.get_morte_quip()
    def _r35142_condition(gsm):
        return gsm.get_morte_quip()
    def _r35143_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35144_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35117_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35130_condition(gsm):
        return gsm.get_morte_quip()
    def _r35131_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35136_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35137_condition(gsm):
        return gsm.get_morte_quip()
    def _r35138_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()


init 10 python:
    gsm = renpy.store.global_settings_manager


# ###
# Original:  DLG/DZF1072.DLG
# Starts:    dzf1072_s0 dzf1072_kill
# ###


label dzf1072_init:
    $ gsm.set_location('mortuary3')
    $ gsm.set_meet_dzf1072(True)
    scene bg mortuary3
    show dzf1072_img default at center_left_down
    return


label dzf1072_dispose:
    hide dzf1072_img
    jump show_graphics_menu


# s0 # say35114
label dzf1072_s0:  # from - # Manually checked EXTENDS ~DMORTE~ : 346 as dmorte_s330
    call dzf1072_init
    teller 'От этого трупа женщины истончается особенно сильный запах формальдегида… пахнет так, как будто ее обработали совсем недавно, и неспроста: труп находится на последней стадии разложения.'
    teller 'У нее нет челюсти, часть мяса отвалилась от черепа, обнажая номер «1072», выбитый на кости.'

    menu:
        'Кажется, у нее бывали деньки и получше…' if _r35115_condition(gsm):
            # r0 # reply35115
            $ _r35115_action(gsm)
            jump dzf1072_s1
        'Кажется, у нее бывали деньки и получше…' if _r35132_condition(gsm):
            # r1 # reply35132
            jump dzf1072_s1
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if _r35133_condition(gsm):
            # r2 # reply35133
            jump dzf1072_s1
        'Использовать на трупе свою способность История костей.' if _r35134_condition(gsm):
            # r3 # reply35134
            jump dzf1072_s2
        'Было приятно с тобой поболтать. Прощай.' if _r35139_condition(gsm):
            # r4 # reply35139
            jump dmorte_s330
        'Было приятно с тобой поболтать. Прощай.' if _r35141_condition(gsm):
            # r6 # reply35141
            jump dzf1072_dispose
        'Было приятно с тобой поболтать. Прощай.' if _r35143_condition(gsm):
            # r8 # reply35143
            jump dzf1072_dispose
        'Оставить труп в покое.' if _r35140_condition(gsm):
            # r5 # reply35140
            jump dmorte_s330
        'Оставить труп в покое.' if _r35142_condition(gsm):
            # r7 # reply35142
            jump dzf1072_dispose
        'Оставить труп в покое.' if _r35144_condition(gsm):
            # r9 # reply35144
            jump dzf1072_dispose


# s1 # say35116
label dzf1072_s1:  # from 0.0 0.1 0.2 # Manually checked EXTENDS ~DMORTE~ : 346 as dmorte_s330
    teller 'Труп не отвечает на твой голос. Возможно, это связано с отсутствием челюсти. Или ей просто нечего сказать.'

    menu:
        'Использовать на трупе свою способность История костей.' if _r35134_condition(gsm):
            # r3 # reply35134
            jump dzf1072_s2
        'Было приятно с тобой поболтать. Прощай.' if _r35139_condition(gsm):
            # r4 # reply35139
            jump dmorte_s330
        'Было приятно с тобой поболтать. Прощай.' if _r35141_condition(gsm):
            # r6 # reply35141
            jump dzf1072_dispose
        'Было приятно с тобой поболтать. Прощай.' if _r35143_condition(gsm):
            # r8 # reply35143
            jump dzf1072_dispose
        'Тогда прощай.' if _r35117_condition(gsm):
            # r10 # reply35117
            jump dmorte_s330
        'Тогда прощай.' if _r35130_condition(gsm):
            # r11 # reply35130
            jump dzf1072_dispose
        'Тогда прощай.' if _r35131_condition(gsm):
            # r12 # reply35131
            jump dzf1072_dispose
        'Оставить труп в покое.' if _r35140_condition(gsm):
            # r5 # reply35140
            jump dmorte_s330
        'Оставить труп в покое.' if _r35142_condition(gsm):
            # r7 # reply35142
            jump dzf1072_dispose
        'Оставить труп в покое.' if _r35144_condition(gsm):
            # r9 # reply35144
            jump dzf1072_dispose


# s2 # say35135
label dzf1072_s2:  # from 0.3 # Manually checked EXTENDS ~DMORTE~ : 346 as dmorte_s330
    teller 'Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if _r35133_condition(gsm):
            # r2 # reply35133
            jump dzf1072_s1
        'Было приятно с тобой поболтать. Прощай.' if _r35139_condition(gsm):
            # r4 # reply35139
            jump dmorte_s330
        'Было приятно с тобой поболтать. Прощай.' if _r35141_condition(gsm):
            # r6 # reply35141
            jump dzf1072_dispose
        'Было приятно с тобой поболтать. Прощай.' if _r35143_condition(gsm):
            # r8 # reply35143
            jump dzf1072_dispose
        'Тогда прощай.' if _r35136_condition(gsm):
            # r13 # reply35136
            jump dmorte_s330
        'Тогда прощай.' if _r35137_condition(gsm):
            # r14 # reply35137
            jump dzf1072_dispose
        'Тогда прощай.' if _r35138_condition(gsm):
            # r15 # reply35138
            jump dzf1072_dispose
        'Оставить труп в покое.' if _r35140_condition(gsm):
            # r5 # reply35140
            jump dmorte_s330
        'Оставить труп в покое.' if _r35142_condition(gsm):
            # r7 # reply35142
            jump dzf1072_dispose
        'Оставить труп в покое.' if _r35144_condition(gsm):
            # r9 # reply35144
            jump dzf1072_dispose


label dzf1072_kill:
    call dzf1072_init
    teller 'От этого трупа женщины истончается особенно сильный запах формальдегида… пахнет так, как будто ее обработали совсем недавно, и неспроста: труп находится на последней стадии разложения.'
    teller 'У нее нет челюсти, часть мяса отвалилась от черепа, обнажая номер «1072», выбитый на кости.'

    menu:
        '(Уйти.)':
            jump dzf1072_dispose
        '(Убить зомби).':
            jump dzf1072_killed


label dzf1072_killed:
    $ _kill_dzf1072(gsm)
    teller 'Её тело лопается под моими ударами. Отвратительно. Отвратительно пустые глаза.'
    teller 'В них нет ни жизни, ни разума. Я с омерзением отбрасываю тело.'
    teller 'Шлёп.'
    jump dzf1072_dispose
