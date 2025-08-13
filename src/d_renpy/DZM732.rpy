init 10 python:
    from game.dlgs.zm732_logic import Zm732Logic
    zm732Logic = Zm732Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/DZM732.DLG
# ###


# s0 # say6529
label zm732_s0:  # from 4.0 # IF ~  !HasItem("TomeBA","ZM732")
    SPEAKER 'У этого ковыляющего зашит не только рот, но и глаза, а на брови вырезан номер «732». Похоже, глазные полости были зашиты давным-давно… тебе остается только гадать, когда потерял человек глаза — до смерти или после.'

    menu:
        '«Извини, что забрал ту книгу… она выглядела слишком интересной, что пропустить ее мимо».' if zm732Logic.r6533_condition():
            # r0 # reply6533
            $ zm732Logic.r6533_action()
            jump zm732_s1

        '«Извини, что забрал ту книгу… она выглядела слишком интересной, что пропустить ее мимо».' if zm732Logic.r6532_condition():
            # r1 # reply6532
            jump zm732_s1

        '«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».' if zm732Logic.r6534_condition():
            # r2 # reply6534
            jump zm732_s1

        'Использовать на трупе свою способность «История костей».' if zm732Logic.r6535_condition():
            # r3 # reply6535
            jump zm732_s2

        '«Было приятно с тобой поболтать. Прощай».':
            # r4 # reply6536
            jump zm732_dispose

        'Оставить труп в покое.':
            # r5 # reply6537
            jump zm732_dispose


# s1 # say6530
label zm732_s1:  # from 0.0 0.1 0.2
    SPEAKER 'Труп продолжает пялиться на тебя.'

    menu:
        'Оставить труп в покое.':
            # r6 # reply6538
            jump zm732_dispose


# s2 # say6531
label zm732_s2:  # from 0.3
    SPEAKER 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Оставить труп в покое.':
            # r7 # reply6539
            jump zm732_dispose


# s3 # say64270
label zm732_s3:  # - # IF ~  HasItem("TomeBA","ZM732")
    SPEAKER 'У этого ковыляющего зашит не только рот, но и глаза, а на брови вырезан номер «732». Похоже, глазные полости были зашиты давным-давно… тебе остается только гадать, когда потерял человек глаза — до смерти или после. Ты замечаешь, что в руках он несет тяжелую книгу, как будто он где-то ее забрал.'

    menu:
        'Взять том из его рук… осторожно.':
            # r8 # reply64271
            $ zm732Logic.r64271_action()
            jump zm732_s4

        'Оставить труп в покое.':
            # r9 # reply64272
            jump zm732_dispose


# s4 # say64273
label zm732_s4:  # from 3.0
    SPEAKER 'Ты осторожно берешь книгу из рук трупа — он даже не замечает этого. Похоже, это книга заклинаний и оберегов: она исписана схемами и таблицами, описывающими различные аспекты искусства некромантии. Сама по себе книга очень тяжелая. Каким бы неуклюжим не был зомби, он, должно быть, очень силен.'

    menu:
        'Снова осмотреть труп.':
            # r10 # reply64274
            jump zm732_s0

        'Оставить труп в покое.':
            # r11 # reply64275
            jump zm732_dispose


label zm732_kill: # -
    nr 'Todo.'

    menu:
        'Уйти.':
            jump zm732_dispose
        'Убить.':
            jump zm732_killed


label zm732_killed:  # from zm732_kill
    $ zm732Logic.kill_zm732()
    nr 'Whose motorcycle is this?'
    nr 'Its a chopper, baby.'
    nr 'Whose chopper is this?'
    nr 'zm732s.'
    nr 'Who is zm732?'
    nr 'zm732 is dead, baby, zm732 is dead.'
    jump zm732_dispose


label zm732_kill_first:  # -
    nr 'Todo.'

    menu:
        'Уйти.':
            jump zm732_dispose
        'Убить.':
            jump zm732_killed_first


label zm732_killed_first: # from zm732_kill_first
    $ zm732Logic.kill_zm732()
    nr 'Whose motorcycle is this?'
    nr 'Its a chopper, baby.'
    nr 'Whose chopper is this?'
    nr 'zm732s.'
    nr 'Who is zm732?'
    nr 'zm732 is dead, baby, zm732 is dead.'
    jump zm732_dispose
