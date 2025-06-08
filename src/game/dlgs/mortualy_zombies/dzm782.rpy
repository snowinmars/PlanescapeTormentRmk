init python:
    def _has_key_has_morte(gsm):
        return gsm.get_in_party_morte() \
               and gsm.get_has_intro_key()
    def _no_key_has_morte(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_has_intro_key()
    def _has_key_no_morte(gsm):
        return not gsm.get_in_party_morte() \
               and gsm.get_has_intro_key()
    def _no_key_no_morte(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_has_intro_key()
    def _kill_dzm782(gsm):
        gsm.set_dead_dzm782(True)
    def _pick_key_up(gsm):
        gsm.set_has_intro_key(True)


init python:
    def _r24709_condition(gsm):
        return _no_key_has_morte(gsm)
    def _r24712_condition(gsm):
        return _no_key_no_morte(gsm)


init 10 python:
    gsm = renpy.store.global_settings_manager


# ###
# Original:  DLG/DZM782.DLG
# ###


label start_dzm782_talk:
    call dzm782_init
    jump dzm782_s0
label start_dzm782_kill:
    call dzm782_init
    jump dzm782_kill
label dzm782_init:
    $ gsm.set_location('mortuary_f2r1')
    $ gsm.set_meet_dzm782(True)
    scene bg mortuary1
    show dzm782_img default at center_left_down
    return
label dzm782_dispose:
    hide dzm782_img
    jump show_graphics_menu


# s0 # say24708
label dzm782_s0:  # from - # Manually checked EXTERN ~DMORTE1~ : 34 as dmorte1_s34
    teller 'Как только ты подходишь, труп останавливается и смотрит на тебя невидящим взглядом.'
    teller 'На его лбу вырезан номер «782», а его губы крепко зашиты. От тела исходит легкий запах формальдегида.'

    menu:
        'Я ищу ключ… быть может, он у тебя?' if _r24709_condition(gsm):
            # r0 # reply24709
            jump dmorte1_s34
        'Я ищу ключ… быть может, он у тебя?' if _r24712_condition(gsm):
            # r1 # reply24712
            jump dzm782_s1
        'Осмотреть труп, проверить, есть ли у него ключ.':
            # r2 # reply24713
            jump dzm782_s2
        'Было приятно с тобой поболтать. Прощай.':
            # r3 # reply24714
            jump dzm782_s2
        'Оставить труп в покое.':
            # r4 # reply24717
            jump dzm782_dispose


# s1 # say24710
label dzm782_s1:  # from 0.1
    teller 'Труп не отвечает.'

    menu:
        'Осмотреть труп, проверить, есть ли у него ключ.':
            # r2 # reply24713
            jump dzm782_s2
        'Тогда неважно. Прощай.':
            # r5 # reply24711
            jump dzm782_dispose
        'Оставить труп в покое.':
            # r6 # reply42304
            jump dzm782_dispose


# s2 # say24715
label dzm782_s2:  # from 0.2 0.3
    teller 'Кажется, у этого трупа есть какой-то ключ. Он крепко держит его в левой руке, сжимая его большим и указательным пальцем мертвой хваткой. Чтобы взять ключ, тебе придется сломать руку.'

    menu:
        'Мне нужен этот ключ, труп… похоже, тебе уже недолго осталось прозябать в этом мире.':
            # r7 # reply24716
            jump dzm782_take_key_1
        'Оставить труп в покое.':
            # r8 # reply42305
            jump dzm782_dispose


label dzm782_take_key_1:
    teller 'Я дёргаю ключ, но пальцы трупа держат его мёртвой хваткой.'
    teller 'Чтобы взять ключ, мне придется сломать его руку.'

    menu:
        'Сломать руку трупа.':
            # r7 # reply24716
            jump dzm782_take_key_2
        'Оставить труп в покое.':
            # r8 # reply42305
            jump dzm782_dispose


label dzm782_take_key_2:
    teller 'С лёгким звуком ключ оказывается в моих руках.'
    $ _pick_key_up(gsm)
    jump dzm782_dispose


label dzm782_kill:
    teller 'Как только ты подходишь, труп останавливается и смотрит на тебя невидящим взглядом.'
    teller 'На его лбу вырезан номер «782», а его губы крепко зашиты. От тела исходит легкий запах формальдегида.'

    menu:
        '(Уйти.)':
            jump dzm782_dispose
        '(Убить зомби).':
            jump dzm782_killed


label dzm782_killed:
    teller 'Некоторое время я смотрю в ненавидящие меня глаза, пока не понимаю, что эта эмоция обращена не ко мне. Это застывшая маска, которую труп не в состоянии изменить.'
    teller 'В его ненавидящих глазах поселилась пустота. В них нет ни жизни, ни разума. Я без сожалений расширяю дом для пустоты.'

    if _has_key_has_morte(gsm):
        jump dzm782_dispose
    if _has_key_no_morte(gsm):
        jump dzm782_dispose
    if _no_key_has_morte(gsm):
        jump dmorte1_s24
    if _no_key_no_morte(gsm):
        teller 'Ты достаёшь из-под тела кусок железа, в котором с трудом можно опознать правильную форму.'
        $ _s24_action(gsm)
        jump dzm782_dispose
