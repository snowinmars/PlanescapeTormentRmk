init 10 python:
    from dlgs.mortualy_zombies.zm965_logic import Zm965Logic
    zm965Logic = Zm965Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/DZM965.DLG
# ###


label start_zm965_talk_first:
    call zm965_init
    jump zm965_s0
label start_zm965_talk:
    call zm965_init
    jump zm965_s1
label start_zm965_kill:
    call zm965_init
    jump zm965_kill
label zm965_dmorte_extern:
    show morte_img default at center_right_down
    return
label zm965_init:
    $ zm965Logic.zm965_init()
    scene bg mortuary_f2r2
    show zm965_img default at center_left_down
    return
label zm965_dispose:
    hide zm965_img
    hide morte_img
    jump show_graphics_menu


# s0 # say34920
label zm965_s0:  # - # IF ~  NearbyDialog("Dmorte") # Manually checked EXTERN ~DMORTE~ : 477
    teller 'Этот труп бродит по треугольной траектории. Достигнув одного из углов треугольника, он замирает, затем поворачивается и ковыляет к следующему углу.'
    teller 'На боку его черепа вытатуирован номер «965». При твоем приближении он останавливается и пялится на тебя.'

    jump morte_s477


# s1 # say34922
label zm965_s1:  # - # IF ~  !NearbyDialog("Dmorte")
    teller 'Этот труп бродит по треугольной траектории. Достигнув одного из углов треугольника, он замирает, затем поворачивается и ковыляет к следующему углу.'
    teller 'На боку его черепа вытатуирован номер «965». При твоем приближении он останавливается и пялится на тебя.'

    menu:
        'Итак… почему ты ходишь вдоль треугольника?' if zm965Logic.r34923_condition():
            # r0 # reply34923
            $ zm965Logic.r34923_action()
            jump zm965_s2

        'Итак… почему ты ходишь вдоль треугольника?' if zm965Logic.r45070_condition():
            # r1 # reply45070
            jump zm965_s2

        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if zm965Logic.r45071_condition():
            # r2 # reply45071
            jump zm965_s2

        'Использовать на трупе свою способность История костей.' if zm965Logic.r45072_condition():
            # r3 # reply45072
            jump zm965_s3

        'Было приятно с тобой поболтать. Прощай.':
            # r4 # reply45073
            jump zm965_dispose

        'Оставить труп в покое.':
            # r5 # reply45074
            jump zm965_dispose


# s2 # say34927
label zm965_s2:  # from 1.0 1.1 1.2
    teller 'Труп уставился на тебя невидящим взглядом.'

    menu:
        'Использовать на трупе свою способность История костей.' if zm965Logic.r45072_condition():
            # r3 # reply45072
            jump zm965_s3

        'Было приятно с тобой поболтать. Прощай.':
            # r4 # reply45073
            jump zm965_dispose

        'Оставить труп в покое.':
            # r6 # reply34928
            jump zm965_dispose


# s3 # say45069
label zm965_s3:  # from 1.3
    teller 'Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if zm965Logic.r45071_condition():
            # r2 # reply45071
            jump zm965_s2

        'Было приятно с тобой поболтать. Прощай.':
            # r4 # reply45073
            jump zm965_dispose

        'Оставить труп в покое.':
            # r7 # reply45075
            jump zm965_dispose


label zm965_kill:
    teller 'Этот труп бродит по треугольной траектории. Достигнув одного из углов треугольника, он замирает, затем поворачивается и ковыляет к следующему углу.'
    teller 'На боку его черепа вытатуирован номер «965». При твоем приближении он останавливается и пялится на тебя.'

    menu:
        '(Уйти.)':
            jump zm965_dispose
        '(Убить зомби).':
            jump zm965_killed


label zm965_killed:
    $ zm965Logic.kill_zm965()
    teller 'Я поджидаю труп на одном из углов его маршрута. Он идёт прямо на меня, смотря на моё оружие пустыми глазами.'
    teller 'В них нет ни жизни, ни разума. Я прерываю его цикл.'
    jump zm965_dispose
