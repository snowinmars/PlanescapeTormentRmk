init 10 python:
    from game.dlgs.zf114_logic import Zf114Logic
    zf114Logic = Zf114Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/DZF114.DLG
# ###


# s0 # say34986
label zf114_s0: # - # IF ~  True()
    SPEAKER 'Труп женщины перестает ковылять, как только ты подходишь. Ты замечаешь номер «114», вырезанный у нее на лбу. Ее рот зашит, однако нитки начинают рваться и из ее губ слышится слабый стон.'

    menu:
        '«Итак… чем занимаешься вечером?»' if zf114Logic.r34987_condition():
            # a0 # r34987
            $ zf114Logic.r34987_action()
            jump zf114_s1

        '«Итак… чем занимаешься вечером?»' if zf114Logic.r35004_condition():
            # a1 # r35004
            jump zf114_s1

        '«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».' if zf114Logic.r35005_condition():
            # a2 # r35005
            jump zf114_s1

        'Использовать на трупе свою способность «История костей».' if zf114Logic.r35006_condition():
            # a3 # r35006
            jump zf114_s2

        '«Было приятно с тобой поболтать. Прощай».' if zf114Logic.r35011_condition():
            # a4 # r35011
            jump morte_s330  # EXTERN

        'Оставить труп в покое.' if zf114Logic.r35012_condition():
            # a5 # r35012
            jump morte_s330  # EXTERN

        '«Было приятно с тобой поболтать. Прощай».' if zf114Logic.r35013_condition():
            # a6 # r35013
            jump zf114_dispose

        'Оставить труп в покое.' if zf114Logic.r35014_condition():
            # a7 # r35014
            jump zf114_dispose

        '«Было приятно с тобой поболтать. Прощай».' if zf114Logic.r35015_condition():
            # a8 # r35015
            jump zf114_dispose

        'Оставить труп в покое.' if zf114Logic.r35016_condition():
            # a9 # r35016
            jump zf114_dispose

# s1 # say34988
label zf114_s1: # from 0.0 0.1 0.2
    SPEAKER 'Труп продолжает пялиться на тебя.'

    menu:
        '«Тогда прощай».' if zf114Logic.r34989_condition():
            # a10 # r34989
            jump morte_s330  # EXTERN

        '«Тогда прощай».' if zf114Logic.r35002_condition():
            # a11 # r35002
            jump zf114_dispose

        '«Тогда прощай».' if zf114Logic.r35003_condition():
            # a12 # r35003
            jump zf114_dispose

# s2 # say35007
label zf114_s2: # from 0.3
    SPEAKER 'Этот труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        '«Тогда прощай».' if zf114Logic.r35008_condition():
            # a13 # r35008
            jump morte_s330  # EXTERN

        '«Тогда прощай».' if zf114Logic.r35009_condition():
            # a14 # r35009
            jump zf114_dispose

        '«Тогда прощай».' if zf114Logic.r35010_condition():
            # a15 # r35010
            jump zf114_dispose

# s3 # say35017
label zf114_s3: # - # IF ~  False()
    SPEAKER 'Этот труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:

label zf114_kill: # -
    nr 'Todo.'

    menu:
        'Уйти.':
            jump zf114_dispose
        'Убить.':
            jump zf114_killed


label zf114_killed: # from zf114_kill
    $ zf114Logic.kill_zf114()
    nr 'Whose motorcycle is this?'
    nr 'Its a chopper, baby.'
    nr 'Whose chopper is this?'
    nr 'zf114s.'
    nr 'Who is zf114?'
    nr 'zf114 is dead, baby, zf114 is dead.'
    jump zf114_dispose


label zf114_kill_first: # -
    nr 'Todo.'

    menu:
        'Уйти.':
            jump zf114_dispose
        'Убить.':
            jump zf114_killed_first


label zf114_killed_first: # from zf114_kill_first
    $ zf114Logic.kill_zf114()
    nr 'Whose motorcycle is this?'
    nr 'Its a chopper, baby.'
    nr 'Whose chopper is this?'
    nr 'zf114s.'
    nr 'Who is zf114?'
    nr 'zf114 is dead, baby, zf114 is dead.'
    jump zf114_dispose
