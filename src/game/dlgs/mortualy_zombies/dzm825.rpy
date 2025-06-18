init python:
    def _kill_dzm825(gsm):
        gsm.set_dead_dzm825(True)

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
    glm = renpy.store.global_location_manager


# ###
# Original:  DLG/DZM825.DLG
# ###


label start_dzm825_talk:
    call dzm825_init
    jump dzm825_s0
label start_dzm825_kill:
    call dzm825_init
    jump dzm825_kill
label dzm825_init:
    $ glm.set_location('mortuary_f2r1')
    $ gsm.set_meet_dzm825(True)
    scene bg mortuary1
    show dzm825_img default at center_left_down
    return
label dzm825_dispose:
    hide dzm825_img
    jump show_graphics_menu


# s0 # say24564
label dzm825_s0:  # from - # Manually checked EXTERN ~DMORTE1~ : 31 as dmorte1_s31
    teller 'Голова этого трупа болтается на плечах… судя по вывернутой шее, этого человека повесили. На виске нарисован номер 825.'

    menu:
        'Я ищу ключ… быть может, он у тебя?' if _r24565_condition(gsm):
            # r0 # reply24565
            jump dmorte1_s31
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
            jump dzm825_dispose
        'Оставить труп в покое.':
            # r7 # reply42309
            jump dzm825_dispose


# s1 # say24566
label dzm825_s1:  # from 0.1 0.2 0.3 3.1
    teller 'Труп уставился в землю и не отвечает.'

    menu:
        'Использовать на трупе свою способность История костей.' if _r24573_condition(gsm):
            # r4 # reply24573
            jump dzm825_s2
        'Осмотреть труп, проверить, есть ли у него ключ.' if _r24574_condition(gsm):
            # r5 # reply24574
            jump dzm825_s3
        'Тогда неважно. Прощай.':
            # r8 # reply24567
            jump dzm825_dispose
        'Оставить труп в покое.':
            # r9 # reply42310
            jump dzm825_dispose


# s2 # say24571
label dzm825_s2:  # from 0.4
    teller 'Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Я ищу ключ… быть может, он у тебя?' if _r24565_condition(gsm):
            # r0 # reply24565
            jump dmorte1_s31
        'Я ищу ключ… быть может, он у тебя?' if _r24568_condition(gsm):
            # r1 # reply24568
            jump dzm825_s1
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if _r24570_condition(gsm):
            # r3 # reply24570
            jump dzm825_s1
        'Осмотреть труп, проверить, есть ли у него ключ.' if _r24574_condition(gsm):
            # r5 # reply24574
            jump dzm825_s3
        'Оставить труп в покое.':
            # r10 # reply24572
            jump dzm825_dispose


# s3 # say42311
label dzm825_s3:  # from 0.5 # IF ~  True() # Manually checked EXTERN ~DMORTE1~ : 31
    teller 'У этого трупа ничего нет… но ты замечаешь, что его руки сильно перевязаны. Бинты могут пригодиться, если снять их с трупа.'

    menu:
        'Похоже, ключа у тебя нет… Ты случайно не знаешь, у кого из твоих приятелей есть ключ от этого места?' if _r42312_condition(gsm):
            # r11 # reply42312
            jump dmorte1_s31
        'Похоже, ключа у тебя нет… Ты случайно не знаешь, у кого из твоих приятелей есть ключ от этого места?' if _r42313_condition(gsm):
            # r12 # reply42313
            jump dzm825_s1
        'Было приятно с тобой поболтать. Прощай.':
            # r13 # reply42314
            jump dzm825_dispose
        'Оставить труп в покое.':
            # r14 # reply42315
            jump dzm825_dispose


label dzm825_kill:
    teller 'Голова этого трупа болтается на плечах… судя по вывернутой шее, этого человека повесили. На виске нарисован номер «825».'

    menu:
        '(Уйти.)':
            jump dzm825_dispose
        '(Убить зомби).':
            jump dzm825_killed


label dzm825_killed:
    $ _kill_dzm825(gsm)
    teller 'Я беру голову трупа за волосы и поднимаю на уровень своего взгляда. Он смотрит на меня пустыми глазами.'
    teller 'В них нет ни жизни, ни разума. Я изо всей силы сдёргиваю голову с его тела.'
    jump dzm825_dispose
