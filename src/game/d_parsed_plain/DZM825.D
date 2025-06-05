init python:
    def _r24565_condition(gsm):
        return not gsm.get_mortuary_walkthrough() \
               and not gsm.get_has_intro_key() \
               and gsm.get_in_party_morte()
    def _r24568_condition(gsm):
        return not gsm.get_mortuary_walkthrough() \
               and not gsm.get_has_intro_key() \
               and not gsm.get_in_party_morte()
    def _r24569_condition(gsm):
        return gsm.get_mortuary_walkthrough()
    def _r24570_condition(gsm):
        return gsm.get_vaxis_exposed()
    def _r24573_condition(gsm):
        return gsm.get_can_speak_with_dead()
    def _r24574_condition(gsm):
        return not gsm.get_mortuary_walkthrough() \
               and not gsm.get_has_intro_key()
    def _r42312_condition(gsm):
        return gsm.get_in_party_morte()
    def _r42313_condition(gsm):
        return not gsm.get_in_party_morte()


init 10 python:
    gsm = renpy.store.global_settings_manager


# ###
# Original:  DLG/DZM825.DLG
# Starts:    dzm825_s
# ###


label dzm825_init:
    return


label dzm825_dispose:
    jump show_graphics_menu


# s0 # say24564
label dzm825_s0:  # from - # IF ~  True()~ THEN BEGIN 0 // from:Check EXTERN ~DMORTE1~ : 31
    SPEAKER 'Голова этого трупа болтается на плечах… судя по вывернутой шее, этого человека повесили. На виске нарисован номер 825.'

    menu:
        'Я ищу ключ… быть может, он у тебя?' if _r24565_condition(gsm):
            # r0 # reply24565
            jump show_graphics_menu
        'Я ищу ключ… быть может, он у тебя?' if _r24568_condition(gsm):
            # r1 # reply24568
            jump dzm825_s1
        'Итак… что тут у нас интересного?' if _r24569_condition(gsm):
            # r2 # reply24569
            jump dzm825_s1
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if _r24570_condition(gsm):
            # r3 # reply24570
            jump dzm825_s1
        'Использовать на трупе свою способность История костей.' if _r24573_condition(gsm):
            # r4 # reply24573
            jump dzm825_s2
        'Осмотреть труп, проверить, есть ли у него ключ.' if _r24574_condition(gsm):
            # r5 # reply24574
            jump dzm825_s3
        'Было приятно с тобой поболтать. Прощай.':
            # r6 # reply42308
            jump show_graphics_menu
        'Оставить труп в покое.':
            # r7 # reply42309
            jump show_graphics_menu


# s1 # say24566
label dzm825_s1:  # from 0.1 0.2 0.3 3.1
    SPEAKER 'Труп уставился в землю и не отвечает.'

    menu:
        'Тогда неважно. Прощай.':
            # r8 # reply24567
            jump show_graphics_menu
        'Оставить труп в покое.':
            # r9 # reply42310
            jump show_graphics_menu


# s2 # say24571
label dzm825_s2:  # from 0.4
    SPEAKER 'Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Оставить труп в покое.':
            # r10 # reply24572
            jump show_graphics_menu


# s3 # say42311
label dzm825_s3:  # from 0.5 # Check EXTERN ~DMORTE1~ : 31
    SPEAKER 'У этого трупа ничего нет… но ты замечаешь, что его руки сильно перевязаны. Бинты могут пригодиться, если снять их с трупа.'

    menu:
        'Похоже, ключа у тебя нет… Ты случайно не знаешь, у кого из твоих приятелей есть ключ от этого места?' if _r42312_condition(gsm):
            # r11 # reply42312
            jump show_graphics_menu
        'Похоже, ключа у тебя нет… Ты случайно не знаешь, у кого из твоих приятелей есть ключ от этого места?' if _r42313_condition(gsm):
            # r12 # reply42313
            jump dzm825_s1
        'Было приятно с тобой поболтать. Прощай.':
            # r13 # reply42314
            jump show_graphics_menu
        'Оставить труп в покое.':
            # r14 # reply42315
            jump show_graphics_menu