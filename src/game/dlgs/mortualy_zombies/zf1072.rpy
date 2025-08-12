init 10 python:
    from game.dlgs.mortualy_zombies.zf1072_logic import Zf1072Logic
    zf1072Logic = Zf1072Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/ZF1072.DLG
# ###


label start_zf1072_talk:
    call zf1072_init
    jump zf1072_s0
label start_zf1072_kill:
    call zf1072_init
    jump zf1072_kill
label zf1072_init:
    $ zf1072Logic.zf1072_init()
    scene bg mortuary_f2r3
    show zf1072_img default at center_left_down
    return
label zf1072_dispose:
    hide zf1072_img
    jump graphics_menu


# s0 # say35114
label zf1072_s0:  # - # IF ~  True()
    nr 'От этого трупа женщины истончается особенно сильный запах формальдегида… пахнет так, как будто ее обработали совсем недавно, и неспроста: труп находится на последней стадии разложения.'
    nr 'У нее нет челюсти, часть мяса отвалилась от черепа, обнажая номер «1072», выбитый на кости.'

    menu:
        '«Кажется, у нее бывали деньки и получше…»' if zf1072Logic.r35115_condition():
            # r0 # reply35115
            $ zf1072Logic.r35115_action()
            jump zf1072_s1

        '«Кажется, у нее бывали деньки и получше…»' if zf1072Logic.r35132_condition():
            # r1 # reply35132
            jump zf1072_s1

        '«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».' if zf1072Logic.r35133_condition():
            # r2 # reply35133
            jump zf1072_s1

        'Использовать на трупе свою способность «История костей».' if zf1072Logic.r35134_condition():
            # r3 # reply35134
            jump zf1072_s2

        '«Было приятно с тобой поболтать. Прощай».' if zf1072Logic.r35139_condition():
            # r4 # reply35139
            jump morte_s346  # EXTERN

        'Оставить труп в покое.' if zf1072Logic.r35140_condition():
            # r5 # reply35140
            jump morte_s346  # EXTERN

        '«Было приятно с тобой поболтать. Прощай».' if zf1072Logic.r35141_condition():
            # r6 # reply35141
            jump zf1072_dispose

        'Оставить труп в покое.' if zf1072Logic.r35142_condition():
            # r7 # reply35142
            jump zf1072_dispose

        '«Было приятно с тобой поболтать. Прощай».' if zf1072Logic.r35143_condition():
            # r8 # reply35143
            jump zf1072_dispose

        'Оставить труп в покое.' if zf1072Logic.r35144_condition():
            # r9 # reply35144
            jump zf1072_dispose


# s1 # say35116
label zf1072_s1:  # from 0.0 0.1 0.2
    nr 'Труп не отвечает на твой голос. Возможно, это связано с отсутствием челюсти. Или ей просто нечего сказать.'

    menu:
        '«Тогда прощай».' if zf1072Logic.r35117_condition():
            # r10 # reply35117
            jump morte_s346  # EXTERN

        '«Тогда прощай».' if zf1072Logic.r35130_condition():
            # r11 # reply35130
            jump zf1072_dispose

        '«Тогда прощай».' if zf1072Logic.r35131_condition():
            # r12 # reply35131
            jump zf1072_dispose


# s2 # say35135
label zf1072_s2:  # from 0.3
    nr 'Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        '«Тогда прощай».' if zf1072Logic.r35136_condition():
            # r13 # reply35136
            jump morte_s346  # EXTERN

        '«Тогда прощай».' if zf1072Logic.r35137_condition():
            # r14 # reply35137
            jump zf1072_dispose

        '«Тогда прощай».' if zf1072Logic.r35138_condition():
            # r15 # reply35138
            jump zf1072_dispose


# s3 # say35145
label zf1072_s3:  # - # IF ~  False()
    nr 'Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    jump zf1072_dispose


label zf1072_kill:
    nr 'От этого трупа женщины истончается особенно сильный запах формальдегида… пахнет так, как будто ее обработали совсем недавно, и неспроста: труп находится на последней стадии разложения.'
    nr 'У нее нет челюсти, часть мяса отвалилась от черепа, обнажая номер «1072», выбитый на кости.'

    menu:
        '(Уйти.)':
            jump zf1072_dispose
        '(Убить зомби).':
            jump zf1072_killed


label zf1072_killed:
    $ zf1072Logic.kill_zf1072()
    nr 'Её тело лопается под моими ударами. Отвратительно. Отвратительно пустые глаза.'
    nr 'В них нет ни жизни, ни разума. Я с омерзением отбрасываю тело.'
    nr 'Шлёп.'
    jump zf1072_dispose
