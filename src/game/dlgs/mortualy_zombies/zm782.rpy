init 10 python:
    from game.dlgs.mortualy_zombies.zm782_logic import Zm782Logic
    zm782Logic = Zm782Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/ZM782.DLG
# ###


label start_zm782_talk:
    call zm782_init
    jump zm782_s0
label start_zm782_kill:
    call zm782_init
    jump zm782_kill
label zm782_init:
    $ zm782Logic.zm782_init()
    scene bg mortuary_f2r1
    show zm782_img default at center_left_down
    return
label zm782_dispose:
    hide zm782_img
    jump graphics_menu


# s0 # say24708
label zm782_s0: # - # IF ~  True()
    nr 'Как только ты подходишь, труп останавливается и смотрит на тебя невидящим взглядом.'
    nr 'На его лбу вырезан номер «782», а его губы крепко зашиты. От тела исходит легкий запах формальдегида.'

    menu:
        '«Я ищу ключ… быть может, он у тебя?»' if zm782Logic.r24709_condition():
            # a0 # r24709
            jump morte1_s34  # EXTERN

        '«Я ищу ключ… быть может, он у тебя?»' if zm782Logic.r24712_condition():
            # a1 # r24712
            jump zm782_s1

        'Осмотреть труп, проверить, есть ли у него ключ.' if zm782Logic.r24713_condition():
            # a2 # r24713
            jump zm782_s2

        '«Было приятно с тобой поболтать. Прощай».' if zm782Logic.r24713_condition():
            # a3 # r24714
            jump zm782_s2

        '«Было приятно с тобой поболтать. Прощай».' if zm782Logic.r24714_condition():
            # a3 # r24714
            jump zm782_dispose

        'Оставить труп в покое.' if zm782Logic.r24713_condition():
            # a4 # r24717
            jump zm782_s2

        'Оставить труп в покое.' if zm782Logic.r24714_condition():
            # a4 # r24717
            jump zm782_dispose


# s1 # say24710
label zm782_s1: # from 0.1
    nr 'Труп не отвечает.'

    menu:
        '«Тогда неважно. Прощай».':
            # a5 # r24711
            jump zm782_dispose

        'Оставить труп в покое.':
            # a6 # r42304
            jump zm782_dispose


# s2 # say24715
label zm782_s2: # from 0.2 0.3
    nr 'Кажется, у этого трупа есть какой-то ключ. Он крепко держит его в левой руке, сжимая его большим и указательным пальцем мертвой хваткой. Чтобы взять ключ, тебе придется сломать руку.'

    menu:
        '«Мне нужен этот ключ, труп… похоже, тебе уже недолго осталось прозябать в этом мире».':
            # a7 # r24716
            jump zm782_take_key_1

        'Оставить труп в покое.':
            # a8 # r42305
            jump zm782_dispose


label zm782_take_key_1:
    nr 'Я дёргаю ключ, но пальцы трупа держат его мёртвой хваткой.'
    nr 'Чтобы взять ключ, мне придется сломать его руку.'

    menu:
        'Сломать руку трупа.':
            # a7 # r24716
            jump zm782_take_key_2

        'Оставить труп в покое.':
            # a8 # r42305
            jump zm782_dispose


label zm782_take_key_2:
    nr 'С лёгким звуком ключ оказывается в моих руках.'
    $ zm782Logic.pick_key_up()
    jump morte1_s24  # EXTERN


label zm782_kill:
    nr 'Как только ты подходишь, труп останавливается и смотрит на тебя невидящим взглядом.'
    nr 'На его лбу вырезан номер «782», а его губы крепко зашиты. От тела исходит легкий запах формальдегида.'

    menu:
        '(Уйти.)':
            jump zm782_dispose
        '(Убить зомби).':
            jump zm782_killed


label zm782_killed:
    $ zm782Logic.kill_zm782()
    nr 'Некоторое время я смотрю в ненавидящие меня глаза, пока не понимаю, что эта эмоция обращена не ко мне. Это застывшая маска, которую труп не в состоянии изменить.'
    nr 'В его ненавидящих глазах поселилась пустота. В них нет ни жизни, ни разума. Я без сожалений расширяю дом для пустоты.'

    if zm782Logic.has_key_has_morte():
        jump zm782_dispose
    if zm782Logic.has_key_no_morte():
        jump zm782_dispose
    if zm782Logic.no_key_has_morte():
        jump morte1_s24
    if zm782Logic.no_key_no_morte():
        nr 'Ты достаёшь из-под тела кусок железа, в котором с трудом можно опознать правильную форму.'
        $ zm782Logic.pick_key_up()
        jump zm782_dispose
