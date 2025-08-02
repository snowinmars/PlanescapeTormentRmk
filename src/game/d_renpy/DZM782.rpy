init 10 python:
    from dlgs.dzm782_logic import Dzm782Logic
    dzm782Logic = Dzm782Logic(renpy.store.global_settings_manager)


# ###
# Original: DLG/DZM782.DLG
# ###


label dzm782_init:
    return


label dzm782_dispose:
    jump show_graphics_menu


# s0 # say24708
label dzm782_s0:  # - # IF ~  True()  Check EXTERN ~DMORTE1~ : 34
    SPEAKER 'Как только ты подходишь, труп останавливается и смотрит на тебя невидящим взглядом. На его лбу вырезан номер 782, а его губы крепко зашиты. От тела исходит легкий запах формальдегида.'

    menu:
        'Я ищу ключ… быть может, он у тебя?' if dzm782Logic.r24712_condition():
            # r0 # reply24712
            jump dzm782_s1

        'Осмотреть труп, проверить, есть ли у него ключ.':
            # r1 # reply24713
            jump dzm782_s2

        'Было приятно с тобой поболтать. Прощай.':
            # r2 # reply24714
            jump dzm782_s2

        'Оставить труп в покое.':
            # r3 # reply24717
            jump show_graphics_menu


# s1 # say24710
label dzm782_s1:  # from 0.1
    SPEAKER 'Труп не отвечает.'

    menu:
        'Тогда неважно. Прощай.':
            # r4 # reply24711
            jump show_graphics_menu

        'Оставить труп в покое.':
            # r5 # reply42304
            jump show_graphics_menu


# s2 # say24715
label dzm782_s2:  # from 0.2 0.3
    SPEAKER 'Кажется, у этого трупа есть какой-то ключ. Он крепко держит его в левой руке, сжимая его большим и указательным пальцем мертвой хваткой. Чтобы взять ключ, тебе придется сломать руку.'

    menu:
        'Мне нужен этот ключ, труп… похоже, тебе уже недолго осталось прозябать в этом мире.':
            # r6 # reply24716
            $ dzm782Logic.r24716_action()
            jump show_graphics_menu

        'Оставить труп в покое.':
            # r7 # reply42305
            jump show_graphics_menu
