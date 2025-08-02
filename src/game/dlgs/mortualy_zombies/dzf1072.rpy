init 10 python:
    from dlgs.mortualy_zombies.dzf1072_logic import Dzf1072Logic
    dzf1072Logic = Dzf1072Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/DZF1072.DLG # orphan dzf1072_s3
# ###


label start_dzf1072_talk:
    call dzf1072_init
    jump dzf1072_s0
label start_dzf1072_kill:
    call dzf1072_init
    jump dzf1072_kill
label dzf1072_dmorte_extern:
    show morte_img default at center_right_down
    return
label dzf1072_init:
    $ dzf1072Logic.dzf1072_init()
    scene bg mortuary_f2r3
    show dzf1072_img default at center_left_down
    return
label dzf1072_dispose:
    hide dzf1072_img
    hide morte_img
    jump show_graphics_menu


# s0 # say35114
label dzf1072_s0:  # - # IF ~  True() Manually checked EXTERN ~DMORTE~ : 346 as dmorte_s330
    teller 'От этого трупа женщины истончается особенно сильный запах формальдегида… пахнет так, как будто ее обработали совсем недавно, и неспроста: труп находится на последней стадии разложения.'
    teller 'У нее нет челюсти, часть мяса отвалилась от черепа, обнажая номер «1072», выбитый на кости.'

    menu:
        'Кажется, у нее бывали деньки и получше…' if dzf1072Logic.r35115_condition():
            # r0 # reply35115
            $ dzf1072Logic.r35115_action()
            jump dzf1072_s1

        'Кажется, у нее бывали деньки и получше…' if dzf1072Logic.r35132_condition():
            # r1 # reply35132
            jump dzf1072_s1

        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if dzf1072Logic.r35133_condition():
            # r2 # reply35133
            jump dzf1072_s1

        'Использовать на трупе свою способность История костей.' if dzf1072Logic.r35134_condition():
            # r3 # reply35134
            jump dzf1072_s2

        'Было приятно с тобой поболтать. Прощай.' if dzf1072Logic.r35139_condition():
            # r4 # reply35139
            jump dmorte_s330

        'Оставить труп в покое.' if dzf1072Logic.r35140_condition():
            # r5 # reply35140
            jump dmorte_s330

        'Было приятно с тобой поболтать. Прощай.' if dzf1072Logic.r35141_condition():
            # r6 # reply35141
            jump dzf1072_dispose

        'Оставить труп в покое.' if dzf1072Logic.r35142_condition():
            # r7 # reply35142
            jump dzf1072_dispose

        'Было приятно с тобой поболтать. Прощай.' if dzf1072Logic.r35143_condition():
            # r8 # reply35143
            jump dzf1072_dispose

        'Оставить труп в покое.' if dzf1072Logic.r35144_condition():
            # r9 # reply35144
            jump dzf1072_dispose


# s1 # say35116
label dzf1072_s1:  # from 0.0 0.1 0.2 # Manually checked EXTERN ~DMORTE~ : 346 as dmorte_s330
    teller 'Труп не отвечает на твой голос. Возможно, это связано с отсутствием челюсти. Или ей просто нечего сказать.'

    menu:
        'Использовать на трупе свою способность История костей.' if dzf1072Logic.r35134_condition():
            # r3 # reply35134
            jump dzf1072_s2
        'Тогда прощай.' if dzf1072Logic.r35117_condition():
            # r10 # reply35117
            jump dmorte_s330

        'Тогда прощай.' if dzf1072Logic.r35130_condition():
            # r11 # reply35130
            jump dzf1072_dispose

        'Тогда прощай.' if dzf1072Logic.r35131_condition():
            # r12 # reply35131
            jump dzf1072_dispose
        'Оставить труп в покое.' if dzf1072Logic.r35140_condition():
            # r5 # reply35140
            jump dmorte_s330
        'Оставить труп в покое.' if dzf1072Logic.r35142_condition():
            # r7 # reply35142
            jump dzf1072_dispose
        'Оставить труп в покое.' if dzf1072Logic.r35144_condition():
            # r9 # reply35144
            jump dzf1072_dispose


# s2 # say35135
label dzf1072_s2:  # from 0.3 # Manually checked EXTERN ~DMORTE~ : 346 as dmorte_s330
    teller 'Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if dzf1072Logic.r35133_condition():
            # r2 # reply35133
            jump dzf1072_s1

        'Тогда прощай.' if dzf1072Logic.r35136_condition():
            # r13 # reply35136
            jump dmorte_s330

        'Тогда прощай.' if dzf1072Logic.r35137_condition():
            # r14 # reply35137
            jump dzf1072_dispose

        'Тогда прощай.' if dzf1072Logic.r35138_condition():
            # r15 # reply35138
            jump dzf1072_dispose

        'Оставить труп в покое.' if dzf1072Logic.r35140_condition():
            # r5 # reply35140
            jump dmorte_s330

        'Оставить труп в покое.' if dzf1072Logic.r35142_condition():
            # r7 # reply35142
            jump dzf1072_dispose

        'Оставить труп в покое.' if dzf1072Logic.r35144_condition():
            # r9 # reply35144
            jump dzf1072_dispose


# s3 # say35145
label dzf1072_s3:  # - # IF ~  False() # orphan
    teller 'Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    jump dzf1072_dispose


label dzf1072_kill:
    teller 'От этого трупа женщины истончается особенно сильный запах формальдегида… пахнет так, как будто ее обработали совсем недавно, и неспроста: труп находится на последней стадии разложения.'
    teller 'У нее нет челюсти, часть мяса отвалилась от черепа, обнажая номер «1072», выбитый на кости.'

    menu:
        '(Уйти.)':
            jump dzf1072_dispose
        '(Убить зомби).':
            jump dzf1072_killed


label dzf1072_killed:
    $ dzf1072Logic.kill_dzf1072()
    teller 'Её тело лопается под моими ударами. Отвратительно. Отвратительно пустые глаза.'
    teller 'В них нет ни жизни, ни разума. Я с омерзением отбрасываю тело.'
    teller 'Шлёп.'
    jump dzf1072_dispose
