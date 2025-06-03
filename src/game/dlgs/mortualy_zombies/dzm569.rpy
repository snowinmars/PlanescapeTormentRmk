init python:
    def _kill_dzm569(gsm):
        gsm.set_dead_dzm569(True)


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


define gsm = renpy.store.global_settings_manager


# ###
# Original:  DLG/DZM569.DLG
# Starts:    dzm569_s0
# ###


label dzm569_init:
    $ gsm.set_location('mortuary1')
    $ gsm.set_meet_dzm569(True)
    scene bg mortuary1
    show dzm569_img default at center_left_down
    return


label dzm569_dispose:
    hide dzm569_img
    jump show_graphics_menu


# s0 # say24575
label dzm569_s0:  # from - # Check EXTENDS ~DMORTE1~ : 31
    teller 'Судя по виду, этот неуклюжий труп мертв уже несколько лет. Кожа на голове в некоторых местах отвалилась, открывая белый как мел череп. Кто-то выбил номер 569 на открывшейся кости.'

    menu:
        'Я ищу ключ… быть может, он у тебя?' if _r24576_condition(gsm):
            # r0 # reply24576
            jump show_graphics_menu
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
            jump show_graphics_menu
        'Оставить зомби в покое.':
            # r7 # reply42291
            jump show_graphics_menu


# s1 # say24577
label dzm569_s1:  # from 0.1 0.2 0.3 3.1
    teller 'Труп молчаливо уставился на тебя.'

    menu:
        'Тогда неважно. Прощай.':
            # r8 # reply24578
            jump show_graphics_menu
        'Оставить зомби в покое.':
            # r9 # reply42292
            jump show_graphics_menu


# s2 # say24582
label dzm569_s2:  # from 0.4
    teller 'Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Оставить зомби в покое.':
            # r10 # reply24583
            jump show_graphics_menu


# s3 # say42293
label dzm569_s3:  # from 0.5 # Check EXTENDS ~DMORTE1~ : 31
    teller 'Похоже, у этого трупа нет ключа… да и вряд ли он смог бы им воспользоваться. Его пальцы перебиты, как будто кто-то постучал по ним молотком. Ты замечаешь, что его левое плечо сильно перевязано… бинтами можно воспользоваться, если снять их с трупа.'

    menu:
        'Похоже, что нет… Ты случайно не знаешь, у кого из твоих приятелей есть ключ от этого места?' if _r42294_condition(gsm):
            # r11 # reply42294
            jump show_graphics_menu
        'Похоже, что нет… Ты случайно не знаешь, у кого из твоих приятелей есть ключ от этого места?' if _r42295_condition(gsm):
            # r12 # reply42295
            jump dzm569_s1
        'Было приятно с тобой поболтать. Прощай.':
            # r13 # reply42296
            jump show_graphics_menu
        'Оставить зомби в покое.':
            # r14 # reply42297
            jump show_graphics_menu