init 10 python:
    from dlgs.mortualy_zombies.dzf114_logic import Dzf114Logic
    dzf114Logic = Dzf114Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/DZF114.DLG
# ###

label start_dzf114_talk:
    call dzf114_init
    jump dzf114_s0
label start_dzf114_kill:
    call dzf114_init
    jump dzf114_kill
label dzf114_init:
    $ dzf114Logic.dzf114_init()
    scene bg mortuary2
    show dzf114_img default at center_left_down
    return
label dzf114_dispose:
    hide dzf114_img
    jump show_graphics_menu


# s0 # say34986
label dzf114_s0:  # from - # Manually checked EXTERN ~DMORTE~ : 330
    teller 'Труп женщины перестает ковылять, как только ты подходишь. Ты замечаешь номер «114», вырезанный у нее на лбу.'
    teller 'Ее рот зашит, однако нитки начинают рваться и из ее губ слышится слабый стон.'

    menu:
        'Итак… чем занимаешься вечером?' if dzf114Logic.r34987_condition():
            # r0 # reply34987
            $ dzf114Logic.r34987_action()
            jump dzf114_s1
        'Итак… чем занимаешься вечером?' if dzf114Logic.r35004_condition():
            # r1 # reply35004
            jump dzf114_s1
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if dzf114Logic.r35005_condition():
            # r2 # reply35005
            jump dzf114_s1
        'Использовать на трупе свою способность История костей.' if dzf114Logic.r35006_condition():
            # r3 # reply35006
            jump dzf114_s2
        'Было приятно с тобой поболтать. Прощай.' if dzf114Logic.r35011_condition():
            # r4 # reply35011
            jump dmorte_s330
        'Было приятно с тобой поболтать. Прощай.' if dzf114Logic.r35013_condition():
            # r6 # reply35013
            jump dzf114_dispose
        'Было приятно с тобой поболтать. Прощай.' if dzf114Logic.r35015_condition():
            # r8 # reply35015
            jump dzf114_dispose
        'Оставить труп в покое.' if dzf114Logic.r35012_condition():
            # r5 # reply35012
            jump dmorte_s330
        'Оставить труп в покое.' if dzf114Logic.r35014_condition():
            # r7 # reply35014
            jump dzf114_dispose
        'Оставить труп в покое.' if dzf114Logic.r35016_condition():
            # r9 # reply35016
            jump dzf114_dispose

# s1 # say34988
label dzf114_s1:  # from 0.0 0.1 0.2 # Manually checked EXTERN ~DMORTE~ : 330
    teller 'Труп продолжает пялиться на тебя.'

    menu:
        'Использовать на трупе свою способность История костей.' if dzf114Logic.r35006_condition():
            # r3 # reply35006
            jump dzf114_s2
        'Было приятно с тобой поболтать. Прощай.' if dzf114Logic.r35011_condition():
            # r4 # reply35011
            jump dzf114_dispose
        'Было приятно с тобой поболтать. Прощай.' if dzf114Logic.r35013_condition():
            # r6 # reply35013
            jump dzf114_dispose
        'Было приятно с тобой поболтать. Прощай.' if dzf114Logic.r35015_condition():
            # r8 # reply35015
            jump dzf114_dispose
        'Тогда прощай.' if dzf114Logic.r34989_condition():
            # r10 # reply34989
            jump dmorte_s330
        'Тогда прощай.' if dzf114Logic.r35002_condition():
            # r11 # reply35002
            jump dzf114_dispose
        'Тогда прощай.' if dzf114Logic.r35003_condition():
            # r12 # reply35003
            jump dzf114_dispose
        'Оставить труп в покое.' if dzf114Logic.r35012_condition():
            # r5 # reply35012
            jump dmorte_s330
        'Оставить труп в покое.' if dzf114Logic.r35014_condition():
            # r7 # reply35014
            jump dzf114_dispose
        'Оставить труп в покое.' if dzf114Logic.r35016_condition():
            # r9 # reply35016
            jump dzf114_dispose


# s2 # say35007
label dzf114_s2:  # from 0.3 # Manually checked EXTERN ~DMORTE~ : 330
    teller 'Этот труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if dzf114Logic.r35005_condition():
            # r2 # reply35005
            jump dzf114_s1
        'Было приятно с тобой поболтать. Прощай.' if dzf114Logic.r35011_condition():
            # r4 # reply35011
            jump dzf114_dispose
        'Было приятно с тобой поболтать. Прощай.' if dzf114Logic.r35013_condition():
            # r6 # reply35013
            jump dzf114_dispose
        'Было приятно с тобой поболтать. Прощай.' if dzf114Logic.r35015_condition():
            # r8 # reply35015
            jump dzf114_dispose
        'Тогда прощай.' if dzf114Logic.r35008_condition():
            # r13 # reply35008
            jump dmorte_s330
        'Тогда прощай.' if dzf114Logic.r35009_condition():
            # r14 # reply35009
            jump dzf114_dispose
        'Тогда прощай.' if dzf114Logic.r35010_condition():
            # r15 # reply35010
            jump dzf114_dispose
        'Оставить труп в покое.' if dzf114Logic.r35012_condition():
            # r5 # reply35012
            jump dmorte_s330
        'Оставить труп в покое.' if dzf114Logic.r35014_condition():
            # r7 # reply35014
            jump dzf114_dispose
        'Оставить труп в покое.' if dzf114Logic.r35016_condition():
            # r9 # reply35016
            jump dzf114_dispose


label dzf114_kill:
    teller 'Труп женщины перестает ковылять, как только ты подходишь. Ты замечаешь номер «114», вырезанный у нее на лбу.'
    teller 'Ее рот зашит, однако нитки начинают рваться, и из ее губ слышится слабый стон.'

    menu:
        '(Уйти.)':
            jump dzf114_dispose
        '(Убить зомби).':
            jump dzf114_killed


label dzf114_killed:
    $ dzf114Logic.kill_dzf114()
    teller 'Она смотрит на меня пустыми глазами.'
    teller 'В них нет ни жизни, ни разума. Труп падает, нитки на губах рвутся. Я не чувствую сожалений.'
    jump dzf114_dispose
