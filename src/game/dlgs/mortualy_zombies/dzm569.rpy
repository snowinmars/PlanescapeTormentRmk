init python:
    def _kill_dzm569(gsm):
        gsm.set_dead_dzm569(True)
        gsm.inc_exp_custom('party', 65)


init python:
    def _r24576_condition(gsm):
        return not gsm.get_mortuary_walkthrough() \
               and not gsm.get_has_intro_key() \
               and gsm.get_in_party_morte()
    def _r24579_condition(gsm):
        return not gsm.get_mortuary_walkthrough() \
               and not gsm.get_has_intro_key() \
               and not gsm.get_in_party_morte()
    def _r24580_condition(gsm):
        return gsm.get_mortuary_walkthrough()
    def _r24581_condition(gsm):
        return gsm.get_vaxis_exposed()
    def _r24584_condition(gsm):
        return gsm.get_can_speak_with_dead()
    def _r24585_condition(gsm):
        return not gsm.get_mortuary_walkthrough() \
               and not gsm.get_has_intro_key()
    def _r42294_condition(gsm):
        return gsm.get_in_party_morte()
    def _r42295_condition(gsm):
        return not gsm.get_in_party_morte()


init 10 python:
    gsm = renpy.store.global_settings_manager
    glm = renpy.store.global_location_manager


# ###
# Original:  DLG/DZM569.DLG
# ###


label start_dzm569_talk:
    call dzm569_init
    jump dzm569_s0
label start_dzm569_kill:
    call dzm569_init
    jump dzm569_kill
label dzm569_dmorte_extern:
    show morte_img default at center_right_down
    return
label dzm569_init:
    $ glm.set_location('mortuary_f2r1')
    $ gsm.set_meet_dzm569(True)
    scene bg mortuary_f2r1
    show dzm569_img default at center_left_down
    return
label dzm569_dispose:
    hide dzm569_img
    hide morte_img
    jump show_graphics_menu


# s0 # say24575
label dzm569_s0:  # from - # IF ~  True() # Manually checked EXTERN ~DMORTE1~ : 31
    teller 'Судя по виду, этот неуклюжий труп мертв уже несколько лет. Кожа на голове в некоторых местах отвалилась, открывая белый как мел череп. Кто-то выбил номер «569» на открывшейся кости.'

    menu:
        'Я ищу ключ… быть может, он у тебя?' if _r24576_condition(gsm):
            # r0 # reply24576
            call dzm569_dmorte_extern
            jump dmorte1_s31
        'Я ищу ключ… быть может, он у тебя?' if _r24579_condition(gsm):
            # r1 # reply24579
            jump dzm569_s1
        'Итак… что тут у нас интересного?' if _r24580_condition(gsm):
            # r2 # reply24580
            jump dzm569_s1
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if _r24581_condition(gsm):
            # r3 # reply24581
            jump dzm569_s1
        'Использовать на трупе свою способность История костей.' if _r24584_condition(gsm):
            # r4 # reply24584
            jump dzm569_s2
        'Осмотреть труп, проверить, есть ли у него ключ.' if _r24585_condition(gsm):
            # r5 # reply24585
            jump dzm569_s3
        'Было приятно с тобой поболтать. Прощай.':
            # r6 # reply42290
            jump dzm569_dispose
        'Оставить зомби в покое.':
            # r7 # reply42291
            jump dzm569_dispose


# s1 # say24577
label dzm569_s1:  # from 0.1 0.2 0.3 3.1
    teller 'Труп молчаливо уставился на тебя.'

    menu:
        'Использовать на трупе свою способность История костей.' if _r24584_condition(gsm):
            # r4 # reply24584
            jump dzm569_s2
        'Осмотреть труп, проверить, есть ли у него ключ.' if _r24585_condition(gsm):
            # r5 # reply24585
            jump dzm569_s3
        'Осмотреть труп, проверить, есть ли у него ключ.' if _r24585_condition(gsm):
            # r5 # reply24585
            jump dzm569_s3
        'Тогда неважно. Прощай.':
            # r8 # reply24578
            jump dzm569_dispose
        'Оставить зомби в покое.':
            # r9 # reply42292
            jump dzm569_dispose


# s2 # say24582
label dzm569_s2:  # from 0.4
    teller 'Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if _r24581_condition(gsm):
            # r3 # reply24581
            jump dzm569_s1
        'Тогда неважно. Прощай.':
            # r8 # reply24578
            jump dzm569_dispose
        'Оставить зомби в покое.':
            # r10 # reply24583
            jump dzm569_dispose


# s3 # say42293
label dzm569_s3:  # from 0.5 # Manually checked EXTERN ~DMORTE1~ : 31
    teller 'Похоже, у этого трупа нет ключа… да и вряд ли он смог бы им воспользоваться. Его пальцы перебиты, как будто кто-то постучал по ним молотком. Ты замечаешь, что его левое плечо сильно перевязано.'

    menu:
        'Похоже, что нет… Ты случайно не знаешь, у кого из твоих приятелей есть ключ от этого места?' if _r42294_condition(gsm):
            # r11 # reply42294
            call dzm569_dmorte_extern
            jump dmorte1_s31
        'Похоже, что нет… Ты случайно не знаешь, у кого из твоих приятелей есть ключ от этого места?' if _r42295_condition(gsm):
            # r12 # reply42295
            jump dzm569_s1
        'Использовать на трупе свою способность История костей.' if _r24584_condition(gsm):
            # r4 # reply24584
            jump dzm569_s2
        'Было приятно с тобой поболтать. Прощай.':
            # r13 # reply42296
            jump dzm569_dispose
        'Оставить зомби в покое.':
            # r14 # reply42297
            jump dzm569_dispose


label dzm569_kill:
    teller 'Судя по виду, этот неуклюжий труп мертв уже несколько лет. Кожа на голове в некоторых местах отвалилась, открывая белый как мел череп. Кто-то выбил номер «569» на открывшейся кости.'

    menu:
        '(Уйти.)':
            jump dzm569_dispose
        '(Убить зомби).':
            jump dzm569_killed


label dzm569_killed:
    $ _kill_dzm569(gsm)
    teller 'Я бью прямо в номер «569», выбитый на кости черепа. Он удивительно легко проламывается. Я бью снова и снова, пока труп не перестаёт на меня смотреть пустыми глазами.'
    teller 'В них нет ни жизни, ни разума. Я порезался осколками его черепа.'
    jump dzm569_dispose
