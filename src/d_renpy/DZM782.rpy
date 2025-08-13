init 10 python:
    from game.dlgs.zm782_logic import Zm782Logic
    zm782Logic = Zm782Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/DZM782.DLG
# ###


# s0 # say24708
label zm782_s0:  # - # IF ~  True()
    SPEAKER 'Как только ты подходишь, труп останавливается и смотрит на тебя невидящим взглядом. На его лбу вырезан номер «782», а его губы крепко зашиты. От тела исходит легкий запах формальдегида.'

    menu:
        '«Я ищу ключ… быть может, он у тебя?»' if zm782Logic.r24709_condition():
            # r0 # reply24709
            jump morte1_s34  # EXTERN

        '«Я ищу ключ… быть может, он у тебя?»' if zm782Logic.r24712_condition():
            # r1 # reply24712
            jump zm782_s1

        'Осмотреть труп, проверить, есть ли у него ключ.':
            # r2 # reply24713
            jump zm782_s2

        '«Было приятно с тобой поболтать. Прощай».':
            # r3 # reply24714
            jump zm782_s2

        'Оставить труп в покое.':
            # r4 # reply24717
            jump zm782_dispose


# s1 # say24710
label zm782_s1:  # from 0.1
    SPEAKER 'Труп не отвечает.'

    menu:
        '«Тогда неважно. Прощай».':
            # r5 # reply24711
            jump zm782_dispose

        'Оставить труп в покое.':
            # r6 # reply42304
            jump zm782_dispose


# s2 # say24715
label zm782_s2:  # from 0.2 0.3
    SPEAKER 'Кажется, у этого трупа есть какой-то ключ. Он крепко держит его в левой руке, сжимая его большим и указательным пальцем мертвой хваткой. Чтобы взять ключ, тебе придется сломать руку.'

    menu:
        '«Мне нужен этот ключ, труп… похоже, тебе уже недолго осталось прозябать в этом мире».':
            # r7 # reply24716
            $ zm782Logic.r24716_action()
            jump zm782_dispose

        'Оставить труп в покое.':
            # r8 # reply42305
            jump zm782_dispose


label zm782_kill: # -
    nr 'Todo.'

    menu:
        'Уйти.':
            jump zm782_dispose
        'Убить.':
            jump zm782_killed


label zm782_killed:  # from zm782_kill
    $ zm782Logic.kill_zm782()
    nr 'Whose motorcycle is this?'
    nr 'Its a chopper, baby.'
    nr 'Whose chopper is this?'
    nr 'zm782s.'
    nr 'Who is zm782?'
    nr 'zm782 is dead, baby, zm782 is dead.'
    jump zm782_dispose


label zm782_kill_first:  # -
    nr 'Todo.'

    menu:
        'Уйти.':
            jump zm782_dispose
        'Убить.':
            jump zm782_killed_first


label zm782_killed_first: # from zm782_kill_first
    $ zm782Logic.kill_zm782()
    nr 'Whose motorcycle is this?'
    nr 'Its a chopper, baby.'
    nr 'Whose chopper is this?'
    nr 'zm782s.'
    nr 'Who is zm782?'
    nr 'zm782 is dead, baby, zm782 is dead.'
    jump zm782_dispose
