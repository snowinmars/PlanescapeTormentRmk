init 10 python:
    from dlgs.dzf114_logic import Dzf114Logic
    dzf114Logic = Dzf114Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/DZF114.DLG
# ###


label dzf114_init:
    return


label dzf114_dispose:
    jump show_graphics_menu


# s0 # say34986
label dzf114_s0:  # - # IF ~  True()  Check EXTERN ~DMORTE~ : 330
    SPEAKER 'Труп женщины перестает ковылять, как только ты подходишь. Ты замечаешь номер 114, вырезанный у нее на лбу. Ее рот зашит, однако нитки начинают рваться и из ее губ слышится слабый стон.'

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
            jump dzf114_dispose

        'Оставить труп в покое.' if dzf114Logic.r35012_condition():
            # r5 # reply35012
            jump dzf114_dispose

        'Было приятно с тобой поболтать. Прощай.' if dzf114Logic.r35013_condition():
            # r6 # reply35013
            jump dzf114_dispose

        'Оставить труп в покое.' if dzf114Logic.r35014_condition():
            # r7 # reply35014
            jump dzf114_dispose

        'Было приятно с тобой поболтать. Прощай.' if dzf114Logic.r35015_condition():
            # r8 # reply35015
            jump dzf114_dispose

        'Оставить труп в покое.' if dzf114Logic.r35016_condition():
            # r9 # reply35016
            jump dzf114_dispose


# s1 # say34988
label dzf114_s1:  # from 0.0 0.1 0.2 # Check EXTERN ~DMORTE~ : 330
    SPEAKER 'Труп продолжает пялиться на тебя.'

    menu:
        'Тогда прощай.' if dzf114Logic.r34989_condition():
            # r10 # reply34989
            jump dzf114_dispose

        'Тогда прощай.' if dzf114Logic.r35002_condition():
            # r11 # reply35002
            jump dzf114_dispose

        'Тогда прощай.' if dzf114Logic.r35003_condition():
            # r12 # reply35003
            jump dzf114_dispose


# s2 # say35007
label dzf114_s2:  # from 0.3 # Check EXTERN ~DMORTE~ : 330
    SPEAKER 'Этот труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Тогда прощай.' if dzf114Logic.r35008_condition():
            # r13 # reply35008
            jump dzf114_dispose

        'Тогда прощай.' if dzf114Logic.r35009_condition():
            # r14 # reply35009
            jump dzf114_dispose

        'Тогда прощай.' if dzf114Logic.r35010_condition():
            # r15 # reply35010
            jump dzf114_dispose


# s3 # say35017
label dzf114_s3:  # - # IF ~  False()
    SPEAKER 'Этот труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    jump dzf114_dispose