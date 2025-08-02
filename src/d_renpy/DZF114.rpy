init 10 python:
    from dlgs.zf114_logic import Zf114Logic
    zf114Logic = Zf114Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/ZF114.DLG
# ###


label zf114_init:
    return


label zf114_dispose:
    jump show_graphics_menu


# s0 # say34986
label zf114_s0:  # - # IF ~  True()  Check EXTERN ~DMORTE~ : 330
    SPEAKER 'Труп женщины перестает ковылять, как только ты подходишь. Ты замечаешь номер 114, вырезанный у нее на лбу. Ее рот зашит, однако нитки начинают рваться и из ее губ слышится слабый стон.'

    menu:
        'Итак… чем занимаешься вечером?' if zf114Logic.r34987_condition():
            # r0 # reply34987
            $ zf114Logic.r34987_action()
            jump zf114_s1

        'Итак… чем занимаешься вечером?' if zf114Logic.r35004_condition():
            # r1 # reply35004
            jump zf114_s1

        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if zf114Logic.r35005_condition():
            # r2 # reply35005
            jump zf114_s1

        'Использовать на трупе свою способность История костей.' if zf114Logic.r35006_condition():
            # r3 # reply35006
            jump zf114_s2

        'Было приятно с тобой поболтать. Прощай.' if zf114Logic.r35011_condition():
            # r4 # reply35011
            jump zf114_dispose

        'Оставить труп в покое.' if zf114Logic.r35012_condition():
            # r5 # reply35012
            jump zf114_dispose

        'Было приятно с тобой поболтать. Прощай.' if zf114Logic.r35013_condition():
            # r6 # reply35013
            jump zf114_dispose

        'Оставить труп в покое.' if zf114Logic.r35014_condition():
            # r7 # reply35014
            jump zf114_dispose

        'Было приятно с тобой поболтать. Прощай.' if zf114Logic.r35015_condition():
            # r8 # reply35015
            jump zf114_dispose

        'Оставить труп в покое.' if zf114Logic.r35016_condition():
            # r9 # reply35016
            jump zf114_dispose


# s1 # say34988
label zf114_s1:  # from 0.0 0.1 0.2 # Check EXTERN ~DMORTE~ : 330
    SPEAKER 'Труп продолжает пялиться на тебя.'

    menu:
        'Тогда прощай.' if zf114Logic.r34989_condition():
            # r10 # reply34989
            jump zf114_dispose

        'Тогда прощай.' if zf114Logic.r35002_condition():
            # r11 # reply35002
            jump zf114_dispose

        'Тогда прощай.' if zf114Logic.r35003_condition():
            # r12 # reply35003
            jump zf114_dispose


# s2 # say35007
label zf114_s2:  # from 0.3 # Check EXTERN ~DMORTE~ : 330
    SPEAKER 'Этот труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Тогда прощай.' if zf114Logic.r35008_condition():
            # r13 # reply35008
            jump zf114_dispose

        'Тогда прощай.' if zf114Logic.r35009_condition():
            # r14 # reply35009
            jump zf114_dispose

        'Тогда прощай.' if zf114Logic.r35010_condition():
            # r15 # reply35010
            jump zf114_dispose


# s3 # say35017
label zf114_s3:  # - # IF ~  False()
    SPEAKER 'Этот труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    jump zf114_dispose