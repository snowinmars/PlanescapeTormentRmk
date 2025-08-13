init 10 python:
    from game.dlgs.zm965_logic import Zm965Logic
    zm965Logic = Zm965Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/DZM965.DLG
# ###


# s0 # say34920
label zm965_s0:  # - # IF ~  NearbyDialog("Dmorte")
    SPEAKER 'Этот труп бродит по треугольной траектории. Достигнув одного из углов треугольника, он замирает, затем поворачивается и ковыляет к следующему углу. На боку его черепа вытатуирован номер «965». При твоем приближении он останавливается и пялится на тебя.'

    jump morte_s477  # EXTERN

# s1 # say34922
label zm965_s1:  # - # IF ~  !NearbyDialog("Dmorte")
    SPEAKER 'Этот труп бродит по треугольной траектории. Достигнув одного из углов треугольника, он замирает, затем поворачивается и ковыляет к следующему углу. На боку его черепа вытатуирован номер «965». При твоем приближении он останавливается и пялится на тебя.'

    menu:
        '«Итак… почему ты ходишь вдоль треугольника?»' if zm965Logic.r34923_condition():
            # r0 # reply34923
            $ zm965Logic.r34923_action()
            jump zm965_s2

        '«Итак… почему ты ходишь вдоль треугольника?»' if zm965Logic.r45070_condition():
            # r1 # reply45070
            jump zm965_s2

        '«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».' if zm965Logic.r45071_condition():
            # r2 # reply45071
            jump zm965_s2

        'Использовать на трупе свою способность «История костей».' if zm965Logic.r45072_condition():
            # r3 # reply45072
            jump zm965_s3

        '«Было приятно с тобой поболтать. Прощай».':
            # r4 # reply45073
            jump zm965_dispose

        'Оставить труп в покое.':
            # r5 # reply45074
            jump zm965_dispose


# s2 # say34927
label zm965_s2:  # from 1.0 1.1 1.2
    SPEAKER 'Труп уставился на тебя невидящим взглядом.'

    menu:
        'Оставить труп в покое.':
            # r6 # reply34928
            jump zm965_dispose


# s3 # say45069
label zm965_s3:  # from 1.3
    SPEAKER 'Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Оставить труп в покое.':
            # r7 # reply45075
            jump zm965_dispose


label zm965_kill: # -
    nr 'Todo.'

    menu:
        'Уйти.':
            jump zm965_dispose
        'Убить.':
            jump zm965_killed


label zm965_killed:  # from zm965_kill
    $ zm965Logic.kill_zm965()
    nr 'Whose motorcycle is this?'
    nr 'Its a chopper, baby.'
    nr 'Whose chopper is this?'
    nr 'zm965s.'
    nr 'Who is zm965?'
    nr 'zm965 is dead, baby, zm965 is dead.'
    jump zm965_dispose


label zm965_kill_first:  # -
    nr 'Todo.'

    menu:
        'Уйти.':
            jump zm965_dispose
        'Убить.':
            jump zm965_killed_first


label zm965_killed_first: # from zm965_kill_first
    $ zm965Logic.kill_zm965()
    nr 'Whose motorcycle is this?'
    nr 'Its a chopper, baby.'
    nr 'Whose chopper is this?'
    nr 'zm965s.'
    nr 'Who is zm965?'
    nr 'zm965 is dead, baby, zm965 is dead.'
    jump zm965_dispose
