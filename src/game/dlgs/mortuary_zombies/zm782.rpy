init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.mortuary_zombies.zm782_logic import Zm782Logic
    zm782Logic = Zm782Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM782.DLG
# ###


# s0 # say24708
label zm782_s0: # - # IF ~  True()
    'zm782_s0{#zm782_s0}'

    menu:
        'zm782_s0_r24709{#zm782_s0_r24709}' if zm782Logic.r24709_condition(): # '«Я ищу ключ… быть может, он у тебя?»{#zm782_s0_r24709}'
            # a0 # r24709
            jump morte1_s34  # EXTERN

        'zm782_s0_r24712{#zm782_s0_r24712}' if zm782Logic.r24712_condition(): # '«Я ищу ключ… быть может, он у тебя?»{#zm782_s0_r24712}'
            # a1 # r24712
            jump zm782_s1

        'zm782_s0_r24713{#zm782_s0_r24713}' if zm782Logic.r24713_condition(): # 'Осмотреть труп, проверить, есть ли у него ключ.{#zm782_s0_r24713}'
            # a2 # r24713
            jump zm782_s2

        'zm782_s0_r24714{#zm782_s0_r24714_1}' if zm782Logic.r24713_condition(): # '«Было приятно с тобой поболтать. Прощай».{#zm782_s0_r24714}'
            # a3 # r24714
            jump zm782_s2

        'zm782_s0_r24714{#zm782_s0_r24714_2}' if zm782Logic.r24714_condition(): # '«Было приятно с тобой поболтать. Прощай».{#zm782_s0_r24714}'
            # a3 # r24714
            jump zm782_dispose

        'zm782_s0_r24717{#zm782_s0_r24717_1}' if zm782Logic.r24713_condition(): # 'Оставить труп в покое.{#zm782_s0_r24717}'
            # a4 # r24717
            jump zm782_s2

        'zm782_s0_r24717{#zm782_s0_r24717_2}' if zm782Logic.r24714_condition(): # 'Оставить труп в покое.{#zm782_s0_r24717}'
            # a4 # r24717
            jump zm782_dispose


# s1 # say24710
label zm782_s1: # from 0.1
    'zm782_s1{#zm782_s1}'
    # nr 'Труп не отвечает.{#zm782_s1_1}'

    menu:
        'zm782_s1_r24711{#zm782_s1_r24711}': # '«Тогда неважно. Прощай».{#zm782_s1_r24711}'
            # a5 # r24711
            jump zm782_dispose

        'zm782_s1_r42304{#zm782_s1_r42304}': # 'Оставить труп в покое.{#zm782_s1_r42304}'
            # a6 # r42304
            jump zm782_dispose


# s2 # say24715
label zm782_s2: # from 0.2 0.3
    'zm782_s2{#zm782_s2}'
    # nr 'Кажется, у этого трупа есть какой-то ключ. Он крепко держит его в левой руке, сжимая его большим и указательным пальцем мертвой хваткой. Чтобы взять ключ, тебе придется сломать руку.{#zm782_s2_1}'

    menu:
        'zm782_s2_r24716{#zm782_s2_r24716}': # '«Мне нужен этот ключ, труп… похоже, тебе уже недолго осталось прозябать в этом мире».{#zm782_s2_r24716}'
            # a7 # r24716
            jump zm782_take_key_1

        'zm782_s2_r42305{#zm782_s2_r42305}': # 'Оставить труп в покое.{#zm782_s2_r42305}'
            # a8 # r42305
            jump zm782_dispose


label zm782_take_key_1:
    'zm782_take_key_1{#zm782_take_key_1}'
    # nr 'Ты дёргаешь ключ, но пальцы трупа держат его мёртвой хваткой. Чтобы взять ключ, тебе придется сломать его руку.{#zm782_take_key_1_1}'

    menu:
        'zm782_take_key_1_r24716{#zm782_take_key_1_r24716}': # 'Сломать руку трупа.{#zm782_take_key_1_r24716}'
            # a7 # r24716
            jump zm782_take_key_2

        'zm782_take_key_1_r42305{#zm782_take_key_1_r42305}': # 'Оставить труп в покое.{#zm782_take_key_1_r42305}'
            # a8 # r42305
            jump zm782_dispose


label zm782_take_key_2:
    'zm782_take_key_1_2{#zm782_take_key_1_2}'
    # nr 'С лёгким звуком ключ оказывается в твоих руках.{#zm782_take_key_1_2}'

    $ zm782Logic.pick_key_up()
    if zm782Logic.s24_condition():
        jump morte1_s24  # EXTERN
    jump zm782_dispose # TODO [snow]: is it ok that I may not dispose dialogue after extern?
