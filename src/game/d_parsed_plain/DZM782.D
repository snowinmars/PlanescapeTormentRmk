python:
    def _r24716_action(gsm):        # ?.attack('Protagonist').by('ZM782')

python:
    def _r24709_condition(gsm):
        return gsm.get_in_party_morte()
    def _r24712_condition(gsm):
        return not gsm.get_in_party_morte()

python:
    gsm           = renpy.store.global_settings_manager


# s0 # say24708
label dzm782_s0:  # from - # Check EXTENDS ~DMORTE1~ : 34
    SPEAKER 'Как только ты подходишь, труп останавливается и смотрит на тебя невидящим взглядом. На его лбу вырезан номер 782, а его губы крепко зашиты. От тела исходит легкий запах формальдегида.'

    menu:
        'Я ищу ключ… быть может, он у тебя?' if _r24709_condition(gsm):
            # r0 # reply24709
            jump 'show_graphics_menu'
        'Я ищу ключ… быть может, он у тебя?' if _r24712_condition(gsm):
            # r1 # reply24712
            jump 'dzm782_s1'
        'Осмотреть труп, проверить, есть ли у него ключ.':
            # r2 # reply24713
            jump 'dzm782_s2'
        'Было приятно с тобой поболтать. Прощай.':
            # r3 # reply24714
            jump 'dzm782_s2'
        'Оставить труп в покое.':
            # r4 # reply24717
            jump 'show_graphics_menu'


# s1 # say24710
label dzm782_s1:  # from 0.1
    SPEAKER 'Труп не отвечает.'

    menu:
        'Тогда неважно. Прощай.':
            # r5 # reply24711
            jump 'show_graphics_menu'
        'Оставить труп в покое.':
            # r6 # reply42304
            jump 'show_graphics_menu'


# s2 # say24715
label dzm782_s2:  # from 0.2 0.3
    SPEAKER 'Кажется, у этого трупа есть какой-то ключ. Он крепко держит его в левой руке, сжимая его большим и указательным пальцем мертвой хваткой. Чтобы взять ключ, тебе придется сломать руку.'

    menu:
        'Мне нужен этот ключ, труп… похоже, тебе уже недолго осталось прозябать в этом мире.':
            # r7 # reply24716
            $ _r24716_action(gsm)
            jump 'show_graphics_menu'
        'Оставить труп в покое.':
            # r8 # reply42305
            jump 'show_graphics_menu'